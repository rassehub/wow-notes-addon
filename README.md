# Goal Notes

An addon for **World of Warcraft: Forever** (interface 16001, game version 1.60.1).

An in-game wiki and goal tracker in one window, so you do not need a browser:

- **Goals**: lists of items you are working towards, tracked against your bags and bank.
- **Items**: search or browse any item; see how it is crafted, what it is used for, who
  drops or sells it and which quests reward it.
- **Quests**: where a quest starts and ends, its objectives, the quest chain that leads to
  it in the order to do it, and what it leads to.
- **Dungeons**: entrance, bosses with their loot, and the dungeon's quests with the
  quests to do first.
- **Professions**: every recipe with its reagents and skill levels.
- **NPCs**: location, quests, loot and vendor stock.

A separate small **tracker** window shows only what is still missing for your goals.

## Install

Copy the `GoalNotes` folder into

    World of Warcraft/_forever_/Interface/AddOns/

**Also install QuestieDB (its Forever version)** from CurseForge or Wago. Quests, NPCs,
drop sources, vendors and map coordinates are not part of the game client; Goal Notes reads
them from QuestieDB. Without it the Goals, Items (recipes only), Dungeons (boss lists
only) and Professions tabs still work, and the rest says what is missing.

Open the window with `/gn`, the minimap button, or bind a key under Options > Keybindings.

## Using the wiki

| To | Do |
| --- | --- |
| Look something up | Pick a tab, type in the search box, click a result (or press Enter for the first one). Each tab remembers its search and page. |
| See what to do nearby | Open the Quests tab without typing: it lists the unfinished quests of your current zone. |
| Filter a list | The small funnel button next to the search box (Items, Quests, Professions). Everything is a tick box, so several weapon types, slots, zones or professions can be on at once. The line under the list says what is active; the x next to it, or a right-click on the funnel, clears it. |
| Sort a list | The sort button next to the funnel: by name, level, quality, skill or zone, also reversed. Right-click returns to the default. |
| Read a list at a glance | Every entry is a two-line card: icon and name, and under it the facts worth knowing (level, slot and type; quest kind, zone and status; profession, skill and how the recipe is learned; an NPC's level, zone and role). "Compact rows" in the view menu brings back one-line rows. |
| Choose the columns | Right-click the caption row above a list and tick columns: items (level, item level, slot, type, quality, cost, sells for, auction, source), quests (level, required level, XP, reputation, type, zone, status), recipes, NPCs (level, role, zone, distance), dungeons (level, type, players, bosses). The Goals tab's caption row works the same way. |
| Resize columns and the list | Drag the left edge of a column caption to make the column wider or narrower (on every tab, the Goals tab too). Drag the bar between the list and the page to give the list more or less of the window. "Reset appearance" in the settings restores the column widths. |
| Find the closest vendor (or any NPC) | NPCs > filter > Vendor, then sort by Distance (the sort button, or tick the Distance column and click its caption): the NPCs of the zone you are in come first, the closest on top, with the distance in yards. Sorting by distance without a filter lists everyone around you. Item pages do the same in "Sold by" and "Dropped by"; the grey line at the top of those sections switches it off. |
| See which dungeons fit your level | The Dungeons list shows each dungeon's levels (from the level it is tuned for to two above its highest boss; seven levels where the bosses are not known yet): green when it fits your level now, red when it is still too high, grey when you have outgrown it. Click the Level caption to sort by it. |
| See what a quest gives | Quest rows and pages show the experience (as given at the quest's own level); the page's "Rewards" section adds reputation and reward items, and hovering a quest in the list names the reward items. The Reputation column of the quest list shows and sorts by the reputation a quest gives. |
| See what an item costs | An item page's "Prices" section: what vendors sell it for (when a vendor has it), what vendors pay you for it, and the auction house price from the last scan of Auctionator or TradeSkillMaster when one of them is installed. The Items list has a column for each. |
| See on the map where to get what your goals miss | Nothing to do: the world map shows the icon of every item a tracked goal still lacks at the places to get it. For ore and herbs that is their nodes; otherwise the vendors that sell it, else the spawns of the creatures that drop it best, else the objects that hold it. Reagents of tracked recipes count too. Untick "Show in tracker" on a goal to take its items off the map, or switch the whole thing off in the minimap button's right-click menu ("Where to get what your goals miss"), where the icon size is set as well. With OpenMap both switches are also in OpenMap's own menu. The same icons show on the minimap for the zone you are in (also the gathering nodes, when those are switched on); an icon disappears once you are within 80 yards (40 to 100: "Hide on the minimap when closer than" in the same menu; never more than half of what the minimap shows at its zoom), so what you then see on the minimap is the game's own tracking (Find Minerals, Find Herbs) telling you whether the node is really there. "Also on the minimap" in the same menu switches that off. |
| Find better gear | Items > filter > "Gear for my level, best first": weapons and the armor your class wears from the last ten levels up to yours, highest item level on top. Adjust it with the normal filters afterwards. "Compare" on a gear page puts two items side by side. |
| See gathering nodes on the map | Right-click the minimap button > "Show gathering nodes": ore veins, herbs, chests and fishing pools appear on the world map of the zone. Click Mining, Herbalism, Chests or Fishing to switch a whole kind on or off; hover it to tick single node types (its ticks are kept while the kind is off). With the OpenMap addon every zone in view gets its nodes at any zoom; when more than 1500 would be on screen every zone shows an even share of its nodes until you zoom in. |
| Read an item's tooltip | Every item in the addon (goal rows, the tracker, lists, page links, the add box) has the same tooltip: the game's own, how it is made, what you and your other characters hold, where it comes from, and under it the small map of that place. |
| See how a needed item is made | Hover a craftable item (in a goal, the tracker or any list): the tooltip names the profession, the skill at which the recipe turns yellow and grey next to your own skill, every reagent with how many you have (green when enough), and how the recipe is learned. |
| Read recipe skill levels | Two numbers on a black plate: yellow is the skill at which the recipe turns yellow, grey where it stops giving skill. |
| Sort | Click a column caption (or the count on the left, for the name); click again to reverse. An arrow marks the sorted column. The sort button holds the same choices; right-click it for the default order. |
| Find an NPC | NPCs > filter: vendors, repairers, trainers, quest givers, innkeepers, flight masters and so on; bosses, rares and elites; and the zones or dungeons they are in. A filter lists without typing, e.g. every vendor in Westfall or every rare in two zones. |
| Tell quests apart | Every quest in a list has the game's icon for its kind (normal, group, dungeon, raid, PvP, daily, class). Quests > filter > "Kind of quest" narrows to the ticked kinds, and "Quests I have already done" lists finished ones too. Hover a quest for level, zone and status. |
| Find gear | Items > filter: weapon and armor types, slots, quality, stats the item must have, required level (presets, or type a range in the two boxes), and where it comes from (crafted, gathered, quest reward, dropped, sold). The row of icons above the list switches those sources with one click each (quest rewards, drops and vendors need QuestieDB). Sort by level or quality. |
| Level a profession | Professions > filter: tick your professions and "Still gives skill at my level", sort by skill. "I have every reagent" shows what you can make right now. The gear filters work here too (for example plate chest pieces a blacksmith can make). |
| See how a recipe is learned | A crafted item's page has "How to learn it": the trainer, or the pattern/plans/recipe item with where that comes from (vendor, drop, quest); click it for the full list. The profession page and item tooltips show the short form, and Professions > filter > "Learned from" narrows to trainer or recipe-item recipes. |
| Find recipes by reagent | Professions > filter > "Search by reagent name", then type the reagent ("rugged leather"). An item's page also lists everything it is used for. |
| Gather dungeon quests | Quests > filter > Dungeons and raids: tick the dungeons, or "Every dungeon and raid". Add "Only quests I can take at my level". Zones and reputations work the same way. Typing then searches inside that choice. |
| Fold a page | Click a section caption to fold it (remembered for every page of that kind); shift-click folds or unfolds all of them. "... and 12 more" opens the whole list. |
| Follow a quest chain | A quest page starts with "Quest chain": every quest to do, numbered in order, with "do this next" on the first open one and where to pick it up. |
| See drop chances | Shown next to creatures on item pages and next to loot on NPC and dungeon pages, where QuestieDB knows the chance (mostly quest items). |
| Compare gear | "Compare" at the top of a gear page. |
| Follow a link | Blue lines, item names and bosses open their own page. Back returns. |
| See item stats | Item pages list the full tooltip (stats, effects, requirements). Hovering any item line shows it too. |
| Find something on the map | Hover a green "(map)" line for a small map of the zone: the red dot is the place (the spawn closest to you when you are in that zone), yellow dots are the other spawns there. Click the line to open the world map with a pin on it. The same small map comes up when you hover any link to an NPC or object (quest givers, targets and turn-ins, drop sources, vendors, "Found in") and NPCs in the list on the left, so you rarely need to open their page for the location. Hovering an item shows where to get it: for ore and herbs the nodes of the zone you are in (in a city: the zone around it), else of the nearest zone that has them; for dropped items the spawns of the creatures with the best drop chance (those within a fifth of the best count as equal, and the ones in your zone come first); else the object that holds it or the vendor that sells it. The map names its zone. Gathered items also show it when hovered in the Items list, and their page has a "Gathered in" section listing every zone with nodes (the closest on top; hover a zone for its map, click to open the world map there). Quest links show no map; open the quest for its giver, targets and turn-in. |
| Add an item or quest to a goal | "Add to goal" at the top of its page asks which goal, or makes a new one named after it. Right-clicking an item or quest line adds it to the selected goal (the one you picked last). |
| Look up a linked item | Click the search box, then shift-click the item anywhere in the game. |
| Jump from a goal to the wiki | Right-click a goal row > Look up in the wiki. Clicking a tracker line does the same. |

## Using the goal list

| To | Do |
| --- | --- |
| Add an item | Type its name in the box at the bottom and press Enter. Arrow keys or the mouse choose a suggestion. |
| Set the amount | Use the number box next to the input, or type it: `24 longjaw mud snapper` or `rugged leather x40`. |
| Link an item | Click the input box, then shift-click the item in your bags, chat or a profession window. |
| Add a plain note | Type text that matches no item and press Enter, or press Shift+Enter. Click the note to tick it off. |
| Save up money | Type `100g`. The entry completes when you carry that much. |
| Reach a profession skill | Type `Cooking 225`. |
| Track a quest | Open it in the Quests tab (or a dungeon's quest list) and press "Add to goal". It completes when you turn the quest in. |
| Track a quest chain | A quest that needs other quests first is added with those as steps: finished ones are ticked, the one to do now is marked "next", and the tracker shows just that one until you press the plus button on its line, which lists every quest still to do. Right-click the quest > "Track this quest only" to hide the steps. |
| Track a quest reward | Add the item. If only a quest gives it, the chain of that quest appears under it. For other items: right-click > "Track the quest: ...". |
| Comment on an entry | Right-click it > Add a comment ("farm in Un'Goro"). |
| Change an amount | Click the number in the Need column. |
| Create a goal | "+ Goal" at the bottom left. The highlighted goal is where new entries go; click a goal title to select it. |
| Choose what the tracker shows | Tick or untick the box at the right end of a goal title. |
| Rename a goal | Double-click its title. |
| Collapse a goal | Click the plus/minus button. Right-click a goal title to collapse or expand all of them. |
| Hide an entry's reagents or quest steps | The plus/minus button in front of the entry. |
| See item stats | Hover a row. Hold Shift to compare with what you are wearing. |
| Compare two items | Click the spyglass on a gear row, then type or shift-click the other item. |
| Move or remove | Right-click a row or a goal title. |
| Track a recipe's materials | Add the crafted item or its pattern ("Pattern: Devilsaur Leggings"). Its reagents appear underneath with the amounts still needed. |
| Break a reagent down further | Right-click the reagent row (for example Cured Rugged Hide). |
| One shopping list for a whole set | Right-click the goal title > Combine materials into one list. |
| Browse items by kind | Use the funnel button (the same filter as the Items tab), then click the search box and scroll. Hover a suggestion to see how it is made and what it is used for. |
| See what your other characters have | Each character's bags are recorded as you play, its bank whenever you open it. A goal row and the tracker say in blue who else holds something you still miss ("3 on Banker, 2 on Mule"); the Alts column has the sum, and row tooltips and item pages split it into bags and bank ("On Banker: 33, bags 3 bank 30"), and chat tells you once when another character holds something a goal still lacks. Other characters never count towards your own Have. Right-click the Goals caption row > Characters (or Settings > Characters...) to switch a character off or forget it. |
| Tracker | A small window listing what is still missing. Toggle it with the note icon in the title bar, the minimap button's right-click menu, or `/gn tracker`. The plus/minus buttons fold a goal, a recipe's reagents, or the quests leading to a quest or quest reward. |
| Minimap button | Left-click: goal list. Right-click: a menu with the tracker and the gathering nodes shown on the world map. Shift-click: settings. Drag to move it. |

A gold check mark on a crafted item means every reagent is in your bags or bank. Materials
such as leather and bars are not broken down automatically even when a conversion recipe
exists; right-click the row and choose "Track its reagents" if you want that.

The Source column says where each item comes from (profession, vendor, creature or quest).

Settings (the gear in the title bar, or `/gn config`) cover opacity, scale, font size, border style, colors, which
columns are shown, and behaviour such as hiding completed entries. `/gn reset` brings the
window back to the middle of the screen.

Goals are saved per character. Settings are shared by all characters.

## Updating the item database

`GoalNotes/Data/` holds item names, types, slots, levels, vendor prices and stats (`Items.lua`), profession recipes
(`Recipes.lua`), dungeons with their level and bosses (`Dungeons.lua`) and gathering nodes (`Nodes.lua`). All are generated
by one script, `tools/update_db.py`, which is the only place bundled
data comes from:

| Data | Source | Kept current by |
| --- | --- | --- |
| Items, recipes, dungeons, dungeon levels | The Forever client tables on wago.tools (product `wowf`; dungeon levels: `ContentTuning` through `AreaTable` and `LFGDungeons`) | `tools/update_db.py`, run weekly by `.github/workflows/update-data.yml` |
| Gathering nodes | [GatherLite](https://github.com/wuild/gatherlite)'s Forever node database (collected from Wowhead by its maintainer), downloaded from its repository | The same script and workflow |
| Auction prices | Auctionator or TradeSkillMaster, read at runtime when installed | Scanning the auction house with them |
| Quests, quest XP, NPCs, spawn coordinates, drops, vendors | QuestieDB, read at runtime (not bundled: its licence does not allow copying the data) | Updating the QuestieDB addon |
| Zone maps, your position, distances | The game's own map API | The game |

The workflow opens a pull request when a new Forever build changes the data; the request
lists the items, recipes and dungeons the build adds, removes and changes
(`python3 tools/update_db.py --diff` prints the same for uncommitted data). To do it by
hand after a content patch:

    python3 tools/update_db.py

This downloads the newest Forever build from wago.tools and rewrites the files. Then
`/reload` in game. Options:

    python3 tools/update_db.py --build 1.60.1.70938   # a specific build
    python3 tools/update_db.py --locale deDE          # item names in another language

Items missing from the list can still be added by shift-clicking them or typing `#12345`
(the item id).

When a patch changes the interface number, update `## Interface:` in
`GoalNotes/GoalNotes.toc`. In game, `/dump select(4, GetBuildInfo())` prints the number.

## Development

    lua tests/run.lua

runs a smoke test against a fake WoW API (Lua 5.1). It catches Lua errors and logic
mistakes; it does not check how anything looks.

Files:

- `Core.lua`: saved data, goals, item counts, events, shift-click and tooltip hooks; the look (`ns.Hex` text colours, `ns.Style` row textures) in one block at the top
- `Alts.lua`: what each character of the account carries
- `Index.lua`: the name search used for items, quests and NPCs
- `ItemDB.lua`: item search, filters and recipe lookups
- `Wiki/Source.lua`: QuestieDB adapter, map pins, dungeon data
- `Wiki/Pages.lua`: what each wiki page and result list contains
- `UI/Widgets.lua`: window style, the item tooltip every list uses, drag handles and the autocomplete
- `UI/Filters.lua`: filter and sort menus and their buttons
- `UI/Main.lua`: the window and the goal list
- `UI/Browser.lua`: tabs and the wiki view
- `UI/Compare.lua`: item comparison
- `UI/Settings.lua`: settings window
- `UI/Tracker.lua`: the small tracker window
- `UI/MapNodes.lua`: icons on the world map (Blizzard's and OpenMap's): gathering nodes and the sources of goal items
- `UI/MapPreview.lua`: the small map shown next to hovered places, NPCs and items
- `UI/Minimap.lua`: minimap button

## Credits

Gathering node positions come from GatherLite, used under its MIT licence:

> MIT License. Copyright (c) 2019 Wuild
>
> Permission is hereby granted, free of charge, to any person obtaining a copy of this software and
> associated documentation files (the "Software"), to deal in the Software without restriction,
> including without limitation the rights to use, copy, modify, merge, publish, distribute,
> sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is
> furnished to do so, subject to the following conditions:
>
> The above copyright notice and this permission notice shall be included in all copies or
> substantial portions of the Software.
>
> THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT
> NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
> NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM,
> DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
> OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
