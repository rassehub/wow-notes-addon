-- GENERATED FILE - do not edit. Regenerate with: python3 tools/update_db.py
local _, ns = ...
-- Source: wago.tools Map + DungeonEncounter + MapDifficulty + AreaTable + LFGDungeons + ContentTuning, product wowf
-- One record per line: instanceMapID|type (1 dungeon, 2 raid)|players|level|name|boss;boss;...
ns.DungeonRaw = {
[==[
2994|1|5|48|Alcaz Prison|Overseer Wrex;Tidemistress Ca'zass;Katerina the Cleaner;The Questioner;Blazeroar
48|1|5|22|Blackfathom Deeps|Ghamoo-ra;Lady Sarevess;Geilhast;Lorgus Jett;Old Serra'kis;Twilight Lord Kelris;Baron Aquanis;Aku'mai;Gelihast
2974|1|5|55|Blackmaw Hold|Withermaw;Impaan the Imprisoner;Elder Shaman Bloodmane;Bonesnout the Unbroken;Varrox Bleakhoof;Blackmaw Behemoth;Unbound Spirit
230|1|5|48|Blackrock Depths|High Interrogator Gerstahn;Lord Roccor;Houndmaster Grebmar;Ring of Law;Pyromancer Loregrain;Lord Incendius;Warder Stilgiss;Fineous Darkvire;Bael'Gar;General Angerforge;Golem Lord Argelmach;Hurley Blackbreath;Phalanx;Ribbly Screwspigot;Plugger Spazzring;The Vault;Ambassador Flamelash;The Seven;Magmus;Princess Moira Bronzebeard;Emperor Dagran Thaurissan
229|1|10|53|Blackrock Spire|Highlord Omokk;Shadow Hunter Vosh'gajin;War Master Voone;Mother Smolderweb;Urok Doomhowl;Quartermaster Zigris;Halycon;Gizrul the Slavener;Overlord Wyrmthalak;Pyroguard Emberseer;Warchief Rend Blackhand;The Beast;General Drakkisath;Lord Valthalak
469|2|40|60|Blackwing Lair|Razorgore the Untamed;Vaelastrasz the Corrupt;Broodlord Lashlayer;Firemaw;Ebonroc;Flamegor;Chromaggus;Nefarian
2959|1|5|28|City of Dalaran|Arcane Anomaly;Fel Ancient;Mana Devourer;Mana Elemental;Unstable Sentinel;Lyn the Ignored;Atrexis the Grave Knight;Mana Wraith;Shade of the Archmage
36|1|5|16|Deadmines|Rhahk'Zor;Sneed;Miner Johnson;Gilnid;Captain Greenskin;Mr. Smite;Cookie;Edwin VanCleef
429|1|5|54|Dire Maul|Zevrim Thornhoof;Hydrospawn;Lethtendris;Pusillin;Alzzin the Wildshaper;Tendris Warpwood;Illyanna Ravenoak;Magister Kalendris;Immol'thar;Prince Tortheldrin;Guard Mol'dar;Stomper Kreeg;Guard Fengus;Guard Slip'kik;Captain Kromcrush;Cho'Rush the Observer;King Gordok;Lord Hel'nurath;Tsu'zee
2998|1|5|26|Excavation Site: Wetlands|Saltspine;Shadetooth;Highland Horror;Relic Guardian
90|1|5|25|Gnomeregan|Grubbis;Viscous Fallout;Electrocutioner 6000;Crowd Pummeler 9-60;Mekgineer Thermaplugg;Mechanical Menagerie
3039|1|10|40|Krol'dok Stronghold|Slavecrusher Grox;Twilight Commander Zarmok;Handler Ashka;Nar'gurk;Overseer Mugg
349|1|5|42|Maraudon|Noxxion;Razorlash;Tinkerer Gizlock;Lord Vyletongue;Celebras the Cursed;Landslide;Rotgrip;Princess Theradras
409|2|40|60|Molten Core|Lucifron;Magmadar;Gehennas;Garr;Shazzrah;Baron Geddon;Sulfuron Harbinger;Golemagg the Incinerator;Majordomo Executus;Ragnaros;The Molten Core
249|2|40|60|Onyxia's Lair|Onyxia
389|1|5|13|Ragefire Chasm|Oggleflint;Taragaman the Hungerer;Jergosh the Invoker;Bazzalan
129|1|5|34|Razorfen Downs|Tuten'kash;Plaguemaw the Rotting;Mordresh Fire Eye;Ragglesnout;Glutton;Amnennar the Coldbringer
47|1|5|24|Razorfen Kraul|Roogug;Aggem Thorncurse;Death Speaker Jargba;Overlord Ramtusk;Agathelos the Raging;Charlga Razorflank
2999|1|5|15|Ruins of Lordaeron|Witherfang;The Abandoned;The Butcher;Lordaeron Captain;Viktor the Vile;Bjork;Rath'mael
189|1|5|30|Scarlet Monastery|Interrogator Vishas;Bloodmage Thalnos;Houndmaster Loksey;Arcanist Doan;Herod;High Inquisitor Fairbanks;High Inquisitor Whitemane
289|1|5|57|Scholomance|Kirtonos;Jandice Barov;Rattlegore;Marduk Blackpool;Vectus;Kormok;Ras Frostwhisperer;Instructor Malicia;Doctor Theolen Krastinov;Lorekeeper Polkelt;The Ravenian;Lord Alexei Barov;Lady Illucia Barov;Darkmaster Gandling
33|1|5|18|Shadowfang Keep|Rethilgore;Razorclaw the Butcher;Baron Silverlaine;Commander Springvale;Odo the Blindwatcher;Fenrus the Devourer;Wolf Master Nandos;Archmage Arugal
34|1|5|23|Stormwind Stockade|Targorr the Dread;Kam Deepfury;Hamhock;Dextren Ward;Bazil Thredd
329|1|5|55|Stratholme|Hearthsinger Forresten;Timmy the Cruel;Malor the Zealous;Cannon Master Willey;Archivist Galford;Balnazzar;The Unforgiven;Baroness Anastari;Nerub'enkan;Maleki the Pallid;Magistrate Barthilas;Ramstein the Gorger;Baron Rivendare;Black Guard Swordsmith;Crimson Hammersmith;Ezra Grimm;Postmaster Malown;Skul;Stonespine
109|1|5|45|Sunken Temple|Avatar of Hakkar;Atal'alarion;Jammal'an the Prophet;Dreamscythe;Festering Rotslime;Weaver;Atal'ai Defenders;Shade of Eranikus;Dreamscythe and Weaver;Hazzas;Morphaz;Jammal'an and Ogom;Morphaz and Hazzas
2970|1|5|35|The Drowned City|Zul'Alai;Var'Taka;Captain Dreadrise;Deathless Guardians;Primeval Elemental;Min'loth the Serpent
3065|1|5|13|The Hall of Thanes|Faldrim Anvilmar;Infurnus;Plunder;Durgen Dirgehammer
3001|1|5|60|The Shaper's Terrace|Titanosaur;Ravasaur Hunters;Thunderhoof;Venomridge;Direhorn Matriarch;Cinder;King Op;Snowtalon;Bolt;Vitrix;Nanaya
70|1|5|35|Uldaman|Revelosh;The Lost Dwarves;Ironaya;Obsidian Sentinel;Ancient Stone Keeper;Galgann Firehammer;Grimlok;Archaedas
43|1|5|17|Wailing Caverns|Lady Anacondra;Lord Cobrahn;Kresh;Lord Pythas;Skum;Lord Serpentis;Verdan the Everliving;Mutanus the Devourer
209|1|5|42|Zul'Farrak|Hydromancer Velratha;Gahz'rilla;Antu'sul;Theka the Martyr;Witch Doctor Zum'rah;Nekrum Gutchewer;Shadowpriest Sezz'ziz;Chief Ukorz Sandscalp
309|2|20|60|Zul'Gurub|High Priestess Jeklik;High Priest Venoxis;High Priestess Mar'li;Bloodlord Mandokir;Edge of Madness;High Priest Thekal;Gahz'ranka;High Priestess Arlokk;Jin'do the Hexxer;Hakkar
]==],
}
