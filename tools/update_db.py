#!/usr/bin/env python3
"""Regenerate the bundled game data from the live WoW Forever tables.

Writes GoalNotes/Data/Items.lua (names, quality, item class) and
GoalNotes/Data/Recipes.lua (profession recipes and their reagents).

Usage:
    python3 tools/update_db.py                 # latest Forever build, English names
    python3 tools/update_db.py --build 1.60.1.70938
    python3 tools/update_db.py --locale deDE   # localized names
    python3 tools/update_db.py --dir csv/ --build 1.60.1.70938   # offline, from <Table>.csv files

Data comes from wago.tools (product "wowf" = WoW Forever). Standard library only.
Run it after every Forever content patch, then /reload.
"""
import argparse
import csv
import datetime
import io
import json
import re
import sys
import urllib.request
from pathlib import Path

PRODUCT = "wowf"
DATA = Path(__file__).resolve().parent.parent / "GoalNotes" / "Data"
CHUNK = 1500  # records per Lua string; keeps every constant far below Lua's limits
UA = {"User-Agent": "addon-item-db-updater"}
TABLES = ["ItemSparse", "Item", "SkillLine", "SkillLineAbility", "SpellEffect", "SpellReagents"]
LOCALIZED = {"ItemSparse", "SkillLine"}
PROFESSION_CATEGORIES = {"9", "11"}  # SkillLine.CategoryID: secondary and primary professions
CREATE_ITEM = "24"                   # SpellEffect.Effect
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


def latest_build():
    builds = json.loads(fetch("https://wago.tools/api/builds"))
    if PRODUCT not in builds or not builds[PRODUCT]:
        sys.exit(f"wago.tools lists no builds for product '{PRODUCT}'")
    return builds[PRODUCT][0]["version"]


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


def main():
    ap = argparse.ArgumentParser(description=__doc__, formatter_class=argparse.RawDescriptionHelpFormatter)
    ap.add_argument("--build", help="exact build, e.g. 1.60.1.70938 (default: latest)")
    ap.add_argument("--locale", default="enUS", help="name locale (default enUS)")
    ap.add_argument("--dir", help="read <Table>.csv files from this directory instead of downloading")
    args = ap.parse_args()

    build = args.build or ("unknown" if args.dir else latest_build())
    tables = {}
    for name in TABLES:
        if args.dir:
            text = (Path(args.dir) / f"{name}.csv").read_text(encoding="utf-8")
        else:
            locale = f"&locale={args.locale}" if name in LOCALIZED else ""
            text = fetch(f"https://wago.tools/db2/{name}/csv?build={build}{locale}")
        tables[name] = list(csv.DictReader(io.StringIO(text)))

    # --- items -----------------------------------------------------------
    item_class = {r["ID"]: r["ClassID"] for r in tables["Item"]}
    items, by_name, skipped = [], {}, 0
    for row in tables["ItemSparse"]:
        name = row["Display_lang"].strip()
        # '|' and newline are the record separators
        if not name or JUNK.search(name) or "|" in name or "\n" in name:
            skipped += 1
            continue
        item_id = int(row["ID"])
        items.append((item_id, int(row["OverallQualityID"]), int(item_class.get(row["ID"], 15)), name))
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
        recipes[crafted] = f"{crafted}|{made}|{prof_names.index(prof) + 1}|" + ",".join(f"{i}:{c}" for i, c in mats)
    if len(recipes) < 100:
        sys.exit(f"only {len(recipes)} recipes parsed - refusing to overwrite the database")

    scrolls = []
    for item_id, _, _, name in items:
        m = SCROLL.match(name)
        target = m and by_name.get(m.group(2))
        if target in recipes:
            scrolls.append(f"{item_id}={target}")

    meta = [f'ns.ItemDBBuild = "{build}"', f'ns.ItemDBLocale = "{args.locale}"',
            f'ns.ItemDBDate = "{datetime.date.today().isoformat()}"']
    write_lua(DATA / "Items.lua",
              ["-- Source: wago.tools ItemSparse + Item, product wowf (World of Warcraft: Forever)", *meta,
               f"ns.ItemDBCount = {len(items)}", "-- One record per line: itemID|quality|classID|name"],
              "ItemDBRaw", [f"{i}|{q}|{c}|{n}" for i, q, c, n in items])
    write_lua(DATA / "Recipes.lua",
              ["-- Source: wago.tools SpellEffect + SpellReagents + SkillLineAbility, product wowf",
               f"ns.RecipeCount = {len(recipes)}",
               "ns.Professions = { " + ", ".join(json.dumps(p) for p in prof_names) + " }",
               "-- recipe item (Pattern/Plans/...) = the item it teaches you to make",
               'ns.RecipeScrollsRaw = "' + ",".join(scrolls) + '"',
               "-- One record per line: craftedItemID|amountMade|professionIndex|reagentID:count,..."],
              "RecipeRaw", [recipes[k] for k in sorted(recipes)])
    print(f"{DATA}: {len(items)} items ({skipped} junk rows skipped), {len(recipes)} recipes, "
          f"{len(scrolls)} recipe items, build {build} ({args.locale})")


if __name__ == "__main__":
    main()
