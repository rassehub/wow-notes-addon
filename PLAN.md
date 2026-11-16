# Plan for the next session

State when this was written (2026-11-15): branch `feature/wiki`, everything since commit
`e77cab7` is uncommitted. `tests/run.lua` passes (635 checks) but nothing has been run in
the game. Commit before starting.

How to run the tests on this machine (no Lua 5.1 installed): see the memory note
`wow-forever-data-sources.md` (a small C runner against the system `liblua5.4`).

Order: 1 and 2 are small and independent. 3 and 4 share the same research and should be
done together. 5 is research that ends in a short list to pick from, not in code.

---

## 1. Minimap: adjustable hide radius

Now: icons on the minimap disappear inside 40 yards (`NEAR` in
`GoalNotes/UI/MapNodes.lua`, used in `Nodes.MiniUpdate`).

- Move it to a setting: `ns.db.nodes.near`, default **80** (add to `ns.defaults.nodes` in
  `Core.lua`; `CopyDefaults` fills it in for existing users).
- Menu: next to "Icon size" in `Nodes.MenuSections`, a submenu "Hide on the minimap when
  closer than" with radios 40 / 60 / 80 / 100 yards.
- Check first in the game: how far Find Minerals / Find Herbs actually reaches at each
  minimap zoom. If the tracking range is fixed (about 100 yards is the usual figure,
  unverified), the best default is just under it. At the closest zoom the minimap only
  reaches 67 yards from the player, so with 80 nothing shows there; decide whether the
  radius should be capped at a share of the minimap's reach (`reach * 0.5`).
- Test: extend the minimap block in `tests/run.lua` (player 161 yards from the vendor:
  shown at 80, hidden at 200).

Also still unverified from last session, check while in the game:
- icon positions and the rotating-minimap maths in `MiniUpdate`
- world map icons with and without OpenMap; OpenMap's menu switches
- column and list drag handles, the small hover map, recipe skill plates

## 2. Items list: quick source toggles

Goal: one click each for vendor items, craftable items, quest items, items from nodes,
without opening the filter menu.

What exists: `ns.db.filter.sources` with keys `crafted`, `found`, `gathered`, `quest`
(quest reward), `drop`, `vendor` (`ItemDB.SOURCES`, tested in `ItemDB.MatchesFilter`).
`quest`, `drop` and `vendor` need QuestieDB. The menu entry is Items > filter > Source.

- Add a row of small toggle buttons under the search box of the Items tab (same row
  where `summary` / `minBox` / `maxBox` sit in `Browser.Layout`, or a new 18px row above
  the caption row). Each button flips one key of `ns.db.filter.sources` and calls
  `ListChanged()`. Reuse `Filters.Button` (icon button with `SetActive`) so they light
  up like the filter and sort buttons.
- Buttons: Vendor (`vendor`), Crafted (`crafted`), Quest (`quest`), Gathered
  (`gathered`), and probably Dropped (`drop`) for completeness. Hide the QuestieDB ones
  when `ns.Q.Available()` is false.
- Decide what "quest items" means: quest *rewards* (current `quest` key) or items of the
  Quest class (`f.types.quest`). Probably both are wanted; ask, or make the Quest button
  mean rewards and leave the class in the menu.
- Performance: the `vendor` / `drop` / `quest` tests ask QuestieDB per item. Browsing
  all 28,000 items with only such a toggle on may stall. Measure; if slow, build a
  one-time set per source in the background (same pattern as `Q.LootReady`, which
  already walks every item: `Q.sells`, `Q.drops`, `Q.rewards` could be turned into
  per-item flags there).
- Tests: click each toggle, check `Ids(W.List("item", ""))` and the summary line.

## 3. Keeping data current automatically

Where data comes from today (README "Updating the item database" has the table):

| Data | Source | Automatic? |
| --- | --- | --- |
| Items, recipes, dungeons, levels | wago.tools, product `wowf` | yes, `tools/update_db.py` + weekly workflow |
| Gathering nodes | GatherLite's repo (it scrapes Wowhead by hand with a real browser) | only as often as GatherLite refreshes |
| Quests, NPCs, spawns, drops, vendors, quest XP | QuestieDB at runtime | by updating QuestieDB |

Questions to answer, in this order (cheapest first):

1. **What does QuestieDB already have that the addon does not use?** Read
   `docs/forever-data.md`, `docs/support-data.md` and `support/Forever/` in
   github.com/Questie/QuestieDB. It ships drop tables (`Support.Get("DropDB")`,
   `support/Forever/DropTables`) and data "from player traces" regenerated often
   (the XP file was dated two days before this was written). If its Forever data is
   refreshed from traces, most "new content" arrives by updating QuestieDB and nothing
   needs scraping.
2. **What is new in each client build?** The workflow could post a diff summary in its
   pull request: items / recipes / dungeons added and removed since the last build
   (compare old and new `Data/*.lua`). Cheap, and it tells you what to look at.
3. **Wowhead.** Check whether Wowhead has a Forever site section and what it exposes:
   - tooltip endpoints (`nether.wowhead.com/tooltip/item/<id>?dataEnv=...`) are plain
     JSON and usually not blocked: good for names of items the client does not ship
     (replaces the Classic Era name fallback in `update_db.py`);
   - listing pages embed `new Listview({... data: [...]})` JSON (drops, sold-by,
     object locations). GatherLite's maintainer found plain HTTP gets refused (405)
     and uses Playwright with a visible Chromium, see its `tools/wowhead/README.md`
     and `tools/update_forever_wowhead.py` (MIT). That cannot run in GitHub Actions
     reliably; it would be a script run by hand.
   - Read Wowhead's terms before automating anything, and keep request rates low.
4. **Other sources worth a look:** wago.tools hotfix tables (does `wowf` expose
   hotfixes? they carry server-side changes between builds), `wow.tools`-style
   listfile for new icons, the Forever data other addons ship (Questie itself,
   GatherLite, ZMap, Dungeon Journal: check each licence before taking data).

Deliverable: a short written decision (which sources, which are automatic, which are
"run by hand after a patch"), then the scripts. Keep `tools/update_db.py` the single
entry point; a slow browser-based step should be a separate optional flag
(`--wowhead`) that writes into the same `Data/` files.

Constraints already known:
- QuestieDB's data may not be bundled (licence unclear, see memory note); read it at
  runtime only.
- GatherLite's original code and data are MIT; credit is in the README.
- Never fail the whole update because one source is down (already done for nodes).

## 4. Drop rates

Now: `Q.DropChance(item, npc)` reads QuestieDB's `QuestieClassicItemDrops.wowheadData`,
which covers mostly quest items. Used on item pages, NPC pages, dungeon loot and for
picking the best droppers (`Q.ItemSpawns`).

- First check QuestieDB's drop tables properly (item 3.1): `Support.Get("DropDB")` and
  the `DropTables` folder may hold far more than the one module the addon reads. If
  so this is an adapter change in `Wiki/Source.lua` and nothing else.
- If not: Wowhead "Dropped by" listings carry `count` / `outof` per creature. A scraped
  table `item -> { npc = percent }` for the items that matter (dungeon loot, recipe
  items, trade goods; not all 28,000) would fit in a `Data/Drops.lua` of the same
  line-per-record shape as the other data files. `Q.DropChance` then asks the bundled
  table first.
- Where to show them once they exist: already wired on item / NPC / dungeon pages; add
  a "Drop" column or the best chance to the Items list's Source text (`Wiki.Source`:
  "Drop: Edwin VanCleef 12.5%" exists for single droppers).
- Also wanted under "and such": vendor stock limits, recipe learn skill (not in the
  client: `SkillLineAbility.MinSkillLineRank` is 1 for almost every recipe), quest
  money rewards (not in QuestieDB). Check whether the sources from section 3 have them.

## 5. Ideas from other addons and wikis

Aim: one in-game wiki and tracker for Forever with core facts only (quests, items,
NPCs, professions, dungeons), working with OpenMap and Questie, replacing Dungeon
Journal and a browser tab on Wowhead. No guides, no data for other game versions.

Research (read, do not copy code or data without checking the licence):

- **Dungeon Journal** (the user's reference style; screenshots in `screenshots/`):
  what does a dungeon page show that ours lacks? Likely boss abilities, a dungeon map
  with boss positions, loot filtered by class, quest list with rewards.
- **OpenMap** (`docs/api.md` in github.com/openmap-world/openmap): unused hooks are
  `RegisterDungeonSection` (put our loot / quest summary on OpenMap's dungeon card),
  `OpenMap_DungeonMapShown`, `ShowWorld(u, v, zoom)` (glide the map to a place instead
  of only pinning it), `RegisterTownsfolkProvider`.
- **Questie**: what it shows on the map already, so we do not duplicate it; whether
  its tracker and ours should link (click a Questie objective to open our page).
- **AtlasLoot / Atlas-Forever**, **ZMap**, **GatherLite** (routes), **Auctionator**
  (shopping lists from a goal), **TomTom** (waypoints, if it exists for Forever).
- **Wowhead item / quest / NPC pages**: list the fact blocks on each and mark which we
  have. Known gaps: comments (out of scope), "reagent for" depth, item sets, class
  restrictions, faction vendors and reputation requirements, quest money, NPC
  abilities, respawn timers, fishing and skinning sources, disenchant results.

Candidate additions noted during the last session (unranked):

- Map icons have no tooltip (they are plain textures): hover should name the item or
  node and offer a click to open its page.
- "You wear" line and item-level difference on gear pages; a real "upgrades for my
  class" filter (the current preset does not narrow weapons, and hides cloaks for
  non-cloth classes).
- Profession page: what to craft from skill A to B with the fewest materials.
- Recipe learn skill and trainer locations.
- Shopping list: send a goal's missing items to the auction addon; vendor route for
  the ones sold by vendors (closest vendor per item, on the map).
- Goal templates: "all quests of this dungeon", "pre-raid set for my class".
- Dungeon page: loot filtered to what the class can use; a map of the dungeon where
  the client has one.
- Search across all tabs at once.
- Localisation: recipe-scroll links are matched by enUS names only
  (`SCROLL` in `tools/update_db.py`).

Deliverable: a ranked list (value for goal tracking first, effort second) with a
recommendation for the next three, for the user to choose from.

---

## Housekeeping before any of this

- Commit the current work (ask the user how to split it; the diff is large).
- No `LICENSE` file in the repo; the user has to choose one.
- TOC version is still 2.0.0; no changelog.
