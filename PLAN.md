# Plan

State on 2026-11-16: branch `feature/wiki`, everything committed. `tests/run.lua` passes
(646 checks). Nothing has been run in the game yet: see "Check in the game" below.

How to run the tests on this machine (no Lua 5.1 installed): see the memory note
`wow-forever-data-sources.md` (a small C runner against the system `liblua5.4`).

## Done in this round

1. **Minimap hide radius**: `ns.db.nodes.near`, default 80, radios 40 / 60 / 80 / 100 in
   the minimap button's menu. Capped at half of what the minimap reaches at its zoom, so
   the closest zoom (67 yards) still shows icons in its outer half.
2. **Items list source buttons**: a row of five icon buttons above the Items list
   (crafted, gathered, quest reward, dropped, sold), each flipping one key of
   `ns.db.filter.sources`. "Quest" means quest *rewards*; the Quest item class stays in
   the filter menu. The QuestieDB sources are answered from a per-item set built once in
   the background (`Q.ItemHas`, filled by `Q.LootReady`), so a toggle does not ask
   QuestieDB 28,000 times per redraw once that is ready.
3. **What a new build changes**: `tools/update_db.py --diff [REF]` lists items, recipes
   and dungeons added / removed / changed; the weekly workflow puts it in its pull request.

## Check in the game (nothing here could be verified without a client)

- The five source buttons: icons exist and read well at 18px (`ItemDB.SOURCES[].icon`),
  the row does not collide with the column captions, and the first click on Vendor /
  Dropped / Quest does not stall before the background set is ready.
- How far Find Minerals / Find Herbs reaches; if it is fixed near 100 yards, 80 is right.
- Icon positions and the rotating-minimap maths in `MiniUpdate`.
- World map icons with and without OpenMap; OpenMap's menu switches.
- Column and list drag handles, the small hover map, recipe skill plates.

## Decision: where data comes from (plan items 3 and 4)

| Data | Source | How it stays current |
| --- | --- | --- |
| Items, recipes, dungeons, levels | wago.tools `wowf` | automatic (weekly workflow, now with a diff summary) |
| Gathering nodes | GatherLite's repo | automatic, as often as GatherLite refreshes |
| Quests, NPCs, spawns, vendors, quest XP | QuestieDB at runtime | by updating QuestieDB |
| Drop chances | QuestieDB at runtime | same; quest items only, see below |
| Wowhead | not used | not automated, see below |

What the research found:

- **QuestieDB's Forever data is the Classic Era database with converted coordinates**,
  maintained by hand-written corrections (last commit 2026-11-16, "Quest fixes"). Only
  quest XP is regenerated from player traces. Its docs say the conversion "does not
  discover new or relocated content". So new Forever content (the new dungeons, their
  NPCs and loot) arrives only as fast as its maintainers add it. Nothing in it is unused
  by the addon that would help: `support/Forever/DropTables/classicItemDrops.lua` is the
  very module `Q.DropChance` already reads, 2,032 items, generated from Wowhead for
  quest objectives only. There is no adapter change that yields more drop rates.
- **Wowhead has a Forever database (`wowhead.com/forever/...`) but refuses automated
  requests**: every Forever database page answered 403 to a plain request, and its
  robots.txt disallows scrapers. No `--wowhead` step was written and none should be: it
  would mean working around a block the site put there on purpose. The tooltip endpoint
  (`nether.wowhead.com/tooltip/item/<id>`) does answer, but which `dataEnv` is Forever
  was not established, and the Classic Era name fallback already covers item names.
- **wago.tools** has six `wowf` builds in the last two weeks, so the weekly run is not
  too often. It has a hotfixes page; whether it lists `wowf` hotfixes was not verified.

**Drop rates: no usable source yet.** Options, for the user to pick:

1. Stay as is: chances for quest items only (current behaviour, no work).
2. Bundle a `Data/Drops.lua` converted from an open-source vanilla server database
   (vmangos / cmangos `creature_loot_template`; from memory, not checked this round).
   Complete for vanilla content, nothing for Forever's new dungeons, and those projects
   are GPL: the addon would need a compatible licence. Depends on the LICENSE decision.
3. Collect in game: count kills and loots per creature for the player's own account.
   Accurate for Forever but slow to fill; only worth it if 2 is ruled out.

Also not available from any source checked: vendor stock limits, recipe learn skill,
quest money rewards.

## Ideas, ranked (plan item 5): value for goal tracking first, effort second

| # | Idea | Value | Effort | Note |
| --- | --- | --- | --- | --- |
| 1 | Map icons get a tooltip (item / node name) and a click that opens the page | high | small | pins are bare textures today; needs frames for the world map pins only |
| 2 | "Can my class use it": grey out unusable dungeon loot, and a real "upgrades for my class" filter | high | medium | Dungeon Journal greys loot out the same way; one class -> armor / weapon table fixes both the preset's weapon gap and the cloak bug |
| 3 | OpenMap dungeon card: our loot / quest summary via `RegisterDungeonSection`; `ShowWorld` to glide to a pinned place | medium | small | the API is documented and stable (`OpenMapAPI.major == 1`) |
| 4 | Vendor route: closest vendor for each missing goal item, on the map | high | medium | data is there (`Q.ItemSpawns`); shopping list to Auctionator is a separate, smaller half |
| 5 | Goal templates: "all quests of this dungeon" | medium | small | the dungeon quest filter already finds them |
| 6 | "You wear" line and item-level difference on gear pages | medium | small | |
| 7 | Search across all tabs at once | medium | medium | |
| 8 | Profession page: cheapest path from skill A to B | medium | large | needs prices to be more than a guess |
| 9 | Recipe-scroll links for other locales (`SCROLL` in `update_db.py`) | low | small | only matters once someone uses a non-enUS build |
| - | Recipe learn skill, trainer locations, boss / NPC abilities, respawn timers, item sets | | | no data source; boss abilities are also "guide" territory |

Recommended next three: **1, 2, 3**. 1 and 3 are small and make the map half of the
addon feel finished; 2 is the one thing Dungeon Journal does visibly better.

## Open decisions for the user

- `LICENSE`: none in the repo. It also decides drop-rate option 2.
- TOC version is still 2.0.0; no changelog.
- Drop rates: option 1, 2 or 3 above.
- Which of the ranked ideas to build next.
