#!/usr/bin/env python3
"""Regenerate the bundled game data from the live WoW Forever tables.

Writes into GoalNotes/Data/:
    Items.lua     item names, quality, class, subclass, slot, levels, vendor price, stats
    Recipes.lua   profession recipes, skill levels and reagents
    Dungeons.lua  dungeons and raids with their level and bosses
    Nodes.lua     where ore veins, herbs and other gathering nodes are (from GatherLite)

This script is the one source of the bundled data: everything the game client knows goes
through it. Quests, quest XP, NPCs, drops and map coordinates are not in the client; the
addon reads those from the separate QuestieDB addon at runtime, and the zone maps from the
game itself. .github/workflows/update-data.yml runs this script every week.

Usage:
    python3 tools/update_db.py                 # latest Forever build, English names
    python3 tools/update_db.py --build 1.60.1.70938
    python3 tools/update_db.py --locale deDE   # localized names
    python3 tools/update_db.py --dir csv/ --build 1.60.1.70938   # offline, from <Table>.csv files
    python3 tools/update_db.py --diff          # downloads nothing: what Data/ adds and removes since the last commit

Data comes from wago.tools (product "wowf" = WoW Forever). Standard library only.
Run it after every Forever content patch, then /reload.
"""
import argparse
import csv
import datetime
import difflib
import io
import json
import re
import subprocess
import sys
import urllib.request
from pathlib import Path

PRODUCT = "wowf"
# Forever's own name table lacks about 40% of its items (mostly dropped armor and weapons;
# the client fetches those from the server). Their ids and names are the Classic Era ones,
# so the Era name table fills the gap.
ERA_PRODUCT = "wow_classic_era"
DATA = Path(__file__).resolve().parent.parent / "GoalNotes" / "Data"
CHUNK = 1500  # records per Lua string; keeps every constant far below Lua's limits
UA = {"User-Agent": "addon-item-db-updater"}
# Gathering nodes: GatherLite's Forever database (MIT, github.com/wuild/gatherlite), which
# its maintainer collects from Wowhead. nodes.lua names the node types, forever.lua holds
# [objectID][uiMapID] = { x, y, ... }.
GATHERLITE = "https://raw.githubusercontent.com/wuild/gatherlite/master/"
NODE_FILES = {"nodes": "scripts/nodes.lua", "points": "plugins/database/data/forever.lua"}
NODE_KINDS = {"ore": "Mining", "herb": "Herbalism", "container": "Chests", "fishing": "Fishing"}
TABLES = ["ItemSparse", "Item", "SkillLine", "SkillLineAbility", "SpellEffect", "SpellReagents",
          "Map", "DungeonEncounter", "MapDifficulty", "AreaTable", "LFGDungeons", "ContentTuning"]
LOCALIZED = {"ItemSparse", "SkillLine", "Map", "DungeonEncounter"}  # LFGDungeons stays English: matched by name
PROFESSION_CATEGORIES = {"9", "11"}  # SkillLine.CategoryID: secondary and primary professions
CREATE_ITEM = "24"                   # SpellEffect.Effect
# Stat filters of the item browser: label -> ItemSparse.StatModifier_bonusStat ids.
# The position in this list is the bit in each item's stat mask; append only.
# shortcut: random-suffix items ("of the Monkey") carry no stats in the table and names taken
# from Classic Era only list primary stats, so those items match fewer stat filters.
STATS = [("Strength", {4}), ("Agility", {3}), ("Stamina", {7}), ("Intellect", {5}), ("Spirit", {6}),
         ("Attack Power", {38}), ("Spell Power", {41, 42, 45}), ("Critical Strike", {32}), ("Hit", {31}),
         ("Mana Regeneration", {43}), ("Defense, Dodge, Parry, Block", {12, 13, 14, 15})]
# Recipe items are tied to what they teach by name: "Pattern: Devilsaur Leggings".
# shortcut: enUS prefixes only, so localized builds lose the scroll -> item link; switch to
# ItemEffect/SpellEffect(learn spell) joins if that matters.
SCROLL = re.compile(r"^(Pattern|Recipe|Plans|Schematic|Formula|Manual|Design): (.+)$")

# Developer leftovers that never drop in game. Case-sensitive on purpose:
# "Carapace of the Old God" and "Old Leather Belt" are real items.
JUNK = re.compile(
    r"^(Monster - |Monster\b.*\(DNT\)|Deprecated |DEPRECATED|Unused |Test |TEST|QA|OLD|zzOLD|\[PH\]|\[DEP\])"
    r"|\((DNT|Test|test|old\d*|OLD|PH|Deprecated)\)|\bDEPRECATED\b|\bNPC Equip\b|\bDEBUG\b"
    r"|\bTest\b|\bTEST ITEM\b|\(DELETE ME\)| DEP$"
)


def fetch(url):
    with urllib.request.urlopen(urllib.request.Request(url, headers=UA), timeout=300) as r:
        return r.read().decode("utf-8")


def latest_build(product=PRODUCT):
    builds = json.loads(fetch("https://wago.tools/api/builds"))
    if product not in builds or not builds[product]:
        sys.exit(f"wago.tools lists no builds for product '{product}'")
    return builds[product][0]["version"]


def write_lua(path, header, var, records):
    out = ["-- GENERATED FILE - do not edit. Regenerate with: python3 tools/update_db.py",
           "local _, ns = ...", *header, f"ns.{var} = {{"]
    for i in range(0, len(records), CHUNK):
        body = "\n".join(records[i:i + CHUNK])
        assert "]==]" not in body
        out.append(f"[==[\n{body}\n]==],")
    out.append("}")
    path.parent.mkdir(parents=True, exist_ok=True)
    path.write_text("\n".join(out) + "\n", encoding="utf-8")


def diff_summary(ref):
    """Markdown: what the Data files in the working tree add, remove and change against git `ref`."""
    def load(name, label, old):
        if old:
            shown = subprocess.run(["git", "show", f"{ref}:GoalNotes/Data/{name}.lua"], cwd=DATA.parent.parent,
                                   capture_output=True, text=True, encoding="utf-8")
            text = shown.stdout if shown.returncode == 0 else ""  # a file the ref does not have yet
        else:
            text = (DATA / f"{name}.lua").read_text(encoding="utf-8")
        records = {}  # first field -> (what to call it, the whole line)
        for line in text.splitlines():
            fields = line.split("|")
            if fields[0].isdigit() and len(fields) > 4:
                records[fields[0]] = (fields[label], line)
        return records

    out = []
    old_items, new_items = load("Items", -1, True), load("Items", -1, False)
    for title, name, label in (("Items", "Items", -1), ("Recipes", "Recipes", 0), ("Dungeons and raids", "Dungeons", 4)):
        old, new = load(name, label, True), load(name, label, False)

        def names(keys):
            # a recipe is called by what it makes
            called = [(new_items.get(k) or old_items.get(k) or ("item " + k,))[0] if name == "Recipes"
                      else (new.get(k) or old.get(k))[0] for k in sorted(keys, key=int)]
            return ", ".join(called[:40]) + (f" and {len(called) - 40} more" if len(called) > 40 else "")

        added, removed = new.keys() - old.keys(), old.keys() - new.keys()
        changed = {k for k in new.keys() & old.keys() if new[k][1] != old[k][1]}
        out.append(f"**{title}**: {len(added)} added, {len(removed)} removed, {len(changed)} changed")
        out += [f"- {word}: {names(keys)}" for word, keys in (("Added", added), ("Removed", removed), ("Changed", changed)) if keys]
    return "\n".join(out)


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--build", help="exact build, e.g. 1.60.1.70938 (default: latest)")
    ap.add_argument("--locale", default="enUS", help="name locale (default enUS)")
    ap.add_argument("--dir", help="read <Table>.csv files from this directory instead of downloading")
    ap.add_argument("--diff", nargs="?", const="HEAD", metavar="REF",
                    help="only print what GoalNotes/Data adds and removes against a git ref (default HEAD)")
    args = ap.parse_args()
    if args.diff:
        print(diff_summary(args.diff))
        return

    build = args.build or ("unknown" if args.dir else latest_build())
    tables = {}
    for name in TABLES:
        if args.dir:
            text = (Path(args.dir) / f"{name}.csv").read_text(encoding="utf-8")
        else:
            locale = f"&locale={args.locale}" if name in LOCALIZED else ""
            text = fetch(f"https://wago.tools/db2/{name}/csv?build={build}{locale}")
        tables[name] = list(csv.DictReader(io.StringIO(text)))
    if args.dir:
        era_file = Path(args.dir) / "ItemSparse_era.csv"
        era_text = era_file.read_text(encoding="utf-8") if era_file.exists() else ""
    else:
        era_text = fetch(f"https://wago.tools/db2/ItemSparse/csv?build={latest_build(ERA_PRODUCT)}&locale={args.locale}")
    era_rows = list(csv.DictReader(io.StringIO(era_text))) if era_text else []

    # --- items -----------------------------------------------------------
    item_class = {r["ID"]: r["ClassID"] for r in tables["Item"]}
    item_kind = {r["ID"]: (int(r["SubclassID"]), int(r["InventoryType"])) for r in tables["Item"]}
    items, by_name, skipped = [], {}, 0
    named = {r["ID"] for r in tables["ItemSparse"]}
    from_era = [r for r in era_rows if r["ID"] in item_class and r["ID"] not in named]
    for row in tables["ItemSparse"] + from_era:
        name = row["Display_lang"].strip()
        # '|' and newline are the record separators
        if not name or JUNK.search(name) or "|" in name or "\n" in name:
            skipped += 1
            continue
        item_id = int(row["ID"])
        found = {int(row[f"StatModifier_bonusStat_{i}"]) for i in range(10)}
        mask = sum(1 << bit for bit, (_, ids) in enumerate(STATS) if ids & found)
        sub, slot = item_kind.get(row["ID"], (0, 0))
        items.append((item_id, int(row["OverallQualityID"]), int(item_class.get(row["ID"], 15)),
                      max(0, sub), slot, max(0, int(row["RequiredLevel"])), max(0, int(row["ItemLevel"])),
                      max(0, int(row["BuyPrice"])), max(0, int(row["SellPrice"])), mask, name))
        by_name.setdefault(name, item_id)
    if len(items) < 1000:
        sys.exit(f"only {len(items)} items parsed - refusing to overwrite the database")
    items.sort()
    known = {i[0] for i in items}

    # --- recipes ---------------------------------------------------------
    professions = {r["ID"]: r["DisplayName_lang"] for r in tables["SkillLine"]
                   if r["CategoryID"] in PROFESSION_CATEGORIES}
    spell_prof = {r["Spell"]: professions[r["SkillLine"]] for r in tables["SkillLineAbility"]
                  if r["SkillLine"] in professions}
    # skill at which the recipe turns yellow / grey
    spell_skill = {r["Spell"]: (r["TrivialSkillLineRankLow"], r["TrivialSkillLineRankHigh"])
                   for r in tables["SkillLineAbility"] if r["SkillLine"] in professions}
    reagents = {r["SpellID"]: r for r in tables["SpellReagents"]}
    prof_names, recipes = [], {}
    for eff in sorted(tables["SpellEffect"], key=lambda r: int(r["SpellID"])):
        spell = eff["SpellID"]
        crafted = int(eff["EffectItemType"] or 0)
        if eff["Effect"] != CREATE_ITEM or spell not in spell_prof or spell not in reagents:
            continue
        if crafted not in known or crafted in recipes:  # first (lowest) spell wins
            continue
        mats = [(int(reagents[spell][f"Reagent_{i}"]), int(reagents[spell][f"ReagentCount_{i}"])) for i in range(8)]
        mats = [(i, c) for i, c in mats if i > 0 and c > 0 and i in known]
        if not mats:
            continue
        prof = spell_prof[spell]
        if prof not in prof_names:
            prof_names.append(prof)
        made = max(1, int(float(eff["EffectBasePointsF"] or 1)))
        yellow, grey = spell_skill[spell]
        recipes[crafted] = (f"{crafted}|{made}|{prof_names.index(prof) + 1}|{yellow}|{grey}|"
                            + ",".join(f"{i}:{c}" for i, c in mats))
    if len(recipes) < 100:
        sys.exit(f"only {len(recipes)} recipes parsed - refusing to overwrite the database")

    scrolls = []
    for item_id, *_, name in items:
        m = SCROLL.match(name)
        target = m and by_name.get(m.group(2))
        if target in recipes:
            scrolls.append(f"{item_id}={target}")

    meta = [f'ns.ItemDBBuild = "{build}"', f'ns.ItemDBLocale = "{args.locale}"',
            f'ns.ItemDBDate = "{datetime.date.today().isoformat()}"']
    write_lua(DATA / "Items.lua",
              ["-- Source: wago.tools ItemSparse + Item, product wowf (World of Warcraft: Forever)", *meta,
               f"ns.ItemDBCount = {len(items)}",
               "-- stat filter labels; bit n-1 of an item's statMask means it has stat n",
               "ns.ItemStats = { " + ", ".join(json.dumps(label) for label, _ in STATS) + " }",
               "-- One record per line: itemID|quality|classID|subclassID|inventoryType|requiredLevel|itemLevel"
               "|vendorBuyPrice|vendorSellPrice|statMask|name"],
              "ItemDBRaw", ["|".join(map(str, item)) for item in items])
    write_lua(DATA / "Recipes.lua",
              ["-- Source: wago.tools SpellEffect + SpellReagents + SkillLineAbility, product wowf",
               f"ns.RecipeCount = {len(recipes)}",
               "ns.Professions = { " + ", ".join(json.dumps(p) for p in prof_names) + " }",
               "-- recipe item (Pattern/Plans/...) = the item it teaches you to make",
               'ns.RecipeScrollsRaw = "' + ",".join(scrolls) + '"',
               "-- One record per line: craftedItemID|amountMade|professionIndex|yellowSkill|greySkill|reagentID:count,..."],
              "RecipeRaw", [recipes[k] for k in sorted(recipes)])
    # --- dungeons and raids ---------------------------------------------
    players = {}  # group size of the lowest difficulty that has one (the normal mode)
    for r in sorted(tables["MapDifficulty"], key=lambda r: int(r["DifficultyID"]), reverse=True):
        if int(r["MaxPlayers"] or 0) > 0:
            players[r["MapID"]] = int(r["MaxPlayers"])
    bosses = {}
    for r in sorted(tables["DungeonEncounter"], key=lambda r: (int(r["OrderIndex"]), int(r["ID"]))):
        name = r["Name_lang"].strip()
        names = bosses.setdefault(r["MapID"], [])
        if name and name not in names and not JUNK.search(name) and "|" not in name and ";" not in name:
            names.append(name)
    # The level a dungeon is tuned for: the content tuning of its area, else of the group
    # finder entry with (nearly) the same name: "Zul'Farak" is Zul'Farrak.
    # An instance with neither is left out: the client ships maps of raids and dungeons that
    # are not in the game (yet), and those have no tuning.
    def key(name):
        return re.sub(r"^the |[^a-z]", "", name.lower())
    tuning = {r["ID"]: int(r["MinLevelSquish"]) for r in tables["ContentTuning"]}
    area_tuning = {r["ID"]: r["ContentTuningID"] for r in tables["AreaTable"]}
    lfg = {key(r["Name_lang"]): r["ContentTuningID"] for r in tables["LFGDungeons"]}

    def level(r, name):
        mine = key(name)
        close = difflib.get_close_matches(mine, list(lfg), 1, 0.85) or [k for k in lfg if mine.startswith(k)]  # "Onyxia"
        for ct in (area_tuning.get(r["AreaTableID"]), lfg[close[0]] if close else None):
            if tuning.get(ct):
                return tuning[ct]
        return 0

    dungeons = []
    for r in sorted(tables["Map"], key=lambda r: r["MapName_lang"]):
        name = r["MapName_lang"].strip()
        if r["InstanceType"] not in ("1", "2") or r["ID"] not in bosses or JUNK.search(name) or "<" in name:
            continue
        if not level(r, name):
            continue
        dungeons.append(f'{r["ID"]}|{r["InstanceType"]}|{players.get(r["ID"], 0)}|{level(r, name)}|{name}|'
                        + ";".join(bosses[r["ID"]]))
    write_lua(DATA / "Dungeons.lua",
              ["-- Source: wago.tools Map + DungeonEncounter + MapDifficulty + AreaTable + LFGDungeons"
               " + ContentTuning, product wowf",
               "-- One record per line: instanceMapID|type (1 dungeon, 2 raid)|players|level|name|boss;boss;..."],
              "DungeonRaw", dungeons)

    # --- gathering nodes -------------------------------------------------
    node_text = {}
    for what, path in NODE_FILES.items():
        local = Path(args.dir) / f"GatherLite_{what}.lua" if args.dir else None
        if local:
            node_text[what] = local.read_text(encoding="utf-8") if local.exists() else ""
        else:
            try:
                node_text[what] = fetch(GATHERLITE + path)
            except OSError as error:  # GatherLite moved or is unreachable: items must still update
                print(f"warning: gathering nodes not updated ({path}: {error}); Nodes.lua is kept", file=sys.stderr)
                node_text[what] = ""
    # InsertObject("ore", { 1731, 2055 }, "copper_vein", ...): several object ids are one node type
    types, type_of = [], {}
    for kind, ids, name in re.findall(r'InsertObject\("(\w+)",\s*\{([\d,\s]*)\},\s*"(\w+)"', node_text["nodes"]):
        label = name.replace("_", " ").title()
        # the icon is the item the node gives, found by name: Copper Vein -> Copper Ore
        ore = re.sub(r"^(Small|Rich) | (Vein|Deposit)$", "", label) + " Ore"
        types.append((NODE_KINDS.get(kind, kind.title()), label, by_name.get(label) or by_name.get(ore) or 0))
        for object_id in re.findall(r"\d+", ids):
            type_of[object_id] = len(types)
    points, object_id, nodes = {}, None, []  # (type, map) -> {(x, y)}
    for line in node_text["points"].splitlines():
        head = re.match(r"\s*\[(\d+)\] = \{", line)
        if head and line.startswith("    ["):
            object_id = head.group(1)
        elif head:
            map_id = head.group(1)
        elif object_id in type_of:
            numbers = re.findall(r"[\d.]+", line)
            # three digits each for x and y: thousandths of the map
            points.setdefault((type_of[object_id], int(map_id)), set()).update(
                (min(999, round(float(x) * 1000)), min(999, round(float(y) * 1000)))
                for x, y in zip(numbers[::2], numbers[1::2]))
    for (node_type, map_id), found in sorted(points.items()):
        nodes.append(f"{node_type}|{map_id}|" + "".join(f"{x:03d}{y:03d}" for x, y in sorted(found)))
    if nodes:
        write_lua(DATA / "Nodes.lua",
                  ["-- Source: GatherLite's Forever node database, github.com/wuild/gatherlite (collected from Wowhead).",
                   "-- GatherLite is MIT licensed, Copyright (c) 2019 Wuild; see the README for the full notice.",
                   "-- node types, in the order the records number them: { kind, name, itemID for the icon (0: none) }",
                   "ns.NodeTypes = {"] + [f"\t{{ {json.dumps(k)}, {json.dumps(n)}, {i} }}," for k, n, i in types] + ["}",
                   "-- One record per line: nodeType|uiMapID|xxxyyyxxxyyy... (thousandths of the map, three digits each)"],
                  "NodeRaw", nodes)
    elif not args.dir:
        print("warning: no gathering nodes parsed; Nodes.lua is kept as it was", file=sys.stderr)

    print(f"{len(dungeons)} dungeons and raids; {len(nodes)} node lists with "
          f"{sum(len(p) for p in points.values())} gathering nodes; {len(from_era)} item names taken from Classic Era")
    print(f"{DATA}: {len(items)} items ({skipped} junk rows skipped), {len(recipes)} recipes, "
          f"{len(scrolls)} recipe items, build {build} ({args.locale})")


if __name__ == "__main__":
    main()
