# Goal Notes

An addon for **World of Warcraft: Forever** (interface 16001, game version 1.60.1).

An in-game wiki and goal tracker in one window, so you do not need a browser:

- **Goals**: lists of items you are working towards, tracked against your bags and bank.
- **Items**: search or browse any item; see how it is crafted, what it is used for, who
  drops or sells it and which quests reward it.
- **Quests**: where a quest starts and ends, its objectives, what must be done first and
  what it leads to.
- **Dungeons**: entrance, bosses with their loot, and the dungeon's quests with their
  prerequisite chains.
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
| Look something up | Pick a tab, type in the search box, click a result. |
| Follow a link | Blue lines, item names and bosses open their own page. Back returns. |
| See full item stats | Hover any item line. |
| Find something on the map | Click a green "(map)" line: the world map opens with a pin there. |
| Add an item to your goal | Right-click an item line, or use "Add to goal" at the top of an item page. |
| Look up a linked item | Click the search box, then shift-click the item anywhere in the game. |
| Jump from a goal to the wiki | Right-click a goal row > Look up in the wiki. Clicking a tracker line does the same. |

## Using the goal list

| To | Do |
| --- | --- |
| Add an item | Type its name in the box at the bottom and press Enter. Arrow keys or the mouse choose a suggestion. |
| Set the amount | Use the number box next to the input, or type it: `24 longjaw mud snapper` or `rugged leather x40`. |
| Link an item | Click the input box, then shift-click the item in your bags, chat or a profession window. |
| Add a plain note | Type text that matches no item and press Enter, or press Shift+Enter. Click the note to tick it off. |
| Change an amount | Click the number in the Need column. |
| Create a goal | New Goal. The highlighted goal is where new items go; click a goal title to select it. |
| Rename a goal | Double-click its title. |
| Collapse a goal | Click the plus/minus button. |
| See item stats | Hover a row. Hold Shift to compare with what you are wearing. |
| Compare two items | Click the spyglass on a gear row, then type or shift-click the other item. |
| Move or remove | Right-click a row or a goal title. |
| Track a recipe's materials | Add the crafted item or its pattern ("Pattern: Devilsaur Leggings"). Its reagents appear underneath with the amounts still needed. |
| Break a reagent down further | Right-click the reagent row (for example Cured Rugged Hide). |
| One shopping list for a whole set | Right-click the goal title > Combine materials into one list. |
| Browse items by kind | Use the Filter button (armor, weapons, consumables, reagents, recipes; crafted or not), then click the search box and scroll. Hover a suggestion to see how it is made and what it is used for. |
| Tracker | A small window listing what is still missing. Right-click the minimap button or `/gn tracker`. Untick "Show in tracker" in a goal's menu to leave it out. |
| Minimap button | Left-click: goal list. Right-click: tracker. Shift-click: settings. Drag to move it. |

A gold check mark on a crafted item means every reagent is in your bags or bank. Materials
such as leather and bars are not broken down automatically even when a conversion recipe
exists; right-click the row and choose "Track its reagents" if you want that.

Settings (`/gn config`) cover opacity, scale, font size, border style, colors, which
columns are shown, and behaviour such as hiding completed entries. `/gn reset` brings the
window back to the middle of the screen.

Goals are saved per character. Settings are shared by all characters.

## Updating the item database

`GoalNotes/Data/` holds item names and types (`Items.lua`), profession recipes
(`Recipes.lua`) and dungeons with their bosses (`Dungeons.lua`). All three are generated
from the game's own tables. Quests, NPCs and drops update when you update QuestieDB. After a Forever content patch:

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

- `Core.lua`: saved data, goals, item counts, events, shift-click and tooltip hooks
- `Index.lua`: the name search used for items, quests and NPCs
- `ItemDB.lua`: item search, filters and recipe lookups
- `Wiki/Source.lua`: QuestieDB adapter, map pins, dungeon data
- `Wiki/Pages.lua`: what each wiki page and result list contains
- `UI/Widgets.lua`: window style and the autocomplete
- `UI/Main.lua`: the window and the goal list
- `UI/Browser.lua`: tabs and the wiki view
- `UI/Compare.lua`: item comparison
- `UI/Settings.lua`: settings window
- `UI/Tracker.lua`: the small tracker window
- `UI/Minimap.lua`: minimap button
