-- GENERATED FILE - do not edit. Regenerate with: python3 tools/update_db.py
local _, ns = ...
-- Source: wago.tools ItemSparse + Item, product wowf (World of Warcraft: Forever)
ns.ItemDBBuild = "1.60.1.70938"
ns.ItemDBLocale = "enUS"
ns.ItemDBDate = "2026-11-13"
ns.ItemDBCount = 27854
-- One record per line: itemID|quality|classID|name
ns.ItemDBRaw = {
[==[
25|1|2|Worn Shortsword
35|1|2|Bent Staff
36|1|2|Worn Mace
37|1|2|Worn Axe
38|1|4|Recruit's Shirt
39|0|4|Recruit's Pants
40|1|4|Recruit's Boots
43|1|4|Squire's Boots
44|0|4|Squire's Pants
45|1|4|Squire's Shirt
47|1|4|Footpad's Shoes
48|0|4|Footpad's Pants
49|1|4|Footpad's Shirt
51|1|4|Neophyte's Boots
52|0|4|Neophyte's Pants
53|1|4|Neophyte's Shirt
55|1|4|Apprentice's Boots
56|0|4|Apprentice's Robe
57|0|4|Acolyte's Robe
59|1|4|Acolyte's Shoes
60|1|4|Layered Tunic
61|1|4|Dwarven Leather Pants
79|1|4|Dwarven Cloth Britches
80|1|4|Soft Fur-lined Shoes
85|1|4|Dirty Leather Vest
117|1|0|Tough Jerky
118|1|0|Minor Healing Potion
120|0|4|Thug Pants
121|1|4|Thug Boots
127|1|4|Trapper's Shirt
129|1|4|Rugged Trapper's Boots
139|0|4|Brawler's Pants
140|1|4|Brawler's Boots
147|0|4|Rugged Trapper's Pants
148|1|4|Rugged Trapper's Shirt
153|0|4|Primitive Kilt
154|1|4|Primitive Mantle
159|1|0|Refreshing Spring Water
182|1|12|Garrick's Head
193|1|4|Tattered Cloth Vest
194|1|4|Tattered Cloth Pants
195|1|4|Tattered Cloth Boots
200|1|4|Thick Cloth Vest
201|1|4|Thick Cloth Pants
202|1|4|Thick Cloth Shoes
203|1|4|Thick Cloth Gloves
209|1|4|Dirty Leather Pants
210|1|4|Dirty Leather Boots
236|1|4|Cured Leather Armor
237|1|4|Cured Leather Pants
238|1|4|Cured Leather Boots
239|1|4|Cured Leather Gloves
285|1|4|Scalemail Vest
286|1|4|Scalemail Pants
287|1|4|Scalemail Boots
414|1|0|Dalaran Sharp
422|1|0|Dwarven Mild
537|0|15|Dull Frenzy Scale
555|0|15|Rough Vulture Feathers
556|0|15|Buzzard Beak
647|4|2|Destiny
710|1|4|Bracers of the People's Militia
711|1|4|Tattered Cloth Gloves
714|1|4|Dirty Leather Gloves
718|1|4|Scalemail Gloves
719|1|4|Rabbit Handler Gloves
720|3|4|Brawler Gloves
723|1|7|Goretusk Liver
724|1|0|Goretusk Liver Pie
725|1|12|Gnoll Paw
727|2|2|Notched Shortsword
728|1|9|Recipe: Westfall Stew
729|1|7|Stringy Vulture Meat
730|1|7|Murloc Eye
731|1|7|Goretusk Snout
732|1|12|Okra
733|1|0|Westfall Stew
735|1|12|Rolf and Malakai's Medallions
737|1|12|Holy Spring Water
738|1|12|Sack of Barley
739|1|12|Sack of Corn
740|1|12|Sack of Rye
742|1|12|A Sycamore Branch
743|1|12|Bundle of Charred Oak
744|2|4|Thunderbrew's Boot Flask
745|1|12|Marshal McBride's Documents
748|1|12|Stormwind Armor Marker
750|1|12|Tough Wolf Meat
752|1|12|Red Burlap Bandana
753|2|2|Dragonmaw Shortsword
754|3|2|Shortsword of Vengeance
755|0|15|Melted Candle
756|2|2|Tunnel Pick
763|2|4|Ice-covered Bracers
765|1|7|Silverleaf
766|1|2|Flanged Mace
767|1|2|Long Bo Staff
768|1|2|Lumberjack Axe
769|1|7|Chunk of Boar Meat
770|0|15|Pointy Crocolisk Tooth
771|0|15|Chipped Boar Tusk
772|1|12|Large Candle
773|1|12|Gold Dust
774|2|7|Malachite
776|3|2|Vendetta
777|0|15|Prowler Teeth
778|1|2|Kobold Excavation Pick
779|0|15|Shiny Seashell
780|1|12|Torn Murloc Fin
781|1|2|Stone Gnoll Hammer
782|1|12|Painted Gnoll Armband
783|1|7|Light Hide
785|1|7|Mageroyal
787|1|0|Slitherskin Mackerel
789|2|2|Stout Battlehammer
790|2|2|Forester's Axe
791|3|2|Gnarled Ash Staff
792|1|4|Knitted Sandals
793|1|4|Knitted Gloves
794|1|4|Knitted Pants
795|1|4|Knitted Tunic
796|1|4|Rough Leather Boots
797|1|4|Rough Leather Gloves
798|1|4|Rough Leather Pants
799|1|4|Rough Leather Vest
804|1|1|Large Blue Sack
805|1|1|Small Red Pouch
809|4|2|Bloodrazor
810|4|2|Hammer of the Northern Wind
811|4|2|Axe of the Deep Woods
812|4|2|Glowing Brightwood Staff
813|0|15|Broken Cog
814|1|7|Flask of Oil
816|2|2|Small Hand Blade
818|2|7|Tigerseye
820|2|2|Slicer Blade
821|2|4|Riverpaw Leather Vest
826|2|2|Brutish Riverpaw Axe
827|2|2|Wicked Blackjack
828|1|1|Small Blue Pouch
829|1|12|Red Leather Bandana
832|2|4|Silver Defias Belt
833|4|4|Lifestone
835|1|0|Large Rope Net
837|1|4|Heavy Weave Armor
838|1|4|Heavy Weave Pants
839|1|4|Heavy Weave Gloves
840|1|4|Heavy Weave Shoes
841|1|12|Furlbrow's Pocket Watch
843|1|4|Tanned Leather Boots
844|1|4|Tanned Leather Gloves
845|1|4|Tanned Leather Pants
846|1|4|Tanned Leather Jerkin
847|1|4|Chainmail Armor
848|1|4|Chainmail Pants
849|1|4|Chainmail Boots
850|1|4|Chainmail Gloves
851|1|2|Cutlass
852|1|2|Mace
853|1|2|Hatchet
854|1|2|Quarter Staff
856|1|1|Blue Leather Bag
857|1|1|Large Red Sack
858|1|0|Lesser Healing Potion
859|1|4|Fine Cloth Shirt
860|1|4|Cavalier's Boots
862|3|4|Runed Ring
863|2|2|Gloom Reaper
864|2|2|Knightly Longsword
865|2|2|Leaden Mace
866|2|2|Monk's Staff
867|4|4|Gloves of Holy Might
868|4|2|Ardent Custodian
869|4|2|Dazzling Longsword
870|4|2|Fiery War Axe
871|4|2|Flurry Axe
872|2|2|Rockslicer
873|4|2|Staff of Jordan
875|1|15|Brown Horse Summoning
876|1|4|Worn Wooden Buckler
878|0|7|Fist-sized Spinneret
880|2|2|Staff of Horrors
884|1|12|Ghoul Rib
885|2|2|Black Metal Axe
886|2|2|Black Metal Shortsword
887|0|15|Pound of Flesh
888|3|4|Naga Battle Gloves
889|1|12|A Dusty Unsent Letter
890|3|2|Twisted Chanter's Staff
892|2|4|Gnoll Casting Gloves
893|0|15|Dire Wolf Fang
895|1|12|Worgen Skull
896|1|12|Worgen Fang
897|2|4|Madwolf Bracers
899|2|2|Venom Web Fang
901|1|15|Deptecated White Stallion Summoning (Mount)
910|1|12|An Undelivered Letter
911|2|2|Ironwood Treebranch
913|2|2|Huge Ogre Sword
914|2|4|Large Ogre Chain Armor
915|1|12|Red Silk Bandana
916|1|12|A Torn Journal Page
918|1|1|Deviate Hide Pack
920|2|2|Wicked Spiked Mace
921|1|12|A Faded Journal Page
922|1|2|Dacian Falx
923|1|2|Longsword
924|1|2|Maul
925|1|2|Flail
926|1|2|Battle Axe
927|1|2|Double Axe
928|1|2|Long Staff
929|1|0|Healing Potion
932|1|1|Fel Steed Saddlebags
933|1|1|Large Rucksack
934|3|2|Stalvan's Reaper
935|3|2|Night Watch Shortsword
936|3|2|Midnight Mace
937|3|2|Black Duskwood Staff
938|1|12|Muddy Journal Pages
939|1|12|A Bloodstained Journal Page
940|4|4|Robes of Insight
942|4|4|Freezing Band
943|4|2|Warden Staff
944|4|2|Elemental Mage Staff
945|1|2|Shadow Sword
948|1|2|Nature Sword
951|1|0|Tome of Whirlwind (TEST)
954|1|0|Scroll of Strength
955|1|0|Scroll of Intellect
957|1|12|William's Shipment
961|1|0|Healing Herb
962|1|12|Pork Belly Pie
966|1|9|Tome of Frost Shield
967|1|9|Tome of Frost Ward
968|1|9|Tome of Fire Blast
973|1|9|Tome of Fireball II
974|1|9|Tome of Frost Armor II
975|1|9|Tome of Chains of Ice
976|1|9|Tome of Remove Curse
980|1|9|Tome of Frost Shield II
981|1|12|Bernice's Necklace
983|1|4|Red Linen Sash
985|1|9|Tome of Khadgar's Unlocking
986|1|9|Tome of Frostbolt II
989|1|9|Tome of Frost Nova
992|1|9|Tome of Fireball III
994|1|9|Tome of Ice Armor
996|1|4|Ring of Righteous Flame (TEST)
997|1|2|Fire Sword of Crippling
1002|1|9|Tome of Lesser Invisibility
1004|1|9|Tome of Chains of Ice II
1006|1|12|Brass Collar
1008|1|2|Well-used Sword
1009|2|2|Compact Hammer
1010|1|2|Gnarled Short Staff
1011|1|2|Sharp Axe
1013|1|12|Iron Rivet
1015|1|7|Lean Wolf Flank
1017|1|0|Seasoned Wolf Kabob
1019|1|12|Red Linen Bandana
1029|1|9|Tablet of Serpent Totem
1030|1|9|Tablet of Unyielding Will
1031|1|9|Tablet of Molten Blast
1032|1|9|Tablet of Agitating Totem
1033|1|9|Tablet of Nullify Poison
1034|1|9|Tablet of Undying Strength
1035|1|9|Tablet of Call Spirit
1036|1|9|Tablet of Nullify Disease
1037|1|9|Tablet of Lightning Bolt II
1038|1|9|Tablet of Restoration II
1041|3|15|Horn of the Black Wolf
1048|1|9|Tablet of Lightning Shield II
1049|1|9|Tablet of Purge
1052|1|9|Tablet of Spirit Armor II
1053|1|9|Tablet of Molten Blast II
1057|1|9|Tablet of Restoration III
1058|1|9|Tablet of Lightning Bolt III
1061|1|9|Tablet of Nullify Poison II
1063|1|9|Tablet of Nullify Disease II
1072|1|0|Full Moonshine
1074|0|15|Hard Spider Leg Tip
1075|1|12|Shadowhide Pendant
1076|2|4|Defias Renegade Ring
1077|2|4|Defias Mage Ring
1080|1|7|Tough Condor Meat
1081|1|7|Crisp Spider Meat
1082|1|0|Redridge Goulash
1083|1|12|Glyph of Azora
1084|1|9|Codex of Renew
1085|1|9|Codex of Mind Vision
1086|1|9|Codex of Inner Fire
1087|1|9|Codex of Shadow Word: Pain
1088|1|9|Codex of Renew II
1089|1|9|Codex of Nullify Disease
1090|1|9|Codex of Resurrection
1091|1|9|Codex of Holy Smite II
1092|1|9|Codex of Lesser Heal II
1093|1|9|Codex of Remove Curse
1095|1|9|Codex of Dispel Magic
1096|1|9|Codex of Shadow Word: Pain II
1100|1|9|Codex of Holy Smite III
1101|1|9|Codex of Renew V
1102|1|9|Codex of Lesser Heal III
1105|1|9|Codex of Renew VI
1108|1|9|Codex of Renew III
1109|1|9|Codex of Dominate
1111|1|9|Codex of Sleep
1112|1|9|Codex of Holy Word: Fortitude II
1113|1|0|Conjured Bread
1114|1|0|Conjured Rye
1116|2|4|Ring of Pure Silver
1119|1|0|Bottled Spirits
1121|3|4|Feet of the Lynx
1127|1|0|Flash Bundle
1129|1|12|Ghoul Fang
1130|1|12|Vial of Spider Venom
1131|2|4|Totem of Infliction
1132|3|15|Horn of the Timber Wolf
1133|1|15|Horn of the Winter Wolf
1134|1|15|Horn of the Gray Wolf
1136|1|9|Libram: Divine Favor II
1138|1|9|Libram: Divine Favor
1139|1|9|Libram: Cleanse
1141|1|9|Libram: Holy Light II
1144|1|9|Libram: Divine Shield
1146|1|9|Libram: Resurrection
1149|1|9|Libram: Seal of Might II
1150|1|9|Libram: Purify
1151|1|9|Libram: Holy Light III
1154|1|4|Belt of the People's Militia
1155|3|2|Rod of the Sleepwalker
1156|3|4|Lavishly Jeweled Ring
1158|1|2|Solid Metal Club
1159|1|2|Militia Quarterstaff
1161|1|2|Militia Shortsword
1164|1|9|Sam's Tome
1166|1|4|Dented Buckler
1167|1|4|Small Targe
1168|4|4|Skullflame Shield
1169|4|4|Blackskull Shield
1171|1|4|Well-stitched Robe
1172|2|4|Grayson's Torch
1173|1|4|Weather-worn Boots
1175|0|15|A Gold Tooth
1176|1|0|Smelling Salts
1177|1|0|Oil of Olaf
1178|1|0|Explosive Rocket
1179|1|0|Ice Cold Milk
1180|1|0|Scroll of Stamina
1181|1|0|Scroll of Spirit
1182|1|4|Brass-studded Bracers
1183|1|4|Elastic Wristguards
1187|2|0|Spiked Collar
1189|2|4|Overseer's Ring
1190|2|4|Overseer's Cloak
1191|1|0|Bag of Marbles
1193|1|4|Banded Buckler
1194|1|2|Bastard Sword
1195|1|2|Kobold Mining Shovel
1196|1|2|Tabar
1197|1|2|Giant Mace
1198|1|2|Claymore
1199|1|0|Charged Soulstone
1200|1|4|Large Wooden Shield
1201|1|4|Dull Heater Shield
1202|1|4|Wall Shield
1203|3|4|Aegis of Stormwind
1204|4|4|The Green Tower
1205|1|0|Melon Juice
1206|2|7|Moss Agate
1207|2|2|Murphstar
1208|1|12|Maybell's Love Letter
1210|2|7|Shadowgem
1211|2|4|Gnoll War Harness
1212|0|15|Gnoll Spittle
1213|1|4|Gnoll Kindred Bracers
1214|2|2|Gnoll Punisher
1215|2|4|Support Girdle
1216|2|4|Frost Bracers
1217|1|12|Unknown Reward
1218|2|2|Heavy Gnoll War Club
1219|2|2|Redridge Machete
1220|2|2|Lupine Axe
1221|1|12|Underbelly Whelp Scale
1222|0|15|Broken Tooth
1224|1|9|Grimoire of Sense Demons
1228|1|9|Grimoire of Blood Boil
1229|1|9|Grimoire of Create Soulstone
1231|1|9|Grimoire of Shadow Bolt II
1232|1|9|Grimoire of Demon Skin II
1238|1|9|Grimoire of Fear
1239|1|9|Grimoire of Siphon Mana
1243|1|9|Grimoire of Shadow Bolt III
1244|1|9|Grimoire of Demon Armor
1245|1|9|Grimoire of Immolate II
1246|1|9|Grimoire of Demon Breath
1250|1|9|Grimoire of Detect Lesser Invisibility
1251|1|0|Linen Bandage
1252|1|12|Gramma Stonefield's Note
1254|1|4|Lesser Firestone
1256|1|12|Crystal Kelp Frond
1257|1|12|Invisibility Liquor
1259|0|2|JYoo test item
1260|1|12|Tharil'zun's Head
1261|1|12|Midnight Orb
1262|1|0|Keg of Thunderbrew
1263|4|2|Brain Hacker
1264|2|2|Headbasher
1265|3|2|Scorpion Sting
1270|2|4|Finely Woven Cloak
1273|2|4|Forest Chain
1274|1|12|Hops
1275|2|4|Deputy Chain Coat
1276|2|4|Fire Hardened Buckler
1280|2|4|Cloaked Hood
1282|2|4|Sparkmetal Coif
1283|1|12|Verner's Note
1284|1|12|Crate of Horseshoes
1287|2|2|Giant Tarantula Fang
1288|1|7|Large Venom Sac
1292|3|2|Butcher's Cleaver
1293|1|12|The State of Lakeshire
1294|1|12|The General's Response
1296|2|2|Blackrock Mace
1297|2|4|Robes of the Shadowcaster
1299|2|4|Lesser Belt of the Spire
1300|2|2|Lesser Staff of the Spire
1302|2|4|Black Whelp Gloves
1303|2|4|Bridgeworker's Gloves
1304|2|4|Riding Gloves
1306|2|4|Wolfmane Wristguards
1307|1|12|Gold Pickup Schedule
1309|1|12|Oslow's Toolbox
1310|2|4|Smith's Trousers
1314|2|4|Ghoul Fingers
1315|4|4|Lei of Lilies
1317|2|2|Hardened Root Staff
1318|3|2|Night Reaver
1319|2|4|Ring of Iron Will
1322|1|0|Fishliver Oil
1325|1|12|Daffodil Bouquet
1326|1|0|Sauteed Sunfish
1327|1|12|Wiley's Note
1328|1|9|Book of Faerie Fire
1332|1|9|Book of Cure Poison
1334|1|9|Book of Rejuvenation II
1339|1|9|Book of Entangling Roots
1341|1|9|Book of Moonfire
1349|1|12|Abercrombie's Crate
1351|2|4|Fingerbone Bracers
1352|1|12|Cracked Skull Mortar
1353|1|12|Shaw's Report
1355|2|4|Buckskin Cape
1356|1|12|Commendation - Elwynn Forest
1357|1|12|Captain Sander's Treasure Map
1358|1|12|A Clue to Sander's Treasure
1359|1|4|Lion-stamped Gloves
1360|1|4|Stormwind Chain Gloves
1361|1|12|Another Clue to Sander's Treasure
1362|1|12|Final Clue to Sander's Treasure
1364|0|4|Ragged Leather Vest
1366|0|4|Ragged Leather Pants
1367|0|4|Ragged Leather Boots
1368|0|4|Ragged Leather Gloves
1369|0|4|Ragged Leather Belt
1370|0|4|Ragged Leather Bracers
1372|0|4|Ragged Cloak
1374|0|4|Frayed Shoes
1376|0|4|Frayed Cloak
1377|0|4|Frayed Gloves
1378|0|4|Frayed Pants
1380|0|4|Frayed Robe
1381|1|12|A Mysterious Message
1382|1|2|Rock Mace
1383|1|2|Stone Tomahawk
1384|1|2|Dull Blade
1386|1|2|Thistlewood Axe
1387|2|2|Ghoulfang
1388|1|2|Crooked Staff
1389|1|2|Kobold Mining Mallet
1391|2|2|Riverpaw Mystic Staff
1394|2|2|Driftwood Club
1395|0|4|Apprentice's Pants
1396|0|4|Acolyte's Pants
1399|1|0|Magic Candle
1400|1|0|Swiftfeather Token
1401|1|0|Green Tea Leaf
1402|1|0|Brimstone
1404|2|4|Tidal Charm
1405|2|2|Foamspittle Staff
1406|2|2|Pearl-encrusted Spear
1407|1|12|Solomon's Plea to Westfall
1408|1|12|Stoutmantle's Response to Solomon
1409|1|12|Solomon's Plea to Darkshire
1410|1|12|Ebonlocke's Response to Solomon
1411|0|2|Withered Staff
1412|0|2|Crude Bastard Sword
1413|0|2|Feeble Sword
1414|0|2|Cracked Sledge
1415|0|2|Carpenter's Mallet
1416|0|2|Rusty Hatchet
1417|0|2|Beaten Battle Axe
1418|0|4|Worn Leather Belt
1419|0|4|Worn Leather Boots
1420|0|4|Worn Leather Bracers
1421|0|4|Worn Hide Cloak
1422|0|4|Worn Leather Gloves
1423|0|4|Worn Leather Pants
1425|0|4|Worn Leather Vest
1427|0|4|Patchwork Shoes
1429|0|4|Patchwork Cloak
1430|0|4|Patchwork Gloves
1431|0|4|Patchwork Pants
1433|0|4|Patchwork Armor
1434|1|0|Glowing Wax Stick
1436|2|4|Frontier Britches
1438|1|4|Warrior's Shield
1440|2|2|Gnoll Skull Basher
1443|4|4|Jeweled Amulet of Cainwyn
1445|1|4|Blackrock Pauldrons
1446|2|4|Blackrock Boots
1447|4|4|Ring of Saviors
1448|2|4|Blackrock Gauntlets
1449|2|4|Minor Channeling Ring
1450|1|0|Potion of Fervor
1451|1|12|Bottle of Zombie Juice
1453|1|12|Spectral Comb
1454|3|2|Axe of the Enforcer
1455|2|2|Blackrock Champion's Axe
1457|2|2|Shadowhide Mace
1458|2|2|Shadowhide Maul
1459|2|2|Shadowhide Scalper
1460|2|2|Shadowhide Two-handed Sword
1461|2|2|Slayer's Battle Axe
1462|2|4|Ring of the Shadow
1464|0|15|Buzzard Talon
1465|2|2|Tigerbane
1467|1|12|Spotted Sunfish
1468|1|7|Murloc Fin
1469|2|2|Scimitar of Atun
1470|1|1|Murloc Skin Bag
1473|2|2|Riverside Staff
1475|1|7|Small Venom Sac
1476|0|15|Snapped Spider Limb
1477|1|0|Scroll of Agility II
1478|1|0|Scroll of Protection II
1479|1|4|Salma's Oven Mitts
1480|2|2|Fist of the People's Militia
1481|3|2|Grimclaw
1482|3|2|Shadowfang
1483|3|2|Face Smasher
1484|3|2|Witching Stave
1485|0|2|Pitchfork
1486|3|4|Tree Bark Jacket
1487|1|0|Conjured Pumpernickel
1488|3|4|Avenger's Armor
1489|3|4|Gloomshroud Armor
1490|2|4|Guardian Talisman
1491|3|4|Ring of Precision
1493|3|2|Heavy Marauder Scimitar
1495|0|4|Calico Shoes
1497|0|4|Calico Cloak
1498|0|4|Calico Gloves
1499|0|4|Calico Pants
1501|0|4|Calico Tunic
1502|0|4|Warped Leather Belt
1503|0|4|Warped Leather Boots
1504|0|4|Warped Leather Bracers
1505|0|4|Warped Cloak
1506|0|4|Warped Leather Gloves
1507|0|4|Warped Leather Pants
1509|0|4|Warped Leather Vest
1510|0|2|Heavy Hammer
1511|0|2|Commoner's Sword
1512|0|2|Crude Battle Axe
1513|0|2|Old Greatsword
1514|0|2|Rusty Warhammer
1515|0|2|Rough Wooden Staff
1516|0|2|Worn Hatchet
1518|1|12|Ghost Hair Comb
1519|1|12|Bloodscalp Ear
1520|0|15|Troll Sweat
1521|2|2|Lumbering Ogre Axe
1522|2|2|Headhunting Spear
1523|2|2|Huge Stone Club
1524|1|12|Skullsplitter Tusk
1528|1|12|Handful of Oats
1529|2|7|Jade
1532|1|12|Shrunken Head
1534|1|9|Libram: Holy Light IV
1536|1|9|Libram: Seal of Wrath
1537|1|1|Old Blanchy's Feed Pouch
1539|2|2|Gnarled Hermit's Staff
1547|2|4|Shield of the Faith
1554|1|9|Tome of Frostbolt III
1557|2|4|Buckler of the Seas
1559|1|9|Tome of Arcane Missiles II
1560|2|4|Bluegill Sandals
1561|2|4|Harvester's Robe
1566|2|2|Edge of the People's Militia
1567|1|9|Tome of Khadgar's Unlocking II
1568|1|9|Tome of Water Elemental
1571|1|9|Tome of Frost Nova II
1574|1|9|Tome of Fire Ward
1588|1|9|Tablet of Molten Blast III
1589|1|9|Tablet of Spirit Armor III
1591|1|9|Tablet of Lightning Shield III
1596|1|12|Ghost Hair Thread
1597|1|9|Tablet of Lightning Storm
1598|1|12|Rot Blossom
1602|3|2|Sickle Axe
1603|1|9|Tablet of Call Spirit II
1604|2|2|Chromatic Sword
1607|3|2|Soulkeeper
1608|2|2|Skullcrusher Mace
1613|2|2|Spiritchaser Staff
1619|1|9|Tablet of Lightning Storm II
1623|1|1|Raptor Skin Pouch
1624|2|4|Skullsplitter Helm
1625|2|2|Exquisite Flamberge
1630|0|15|Broken Electro-lantern
1637|1|12|Letter to Ello
1639|2|2|Grinning Axe
1640|2|2|Monstrous War Axe
1641|1|9|Codex of Shadow Word: Pain III
1645|1|0|Moonberry Juice
1648|1|9|Codex of Heal IV
1651|1|9|Codex of Holy Word: Shield VI
1652|1|1|Sturdy Lunchbox
1656|1|12|Translated Letter
1657|1|9|Codex of Resurrection II
1658|1|9|Codex of Shadow Word: Pain IV
1659|2|4|Engineering Gloves
1664|2|2|Spellforce Rod
1676|1|9|Codex of Sleep II
1677|2|4|Drake-scale Vest
1678|3|4|Black Ogre Kickers
1679|2|2|Korg Bat
1680|2|2|Headchopper
1681|1|9|Grimoire of Cripple
1685|1|1|Troll-hide Bag
1686|0|15|Bristly Whisker
1687|0|15|Retractable Claw
1688|0|15|Long Soft Tail
1696|0|15|Curved Raptor Talon
1697|0|15|Keen Raptor Tooth
1701|0|15|Curved Basilisk Claw
1702|0|15|Intact Basilisk Spine
1703|1|0|Crystal Basilisk Spine
1705|2|7|Lesser Moonstone
1706|0|15|Azuredeep Shards
1707|1|0|Stormwind Brie
1708|1|0|Sweet Nectar
1710|1|0|Greater Healing Potion
1711|1|0|Scroll of Stamina II
1712|1|0|Scroll of Spirit II
1713|3|4|Ankh of Life
1714|3|4|Necklace of Calisea
1715|3|4|Polished Jazeraint Armor
1716|3|4|Robe of the Magi
1717|3|4|Double Link Tunic
1718|3|4|Basilisk Hide Pants
1720|3|2|Tanglewood Staff
1721|3|2|Viking Warhammer
1722|3|2|Thornstone Sledgehammer
1725|1|1|Large Knapsack
1726|3|2|Poison-tipped Bone Spear
1727|3|2|Sword of Decay
1728|4|2|Teebu's Blazing Longsword
1729|1|1|Gunnysack of the Night Watch
1730|0|4|Worn Mail Belt
1731|0|4|Worn Mail Boots
1732|0|4|Worn Mail Bracers
1733|0|4|Worn Cloak
1734|0|4|Worn Mail Gloves
1735|0|4|Worn Mail Pants
1737|0|4|Worn Mail Vest
1738|0|4|Laced Mail Belt
1739|0|4|Laced Mail Boots
1740|0|4|Laced Mail Bracers
1741|0|4|Laced Cloak
1742|0|4|Laced Mail Gloves
1743|0|4|Laced Mail Pants
1744|0|4|Laced Mail Shoulderpads
1745|0|4|Laced Mail Vest
1746|0|4|Linked Chain Belt
1747|0|4|Linked Chain Boots
1748|0|4|Linked Chain Bracers
1749|0|4|Linked Chain Cloak
1750|0|4|Linked Chain Gloves
1751|0|4|Linked Chain Pants
1752|0|4|Linked Chain Shoulderpads
1753|0|4|Linked Chain Vest
1754|0|4|Reinforced Chain Belt
1755|0|4|Reinforced Chain Boots
1756|0|4|Reinforced Chain Bracers
1757|0|4|Reinforced Chain Cloak
1758|0|4|Reinforced Chain Gloves
1759|0|4|Reinforced Chain Pants
1760|0|4|Reinforced Chain Shoulderpads
1761|0|4|Reinforced Chain Vest
1764|0|4|Canvas Shoes
1766|0|4|Canvas Cloak
1767|0|4|Canvas Gloves
1768|0|4|Canvas Pants
1769|0|4|Canvas Shoulderpads
1770|0|4|Canvas Vest
1772|0|4|Brocade Shoes
1774|0|4|Brocade Cloak
1775|0|4|Brocade Gloves
1776|0|4|Brocade Pants
1777|0|4|Brocade Shoulderpads
1778|0|4|Brocade Vest
1780|0|4|Cross-stitched Sandals
1782|0|4|Cross-stitched Cloak
1783|0|4|Cross-stitched Gloves
1784|0|4|Cross-stitched Pants
1785|0|4|Cross-stitched Shoulderpads
1786|0|4|Cross-stitched Vest
1787|0|4|Patched Leather Belt
1788|0|4|Patched Leather Boots
1789|0|4|Patched Leather Bracers
1790|0|4|Patched Cloak
1791|0|4|Patched Leather Gloves
1792|0|4|Patched Leather Pants
1793|0|4|Patched Leather Shoulderpads
1794|0|4|Patched Leather Jerkin
1795|0|4|Rawhide Belt
1796|0|4|Rawhide Boots
1797|0|4|Rawhide Bracers
1798|0|4|Rawhide Cloak
1799|0|4|Rawhide Gloves
1800|0|4|Rawhide Pants
1801|0|4|Rawhide Shoulderpads
1802|0|4|Rawhide Tunic
1803|0|4|Tough Leather Belt
1804|0|4|Tough Leather Boots
1805|0|4|Tough Leather Bracers
1806|0|4|Tough Cloak
1807|0|4|Tough Leather Gloves
1808|0|4|Tough Leather Pants
1809|0|4|Tough Leather Shoulderpads
1810|0|4|Tough Leather Armor
1811|0|2|Blunt Claymore
1812|0|2|Short-handled Battle Axe
1813|0|2|Chipped Quarterstaff
1814|0|2|Battered Mallet
1815|0|2|Ornamental Mace
1816|0|2|Unbalanced Axe
1817|0|2|Stock Shortsword
1818|0|2|Standard Claymore
1819|0|2|Gouging Pick
1820|0|2|Wooden Maul
1821|0|2|Warped Blade
1822|0|2|Cedar Walking Stick
1823|0|2|Bludgeoning Cudgel
1824|0|2|Shiny War Axe
1825|0|2|Bulky Bludgeon
1826|0|2|Rock Maul
1827|0|2|Meat Cleaver
1828|0|2|Stone War Axe
1829|0|2|Short Cutlass
1830|0|2|Long Bastard Sword
1831|0|2|Oaken War Staff
1832|2|4|Lucky Trousers
1835|1|4|Dirty Leather Belt
1836|1|4|Dirty Leather Bracers
1839|1|4|Rough Leather Belt
1840|1|4|Rough Leather Bracers
1843|1|4|Tanned Leather Belt
1844|1|4|Tanned Leather Bracers
1845|1|4|Chainmail Belt
1846|1|4|Chainmail Bracers
1849|1|4|Cured Leather Belt
1850|1|4|Cured Leather Bracers
1851|1|0|Cleansing Water
1852|1|4|Scalemail Bracers
1853|1|4|Scalemail Belt
1875|1|12|Thistlenettle's Badge
1877|1|9|Book of Rejuvenation III
1882|1|9|Book of Moonfire III
1886|1|9|Book of Moonfire II
1893|2|2|Miner's Revenge
1894|1|12|Miners' Union Card
1913|2|2|Studded Blackjack
1917|2|2|Jeweled Dagger
1922|1|12|Supplies for Sven
1923|1|12|Ambassador's Satchel
1925|2|2|Defias Rapier
1926|2|2|Weighted Sap
1927|2|2|Deadmines Cleaver
1928|2|2|Defias Mage Staff
1929|2|4|Silk-threaded Trousers
1930|2|4|Stonemason Cloak
1931|1|12|Huge Gnoll Claw
1933|2|2|Staff of Conjuring
1934|2|4|Stonemason Trousers
1935|3|2|Assassin's Blade
1936|2|2|Goblin Screwdriver
1937|2|2|Buzz Saw
1938|2|2|Block Mallet
1939|1|12|Skin of Sweet Rum
1941|1|12|Cask of Merlot
1942|1|12|Bottle of Moonshine
1943|2|4|Goblin Mail Leggings
1944|2|4|Metalworking Gloves
1945|2|4|Woodworking Gloves
1946|1|12|Mary's Looking Glass
1951|2|2|Blackwater Cutlass
1955|2|4|Dragonmaw Chain Boots
1956|1|12|Faded Shadowhide Pendant
1958|2|2|Petrified Shinbone
1959|2|2|Cold Iron Pick
1962|1|12|Glowing Shadowhide Pendant
1965|1|4|White Wolf Gloves
1968|1|12|Ogre's Monocle
1970|1|0|Restoring Balm
1971|1|12|Furlbrow's Deed
1972|1|12|Westfall Deed
1973|3|4|Orb of Deception
1974|3|4|Mindthrust Bracers
1975|3|2|Pysan's Old Greatsword
1976|3|2|Slaghammer
1977|1|1|20-slot Bag
1978|3|4|Wolfclaw Gloves
1979|4|4|Wall of the Dead
1980|4|4|Underworld Band
1981|4|4|Icemail Jerkin
1982|4|2|Nightblade
1986|2|2|Gutrender
1987|1|12|Krazek's Fixed Pot
1988|2|4|Chief Brigadier Gauntlets
1990|2|2|Ballast Maul
1991|2|2|Goblin Power Shovel
1992|3|4|Swampchill Fetish
1993|2|4|Ogremind Ring
1994|2|2|Ebonclaw Reaver
1996|2|4|Voodoo Band
1997|2|4|Pressed Felt Robe
1998|2|2|Bloodscalp Channeling Staff
2000|2|2|Archeus
2004|1|12|Grelin Whitebeard's Journal
2005|1|12|The First Troll Legend
2006|1|12|The Second Troll Legend
2007|1|12|The Third Troll Legend
2008|1|12|The Fourth Troll Legend
2011|3|2|Twisted Sabre
2013|2|2|Cryptbone Staff
2014|2|2|Black Metal Greatsword
2015|2|2|Black Metal War Axe
2016|2|4|Dusty Chain Armor
2017|2|4|Glowing Leather Bracers
2018|2|2|Skeletal Longsword
2020|2|2|Hollowfang Blade
2021|2|4|Green Carapace Shield
2024|1|2|Espadon
2025|1|2|Bearded Axe
2026|1|2|Rock Hammer
2027|1|2|Scimitar
2028|1|2|Hammer
2029|1|2|Cleaver
2030|1|2|Gnarled Staff
2032|2|4|Gallan Cuffs
2033|2|4|Ambassador's Boots
2034|2|4|Scholarly Robes
2035|2|2|Sword of the Night Sky
2036|2|4|Dusty Mining Gloves
2037|2|4|Tunneler's Boots
2039|3|4|Plains Ring
2040|3|4|Troll Protector
2041|3|4|Tunic of Westfall
2042|3|2|Staff of Westfall
2043|2|4|Ring of Forlorn Spirits
2044|2|2|Crescent of Forlorn Spirits
2046|2|2|Bluegill Kukri
2047|1|2|Anvilmar Hand Axe
2048|1|2|Anvilmar Hammer
2054|1|2|Trogg Hand Axe
2055|1|2|Small Wooden Hammer
2056|0|2|The Velvet Hammer
2057|1|2|Pitted Defias Shortsword
2058|2|2|Kazon's Maul
2059|3|4|Sentry Cloak
2064|1|2|Trogg Club
2065|1|2|Rockjaw Blade
2066|1|2|Skull Hatchet
2067|1|2|Frostbit Staff
2069|1|4|Black Bear Hide Vest
2070|1|0|Darnassian Bleu
2072|2|2|Dwarven Magestaff
2073|2|2|Dwarven Hatchet
2074|2|2|Solid Shortblade
2075|2|2|Priest's Mace
2077|2|2|Magician Staff
2078|2|2|Northern Shortsword
2079|2|2|Sergeant's Warhammer
2080|2|2|Hillborne Axe
2082|1|1|Wizbang's Gunnysack
2084|2|2|Darksteel Bastard Sword
2085|0|15|Chunk of Flesh
2087|2|4|Hard Crawler Carapace
2088|2|2|Long Crawler Limb
2089|2|2|Scrimshaw Dagger
2091|1|0|Magic Dust
2092|1|2|Worn Dagger
2098|3|2|Double-barreled Shotgun
2099|4|2|Dwarven Hand Cannon
2100|4|2|Precisely Calibrated Boomstick
2101|1|11|Light Quiver
2102|1|11|Small Ammo Pouch
2105|1|4|Thug Shirt
2108|1|4|Frostmane Leather Vest
2109|1|4|Frostmane Chain Vest
2110|1|4|Light Magesmith Robe
2112|1|4|Lumberjack Jerkin
2113|1|12|Calor's Note
2114|1|4|Snowy Robe
2117|1|4|Thin Cloth Shoes
2119|1|4|Thin Cloth Gloves
2120|1|4|Thin Cloth Pants
2121|1|4|Thin Cloth Armor
2122|1|4|Cracked Leather Belt
2123|1|4|Cracked Leather Boots
2124|1|4|Cracked Leather Bracers
2125|1|4|Cracked Leather Gloves
2126|1|4|Cracked Leather Pants
2127|1|4|Cracked Leather Vest
2128|1|2|Scratched Claymore
2129|1|4|Large Round Shield
2130|1|2|Club
2131|1|2|Shortsword
2132|1|2|Short Staff
2133|1|4|Small Shield
2134|1|2|Hand Axe
2136|1|0|Conjured Purified Water
2137|1|2|Whittling Knife
2138|0|2|Sharpened Letter Opener
2139|1|2|Dirk
2140|2|2|Carving Knife
2141|1|4|Cuirboulli Vest
2142|1|4|Cuirboulli Belt
2143|1|4|Cuirboulli Boots
2144|1|4|Cuirboulli Bracers
2145|1|4|Cuirboulli Gloves
2146|1|4|Cuirboulli Pants
2148|1|4|Polished Scale Belt
2149|1|4|Polished Scale Boots
2150|1|4|Polished Scale Bracers
2151|1|4|Polished Scale Gloves
2152|1|4|Polished Scale Leggings
2153|1|4|Polished Scale Vest
2154|0|15|The Story of Morgan Ladimore
2156|1|4|Padded Boots
2158|1|4|Padded Gloves
2159|1|4|Padded Pants
2160|1|4|Padded Armor
2161|1|12|Book from Sven's Farm
2162|1|12|Sarah's Ring
2163|4|2|Shadowblade
2164|4|2|Gut Ripper
2165|1|4|Old Blanchy's Blanket
2166|2|4|Foreman's Leggings
2167|2|4|Foreman's Gloves
2168|2|4|Foreman's Boots
2169|1|2|Buzzer Blade
2172|1|4|Rustic Belt
2173|1|4|Old Leather Belt
2175|2|2|Shadowhide Battle Axe
2186|1|4|Outfitter Belt
2187|1|12|A Stack of Letters
2188|1|12|A Letter to Grelin Whitebeard
2189|6|2|Tigole's Boomstick (TEST)
2194|3|2|Diamond Hammer
2195|1|2|Anvilmar Knife
2203|2|2|Brashclaw's Chopper
2204|2|2|Brashclaw's Skewer
2205|3|2|Duskbringer
2207|1|2|Jambiya
2208|1|2|Poniard
2209|1|2|Kris
2210|0|4|Battered Buckler
2211|0|4|Bent Large Shield
2212|0|4|Cracked Buckler
2213|0|4|Worn Large Shield
2214|0|4|Wooden Buckler
2215|0|4|Wooden Shield
2216|0|4|Simple Buckler
2217|0|4|Rectangular Shield
2218|2|2|Craftsman's Dagger
2219|0|4|Small Round Shield
2220|0|4|Box Shield
2221|0|4|Targe Shield
2222|0|4|Tower Shield
2223|1|12|The Collector's Schedule
2224|1|2|Militia Dagger
2225|1|2|Sharp Kitchen Knife
2226|2|2|Ogremage Staff
2227|2|2|Heavy Ogre War Axe
2230|2|4|Gloves of Brawn
2231|2|4|Inferno Robe
2232|2|4|Dark Runner Boots
2233|2|4|Shadow Weaver Leggings
2234|2|4|Nightwalker Armor
2235|2|2|Brackclaw
2236|3|2|Blackfang
2237|1|4|Patched Pants
2238|1|4|Urchin's Pants
2239|1|12|The Collector's Ring
2240|1|4|Rugged Cape
2241|2|4|Desperado Cape
2243|4|2|Hand of Edward the Odd
2244|4|2|Krol Blade
2245|4|4|Helm of Narv
2246|4|4|Myrmidon's Signet
2249|1|4|Militia Buckler
2250|1|12|Dusky Crab Cakes
2251|1|7|Gooey Spider Leg
2252|1|12|Miscellaneous Goblin Supplies
2254|2|2|Icepane Warhammer
2256|3|2|Skeletal Club
2257|1|2|Frostmane Staff
2258|1|2|Frostmane Shortsword
2259|1|2|Frostmane Club
2260|1|2|Frostmane Hand Axe
2262|3|4|Mark of Kern
2263|2|2|Phytoblade
2264|3|4|Mantle of Thieves
2265|2|2|Stonesplinter Axe
2266|2|2|Stonesplinter Dagger
2267|2|2|Stonesplinter Mace
2268|1|2|Stonesplinter Blade
2271|3|2|Staff of the Blessed Seer
2273|2|4|Guerrilla Armor
2274|2|4|Sapper's Gloves
2276|3|4|Swampwalker Boots
2277|3|4|Necromancer Leggings
2278|3|4|Forest Tracker Epaulets
2280|2|2|Kam's Walking Stick
2281|2|2|Rodentia Flint Axe
2282|1|2|Rodentia Shortsword
2283|2|4|Rat Cloth Belt
2284|2|4|Rat Cloth Cloak
2287|1|0|Haunch of Meat
2288|1|0|Conjured Fresh Water
2289|1|0|Scroll of Strength II
2290|1|0|Scroll of Intellect II
2291|4|2|Kang the Decapitator
2292|3|4|Necrology Robes
2295|0|15|Large Boar Tusk
2296|1|7|Great Goretusk Snout
2299|3|2|Burning War Axe
2300|2|4|Embossed Leather Vest
2302|1|4|Handstitched Leather Boots
2303|2|4|Handstitched Leather Pants
2304|1|0|Light Armor Kit
2307|2|4|Fine Leather Boots
2308|2|4|Fine Leather Cloak
2309|2|4|Embossed Leather Boots
2310|2|4|Embossed Leather Cloak
2311|2|4|White Leather Jerkin
2312|2|4|Fine Leather Gloves
2313|1|0|Medium Armor Kit
2314|2|4|Toughened Leather Armor
2315|2|4|Gray Leather Boots
2316|2|4|Dark Leather Cloak
2317|2|4|Dark Leather Tunic
2318|1|7|Light Leather
2319|1|7|Medium Leather
2320|1|7|Coarse Thread
2321|1|7|Fine Thread
2324|1|7|Bleach
2325|1|7|Black Dye
2326|1|4|Ivy-weave Bracers
2327|1|4|Sturdy Leather Bracers
2361|1|2|Battleworn Hammer
2362|1|4|Worn Wooden Shield
2364|1|4|Woven Vest
2366|1|4|Woven Pants
2367|1|4|Woven Boots
2369|1|4|Woven Gloves
2370|1|4|Battered Leather Harness
2371|1|4|Battered Leather Belt
2372|1|4|Battered Leather Pants
2373|1|4|Battered Leather Boots
2374|1|4|Battered Leather Bracers
2375|1|4|Battered Leather Gloves
2376|1|4|Worn Heater Shield
2377|1|4|Round Buckler
2378|1|12|Skeleton Finger
2379|1|4|Tarnished Chain Vest
2380|1|4|Tarnished Chain Belt
2381|1|4|Tarnished Chain Leggings
2382|1|12|The Embalmer's Heart
2383|1|4|Tarnished Chain Boots
2384|1|4|Tarnished Chain Bracers
2385|1|4|Tarnished Chain Gloves
2386|1|4|Rusted Chain Vest
2387|1|4|Rusted Chain Belt
2388|1|4|Rusted Chain Leggings
2389|1|4|Rusted Chain Boots
2390|1|4|Rusted Chain Bracers
2391|1|4|Rusted Chain Gloves
2392|1|4|Light Mail Armor
2393|1|4|Light Mail Belt
2394|1|4|Light Mail Leggings
2395|1|4|Light Mail Boots
2396|1|4|Light Mail Bracers
2397|1|4|Light Mail Gloves
2398|1|4|Light Chain Armor
2399|1|4|Light Chain Belt
2400|1|4|Light Chain Leggings
2401|1|4|Light Chain Boots
2402|1|4|Light Chain Bracers
2403|1|4|Light Chain Gloves
2406|2|9|Pattern: Fine Leather Boots
2407|2|9|Pattern: White Leather Jerkin
2408|2|9|Pattern: Fine Leather Gloves
2409|2|9|Pattern: Dark Leather Tunic
2410|1|4|Smoky Torch
2411|3|15|Black Stallion Bridle
2413|1|15|Palomino
2414|3|15|Pinto Bridle
2415|1|15|White Stallion
2417|1|4|Augmented Chain Vest
2418|1|4|Augmented Chain Leggings
2419|1|4|Augmented Chain Belt
2420|1|4|Augmented Chain Boots
2421|1|4|Augmented Chain Bracers
2422|1|4|Augmented Chain Gloves
2423|1|4|Brigandine Vest
2424|1|4|Brigandine Belt
2425|1|4|Brigandine Leggings
2426|1|4|Brigandine Boots
2427|1|4|Brigandine Bracers
2428|1|4|Brigandine Gloves
2429|1|4|Russet Vest
2431|1|4|Russet Pants
2432|1|4|Russet Boots
2434|1|4|Russet Gloves
2435|1|4|Embroidered Armor
2437|1|4|Embroidered Pants
2438|1|4|Embroidered Boots
2440|1|4|Embroidered Gloves
2441|1|4|Ringed Buckler
2442|1|4|Reinforced Targe
2443|1|4|Metal Buckler
2444|1|4|Ornate Buckler
2445|1|4|Large Metal Shield
2446|1|4|Kite Shield
2447|1|7|Peacebloom
2448|1|4|Heavy Pavise
2449|1|7|Earthroot
2450|1|7|Briarthorn
2451|1|4|Crested Heater Shield
2452|1|7|Swiftthistle
2453|1|7|Bruiseweed
2454|1|0|Elixir of Minor Strength
2455|1|0|Minor Mana Potion
2456|1|0|Minor Rejuvenation Potion
2457|1|0|Elixir of Minor Agility
2458|1|0|Elixir of Minor Fortitude
2459|1|0|Swiftness Potion
2460|1|0|Elixir of Tongues (NYI)
2463|1|4|Studded Doublet
2464|1|4|Studded Belt
2465|1|4|Studded Pants
2466|1|12|Skullsplitter Fetish
2467|1|4|Studded Boots
2468|1|4|Studded Bracers
2469|1|4|Studded Gloves
2470|1|4|Reinforced Leather Vest
2471|1|4|Reinforced Leather Belt
2472|1|4|Reinforced Leather Pants
2473|1|4|Reinforced Leather Boots
2474|1|4|Reinforced Leather Bracers
2475|1|4|Reinforced Leather Gloves
2476|1|12|Chilled Basilisk Haunch
2477|1|12|Ravager's Skull
2479|1|2|Broad Axe
2480|1|2|Large Club
2481|1|2|Peon Sword
2482|1|2|Inferior Tomahawk
2483|1|2|Rough Broad Axe
2484|1|2|Small Knife
2485|1|2|Splintered Board
2486|1|2|Large Stone Mace
2487|1|2|Acolyte Staff
2488|1|2|Gladius
2489|1|2|Two-handed Sword
2490|1|2|Tomahawk
2491|1|2|Large Axe
2492|1|2|Cudgel
2493|1|2|Wooden Mallet
2494|1|2|Stiletto
2495|1|2|Walking Stick
2496|1|2|Raider Shortsword
2497|1|2|Rusted Claymore
2498|1|2|Small Tomahawk
2499|1|2|Double-bladed Axe
2500|1|2|Light Hammer
2501|1|2|Wooden Warhammer
2502|1|2|Scuffed Dagger
2503|1|2|Adept Short Staff
2504|1|2|Worn Shortbow
2505|1|2|Polished Shortbow
2506|1|2|Hornwood Recurve Bow
2507|1|2|Laminated Recurve Bow
2508|1|2|Old Blunderbuss
2509|1|2|Ornate Blunderbuss
2510|1|2|Solid Blunderbuss
2511|1|2|Hunter's Boomstick
2512|1|6|Rough Arrow
2514|1|6|Depricated Sharp Arrow
2515|1|6|Sharp Arrow
2516|1|6|Light Shot
2519|1|6|Heavy Shot
2520|1|2|Broadsword
2521|1|2|Flamberge
2522|1|2|Crescent Axe
2523|1|2|Bullova
2524|1|2|Truncheon
2525|1|2|War Hammer
2526|1|2|Main Gauche
2527|1|2|Battle Staff
2528|1|2|Falchion
2529|1|2|Zweihander
2530|1|2|Francisca
2531|1|2|Great Axe
2532|1|2|Morning Star
2533|1|2|War Maul
2534|1|2|Rondel
2535|1|2|War Staff
2536|1|12|Trogg Stone Tooth
2545|2|4|Malleable Chain Leggings
2546|2|4|Royal Frostmane Girdle
2547|1|4|Boar Handler Gloves
2548|1|12|Barrel of Barleybrew Scalder
2549|3|2|Staff of the Shade
2553|2|9|Recipe: Elixir of Minor Agility
2555|2|9|Recipe: Swiftness Potion
2556|1|9|Recipe: Elixir of Tongues
2560|1|12|Jitters' Completed Journal
2561|1|12|Chok'sul's Head
2562|1|4|Bouquet of Scarlet Begonias
2563|1|12|Strange Smelling Powder
2564|3|4|Elven Spirit Claws
2565|3|4|Rod of Molten Fire
2566|2|4|Sacrificial Robes
2567|3|2|Evocator's Blade
2568|1|4|Brown Linen Vest
2569|2|4|Linen Boots
2570|1|4|Linen Cloak
2571|1|4|Viny Wrappings
2572|2|4|Red Linen Robe
2575|1|4|Red Linen Shirt
2576|1|4|White Linen Shirt
2577|1|4|Blue Linen Shirt
2578|2|4|Barbaric Linen Vest
2579|1|4|Green Linen Shirt
2580|2|4|Reinforced Linen Cape
2581|1|0|Heavy Linen Bandage
2582|2|4|Green Woolen Vest
2583|2|4|Woolen Boots
2584|2|4|Woolen Cape
2585|2|4|Gray Woolen Robe
2586|1|4|Gamemaster's Robe
2587|1|4|Gray Woolen Shirt
2589|1|7|Linen Cloth
2590|0|15|Forest Spider Webbing
2591|0|15|Dirty Trogg Cloth
2592|1|7|Wool Cloth
2593|1|0|Flask of Stormwind Tawny
2594|1|0|Flagon of Dwarven Honeymead
2595|1|0|Jug of Badlands Bourbon
2596|1|0|Skin of Dwarven Stout
2598|2|9|Pattern: Red Linen Robe
2601|2|9|Pattern: Gray Woolen Robe
2604|1|7|Red Dye
2605|1|7|Green Dye
2606|1|12|Lurker Venom
2607|1|12|Mo'grosh Crystal
2608|0|15|Threshadon Ambergris
2609|1|12|Disarming Colloid
2610|1|12|Disarming Mixture
2611|1|12|Crude Flint
2612|1|4|Plain Robe
2613|1|4|Double-Stitched Robes
2614|1|4|Robe of Apprenticeship
2615|1|4|Chromatic Robe
2616|1|4|Shimmering Silk Robes
2617|1|4|Burning Robes
2618|1|4|Silver Dress Robes
2619|1|12|Grelin's Report
2620|2|4|Augural Shroud
2621|2|4|Cowl of Necromancy
2622|2|4|Nimar's Tribal Headdress
2623|2|4|Holy Diadem
2624|2|4|Thinking Cap
2625|1|12|Menethil Statuette
2628|1|12|Senir's Report
2629|1|13|Intrepid Strongbox Key
2632|2|2|Curved Dagger
2633|1|0|Jungle Remedy
2634|1|12|Venom Fern Extract
2635|0|4|Loose Chain Belt
2636|1|12|Carved Stone Idol
2637|1|12|Ironband's Progress Report
2639|1|12|Merrin's Letter
2640|1|12|Miners' Gear
2642|0|4|Loose Chain Boots
2643|0|4|Loose Chain Bracers
2644|0|4|Loose Chain Cloak
2645|0|4|Loose Chain Gloves
2646|0|4|Loose Chain Pants
2648|0|4|Loose Chain Vest
2649|0|4|Flimsy Chain Belt
2650|0|4|Flimsy Chain Boots
2651|0|4|Flimsy Chain Bracers
2652|0|4|Flimsy Chain Cloak
2653|0|4|Flimsy Chain Gloves
2654|0|4|Flimsy Chain Pants
2656|0|4|Flimsy Chain Vest
2657|1|1|Red Leather Bag
2658|1|12|Ados Fragment
2659|1|12|Modr Fragment
2660|1|12|Golm Fragment
2661|1|12|Neru Fragment
2662|2|11|Ribbly's Quiver
2663|2|11|Ribbly's Bandolier
2664|2|2|Spinner Fang
2665|1|7|Stormwind Seasoning Herbs
2666|1|12|Barrel of Thunder Ale
2667|1|12|MacGrann's Dried Meats
2668|1|12|Threshadon Tooth
2669|1|12|Threshadon Claw
2671|1|12|Wendigo Mane
2672|1|7|Stringy Wolf Meat
2673|1|7|Coyote Meat
2674|1|7|Crawler Meat
2675|1|7|Crawler Claw
2676|1|12|Shimmerweed
2677|1|7|Boar Ribs
2678|1|7|Mild Spices
2679|1|0|Charred Wolf Meat
2680|1|0|Spiced Wolf Meat
2681|1|0|Roasted Boar Meat
2682|1|0|Cooked Crab Claw
2683|1|0|Crab Cake
2684|1|0|Coyote Steak
2685|1|0|Succulent Pork Ribs
2686|1|0|Thunder Ale
2687|1|0|Dry Pork Ribs
2688|1|0|Squirrel Nut
2690|1|4|Latched Belt
2691|1|4|Outfitter Boots
2692|1|7|Hot Spices
2694|2|4|Settler's Leggings
2696|1|12|Cask of Evershine
2697|1|9|Recipe: Goretusk Liver Pie
2698|1|9|Recipe: Cooked Crab Claw
2699|1|9|Recipe: Redridge Goulash
2700|1|9|Recipe: Succulent Pork Ribs
2701|1|9|Recipe: Seasoned Wolf Kabob
2702|1|12|Lightforge Ingot
2712|1|12|Crate of Lightforge Ingots
2713|1|12|Ol' Sooty's Head
2719|1|13|Small Brass Key
2720|1|12|Muddy Note
2721|3|4|Holy Shroud
2722|1|12|Wine Ticket
2723|1|0|Bottle of Dalaran Noir
2724|1|12|Cloth Request
2725|1|12|Green Hills of Stranglethorn - Page 1
2728|1|12|Green Hills of Stranglethorn - Page 4
2730|1|12|Green Hills of Stranglethorn - Page 6
2732|1|12|Green Hills of Stranglethorn - Page 8
2734|1|12|Green Hills of Stranglethorn - Page 10
2735|1|12|Green Hills of Stranglethorn - Page 11
2738|1|12|Green Hills of Stranglethorn - Page 14
2740|1|12|Green Hills of Stranglethorn - Page 16
2742|1|12|Green Hills of Stranglethorn - Page 18
2744|1|12|Green Hills of Stranglethorn - Page 20
2745|1|12|Green Hills of Stranglethorn - Page 21
2748|1|12|Green Hills of Stranglethorn - Page 24
2749|1|12|Green Hills of Stranglethorn - Page 25
2750|1|12|Green Hills of Stranglethorn - Page 26
2751|1|12|Green Hills of Stranglethorn - Page 27
2754|1|2|Tarnished Bastard Sword
2755|1|12|Green Hills of Stranglethorn
2756|1|12|Green Hills of Stranglethorn - Chapter I
2757|1|12|Green Hills of Stranglethorn - Chapter II
2758|1|12|Green Hills of Stranglethorn - Chapter III
2759|1|12|Green Hills of Stranglethorn - Chapter IV
2760|1|12|Thurman's Sewing Kit
2763|0|2|Fisherman Knife
2764|0|2|Small Dagger
2765|0|2|Hunting Knife
2766|0|2|Deft Stiletto
2770|1|7|Copper Ore
2771|1|7|Tin Ore
2772|1|7|Iron Ore
2773|0|2|Cracked Shortbow
2774|0|2|Rust-covered Blunderbuss
2775|2|7|Silver Ore
2776|2|7|Gold Ore
2777|0|2|Feeble Shortbow
2778|0|2|Cheap Blunderbuss
2779|1|12|Tear of Tilloa
2780|0|2|Light Hunting Bow
2781|0|2|Dirty Blunderbuss
2782|0|2|Mishandled Recurve Bow
2783|0|2|Shoddy Blunderbuss
2784|1|12|Musquash Root
2785|0|2|Stiff Recurve Bow
2786|0|2|Oiled Blunderbuss
2787|1|2|Trogg Dagger
2788|1|12|Black Claw Stout
2794|1|12|An Old History Book
2795|1|12|Book: Stresses of Iron
2797|1|12|Heart of Mokk
2798|1|12|Rethban Ore
2799|1|12|Gorilla Fang
2800|3|4|Black Velvet Robes
2801|4|2|Blade of Hanna
2802|3|4|Blazing Emblem
2805|2|4|Yeti Fur Cloak
2806|1|12|Package for Stormpike
2807|3|2|Guillotine Axe
2808|1|2|Torch of Flame
2815|3|2|Curve-bladed Ripper
2816|3|2|Death Speaker Scepter
2817|2|4|Soft Leather Tunic
2818|2|4|Stretched Leather Trousers
2819|2|2|Cross Dagger
2820|2|4|Nifty Stopwatch
2821|2|2|Mo'grosh Masher
2822|2|2|Mo'grosh Toothpick
2823|2|2|Mo'grosh Can Opener
2824|4|2|Hurricane
2825|4|2|Bow of Searing Arrows
2828|1|12|Nissa's Remains
2829|1|12|Gregor's Remains
2830|1|12|Thurman's Remains
2831|1|12|Devlin's Remains
2832|1|12|Verna's Westfall Stew Recipe
2833|1|12|The Lich's Spellbook
2834|1|12|Embalming Ichor
2835|1|7|Rough Stone
2836|1|7|Coarse Stone
2837|1|12|Thurman's Letter
2838|1|7|Heavy Stone
2839|1|12|A Letter to Yvette
2840|1|7|Copper Bar
2841|1|7|Bronze Bar
2842|2|7|Silver Bar
2843|1|12|Dirty Knucklebones
2844|1|2|Copper Mace
2845|1|2|Copper Axe
2846|1|12|Tirisfal Pumpkin
2847|2|2|Copper Shortsword
2848|2|2|Bronze Mace
2849|2|2|Bronze Axe
2850|2|2|Bronze Shortsword
2851|2|4|Copper Chain Belt
2852|2|4|Copper Chain Pants
2853|1|4|Copper Bracers
2854|2|4|Runed Copper Bracers
2855|1|12|Putrid Claw
2856|1|12|Iron Pike
2857|2|4|Runed Copper Belt
2858|1|12|Darkhound Blood
2859|1|12|Vile Fin Scale
2862|1|0|Rough Sharpening Stone
2863|1|0|Coarse Sharpening Stone
2864|2|4|Runed Copper Breastplate
2865|2|4|Rough Bronze Leggings
2866|2|4|Rough Bronze Cuirass
2867|2|4|Rough Bronze Bracers
2868|2|4|Patterned Bronze Bracers
2869|2|4|Silvered Bronze Breastplate
2870|3|4|Shining Silver Breastplate
2871|1|0|Heavy Sharpening Stone
2872|1|12|Vicious Night Web Spider Venom
2874|1|12|An Unsent Letter
2875|1|12|Scarlet Insignia Ring
2876|1|12|Duskbat Pelt
2877|3|2|Combatant Claymore
2878|3|2|Bearded Boneaxe
2879|3|4|Antipodean Rod
2880|1|7|Weak Flux
2881|2|9|Plans: Runed Copper Breastplate
2882|2|9|Plans: Silvered Bronze Shoulders
2883|2|9|Plans: Deadly Bronze Poniard
2885|1|12|Scarlet Crusade Documents
2886|1|7|Crag Boar Rib
2887|1|15|Ruined Wolf Pelt
2888|1|0|Beer Basted Boar Ribs
2889|1|9|Recipe: Beer Basted Boar Ribs
2890|1|15|Ruined Boar Pelt
]==],
[==[
2891|1|12|Letter to the City Architect
2892|1|0|Deadly Poison
2893|1|0|Deadly Poison II
2894|1|0|Rhapsody Malt
2895|1|15|Creeping Pain
2896|1|15|Creeping Anguish
2898|1|4|Mountaineer Chestpiece
2899|2|4|Wendigo Collar
2900|1|4|Stone Buckler
2901|1|2|Mining Pick
2902|2|4|Cloak of the Faith
2903|2|2|Daryl's Hunting Bow
2904|2|2|Daryl's Hunting Rifle
2905|1|4|Goat Fur Cloak
2906|2|4|Darkshire Mail Leggings
2907|2|2|Dwarven Tree Chopper
2908|2|2|Thornblade
2909|1|12|Red Wool Bandana
2910|2|4|Gold Militia Boots
2911|3|4|Keller's Girdle
2912|3|2|Claw of the Shadowmancer
2913|2|4|Silk Mantle of Gamn
2915|4|2|Taran Icebreaker
2916|2|4|Gold Lion Shield
2917|2|4|Tranquil Ring
2919|1|4|Relic of the Ancients
2920|1|4|Sacred Relic
2921|1|4|Blessed Relic
2922|1|4|Spirit Relic
2923|1|4|Relic of Righteousness
2924|1|7|Crocolisk Meat
2925|1|12|Crocolisk Skin
2926|1|12|Head of Bazil Thredd
2927|1|15|Creeping Torment
2928|1|15|Dust of Decay
2929|1|7|Tomb Rot
2930|1|15|Essence of Pain
2932|1|7|Torment Vine
2933|3|4|Seal of Wrynn
2934|1|7|Ruined Leather Scraps
2939|1|12|Crocolisk Tear
2940|0|15|Bloody Bear Paw
2941|3|2|Prison Shank
2942|3|2|Iron Knuckles
2943|2|4|Eye of Paleth
2944|2|4|Cursed Eye of Paleth
2946|1|2|Balanced Throwing Dagger
2947|1|2|Small Throwing Knife
2949|2|4|Mariner Boots
2950|2|2|Icicle Rod
2951|3|4|Ring of the Underwood
2953|2|4|Watch Master's Cloak
2954|2|4|Night Watch Pantaloons
2955|2|4|First Mate Hat
2956|1|12|Report on the Defias Brotherhood
2957|2|4|Journeyman's Vest
2958|2|4|Journeyman's Pants
2959|1|4|Journeyman's Boots
2960|1|4|Journeyman's Gloves
2961|2|4|Burnt Leather Vest
2962|2|4|Burnt Leather Breeches
2963|1|4|Burnt Leather Boots
2964|1|4|Burnt Leather Gloves
2965|2|4|Warrior's Tunic
2966|2|4|Warrior's Pants
2967|1|4|Warrior's Boots
2968|1|4|Warrior's Gloves
2969|2|4|Spellbinder Vest
2970|2|4|Spellbinder Pants
2971|1|4|Spellbinder Boots
2972|1|4|Spellbinder Gloves
2973|2|4|Hunting Tunic
2974|2|4|Hunting Pants
2975|1|4|Hunting Boots
2976|2|4|Hunting Gloves
2977|2|4|Veteran Armor
2978|2|4|Veteran Leggings
2979|1|4|Veteran Boots
2980|2|4|Veteran Gloves
2981|2|4|Seer's Robe
2982|2|4|Seer's Pants
2983|2|4|Seer's Boots
2984|2|4|Seer's Gloves
2985|2|4|Inscribed Leather Breastplate
2986|2|4|Inscribed Leather Pants
2987|2|4|Inscribed Leather Boots
2988|2|4|Inscribed Leather Gloves
2989|2|4|Burnished Tunic
2990|2|4|Burnished Leggings
2991|2|4|Burnished Boots
2992|2|4|Burnished Gloves
2996|1|7|Bolt of Linen Cloth
2997|1|7|Bolt of Woolen Cloth
2998|1|12|A Simple Compass
2999|1|12|Steelgrill's Tools
3000|2|4|Brood Mother Carapace
3002|1|4|Relic Horn of Justice
3003|1|4|Relic of the Eye
3004|1|4|Relic of the Dead
3005|1|4|Relic of Truth
3006|1|4|Holy Relic Shard
3008|2|4|Wendigo Fur Cloak
3010|0|15|Fine Sand
3011|2|4|Feathered Headdress
3012|1|0|Scroll of Agility
3013|1|0|Scroll of Protection
3014|1|12|Battleworn Axe
3016|1|12|Gunther's Spellbook
3017|1|12|Sevren's Orders
3018|2|4|Hide of Lupos
3019|2|4|Noble's Robe
3020|3|4|Enduring Cap
3021|3|2|Ranger Bow
3022|2|4|Bluegill Breeches
3023|1|2|Large Bore Blunderbuss
3024|1|2|BKP 2700 "Enforcer"
3025|1|2|BKP 42 "Ultra"
3026|1|2|Reinforced Bow
3027|1|2|Heavy Recurve Bow
3028|1|2|Longbow
3029|1|6|Depricated Whipwood Arrow
3030|1|6|Razor Arrow
3031|1|6|Depricated Razor Arrow
3033|1|6|Solid Shot
3035|1|12|Laced Pumpkin
3036|2|2|Heavy Shortbow
3037|2|2|Whipwood Recurve Bow
3039|2|2|Short Ash Bow
3040|2|2|Hunter's Muzzle Loader
3041|2|2|"Mage-Eye" Blunderbuss
3042|2|2|BKP "Sparrow" Smallbore
3045|2|4|Lambent Scale Boots
3047|2|4|Lambent Scale Gloves
3048|2|4|Lambent Scale Legguards
3049|2|4|Lambent Scale Breastplate
3053|2|4|Humbert's Chestpiece
3055|2|4|Forest Leather Chestpiece
3056|2|4|Forest Leather Pants
3057|2|4|Forest Leather Boots
3058|2|4|Forest Leather Gloves
3065|2|4|Bright Boots
3066|2|4|Bright Gloves
3067|2|4|Bright Pants
3069|2|4|Bright Robe
3070|1|4|Ensign Cloak
3071|1|2|Striking Hatchet
3072|2|4|Smoldering Robe
3073|2|4|Smoldering Pants
3074|2|4|Smoldering Gloves
3075|4|4|Eye of Flame
3076|2|4|Smoldering Boots
3078|2|2|Naga Heartpiercer
3079|2|2|Skorn's Rifle
3080|1|12|Candle of Beckoning
3081|1|12|Nether Gem
3082|1|12|Dargol's Skull
3083|1|12|Restabilization Cog
3084|1|12|Gyromechanic Gear
3085|1|12|Barrel of Shimmer Stout
3086|1|12|Cask of Shimmer Stout
3087|1|0|Mug of Shimmer Stout
3088|1|9|Book of Rejuvenation IV
3089|1|9|Tome of Flamestrike
3090|1|9|Tome of Frostbolt
3091|1|9|Tome of Arcane Intellect II
3092|1|9|Tome of Flamestrike III
3093|1|9|Tome of Flamestrike II
3094|1|9|Tome of Fire Blast II
3095|1|9|Tome of Fire Blast III
3096|1|9|Tome of Feather Fall
3097|1|9|Tome of Conjure Water II
3098|1|9|Tome of Slow
3099|1|9|Tome of Ice Armor II
3100|1|9|Tome of Blizzard II
3101|1|9|Tome of Frost Nova III
3102|1|9|Tome of Arcane Intellect III
3103|2|2|Coldridge Hammer
3107|1|2|Keen Throwing Knife
3108|1|2|Heavy Throwing Dagger
3110|1|12|Tunnel Rat Ear
3111|1|2|Crude Throwing Axe
3113|1|9|Codex of Holy Word: Shield
3114|1|9|Codex of Shadow Word: Befuddle
3115|1|9|Codex of Renew IV
3116|1|9|Codex of Holy Word: Shield II
3117|1|12|Hildelve's Journal
3118|1|9|Codex of Greater Heal
3119|1|9|Codex of Holy Word: Shield V
3120|1|9|Codex of Holy Smite IV
3121|1|9|Codex of Levitate
3122|1|9|Codex of Holy Word: Shield III
3123|1|9|Codex of Holy Word: Fortitude III
3124|1|9|Codex of Inner Fire III
3125|1|9|Tablet of Serpent Totem II
3126|1|9|Tablet of Shock II
3127|1|9|Tablet of Shock III
3129|1|9|Tablet of Lightning Bolt IV
3130|1|9|Tablet of Restoration IV
3131|1|2|Weighted Throwing Axe
3132|1|9|Tablet of Molten Blast IV
3133|1|9|Tablet of Mana Totem
3134|1|9|Grimoire of Curse of Mannoroth
3135|1|2|Sharp Throwing Axe
3137|1|2|Deadly Throwing Axe
3138|1|9|Grimoire of Shadow Bolt IV
3139|1|9|Grimoire of Demon Armor II
3140|1|9|Grimoire of Blood Boil II
3141|1|9|Grimoire of Life Drain
3142|1|9|Grimoire of Curse of Sargeras
3143|1|9|Grimoire of Burning Spirit
3144|1|9|Grimoire of Burning Spirit II
3146|1|9|Grimoire of Burning Spirit III
3151|1|4|Siege Brigade Vest
3152|1|4|Driving Gloves
3153|1|4|Oil-stained Cloak
3154|2|2|Thelsamar Axe
3155|1|12|Remedy of Arugal
3156|1|12|Glutton Shackle
3157|1|12|Darksoul Shackle
3158|1|4|Burnt Hide Bracers
3160|2|4|Ironplate Buckler
3161|2|4|Robe of the Keeper
3162|1|12|Notched Rib
3163|1|12|Blackened Skull
3164|1|12|Discolored Worg Heart
3165|1|12|Minor Quinn's Potion
3166|2|4|Ironheart Chain
3167|0|15|Thick Spider Hair
3168|0|15|Chipped Scale
3169|0|15|Chipped Bear Tooth
3170|0|15|Large Bear Tooth
3171|0|15|Broken Boar Tusk
3172|1|7|Boar Intestines
3173|1|7|Bear Meat
3174|1|7|Spider Ichor
3175|0|15|Ruined Dragonhide
3176|0|15|Small Claw
3177|0|15|Tiny Fang
3179|0|15|Cracked Dragon Molting
3180|0|15|Flecked Raptor Scale
3181|0|15|Partially Digested Meat
3182|1|7|Spider's Silk
3183|1|12|Mangy Claw
3184|2|2|Hook Dagger
3185|2|2|Acrobatic Staff
3186|2|2|Viking Sword
3187|2|2|Sacrificial Kris
3188|2|2|Coral Claymore
3189|1|2|Wood Chopper
3190|1|2|Beatstick
3191|2|2|Arced War Axe
3192|2|2|Short Bastard Sword
3193|2|2|Oak Mallet
3194|3|2|Black Malice
3195|2|2|Barbaric Battle Axe
3196|2|2|Edged Bastard Sword
3197|2|2|Stonecutter Claymore
3198|2|2|Battering Hammer
3199|2|2|Battle Slayer
3200|1|4|Burnt Leather Bracers
3201|2|2|Barbarian War Axe
3202|2|4|Forest Leather Bracers
3203|3|2|Dense Triangle Mace
3204|2|4|Deepwood Bracers
3205|2|4|Inscribed Leather Bracers
3206|2|2|Cavalier Two-hander
3207|1|4|Hunting Bracers
3208|2|2|Conk Hammer
3209|2|2|Ancient War Sword
3210|2|2|Brutal War Axe
3211|2|4|Burnished Bracers
3212|2|4|Lambent Scale Bracers
3213|1|4|Veteran Bracers
3214|1|4|Warrior's Bracers
3216|1|4|Warm Winter Robe
3217|2|4|Foreman Belt
3218|1|12|Pyrewood Shackle
3220|1|0|Blood Sausage
3222|2|2|Wicked Dagger
3223|2|2|Frostmane Scepter
3224|2|4|Silver-lined Bracers
3225|2|2|Bloodstained Knife
3227|2|2|Nightbane Staff
3228|3|4|Jimmied Handcuffs
3229|2|4|Tarantula Silk Sash
3230|2|4|Black Wolf Bracers
3231|2|4|Cutthroat Pauldrons
3233|1|1|Gnoll Hide Sack
3234|1|12|Deliah's Ring
3235|2|4|Ring of Scorn
3236|1|12|Rot Hide Ichor
3237|1|12|Sample Ichor
3238|1|12|Johaan's Findings
3239|1|0|Rough Weightstone
3240|1|0|Coarse Weightstone
3241|1|0|Heavy Weightstone
3248|1|12|Translated Letter from The Embalmer
3249|1|15|Conjured test Item
3250|1|12|Bethor's Scroll
3251|1|12|Bethor's Potion
3252|1|12|Deathstalker Report
3253|1|12|Grizzled Bear Heart
3254|1|12|Skittering Blood
3255|1|12|Berard's Journal
3256|1|12|Lake Skulker Moss
3257|1|12|Lake Creeper Moss
3258|1|12|Hardened Tumor
3259|1|15|Ruined Bat Hide
3260|1|4|Scarlet Initiate Robes
3261|1|4|Webbed Cloak
3262|1|2|Putrid Wooden Hammer
3263|1|4|Webbed Pants
3264|1|12|Duskbat Wing
3265|1|12|Scavenger Paw
3266|1|12|Scarlet Armband
3267|1|2|Forsaken Shortsword
3268|1|2|Forsaken Dagger
3269|1|2|Forsaken Maul
3270|1|4|Flax Vest
3272|1|4|Zombie Skin Leggings
3273|1|4|Rugged Mail Vest
3274|1|4|Flax Boots
3275|1|4|Flax Gloves
3276|1|4|Deathguard Buckler
3277|1|2|Executor Staff
3278|0|2|Aura Proc Damage Sword
3279|1|4|Battle Chain Boots
3280|1|4|Battle Chain Bracers
3281|1|4|Battle Chain Gloves
3282|2|4|Battle Chain Pants
3283|2|4|Battle Chain Tunic
3284|1|4|Tribal Boots
3285|1|4|Tribal Bracers
3286|1|4|Tribal Gloves
3287|2|4|Tribal Pants
3288|2|4|Tribal Vest
3289|1|4|Ancestral Boots
3290|1|4|Ancestral Gloves
3291|2|4|Ancestral Woollies
3292|2|4|Ancestral Tunic
3293|1|2|Deadman Cleaver
3294|1|2|Deadman Club
3295|1|2|Deadman Blade
3296|1|2|Deadman Dagger
3297|1|12|Fel Moss
3299|0|15|Fractured Canine
3300|0|15|Rabbit's Foot
3301|0|15|Sharp Canine
3302|2|4|Brackwater Boots
3303|1|4|Brackwater Bracers
3304|1|4|Brackwater Gauntlets
3305|2|4|Brackwater Leggings
3306|2|4|Brackwater Vest
3307|2|4|Barbaric Cloth Boots
3308|2|4|Barbaric Cloth Gloves
3309|2|4|Barbaric Loincloth
3310|2|4|Barbaric Cloth Vest
3311|1|4|Ceremonial Leather Ankleguards
3312|1|4|Ceremonial Leather Bracers
3313|2|4|Ceremonial Leather Harness
3314|2|4|Ceremonial Leather Gloves
3315|2|4|Ceremonial Leather Loincloth
3316|1|12|Alaric's Head
3317|1|12|A Talking Head
3318|1|12|Alaric's Remains
3319|1|2|Short Sabre
3320|1|4|Bonecaster Sash
3321|1|4|Gray Fur Booties
3322|2|4|Wispy Cloak
3323|2|4|Ghostly Bracers
3324|2|4|Ghostly Mantle
3325|1|2|Vile Fin Battle Axe
3327|1|2|Vile Fin Oracle Staff
3328|1|4|Spider Web Robe
3329|1|2|Spiked Wooden Plank
3330|2|4|Dargol's Hauberk
3331|1|4|Melrache's Cape
3332|1|4|Perrine's Boots
3334|1|2|Farmer's Shovel
3335|1|2|Farmer's Broom
3336|2|2|Flesh Piercer
3337|1|12|Dragonmaw War Banner
3339|1|12|Dwarven Tinder
3340|1|12|Incendicite Ore
3341|2|4|Gauntlets of Ogre Strength
3342|1|4|Captain Sander's Shirt
3343|1|1|Captain Sander's Booty Bag
3344|2|4|Captain Sander's Sash
3345|2|4|Silk Wizard Hat
3347|1|12|Bundle of Crocolisk Skins
3348|1|12|Giant Crocolisk Skin
3349|1|12|Sida's Bag
3352|1|1|Ooze-covered Bag
3353|1|12|Rune-inscribed Pendant
3354|1|12|Dalaran Pendant
3355|1|7|Wild Steelbloom
3356|1|7|Kingsblood
3357|1|7|Liferoot
3358|1|7|Khadgar's Whisker
3360|1|4|Stitches' Femur
3363|0|4|Frayed Belt
3365|0|4|Frayed Bracers
3369|1|7|Grave Moss
3370|0|4|Patchwork Belt
3371|1|7|Empty Vial
3372|1|7|Leaded Vial
3373|0|4|Patchwork Bracers
3374|0|4|Calico Belt
3375|0|4|Calico Bracers
3376|0|4|Canvas Belt
3377|0|4|Canvas Bracers
3378|0|4|Brocade Belt
3379|0|4|Brocade Bracers
3380|0|4|Cross-stitched Belt
3381|0|4|Cross-stitched Bracers
3382|1|0|Minor Troll's Blood Elixir
3383|1|0|Elixir of Wisdom
3384|1|0|Minor Magic Resistance Potion
3385|1|0|Lesser Mana Potion
3386|1|0|Potion of Poison Cleansing
3387|1|0|Limited Invulnerability Potion
3388|1|0|Lesser Troll's Blood Elixir
3389|1|0|Elixir of Lesser Defense
3390|1|0|Elixir of Lesser Agility
3391|1|0|Elixir of Ogre Strength
3392|2|4|Ringed Helm
3393|1|9|Recipe: Minor Magic Resistance Potion
3394|1|9|Recipe: Potion of Poison Cleansing
3395|2|9|Recipe: Limited Invulnerability Potion
3396|2|9|Recipe: Elixir of Lesser Agility
3397|1|12|Young Crocolisk Skin
3399|0|15|Vulture Talon
3400|2|2|Lucine Longsword
3401|0|15|Rough Crocolisk Scale
3402|0|15|Soft Patch of Fur
3403|0|15|Ivory Boar Tusk
3404|1|7|Buzzard Wing
3405|1|12|Raven Claw Talisman
3406|1|12|Black Feather Quill
3407|1|12|Sapphire of Sky
3408|1|12|Rune of Nesting
3409|1|12|Nightsaber Fang
3411|1|12|Strigid Owl Feather
3412|1|12|Webwood Spider Silk
3413|3|2|Doomspike
3414|3|2|Crested Scepter
3415|3|2|Staff of the Friar
3416|3|4|Martyr's Chain
3417|3|2|Onyx Claymore
3418|1|12|Fel Cone
3419|1|4|Red Rose
3420|1|4|Black Rose
3421|1|4|Simple Wildflowers
3422|1|4|Beautiful Wildflowers
3423|1|4|Bouquet of White Roses
3424|1|4|Bouquet of Black Roses
3425|1|12|Woven Wand
3426|1|4|Bold Yellow Shirt
3427|1|4|Stylish Black Shirt
3428|1|4|Common Gray Shirt
3429|2|4|Guardsman Belt
3430|2|2|Sniper Rifle
3431|2|4|Bone-studded Leather
3434|1|0|Slumber Sand
3435|1|4|Zombie Skin Bracers
3437|1|4|Clasped Belt
3438|1|0|Ankh of Resurrection
3439|1|4|Zombie Skin Boots
3440|2|2|Bonecracker
3442|1|4|Apprentice Sash
3443|1|2|Ceremonial Tomahawk
3444|1|4|Tiller's Vest
3445|1|2|Ceremonial Knife
3446|2|2|Darkwood Staff
3447|1|4|Cryptwalker Boots
3448|1|0|Senggin Root
3449|2|4|Mystic Shawl
3450|2|4|Faerleia's Shield
3451|2|4|Nightglow Concoction
3452|2|2|Ceranium Rod
3453|1|4|Quilted Bracers
3454|1|4|Reconnaissance Boots
3455|1|2|Deathstalker Shortsword
3456|2|4|Dog Whistle
3457|2|4|Stamped Trousers
3458|2|4|Rugged Mail Gloves
3460|1|12|Johaan's Special Drink
3461|2|4|High Robe of the Adjudicator
3462|2|2|Talonstrike
3463|2|2|Silver Star
3464|2|6|Feathered Arrow
3465|2|6|Exploding Shot
3466|1|7|Strong Flux
3467|1|13|Dull Iron Key
3468|1|12|Renferrel's Findings
3469|2|4|Copper Chain Boots
3470|1|7|Rough Grinding Stone
3471|2|4|Copper Chain Vest
3472|2|4|Runed Copper Gauntlets
3473|2|4|Runed Copper Pants
3474|2|4|Gemmed Copper Gauntlets
3475|4|4|Cloak of Flames
3476|1|12|Gray Bear Tongue
3477|1|12|Creeper Ichor
3478|1|7|Coarse Grinding Stone
3480|2|4|Rough Bronze Shoulders
3481|2|4|Silvered Bronze Shoulders
3482|2|4|Silvered Bronze Boots
3483|2|4|Silvered Bronze Gauntlets
3484|2|4|Green Iron Boots
3485|2|4|Green Iron Gauntlets
3486|1|7|Heavy Grinding Stone
3487|2|2|Heavy Copper Broadsword
3488|2|2|Copper Battle Axe
3489|2|2|Thick War Axe
3490|2|2|Deadly Bronze Poniard
3491|2|2|Heavy Bronze Mace
3492|2|2|Mighty Iron Hammer
3493|2|2|Raptor's End
3495|1|12|Elixir of Suffering
3496|1|12|Mountain Lion Blood
3497|1|12|Elixir of Pain
3498|1|12|Taretha's Necklace
3499|1|13|Burnished Gold Key
3502|1|12|Mudsnout Blossoms
3505|1|12|Alterac Signet Ring
3506|1|12|Mudsnout Composite
3508|1|12|Mudsnout Mixture
3509|1|12|Daggerspine Scale
3510|1|12|Torn Fin Eye
3511|2|4|Cloak of the People's Militia
3514|1|12|Mor'Ladim's Skull
3515|1|12|Ataeric's Staff
3516|1|12|Lescovar's Head
3517|1|12|Keg of Shindigger Stout
3518|1|12|Decrypted Letter
3520|1|12|Tainted Keg
3521|1|12|Cleverly Encrypted Letter
3522|1|4|Black Night Elf Breastplate
3526|1|4|Black Night Elf Gloves
3527|1|4|White Night Elf Breastplate
3528|1|4|Red Leather C03 Breastplate
3529|1|4|Black Night Elf Helm
3530|1|0|Wool Bandage
3531|1|0|Heavy Wool Bandage
3533|1|4|Red Leather C03 Boots
3535|1|4|Red Leather C03 Bracers
3536|1|4|Demon Hunter Blindfold
3537|1|4|Black Leather D02 Breastplate
3538|1|4|Gray Leather D02 Breastplate
3541|1|4|Black Leather D02 Boots
3542|1|4|Gray Leather D02 Boots
3545|1|4|Black Leather D02 Bracers
3546|1|4|Gray Leather D02 Bracers
3547|1|4|White Leather D03 Breastplate
3550|1|12|Targ's Head
3551|1|12|Muckrake's Head
3552|1|12|Glommus's Head
3553|1|12|Mug'thol's Head
3554|1|12|Crown of Will
3555|2|4|Robe of Solomon
3556|2|4|Dread Mage Hat
3558|2|4|Fen Keeper Robe
3559|2|4|Night Watch Gauntlets
3560|2|4|Mantle of Honor
3561|2|4|Resilient Poncho
3562|2|4|Belt of Vindication
3563|2|4|Seafarer's Pantaloons
3564|1|12|Shipment of Iron
3565|2|4|Beerstained Gloves
3566|2|4|Raptorbane Armor
3567|2|2|Dwarven Fishing Pole
3569|2|4|Vicar's Robe
3570|2|2|Bonegrinding Pestle
3571|2|2|Trogg Beater
3572|2|2|Daryl's Shortsword
3573|1|11|Hunting Quiver
3574|1|11|Hunting Ammo Sack
3575|1|7|Iron Bar
3576|1|7|Tin Bar
3577|2|7|Gold Bar
3578|2|4|Harvester's Pants
3581|2|2|Serrated Knife
3582|2|4|Acidproof Cloak
3583|1|4|Weathered Belt
3585|2|4|Camouflaged Tunic
3586|2|2|Logsplitter
3587|1|4|Embroidered Belt
3588|1|4|Embroidered Bracers
3589|1|4|Heavy Weave Belt
3590|1|4|Heavy Weave Bracers
3591|1|4|Padded Belt
3592|1|4|Padded Bracers
3593|1|4|Russet Belt
3594|1|4|Russet Bracers
3595|1|4|Tattered Cloth Belt
3596|1|4|Tattered Cloth Bracers
3597|1|4|Thick Cloth Belt
3598|1|4|Thick Cloth Bracers
3599|1|4|Thin Cloth Belt
3600|1|4|Thin Cloth Bracers
3601|1|12|Syndicate Missive
3602|1|4|Knitted Belt
3603|1|4|Knitted Bracers
3604|2|11|Bandolier of the Night Watch
3605|2|11|Quiver of the Night Watch
3606|1|4|Woven Belt
3607|1|4|Woven Bracers
3608|2|9|Plans: Mighty Iron Hammer
3609|2|9|Plans: Copper Chain Vest
3610|2|9|Plans: Gemmed Copper Gauntlets
3611|2|9|Plans: Green Iron Boots
3612|2|9|Plans: Green Iron Gauntlets
3613|1|12|Valdred's Hands
3614|1|12|Yowler's Paw
3615|1|12|Kurzen's Head
3616|1|12|Mind's Eye
3617|1|12|Pendant of Shadow
3618|1|12|Gobbler's Head
3619|1|12|Snellig's Snuffbox
3620|1|12|Lillith's Remains
3621|1|12|Ivar's Head
3622|1|12|Essence of Nightlash
3623|1|12|Thule's Head
3625|1|12|Nek'rosh's Head
3626|1|12|Head of Baron Vardus
3627|1|12|Fang of Vagash
3628|1|12|Hand of Dextren Ward
3629|1|12|Mistmantle Family Ring
3630|1|12|Head of Targorr
3631|1|12|Bellygrub's Tusk
3632|1|12|Fangore's Paw
3633|1|12|Head of Gath'Ilzogg
3634|1|12|Head of Grimson
3635|1|12|Maggot Eye's Paw
3636|1|12|Scale of Old Murk-Eye
3637|1|12|Head of VanCleef
3638|1|12|Sarltooth's Talon
3639|1|12|Ear of Balgaras
3640|1|12|Head of Deepfury
3641|1|4|Journeyman's Bracers
3642|1|4|Ancestral Bracers
3643|1|4|Spellbinder Bracers
3644|1|4|Barbaric Cloth Bracers
3645|2|4|Seer's Cuffs
3647|2|4|Bright Bracers
3648|1|4|Warrior's Buckler
3649|1|4|Tribal Buckler
3650|1|4|Battle Shield
3651|2|4|Veteran Shield
3652|2|4|Hunting Buckler
3653|2|4|Ceremonial Buckler
3654|2|4|Brackwater Shield
3655|2|4|Burnished Shield
3656|2|4|Lambent Scale Shield
3657|1|12|Hillsbrad Town Registry
3658|1|12|Recovered Tome
3659|1|12|Worn Leather Book
3660|1|12|Tomes of Alterac
3661|1|2|Handcrafted Staff
3662|1|0|Crocolisk Steak
3663|1|0|Murloc Fin Soup
3664|1|0|Crocolisk Gumbo
3665|1|0|Curiously Tasty Omelet
3666|1|0|Gooey Spider Cake
3667|1|7|Tender Crocolisk Meat
3668|1|12|Assassin's Contract
3669|0|15|Gelatinous Goo
3670|0|15|Large Slimy Bone
3671|0|15|Lifeless Skull
3672|1|12|Head of Nagaz
3673|0|15|Broken Arrow
3674|0|15|Decomposed Boot
3675|0|15|Burnt Out Torch
3676|0|15|Slimy Ichor
3678|1|9|Recipe: Crocolisk Steak
3679|1|9|Recipe: Blood Sausage
3680|1|9|Recipe: Murloc Fin Soup
3681|1|9|Recipe: Crocolisk Gumbo
3682|1|9|Recipe: Curiously Tasty Omelet
3683|1|9|Recipe: Gooey Spider Cake
3684|1|12|Perenolde Tiara
3685|1|7|Raptor Egg
3688|1|12|Bloodstone Oval
3689|1|12|Bloodstone Marble
3690|1|12|Bloodstone Shard
3691|1|12|Bloodstone Wedge
3692|1|12|Hillsbrad Human Skull
3693|1|12|Humbert's Sword
3701|1|12|Darthalia's Sealed Commendation
3702|0|15|Bear Gall Bladder
3703|1|0|Southshore Stout
3704|1|13|Rusted Iron Key
3706|1|12|Ensorcelled Parchment
3707|1|12|Nagaz Parchment
3708|1|12|Helcular's Rod
3710|1|12|Rod of Helcular
3711|1|12|Belamoore's Research Journal
3712|1|7|Turtle Meat
3713|1|7|Soothing Spices
3714|1|12|Worn Stone Token
3715|1|12|Bracers of Earth Binding
3716|1|12|Murloc Head
3717|1|12|Sack of Murloc Heads
3718|1|12|Foreboding Plans
3719|2|4|Hillman's Cloak
3720|1|12|Yeti Fur
3721|1|12|Farren's Report
3722|0|15|Familiar Hide
3723|0|15|Familiar Fang
3724|0|15|Familiar Claw
3725|0|15|Familiar Horn
3726|1|0|Big Bear Steak
3727|1|0|Hot Lion Chops
3728|1|0|Tasty Lion Steak
3729|1|0|Soothing Turtle Bisque
3730|1|7|Big Bear Meat
3731|1|7|Lion Meat
3732|1|4|Hooded Cowl
3733|2|4|Orcish War Chain
3734|1|9|Recipe: Big Bear Steak
3735|1|9|Recipe: Hot Lion Chops
3736|1|9|Recipe: Tasty Lion Steak
3737|1|9|Recipe: Soothing Turtle Bisque
3738|2|2|Brewing Rod
3739|2|4|Skull Ring
3740|2|2|Decapitating Sword
3741|2|4|Stomping Boots
3742|2|2|Bow of Plunder
3743|2|4|Sentry Buckler
3744|1|12|Bloodstone Pendant
3745|1|12|Rune of Opening
3747|2|4|Meditative Sash
3748|3|4|Feline Mantle
3749|2|4|High Apothecary Cloak
3750|2|4|Ribbed Breastplate
3751|2|4|Mercenary Leggings
3752|2|4|Grunt Vest
3753|2|4|Shepherd's Girdle
3754|2|4|Shepherd's Gloves
3755|2|2|Fish Gutter
3758|2|4|Crusader Belt
3759|2|4|Insulated Sage Gloves
3760|2|4|Band of the Undercity
3761|2|4|Deadskull Shield
3762|1|1|Librarian's Satchel
3763|2|4|Lunar Buckler
3764|2|4|Mantis Boots
3765|2|4|Brigand's Pauldrons
3766|0|15|Gryphon Feather Quill
3767|0|15|Fine Parchment
3769|0|15|Broken Wand
3770|1|0|Mutton Chop
3771|1|0|Wild Hog Shank
3772|1|0|Conjured Spring Water
3775|1|0|Crippling Poison
3776|1|0|Crippling Poison II
3777|0|15|Lethargy Root
3778|0|2|Taut Compound Bow
3779|0|2|Hefty War Axe
3780|0|2|Long-barreled Musket
3781|0|2|Broad Claymore
3782|0|2|Large War Club
3783|0|2|Light Scimitar
3784|0|2|Metal Stave
3785|0|2|Keen Axe
3786|0|2|Shiny Dirk
3787|0|2|Stone Club
3788|1|4|Soul Crystal Relic
3789|1|4|Relic Stone of Piety
3790|1|4|Consecrated Relic Parchment
3791|1|4|Relic of the Light
3792|0|4|Interlaced Belt
3793|0|4|Interlaced Boots
3794|0|4|Interlaced Bracers
3795|0|4|Interlaced Cloak
3796|0|4|Interlaced Gloves
3797|0|4|Interlaced Pants
3798|0|4|Interlaced Shoulderpads
3799|0|4|Interlaced Vest
3800|0|4|Hardened Leather Belt
3801|0|4|Hardened Leather Boots
3802|0|4|Hardened Leather Bracers
3803|0|4|Hardened Cloak
3804|0|4|Hardened Leather Gloves
3805|0|4|Hardened Leather Pants
3806|0|4|Hardened Leather Shoulderpads
3807|0|4|Hardened Leather Tunic
3808|0|4|Double Mail Belt
3809|0|4|Double Mail Boots
3810|0|4|Double Mail Bracers
3811|0|4|Double-Stitched Cloak
3812|0|4|Double Mail Gloves
3813|0|4|Double Mail Pants
3814|0|4|Double Mail Shoulderpads
3815|0|4|Double Mail Vest
3816|0|4|Reflective Heater
3817|0|4|Reinforced Buckler
3818|1|7|Fadeleaf
3819|1|7|Wintersbite
3820|1|7|Stranglekelp
3821|1|7|Goldthorn
3822|2|2|Runic Darkblade
3823|1|0|Lesser Invisibility Potion
3824|1|0|Shadow Oil
3825|1|0|Elixir of Lesser Fortitude
3826|1|0|Troll's Blood Elixir
3827|1|0|Mana Potion
3828|1|0|Draught of Detect Lesser Invisibility
3829|1|0|Frost Oil
3830|1|9|Recipe: Elixir of Lesser Fortitude
3831|1|9|Recipe: Troll's Blood Elixir
3832|2|9|Recipe: Elixir of Detect Lesser Invisibility
3833|1|4|Adept's Cloak
3834|1|4|Sturdy Cloth Trousers
3835|2|4|Green Iron Bracers
3836|2|4|Green Iron Helm
3837|2|4|Golden Scale Coif
3838|1|12|Shadowmaw Claw
3839|1|12|Pristine Tigress Fang
3840|2|4|Green Iron Shoulders
3841|2|4|Golden Scale Shoulders
3842|2|4|Green Iron Leggings
3843|2|4|Golden Scale Leggings
3844|3|4|Green Iron Hauberk
3845|2|4|Golden Scale Cuirass
3846|2|4|Polished Steel Boots
3847|2|4|Golden Scale Boots
3848|2|2|Big Bronze Knife
3849|2|2|Hardened Iron Shortsword
3850|2|2|Jade Serpentblade
3851|2|2|Solid Iron Maul
3852|2|2|Golden Iron Destroyer
3853|2|2|Moonsteel Broadsword
3854|2|2|Frost Tiger Blade
3855|2|2|Massive Iron Axe
3856|2|2|Shadow Crescent Axe
3857|1|7|Coal
3858|1|7|Mithril Ore
3859|1|7|Steel Bar
3860|1|7|Mithril Bar
3861|1|7|Blacksteel Bar
3862|1|12|Aged Gorilla Sinew
3863|1|12|Jungle Stalker Feather
3864|2|7|Citrine
3866|2|9|Plans: Jade Serpentblade
3867|2|9|Plans: Golden Iron Destroyer
3868|2|9|Plans: Frost Tiger Blade
3869|2|9|Plans: Shadow Crescent Axe
3870|2|9|Plans: Green Iron Shoulders
3871|3|9|Plans: Golden Scale Shoulders
3872|2|9|Plans: Golden Scale Leggings
3873|2|9|Plans: Golden Scale Cuirass
3874|2|9|Plans: Polished Steel Boots
3875|3|9|Plans: Golden Scale Boots
3876|1|12|Fang of Bhag'thera
3877|1|12|Talon of Tethis
3879|1|12|Paw of Sin'Dall
3880|1|12|Head of Bangalash
3882|0|15|Buzzard Feather
3889|1|4|Russet Hat
3890|1|4|Studded Hat
3891|1|4|Augmented Chain Helm
3892|1|4|Embroidered Hat
3893|1|4|Reinforced Leather Cap
3894|1|4|Brigandine Helm
3897|1|12|Dizzy's Eye
3898|1|12|Library Scrip
3899|0|15|Legends of the Gurubashi, Volume 3
3900|1|12|Pupellyverbos Port
3901|1|12|Bloodscalp Tusk
3902|2|2|Staff of Nobles
3904|1|12|Gan'zulah's Head
3905|1|12|Nezzliok's Head
3906|1|12|Balia'mah Trophy
3907|1|12|Ziata'jai Trophy
3908|1|12|Zul'Mamwe Trophy
3909|1|12|Broken Armor of Ana'thek
3910|1|12|Snuff
3911|1|12|Pulsing Blue Shard
3912|1|12|Soul Gem
3913|1|12|Filled Soul Gem
3914|1|1|Journeyman's Backpack
3915|1|12|Bloody Bone Necklace
3916|1|12|Split Bone Necklace
3917|1|12|Singing Blue Crystal
3918|1|12|Singing Crystal Shard
3919|1|12|Mistvale Giblets
3920|1|12|Bloodsail Charts
3921|1|12|Bloodsail Orders
3922|1|12|Shaky's Payment
3923|1|12|Water Elemental Bracers
3924|1|12|Maury's Clubbed Foot
3925|1|12|Jon-Jon's Golden Spyglass
3926|1|12|Chucky's Huge Ring
3927|1|0|Fine Aged Cheddar
3928|1|0|Superior Healing Potion
3929|1|12|Maury's Loot
3930|1|13|Maury's Key
3931|0|15|Poisoned Spider Fang
3932|1|12|Smotts' Chest
3935|1|2|Smotts' Cutlass
3936|0|4|Crochet Belt
3937|0|4|Crochet Boots
3938|0|4|Crochet Bracers
3939|0|4|Crochet Cloak
3940|0|4|Crochet Gloves
3941|0|4|Crochet Pants
3942|0|4|Crochet Shoulderpads
3943|0|4|Crochet Vest
3944|0|4|Twill Belt
3945|0|4|Twill Boots
3946|0|4|Twill Bracers
3947|0|4|Twill Cloak
3948|0|4|Twill Gloves
3949|0|4|Twill Pants
3950|0|4|Twill Shoulderpads
3951|0|4|Twill Vest
3952|0|4|Mesh Belt
3953|0|4|Mesh Boots
3954|0|4|Mesh Bracers
3955|0|4|Mesh Cloak
3956|0|4|Mesh Gloves
3957|0|4|Mesh Pants
3958|0|4|Mesh Mantle
3959|0|4|Mesh Armor
3960|1|12|Bag of Water Elemental Bracers
3961|0|4|Thick Leather Belt
3962|0|4|Thick Leather Boots
3963|0|4|Thick Leather Bracers
3964|0|4|Thick Cloak
3965|0|4|Thick Leather Gloves
3966|0|4|Thick Leather Pants
3967|0|4|Thick Leather Shoulderpads
3968|0|4|Thick Leather Tunic
3969|0|4|Smooth Leather Belt
3970|0|4|Smooth Leather Boots
3971|0|4|Smooth Leather Bracers
3972|0|4|Smooth Cloak
3973|0|4|Smooth Leather Gloves
3974|0|4|Smooth Leather Pants
3975|0|4|Smooth Leather Shoulderpads
3976|0|4|Smooth Leather Armor
3977|0|4|Strapped Belt
3978|0|4|Strapped Boots
3979|0|4|Strapped Bracers
3980|0|4|Strapped Cloak
3981|0|4|Strapped Gloves
3982|0|4|Strapped Pants
3983|0|4|Strapped Shoulderpads
3984|0|4|Strapped Armor
3985|2|4|Monogrammed Sash
3986|0|4|Protective Pavise
3987|0|4|Deflecting Tower
3988|0|4|Plate Wall Shield
3989|0|4|Blocking Targe
3990|0|4|Crested Buckler
3991|0|4|Plated Buckler
3992|0|4|Laminated Scale Belt
3993|0|4|Laminated Scale Boots
3994|0|4|Laminated Scale Bracers
3995|0|4|Laminated Scale Cloak
3996|0|4|Laminated Scale Gloves
3997|0|4|Laminated Scale Pants
3998|0|4|Laminated Scale Shoulderpads
3999|0|4|Laminated Scale Armor
4000|0|4|Overlinked Chain Belt
4001|0|4|Overlinked Chain Boots
4002|0|4|Overlinked Chain Bracers
4003|0|4|Overlinked Chain Cloak
4004|0|4|Overlinked Chain Gloves
4005|0|4|Overlinked Chain Pants
4006|0|4|Overlinked Chain Shoulderpads
4007|0|4|Overlinked Chain Armor
4008|0|4|Sterling Chain Belt
4009|0|4|Sterling Chain Boots
4010|0|4|Sterling Chain Bracers
4011|0|4|Sterling Chain Cloak
4012|0|4|Sterling Chain Gloves
4013|0|4|Sterling Chain Pants
4014|0|4|Sterling Chain Shoulderpads
4015|0|4|Sterling Chain Armor
4016|1|12|Zanzil's Mixture
4017|0|2|Sharp Shortsword
4018|0|2|Whetted Claymore
4019|0|2|Heavy Flint Axe
4020|0|2|Splintering Battle Axe
4021|0|2|Blunting Mace
4022|0|2|Crushing Maul
4023|0|2|Fine Pointed Dagger
4024|0|2|Heavy War Staff
4025|0|2|Balanced Long Bow
4026|0|2|Sentinel Musket
4027|1|12|Catelyn's Blade
4028|1|12|Bundle of Akiris Reeds
4029|1|12|Akiris Reed
4030|1|4|Holy Relic Water
4031|1|4|Hallowed Relic Charm
4032|1|4|Radiant Relic Hammer
4033|1|4|Dawn's Glow
4034|1|12|Stone of the Tides
4035|2|4|Silver-thread Robe
4036|2|4|Silver-thread Cuffs
4037|2|4|Silver-thread Pants
4038|2|4|Nightsky Robe
4039|2|4|Nightsky Cowl
4040|2|4|Nightsky Gloves
4041|2|4|Aurora Cowl
4042|2|4|Aurora Gloves
4043|2|4|Aurora Bracers
4044|2|4|Aurora Pants
4045|2|4|Mistscape Bracers
4046|2|4|Mistscape Pants
4047|2|4|Mistscape Boots
4048|2|4|Emblazoned Hat
4049|2|4|Emblazoned Bracers
4050|2|4|Emblazoned Leggings
4051|2|4|Emblazoned Boots
4052|2|4|Insignia Cap
4053|1|12|Large River Crocolisk Skin
4054|2|4|Insignia Leggings
4055|2|4|Insignia Boots
4056|1|12|Cortello's Riddle
4057|2|4|Insignia Chestguard
4058|2|4|Glyphed Breastplate
4059|2|4|Glyphed Bracers
4060|2|4|Glyphed Leggings
4061|2|4|Imperial Leather Bracers
4062|2|4|Imperial Leather Pants
4063|2|4|Imperial Leather Gloves
4064|2|4|Emblazoned Buckler
4065|2|4|Combat Shield
4066|2|4|Insignia Buckler
4067|2|4|Glyphed Buckler
4068|2|4|Chief Brigadier Shield
4069|2|4|Blackforge Buckler
4070|2|4|Jouster's Crest
4071|2|4|Glimmering Mail Breastplate
4072|2|4|Glimmering Mail Gauntlets
4073|2|4|Glimmering Mail Greaves
4074|2|4|Mail Combat Armor
4075|2|4|Mail Combat Gauntlets
4076|2|4|Mail Combat Boots
4077|2|4|Mail Combat Headguard
4078|2|4|Chief Brigadier Coif
4079|2|4|Chief Brigadier Leggings
4080|2|4|Blackforge Cowl
4082|2|4|Blackforge Breastplate
4083|2|4|Blackforge Gauntlets
4084|2|4|Blackforge Leggings
4085|1|12|Krazek's Crock Pot
4086|2|2|Flash Rifle
4087|2|2|Trueshot Bow
4088|2|2|Dreadblade
4089|2|2|Ricochet Blunderbuss
4090|3|2|Mug O' Hurt
4091|3|2|Widowmaker
4092|0|15|Prismatic Basilisk Scale
4093|0|15|Large Basilisk Tail
4094|1|12|Tablet Shard
4095|1|15|Deprecate Snare Kit
4096|1|15|Coarse Gorilla Hair
4097|0|15|Chipped Gorilla Tooth
4098|1|12|Carefully Folded Note
4099|0|15|Tuft of Gorilla Hair
4100|0|15|Crumpled Note
4101|0|15|Ripped Note
4102|0|15|Torn Note
4103|1|13|Shackle Key
4104|1|12|Snapjaw Crocolisk Skin
4105|1|12|Elder Crocolisk Skin
4106|1|12|Tumbled Crystal
4107|2|4|Tiger Hunter Gloves
4108|2|4|Panther Hunter Leggings
4109|2|4|Excelsior Boots
4110|2|2|Master Hunter's Bow
4111|2|2|Master Hunter's Rifle
4112|2|4|Choker of the High Shaman
4113|2|4|Medicine Blanket
4114|2|4|Darktide Cape
4115|2|4|Grom'gol Buckler
4116|2|2|Olmann Sewar
4117|2|4|Scorching Sash
4118|2|4|Poobah's Nose Ring
4119|2|4|Raptor Hunter Tunic
4120|2|4|Robe of Crystal Waters
4121|2|4|Gemmed Gloves
4122|2|2|Bookmaker's Scepter
4123|2|4|Frost Metal Pauldrons
4124|2|4|Cap of Harmony
4125|2|4|Tranquil Orb
4126|2|2|Guerrilla Cleaver
4127|2|2|Shrapnel Blaster
4128|2|2|Silver Spade
4129|2|4|Collection Plate
4130|2|4|Smotts' Compass
4131|2|4|Belt of Corruption
4132|2|4|Darkspear Armsplints
4133|2|4|Darkspear Cuffs
4134|2|2|Nimboya's Mystical Staff
4135|2|4|Bloodbone Band
4136|2|4|Darkspear Boots
4137|2|4|Darkspear Shoes
4138|2|4|Blackwater Tunic
4139|2|4|Junglewalker Sandals
4140|2|4|Palm Frond Mantle
4141|1|9|Tome of Conjure Food
4142|3|9|Tome of Polymorph: Pig
4143|1|9|Tome of Conjure Food II
4144|3|9|Tome of Polymorph: Cow
4145|1|9|Tome of Conjure Mana Gem
4146|1|9|Tome of Polymorph: Sheep
4147|1|9|Tome of Conjure Food III
4148|1|9|Tome of Counterspell
4149|1|9|Tome of Frost Shield III
4150|1|9|Tome of Conjure Water IV
4151|1|9|Tome of Frostbolt IV
4152|1|9|Tome of Conjure Food IV
4153|1|9|Tome of Arcane Missiles III
4154|1|9|Tome of Slow II
4155|1|9|Tome of Water Elemental II
4157|1|9|Tome of Dampen Magic
4158|1|9|Tome of Khadgar's Unlocking III
4159|1|9|Tome of Arcane Missiles
4160|1|9|Tome of Invisibility
4161|1|9|Tome of Fireball IV
4162|1|9|Tome of Blink II
4164|1|9|Libram: Holy Light V
4165|1|9|Libram: Holy Light VI
4166|1|9|Libram: Seal of Protection
4167|1|9|Libram: Judgement
4168|1|9|Tablet of Ensnaring Totem
4169|1|9|Tablet of Unyielding Will II
4170|1|9|Tablet of Astral Recall
4171|1|9|Tablet of Agitating Totem III
4172|1|9|Tablet of Thunderclap II
4173|1|9|Tablet of Shock IV
4174|1|9|Tablet of Shock V
4175|1|9|Tablet of Lightning Shield IV
4176|1|9|Tablet of Undying Strength II
4177|1|9|Tablet of Nature Resistance
4178|1|9|Tablet of Lightning Bolt V
4179|1|9|Tablet of Restoration V
4180|1|9|Tablet of Ethereal Form II
4181|1|9|Tablet of Agitating Totem IV
4182|1|9|Tablet of Unyielding Will III
4183|1|9|Tablet of Healing Totem V
4184|1|9|Tablet of Molten Blast V
4185|1|9|Tablet of Group Astral Recall
4186|1|9|Tablet of Fire Resistance
4187|1|9|Tablet of Serpent Totem V
4188|1|9|Tablet of Invisibility Totem
4189|1|9|Tablet of Chain Lightning
4190|1|4|Feathered Armor
4194|1|4|Feathered Bracers
4195|1|4|Feathered Boots
4196|3|4|Feathered Mantle
4197|3|4|Berylline Pads
4198|1|9|Grimoire of Soul Funnel
4199|1|9|Grimoire of Soul Funnel II
4200|1|9|Grimoire of Immolate III
4201|1|9|Grimoire of Eye of Kilrogg
4202|1|9|Grimoire of Fear II
4203|1|9|Grimoire of Pestilence II
4204|1|9|Grimoire of Soul Funnel III
4205|1|9|Grimoire of Immolate IV
4206|1|9|Grimoire of Curse of Sargeras II
4207|1|9|Grimoire of Curse of Archimonde
4208|1|9|Grimoire of Mind Bomb
4209|1|9|Grimoire of Shadow Ward
4210|1|9|Grimoire of Create Lesser Bloodstone
4211|1|9|Grimoire of Pestilence
4212|1|9|Grimoire of Curse of Mannoroth III
4213|2|9|Grimoire of Doom
4214|1|9|Grimoire of Life Drain III
4215|1|9|Grimoire of Rain of Fire
4216|1|9|Grimoire of Holy Ward
4217|1|9|Grimoire of Soul Funnel IV
4218|1|9|Grimoire of Create Bloodstone
4219|1|9|Grimoire of Burning Spirit IV
4220|1|9|Grimoire of Blood Boil III
4221|1|9|Grimoire of Detect Invisibility
4223|1|9|Book of Abolish Magic
4225|1|9|Book of Entangling Roots III
4226|1|9|Book of Wrath VI
4228|1|9|Book of Moonfire IV
4230|1|9|Book of Healing Touch VI
4231|1|7|Cured Light Hide
4232|1|7|Medium Hide
4233|1|7|Cured Medium Hide
4234|1|7|Heavy Leather
4235|1|7|Heavy Hide
4236|1|7|Cured Heavy Hide
4237|2|4|Handstitched Leather Belt
4238|1|1|Linen Bag
4239|2|4|Embossed Leather Gloves
4240|1|1|Woolen Bag
4241|1|1|Green Woolen Bag
4242|2|4|Embossed Leather Pants
4243|2|4|Fine Leather Tunic
4244|2|4|Hillman's Leather Vest
4245|1|1|Small Silk Pack
4246|2|4|Fine Leather Belt
4247|2|4|Hillman's Leather Gloves
4248|2|4|Dark Leather Gloves
4249|2|4|Dark Leather Belt
4250|2|4|Hillman's Belt
4251|2|4|Hillman's Shoulders
4252|2|4|Dark Leather Shoulders
4253|3|4|Toughened Leather Gloves
4254|2|4|Barbaric Gloves
4255|2|4|Green Leather Armor
4256|2|4|Guardian Armor
4257|2|4|Green Leather Belt
4258|2|4|Guardian Belt
4259|2|4|Green Leather Bracers
4260|2|4|Guardian Leather Bracers
4261|2|4|Solliden's Trousers
4262|3|4|Gem-studded Leather Belt
4263|1|4|Standard Issue Shield
4264|2|4|Barbaric Belt
4265|1|0|Heavy Armor Kit
4266|1|9|Codex of Inner Fire II
4267|1|9|Codex of Shadow Word: Fumble
4268|1|9|Codex of Heal II
4269|1|9|Codex of Prayer of Healing
4270|1|9|Codex of Heal III
4271|1|9|Codex of Holy Smite V
4272|1|9|Codex of Holy Protection
4273|1|9|Codex of Heal
4274|1|9|Codex of Divine Escape
4275|1|9|Codex of Mind Rot
4276|1|9|Codex of Shadow Word: Fumble II
4277|1|9|Codex of Shadow Word: Befuddle II
4278|1|12|Lesser Bloodstone Ore
4279|1|9|Codex of Shadow Word: Pain V
4280|1|9|Codex of Holy Word: Shield IV
4281|1|9|Codex of Shadow Protection
4282|1|9|Codex of Dispel Magic II
4283|1|9|Codex of Sleep III
4284|1|9|Codex of Holy Smite VI
4285|1|9|Codex of Holy Word: Fortitude IV
4286|1|9|Codex of Prayer of Healing II
4287|1|9|Codex of Nullify Disease II
4288|1|9|Codex of Remove Curse II
4289|1|7|Salt
4290|2|4|Dust Bowl
4291|1|7|Silken Thread
4292|2|9|Pattern: Green Woolen Bag
4293|2|9|Pattern: Hillman's Leather Vest
4294|2|9|Pattern: Hillman's Belt
4295|1|9|Pattern: Double-stitched Leather Gloves OLD
4296|2|9|Pattern: Dark Leather Shoulders
4297|2|9|Pattern: Barbaric Gloves
4298|3|9|Pattern: Guardian Belt
4299|2|9|Pattern: Guardian Armor
4300|2|9|Pattern: Guardian Leather Bracers
4301|3|9|Pattern: Barbaric Belt
4302|2|2|Small Green Dagger
4303|2|2|Cranial Thumper
4304|1|7|Thick Leather
4305|1|7|Bolt of Silk Cloth
4306|1|7|Silk Cloth
4307|2|4|Heavy Linen Gloves
4308|2|4|Green Linen Bracers
4309|2|4|Handstitched Linen Britches
4310|2|4|Heavy Woolen Gloves
4311|2|4|Heavy Woolen Cloak
4312|2|4|Soft-soled Linen Boots
4313|2|4|Red Woolen Boots
4314|2|4|Double-Stitched Woolen Shoulders
4315|2|4|Reinforced Woolen Shoulders
4316|2|4|Heavy Woolen Pants
4317|2|4|Phoenix Pants
4318|2|4|Gloves of Meditation
4319|2|4|Azure Silk Gloves
4320|3|4|Spidersilk Boots
4321|2|4|Spider Silk Slippers
4322|2|4|Enchanter's Cowl
4323|2|4|Shadow Hood
4324|2|4|Azure Silk Vest
4325|2|4|Boots of the Enchanter
4326|2|4|Long Silken Cloak
4327|3|4|Icy Cloak
4328|2|4|Spider Belt
4329|2|4|Star Belt
4330|1|4|Stylish Red Shirt
4331|2|4|Phoenix Gloves
4332|1|4|Bright Yellow Shirt
4333|1|4|Dark Silk Shirt
4334|1|4|Formal White Shirt
4335|1|4|Rich Purple Silk Shirt
4336|1|4|Black Swashbuckler's Shirt
4337|1|7|Thick Spider's Silk
4338|1|7|Mageweave Cloth
4339|1|7|Bolt of Mageweave
4340|1|7|Gray Dye
4341|1|7|Yellow Dye
4342|1|7|Purple Dye
4343|2|4|Brown Linen Pants
4344|1|4|Brown Linen Shirt
4345|2|9|Pattern: Red Woolen Boots
4346|2|9|Pattern: Heavy Woolen Cloak
4347|2|9|Pattern: Reinforced Woolen Shoulders
4348|2|9|Pattern: Phoenix Gloves
4349|2|9|Pattern: Phoenix Pants
4350|2|9|Pattern: Spider Silk Slippers
4351|2|9|Pattern: Shadow Hood
4352|2|9|Pattern: Boots of the Enchanter
4353|2|9|Pattern: Spider Belt
4354|3|9|Pattern: Rich Purple Silk Shirt
4355|1|9|Pattern: Icy Cloak
4356|2|9|Pattern: Star Belt
4357|1|7|Rough Blasting Powder
4358|1|0|Rough Dynamite
4359|1|7|Handful of Copper Bolts
4360|1|0|Rough Copper Bomb
4361|1|7|Copper Tube
4362|2|2|Rough Boomstick
4363|1|7|Copper Modulator
4364|1|7|Coarse Blasting Powder
4365|1|0|Coarse Dynamite
4366|1|0|Target Dummy
4367|1|0|Small Seaforium Charge
4368|2|4|Flying Tiger Goggles
4369|2|2|Deadly Blunderbuss
4370|1|0|Large Copper Bomb
4371|1|7|Bronze Tube
4372|2|2|Lovingly Crafted Boomstick
4373|2|4|Shadow Goggles
4374|1|0|Small Bronze Bomb
4375|1|7|Whirring Bronze Gizmo
4376|1|0|Flame Deflector
4377|1|7|Heavy Blasting Powder
4378|1|0|Heavy Dynamite
4379|2|2|Silver-plated Shotgun
4380|1|0|Big Bronze Bomb
4381|2|4|Minor Recombobulator
4382|1|7|Bronze Framework
4383|2|2|Moonsight Rifle
4384|1|0|Explosive Sheep
4385|2|4|Green Tinted Goggles
4386|1|0|Ice Deflector
4387|1|7|Iron Strut
4388|1|0|Discombobulator Ray
4389|1|7|Gyrochronatom
4390|1|0|Iron Grenade
4391|1|0|Compact Harvest Reaper Kit
4392|1|0|Advanced Target Dummy
4393|2|4|Craftsman's Monocle
4394|1|0|Big Iron Bomb
4395|1|0|Goblin Land Mine
4396|1|4|Mechanical Dragonling
4397|1|4|Gnomish Cloaking Device
4398|1|0|Large Seaforium Charge
4399|1|7|Wooden Stock
4400|1|7|Heavy Stock
4401|1|15|Mechanical Squirrel Box
4402|1|7|Small Flame Sac
4403|1|0|Portable Bronze Mortar
4404|1|7|Silver Contact
4405|1|0|Crude Scope
4406|1|0|Standard Scope
4407|1|0|Accurate Scope
4408|2|9|Schematic: Mechanical Squirrel
4409|2|9|Schematic: Small Seaforium Charge
4410|2|9|Schematic: Shadow Goggles
4411|2|9|Schematic: Flame Deflector
4412|2|9|Schematic: Moonsight Rifle
4413|2|9|Schematic: Discombobulator Ray
4414|2|9|Schematic: Portable Bronze Mortar
4415|3|9|Schematic: Craftsman's Monocle
4416|2|9|Schematic: Goblin Land Mine
4417|2|9|Schematic: Large Seaforium Charge
4419|1|0|Scroll of Intellect III
4421|1|0|Scroll of Protection III
4422|1|0|Scroll of Stamina III
4424|1|0|Scroll of Spirit III
4425|1|0|Scroll of Agility III
4426|1|0|Scroll of Strength III
4428|0|15|Spider Palp
4429|1|12|Deepfury's Orders
4430|2|4|Ethereal Talisman
4432|1|12|Sully Balloo's Letter
4433|1|12|Waterlogged Envelope
4434|2|4|Scarecrow Trousers
4435|1|12|Mote of Myzrael
4436|2|4|Jewel-encrusted Sash
4437|2|2|Channeler's Staff
4438|3|4|Pugilist Bracers
4439|2|2|Bruiser Club
4440|1|12|Sigil of Strom
4441|1|12|MacKreel's Moonshine
4443|2|4|Grim Pauldrons
4444|2|4|Black Husk Shield
4445|2|2|Flesh Carver
4446|3|2|Blackvenom Blade
4447|2|4|Cloak of Night
4448|2|4|Husk of Naraxis
4449|2|2|Naraxis' Fang
4450|1|12|Sigil Fragment
4453|1|12|Sigil of Thoradin
4454|3|2|Talon of Vultros
4455|2|4|Raptor Hide Harness
4456|2|4|Raptor Hide Belt
4457|1|0|Barbecued Buzzard Wing
4458|1|12|Sigil of Arathor
4459|0|15|Brittle Dragon Bone
4460|0|15|Ripped Wing Webbing
4461|1|7|Raptor Hide
4462|2|4|Cloak of Rot
4463|2|4|Beaded Raptor Collar
4464|2|4|Trouncing Boots
4465|2|4|Bonefist Gauntlets
4466|1|12|Sigil of Trollbane
4467|1|12|Sigil of Ignaeus
4468|1|12|Sheathed Trol'kalar
4469|1|12|Rod of Order
4470|1|7|Simple Wood
4471|1|7|Flint and Tinder
4472|1|12|Scroll of Myzrael
4473|1|12|Eldritch Shackles
4474|2|2|Ravenwood Bow
4476|2|4|Beastwalker Robe
4477|2|4|Nefarious Buckler
4478|2|4|Iridescent Scale Leggings
4479|1|0|Burning Charm
4480|1|0|Thundering Charm
4481|1|0|Cresting Charm
4482|1|12|Sealed Folder
4483|1|13|Burning Key
4484|1|13|Cresting Key
4485|1|13|Thundering Key
4487|1|12|Maiden's Folly Charts
4488|1|12|Spirit of Silverpine Charts
4489|1|12|Maiden's Folly Log
4490|1|12|Spirit of Silverpine Log
4491|1|12|Goggles of Gem Hunting
4492|1|12|Elven Gem
4493|1|12|Elven Gems
4494|1|12|Seahorn's Sealed Letter
4495|1|12|Bloodstone Amulet
4496|1|1|Small Brown Pouch
4497|1|1|Heavy Brown Bag
4498|1|1|Brown Leather Satchel
4499|1|1|Huge Brown Sack
4500|2|1|Traveler's Backpack
4502|1|12|Sample Elven Gem
4503|1|12|Witherbark Tusk
4504|2|4|Dwarven Guard Cloak
4505|2|4|Swampland Trousers
4506|1|12|Stromgarde Badge
4507|2|4|Pit Fighter's Shield
4508|2|4|Blood-tinged Armor
4509|2|4|Seawolf Gloves
4510|1|12|Befouled Bloodstone Orb
4511|2|2|Black Water Hammer
4512|1|12|Highland Raptor Eye
4513|1|12|Raptor Heart
4514|1|12|Sara Balloo's Plea
4515|1|12|Marez's Head
4516|1|12|Otto's Head
4517|1|12|Falconcrest's Head
4518|1|12|Torn Scroll Fragment
4519|1|12|Crumpled Scroll Fragment
4520|1|12|Singed Scroll Fragment
4521|1|12|Alterac Granite
4522|1|12|Witherbark Medicine Pouch
4524|1|12|Balloo's Memorial
4525|1|12|Trelane's Wand of Invocation
4526|1|12|Raptor Talon Amulet
4527|1|12|Azure Agate
4528|1|12|Tor'gan's Orb
4529|1|12|Enchanted Agate
4530|1|12|Trelane's Phylactery
4531|1|12|Trelane's Orb
4532|1|12|Trelane's Ember Agate
4533|1|12|Sealed Letter to Archmage Malin
4534|2|4|Steel-clasped Bracers
4535|2|4|Ironforge Memorial Ring
4536|1|0|Shiny Red Apple
4537|1|0|Tel'Abim Banana
4538|1|0|Snapvine Watermelon
4539|1|0|Goldenbark Apple
4540|1|0|Tough Hunk of Bread
4541|1|0|Freshly Baked Bread
4542|1|0|Moist Cornbread
4543|2|4|White Drakeskin Cap
4544|1|0|Mulgore Spice Bread
4545|2|4|Radiant Silver Bracers
4546|1|0|Call of the Raptor
4547|2|2|Gnomish Zapper
4548|2|2|Servomechanic Sledgehammer
4549|2|4|Seafire Band
4550|2|4|Coldwater Ring
4551|1|12|Or'Kalar's Head
4552|0|15|Smooth Stone Chip
4553|0|15|Jagged Piece of Stone
4554|0|15|Shiny Polished Stone
4555|0|15|Thick Scaly Tail
]==],
[==[
4556|0|15|Speckled Shell Fragment
4557|0|15|Fiery Gland
4558|0|15|Empty Barrel
4559|1|12|CHU's QUEST ITEM
4560|1|2|Fine Scimitar
4561|2|2|Scalping Tomahawk
4562|2|2|Severing Axe
4563|1|2|Billy Club
4564|2|2|Spiked Club
4565|1|2|Simple Dagger
4566|2|2|Sturdy Quarterstaff
4567|2|2|Merc Sword
4568|2|2|Grunt Axe
4569|2|2|Staunch Hammer
4570|2|2|Birchwood Maul
4571|2|2|War Knife
4575|2|2|Medicine Staff
4576|2|2|Light Bow
4577|2|2|Compact Shotgun
4580|0|15|Sabertooth Fang
4581|0|15|Patch of Fine Fur
4582|1|12|Soft Bushy Tail
4583|0|15|Thick Furry Mane
4584|0|15|Large Trophy Paw
4585|0|15|Dripping Spider Mandible
4586|0|15|Smooth Raptor Skin
4587|0|15|Tribal Raptor Feathers
4588|0|15|Pristine Raptor Skull
4589|1|7|Long Elegant Feather
4590|0|15|Curved Yellow Bill
4591|0|15|Eagle Eye
4592|1|0|Longjaw Mud Snapper
4593|1|0|Bristle Whisker Catfish
4594|1|0|Rockscale Cod
4595|1|0|Junglevine Wine
4596|1|0|Minor Discolored Healing Potion
4597|2|9|Recipe: Minor Discolored Healing Potion
4598|1|0|Goblin Fishing Pole
4599|1|0|Cured Ham Steak
4600|1|0|Cherry Grog
4601|1|0|Soft Banana Bread
4602|1|0|Moon Harvest Pumpkin
4603|1|7|Raw Spotted Yellowtail
4604|1|0|Forest Mushroom Cap
4605|1|0|Red-speckled Mushroom
4606|1|0|Spongy Morel
4607|1|0|Delicious Cave Mold
4608|1|0|Raw Black Truffle
4609|1|9|Recipe: Barbecued Buzzard Wing
4610|1|12|Carved Stone Urn
4611|1|7|Blue Pearl
4612|1|12|Black Drake's Heart
4613|1|12|Corroded Black Box
4614|2|4|Pendant of Myzrael
4615|1|12|Blacklash's Bindings
4616|1|2|Ryedol's Lucky Pick
4621|1|12|Ambassador Infernus' Bracer
4622|1|12|Sealed Note to Advisor Belgrum
4623|1|0|Lesser Stoneshield Potion
4624|1|9|Recipe: Lesser Stoneshield Potion
4625|1|7|Firebloom
4626|1|12|Small Stone Shard
4627|1|12|Large Stone Slab
4628|1|12|Bracers of Rock Binding
4629|1|12|Supply Crate
4630|1|12|Scrap Metal
4631|1|12|Tablet of Ryun'eh
4632|2|15|Ornate Bronze Lockbox
4633|2|15|Heavy Bronze Lockbox
4634|2|15|Iron Lockbox
4635|1|12|Hammertoe's Amulet
4636|2|15|Strong Iron Lockbox
4637|2|15|Steel Lockbox
4638|2|15|Reinforced Steel Lockbox
4639|1|12|Enchanted Sea Kelp
4640|1|12|Sign of the Earth
4641|1|12|Hand of Dagun
4643|2|4|Grimsteel Cape
4644|1|12|The Legacy Heart
4645|1|12|Chains of Hematus
4646|1|12|Star of Xil'yeh
4647|1|12|Yagyin's Digest
4648|1|12|Sigil of the Hammer
4649|1|12|Bonegrip's Note
4650|1|12|Bel'dugur's Note
4652|2|4|Salbac Shield
4653|2|4|Ironheel Boots
4654|1|12|Mysterious Fossil
4655|1|7|Giant Clam Meat
4656|1|0|Small Pumpkin
4658|1|4|Warrior's Cloak
4659|1|4|Warrior's Girdle
4660|2|4|Walking Boots
4661|2|4|Bright Mantle
4662|1|4|Journeyman's Cloak
4663|1|4|Journeyman's Belt
4665|1|4|Burnt Cloak
4666|1|4|Burnt Leather Belt
4668|1|4|Battle Chain Cloak
4669|1|4|Battle Chain Girdle
4671|1|4|Ancestral Cloak
4672|1|4|Ancestral Belt
4674|1|4|Tribal Cloak
4675|1|4|Tribal Belt
4676|2|4|Skeletal Gauntlets
4677|1|4|Veteran Cloak
4678|1|4|Veteran Girdle
4680|1|4|Brackwater Cloak
4681|1|4|Brackwater Girdle
4683|1|4|Spellbinder Cloak
4684|1|4|Spellbinder Belt
4686|1|4|Barbaric Cloth Cloak
4687|1|4|Barbaric Cloth Belt
4689|1|4|Hunting Cloak
4690|1|4|Hunting Belt
4692|1|4|Ceremonial Cloak
4693|1|4|Ceremonial Leather Belt
4694|1|4|Burnished Pauldrons
4695|2|4|Burnished Cloak
4696|3|4|Lapidis Tankard of Tidesippe
4697|2|4|Burnished Girdle
4698|1|4|Seer's Mantle
4699|2|4|Seer's Belt
4700|1|4|Inscribed Leather Spaulders
4701|2|4|Inscribed Cloak
4702|1|12|Prospector's Pick
4703|1|12|Broken Tools
4705|2|4|Lambent Scale Pauldrons
4706|2|4|Lambent Scale Cloak
4707|2|4|Lambent Scale Girdle
4708|2|4|Bright Belt
4709|2|4|Forest Leather Mantle
4710|2|4|Forest Cloak
4711|2|4|Glimmering Cloak
4712|2|4|Glimmering Mail Girdle
4713|2|4|Silver-thread Cloak
4714|2|4|Silver-thread Sash
4715|2|4|Emblazoned Cloak
4716|2|4|Combat Cloak
4717|2|4|Mail Combat Belt
4718|2|4|Nightsky Mantle
4719|2|4|Nightsky Cloak
4720|2|4|Nightsky Sash
4721|2|4|Insignia Mantle
4722|2|4|Insignia Cloak
4723|2|4|Humbert's Pants
4724|2|4|Humbert's Helm
4725|2|4|Chief Brigadier Pauldrons
4726|2|4|Chief Brigadier Cloak
4727|2|4|Chief Brigadier Girdle
4728|1|4|Twain's Shoulder
4729|2|4|Aurora Mantle
4731|2|4|Glyphed Epaulets
4732|2|4|Glyphed Cloak
4733|2|4|Blackforge Pauldrons
4734|2|4|Mistscape Mantle
4735|2|4|Mistscape Cloak
4736|2|4|Mistscape Sash
4737|2|4|Imperial Leather Spaulders
4738|2|4|Imperial Leather Belt
4739|1|12|Plainstrider Meat
4740|1|12|Plainstrider Feather
4741|2|4|Stromgarde Cavalry Leggings
4742|1|12|Mountain Cougar Pelt
4743|2|4|Pulsating Crystalline Shard
4744|2|4|Arcane Runed Bracers
4745|2|4|War Rider Bracers
4746|2|4|Doomsayer's Robe
4747|1|12|Stormbull Well Water
4748|1|12|Redhorn Well Water
4749|1|12|Wildmane Well Water
4751|1|12|Windfury Talon
4752|1|12|Azure Feather
4753|1|12|Bronze Feather
4755|1|12|Water Pitcher
4756|1|15|Ruined Cat Pelt
4757|0|15|Cracked Egg Shells
4758|1|12|Prairie Wolf Paw
4759|1|12|Plainstrider Talon
4763|2|2|Blackwood Recurve Bow
4765|2|2|Enamelled Broadsword
4766|2|2|Feral Blade
4767|2|4|Coppercloth Gloves
4768|2|4|Adept's Gloves
4769|1|12|Trophy Swoop Quill
4770|1|12|Bristleback Belt
4771|2|4|Harvest Cloak
4772|1|4|Warm Cloak
4775|0|15|Cracked Bill
4776|0|15|Ruffled Feather
4777|2|2|Ironwood Maul
4778|2|2|Heavy Spiked Mace
4779|0|15|Dull Kodo Tooth
4780|0|15|Kodo Horn Fragment
4781|2|4|Whispering Vest
4782|2|4|Solstice Robe
4783|1|12|Totem of Hawkwind
4784|0|15|Lifeless Stone
4785|2|4|Brimstone Belt
4786|2|4|Wise Man's Belt
4787|0|15|Burning Pitch
4788|2|4|Agile Boots
4789|2|4|Stable Boots
4790|2|4|Inferno Cloak
4791|1|0|Enchanted Water
4792|2|4|Spirit Cloak
4793|2|4|Sylvan Cloak
4794|2|4|Wolf Bracers
4795|2|4|Bear Bracers
4796|2|4|Owl Bracers
4797|2|4|Fiery Cloak
4798|2|4|Heavy Runed Cloak
4799|2|4|Antiquated Cloak
4800|2|4|Mighty Chain Pants
4801|1|12|Stalker Claws
4802|1|12|Cougar Claws
4803|1|12|Prairie Alpha Tooth
4804|1|12|Prairie Wolf Heart
4805|1|12|Flatland Cougar Femur
4806|1|12|Plainstrider Scale
4807|1|12|Swoop Gizzard
4808|1|12|Well Stone
4809|1|12|Ambercorn
4810|2|4|Boulder Pads
4813|0|15|Small Leather Collar
4814|0|15|Discolored Fang
4816|2|4|Legionnaire's Leggings
4817|2|2|Blessed Claymore
4818|2|2|Executioner's Sword
4819|1|12|Fizsprocket's Clipboard
4820|2|4|Guardian Buckler
4821|2|4|Bear Buckler
4822|2|4|Owl's Disk
4823|1|12|Water of the Seers
4824|2|2|Blurred Axe
4825|2|2|Callous Axe
4826|2|2|Marauder Axe
4827|2|4|Wizard's Belt
4828|2|4|Nightwind Belt
4829|2|4|Dreamer's Belt
4830|2|4|Saber Leggings
4831|2|4|Stalking Pants
4832|2|4|Mystic Sarong
4833|2|4|Glorious Shoulders
4834|1|12|Venture Co. Documents
4835|2|4|Elite Shoulders
4836|2|4|Fireproof Orb
4837|2|4|Strength of Will
4838|2|4|Orb of Power
4840|1|2|Long Bayonet
4841|1|12|Horn of Arra'chea
4842|1|0|test
4843|1|12|Amethyst Runestone
4844|1|12|Opal Runestone
4845|1|12|Diamond Runestone
4846|1|12|Cog #5
4847|1|12|Lotwil's Shackles of Elemental Binding
4848|1|12|Battleboar Snout
4849|1|12|Battleboar Flank
4850|1|12|Bristleback Attack Plans
4851|1|12|Dirt-stained Map
4852|1|0|Flash Bomb
4854|1|4|Demon Scarred Cloak
4859|1|12|Burning Blade Medallion
4860|0|15|Glistening Frenzy Scale
4861|2|4|Sleek Feathered Tunic
4862|1|12|Scorpid Worker Tail
4863|1|12|Gnomish Tools
4864|1|12|Minshina's Skull
4865|0|15|Ruined Pelt
4866|1|12|Zalazane's Head
4867|0|15|Broken Scorpid Leg
4869|1|12|Fizzle's Claw
4870|1|12|Canvas Scraps
4871|1|12|Searing Collar
4872|0|15|Dry Scorpid Eye
4873|0|15|Dry Hardened Barnacle
4874|0|15|Clean Fishbones
4875|0|15|Slimy Bone
4876|0|15|Bloody Leather Boot
4877|0|15|Stone Arrowhead
4878|0|15|Broken Bloodstained Bow
4879|0|15|Squashed Rabbit Carcass
4880|0|15|Broken Spear
4881|1|12|Aged Envelope
4882|1|13|Benedict's Key
4883|1|12|Admiral Proudmoore's Orders
4886|1|12|Venomtail Poison Sac
4887|1|12|Intact Makrura Eye
4888|1|12|Crawler Mucus
4890|1|12|Taillasher Egg
4891|1|12|Kron's Amulet
4892|1|12|Durotar Tiger Fur
4893|1|12|Savannah Lion Tusk
4894|1|12|Plainstrider Kidney
4895|1|12|Thunder Lizard Horn
4896|1|12|Kodo Liver
4897|1|12|Thunderhawk Saliva Gland
4898|1|12|Lightning Gland
4903|1|12|Eye of Burning Shadow
4904|1|12|Venomtail Antidote
4905|1|12|Sarkoth's Mangled Claw
4906|1|4|Rainwalker Boots
4907|1|4|Woodland Tunic
4908|1|4|Nomadic Bracers
4909|2|4|Kodo Hunter's Leggings
4910|1|4|Painted Chain Gloves
4911|1|4|Thick Bark Buckler
4913|1|4|Painted Chain Belt
4914|1|4|Battleworn Leather Gloves
4915|1|4|Soft Wool Boots
4916|1|4|Soft Wool Vest
4917|1|4|Battleworn Chain Leggings
4918|1|12|Sack of Supplies
4919|1|4|Soft Wool Belt
4920|1|4|Battleworn Cape
4921|1|4|Dust-covered Leggings
4922|1|4|Jagged Chain Vest
4923|1|2|Primitive Hatchet
4924|1|2|Primitive Club
4925|1|2|Primitive Hand Blade
4926|1|12|Chen's Empty Keg
4928|1|4|Sandrunner Wristguards
4929|1|4|Light Scorpid Armor
4930|1|1|Handmade Leather Bag
4931|1|2|Hickory Shortbow
4932|1|2|Harpy Wing Clipper
4933|1|4|Seasoned Fighter's Cloak
4935|1|4|Wide Metal Girdle
4936|1|4|Dirt-trodden Boots
4937|1|4|Charging Buckler
4938|1|2|Blemished Wooden Staff
4939|2|2|Steady Bastard Sword
4940|1|4|Veiled Grips
4941|1|0|Really Sticky Glue
4942|1|4|Tiger Hide Boots
4943|1|2|Torka's Egg Cracker [UNUSED]
4944|1|4|Handsewn Cloak
4945|1|0|Faintly Glowing Skull
4946|1|4|Lightweight Boots
4947|2|2|Jagged Dagger
4948|2|2|Stinging Mace
4949|2|2|Orcish Cleaver
4951|1|4|Squealer's Belt
4952|1|0|Stormstout
4953|1|0|Trogg Brew
4954|1|4|Nomadic Belt
4957|1|1|Old Moneybag
4958|1|4|Sun-beaten Cloak
4959|1|2|Throwing Tomahawk
4960|1|6|Flash Pellet
4961|1|2|Dreamwatcher Staff
4962|1|4|Double-layered Gloves
4963|1|4|Thunderhorn Cloak
4964|2|2|Goblin Smasher
4965|1|2|Bloodhoof Hand Axe
4966|1|12|Mazzranache's Head
4967|1|4|Tribal Warrior's Shield
4968|1|4|Bound Harness
4969|1|4|Fortified Bindings
4970|1|4|Rough-hewn Kodo Leggings
4971|2|2|Skorn's Hammer
4972|1|4|Cliff Runner Boots
4973|1|4|Plains Hunter Wristguards
4974|2|2|Compact Fighting Knife
4975|2|4|Vigilant Buckler
4976|2|4|Mistspray Kilt
4977|2|2|Sword of Hammerfall
4978|2|2|Ryedol's Hammer
4979|2|4|Enchanted Stonecloth Bracers
4980|2|4|Prospector Gloves
4981|1|1|Agmond's Belt Pouch
4982|0|4|Ripped Prospector Belt
4983|2|2|Rock Pulverizer
4984|2|4|Skull of Impending Doom
4986|1|12|Flawed Power Stone
4987|2|2|Dwarf Captain's Sword
4988|2|4|Burning Obsidian Band
4989|2|4|Mage Dragon Robe
4990|2|4|Scorched Bands
4992|1|12|Recruitment Letter
4995|1|12|Signed Recruitment Letter
4998|2|4|Blood Ring
4999|2|4|Azora's Will
5000|2|4|Coral Band
5001|2|4|Heart Ring
5002|2|4|Glowing Green Talisman
5003|2|4|Crystal Starfire Medallion
5004|2|4|Mark of the Kirin Tor
5005|2|4|Emberspark Pendant
5006|1|12|Khazgorm's Journal
5007|2|4|Band of Thorns
5008|2|4|Quicksilver Ring
5009|2|4|Mindbender Loop
5010|2|4|Inscribed Gold Ring
5011|2|4|Welken Ring
5012|1|12|Fungal Spores
5013|1|0|Fertile Bulb
5014|1|0|Wrapping Paper (PT)
5015|1|0|Wrapped Item (PT)
5016|2|4|Artisan's Trousers
5017|1|12|Nitroglycerin
5018|1|12|Wood Pulp
5019|1|12|Sodium Nitrate
5020|1|13|Kolkar Booty Key
5021|1|12|Explosive Stick of Gann
5022|1|12|Kodobane's Head
5023|1|12|Verog's Head
5024|1|15|Frost Vial
5025|1|12|Hezrul's Head
5026|1|12|Fire Tar
5027|1|12|Rendered Spores
5028|2|4|Lord Sakrasis' Scepter
5029|2|4|Talisman of the Naga Lord
5030|1|12|Centaur Bracers
5038|1|12|Tear of the Moons
5040|1|2|Shadow Hunter Knife
5042|1|0|Red Ribboned Wrapping Paper
5043|1|0|Red Ribboned Gift
5044|1|0|Blue Ribboned Gift
5045|1|0|Skull Gift
5046|1|0|Locked Gift
5047|1|0|Skull Wrapping Paper
5048|1|0|Blue Ribboned Wrapping Paper
5049|1|0|Self-locking Ironpaper
5050|1|13|Ignition Key
5051|1|12|Dig Rat
5052|1|12|Unconscious Dig Rat
5054|1|12|Samophlange
5055|1|12|Intact Raptor Horn
5056|1|12|Root Sample
5057|1|0|Ripe Watermelon
5058|1|12|Silithid Egg
5059|1|12|Digging Claw
5060|1|15|Thieves' Tools
5061|1|12|Stolen Silver
5062|1|12|Raptor Head
5063|1|12|Kreenig Snarlsnout's Tusk
5064|1|12|Witchwing Talon
5065|1|12|Harpy Lieutenant Ring
5066|1|0|Fissure Plant
5067|1|12|Serena's Head
5068|1|12|Dried Seeds
5069|2|2|Fire Wand
5071|2|2|Shadow Wand
5072|1|12|Lok's Skull
5073|1|12|Nak's Skull
5074|1|12|Kuz's Skull
5075|1|12|Blood Shard
5076|1|12|Shipment of Boots
5077|1|12|Telescopic Lens
5078|1|12|Theramore Medal
5079|2|4|Cold Basilisk Eye
5080|1|12|Gazlowe's Ledger
5081|1|1|Kodo Hide Bag
5082|1|7|Thin Kodo Leather
5083|2|9|Pattern: Kodo Hide Bag
5084|1|12|Baron Longshore's Head
5085|1|12|Bristleback Quilboar Tusk
5086|1|12|Zhevra Hooves
5087|1|12|Plainstrider Beak
5088|1|12|Control Console Operating Manual
5089|1|13|Console Key
5091|1|4|test Eric Shirt
5092|1|2|Charred Razormane Wand
5093|1|2|Razormane Backstabber
5094|1|4|Razormane War Shield
5095|1|0|Rainbow Fin Albacore
5096|1|12|Prowler Claws
5097|1|12|Cats Eye Emerald
5098|1|12|Altered Snapjaw Shell
5099|1|12|Hoof of Lakota'mani
5100|1|12|Echeyakee's Hide
5101|1|12|Ishamuhale's Fang
5102|1|12|Owatanka's Tailspike
5103|1|12|Washte Pawne's Feather
5104|1|12|Heart of Isha Awak
5105|1|15|Explosive Shell
5107|1|4|Deckhand's Shirt
5108|1|4|Dark Iron Leather
5109|1|4|Stonesplinter Rags
5110|1|4|Dalaran Wizard's Robe
5111|2|4|Rathorian's Cape
5112|2|2|Ritual Blade
5113|0|15|Mark of the Syndicate
5114|0|15|Severed Talon
5115|0|15|Broken Wishbone
5116|1|7|Long Tail Feather
5117|1|12|Vibrant Plume
5118|0|15|Large Flat Tooth
5119|0|15|Fine Loose Hair
5120|0|15|Long Tail Hair
5121|0|15|Dirty Kodo Scale
5122|0|15|Thick Kodo Hair
5123|0|15|Steel Arrowhead
5124|0|15|Small Raptor Tooth
5125|0|15|Charged Scale
5126|1|9|Knowledge: Defias Disguise
5127|1|9|Knowledge: South Seas Pirate Disguise
5128|0|15|Shed Lizard Skin
5129|1|9|Knowledge: Dark Iron Dwarf Disguise
5130|1|9|Knowledge: Dalaran Wizard Disguise
5131|1|9|Knowledge: Stonesplinter Disguise
5132|1|9|Knowledge: Syndicate Disguise
5133|0|15|Seeping Gizzard
5134|1|12|Small Furry Paw
5135|0|15|Thin Black Claw
5136|0|15|Torn Furry Ear
5137|0|15|Bright Eyeball
5138|1|12|Harvester's Head
5139|1|9|Book of Thorns
5140|1|15|Flash Powder
5141|1|9|Book of Regrowth
5142|1|9|Book of Wrath II
5143|1|12|Thunder Lizard Blood
5145|1|9|Book of Healing Touch II
5147|1|9|Book of Entangling Roots II
5148|1|9|Book of Thorns II
5149|1|9|Book of Wrath III
5150|1|9|Book of Healing Touch III
5151|1|9|Book of Wrath IV
5152|1|9|Book of Healing Touch IV
5153|1|9|Book of Mark of the Wild IV
5154|1|9|Book of Thorns III
5155|1|9|Book of Mark of the Wild II
5156|1|9|Book of Wrath V
5158|1|9|Book of Tranquility
5160|1|9|Book of Healing Touch V
5163|1|9|Book of Mark of the Wild III
5164|1|12|Thunderhawk Wings
5165|1|12|Sunscale Feather
5166|1|12|Webwood Venom Sac
5167|1|12|Webwood Egg
5168|1|12|Timberling Seed
5169|1|12|Timberling Sprout
5170|1|12|Mossy Tumor
5172|1|15|Death Capsule
5173|1|15|Deathweed
5174|1|12|Note from Neeru
5175|1|15|Earth Totem
5176|1|15|Fire Totem
5177|1|15|Water Totem
5178|1|15|Air Totem
5179|1|12|Moss-twined Heart
5180|2|4|Necklace of Harmony
5181|2|4|Vibrant Silk Cape
5182|2|2|Shiver Blade
5183|3|4|Pulsating Hydra Heart
5184|1|12|Filled Crystal Phial
5185|1|12|Crystal Phial
5186|1|12|Partially Filled Vessel
5187|1|2|Rhahk'Zor's Hammer
5188|1|12|Filled Vessel
5189|1|12|Glowing Fruit
5190|1|12|Shimmering Frond
5191|3|2|Cruel Barb
5192|2|2|Thief's Blade
5193|3|4|Cape of the Brotherhood
5194|3|2|Taskmaster Axe
5195|2|4|Gold-flecked Gloves
5196|2|2|Smite's Reaver
5197|2|2|Cookie's Tenderizer
5198|3|2|Cookie's Stirring Rod
5199|2|4|Smelting Pants
5200|2|2|Impaling Harpoon
5201|3|2|Emberstone Staff
5202|3|4|Corsair's Overshirt
5203|1|12|Flatland Prowler Claw
5204|1|12|Bloodfeather Belt
5205|1|0|Sprouted Frond
5206|1|0|Bogling Root
5207|2|2|Opaque Wand
5208|1|2|Smoldering Wand
5209|1|2|Gloom Wand
5210|1|2|Burning Wand
5211|1|2|Dusk Wand
5212|2|2|Blazing Wand
5213|2|2|Scorching Wand
5214|2|2|Wand of Eventide
5215|2|2|Ember Wand
5216|2|2|Umbral Wand
5217|1|12|Tainted Heart
5218|1|12|Cleansed Timberling Heart
5219|1|12|Inscribed Bark
5220|1|12|Gnarlpine Fang
5221|1|12|Melenas' Head
5223|1|0|Empty Mana Gem
5227|1|0|Empty Mana Jewel
5229|1|0|Empty Greater Bloodstone
5232|1|0|Minor Soulstone
5233|1|12|Stone of Relu
5234|1|12|Flagongut's Fossil
5235|1|2|Alchemist's Wand
5236|1|2|Combustible Wand
5237|1|0|Mind-numbing Poison
5238|1|2|Pitchwood Wand
5239|1|2|Blackbone Wand
5240|2|2|Torchlight Wand
5241|2|2|Dwarven Flamestick
5242|2|2|Cinder Wand
5243|3|2|Firebelcher
5244|2|2|Consecrated Wand
5245|2|2|Summoner's Wand
5246|2|2|Excavation Rod
5247|2|2|Rod of Sorrow
5248|2|2|Flash Wand
5249|2|2|Burning Sliver
5250|2|2|Charred Wand
5251|1|12|Phial of Scrying
5252|2|2|Wand of Decay
5253|2|2|Goblin Igniter
5254|1|4|Rugged Spaulders
5255|2|2|Quilboar Tomahawk
5256|2|2|Kovork's Rattle
5257|3|4|Dark Hooded Cape
5263|0|15|Pocket Lint
5264|1|12|Complimentary Beer Token
5265|1|0|Watered-down Beer
5266|3|4|Eye of Adaegus
5267|3|2|Scarlet Kris
5268|0|15|Cracked Silithid Shell
5269|0|15|Silithid Ichor
5270|1|12|Death Cap
5271|1|12|Scaber Stalk
5272|1|12|Insane Scribbles
5273|1|12|Mathystra Relic
5274|2|4|Rose Mantle
5275|2|4|Binding Girdle
5279|2|2|Harpy Skinner
5299|2|4|Gloves of the Moon
5302|2|4|Cobalt Buckler
5306|2|2|Wind Rider Staff
5309|2|2|Privateer Musket
5310|2|4|Sea Dog Britches
5311|2|4|Buckled Boots
5312|2|4|Riveted Gauntlets
5313|2|4|Totemic Clan Ring
5314|2|4|Boar Hunter's Cape
5315|2|4|Timberland Armguards
5316|2|4|Barkshell Tunic
5317|2|4|Dry Moss Tunic
5318|2|2|Zhovur Axe
5319|1|4|Bashing Pauldrons
5320|2|4|Padded Lamellar Boots
5321|2|2|Elegant Shortsword
5322|2|2|Demolition Hammer
5323|2|4|Everglow Lantern
5324|2|2|Engineer's Hammer
5325|2|4|Welding Shield
5326|2|2|Flaring Baton
5327|2|4|Greasy Tinker's Pants
5328|2|4|Cinched Belt
5329|0|15|Cat Figurine
5330|1|12|Elven Cup Relic
5332|1|15|Glowing Cat Figurine
5334|1|12|99-Year-Old Port
5335|1|15|A Sack of Coins
5336|1|12|Grell Earring
5337|2|4|Wayfaring Gloves
5338|1|12|Ancient Moonstone Seal
5339|1|12|Serpentbloom
5340|2|2|Cauldron Stirrer
5341|2|4|Spore-covered Tunic
5342|1|0|Raptor Punch
5343|2|4|Barkeeper's Cloak
5344|2|2|Pointed Axe
5345|2|2|Stonewood Hammer
5346|2|2|Orcish Battle Bow
5347|1|2|Pestilent Wand
5348|1|12|Worn Parchment
5349|1|0|Conjured Muffin
5350|1|0|Conjured Water
5351|2|4|Bounty Hunter's Ring
5352|1|12|Book: The Powers Below
5353|1|12|Message for Elissa Starbreeze
5354|1|12|Letter to Delgren
5355|2|4|Beastmaster's Girdle
5356|2|2|Branding Rod
5357|2|4|Ward of the Vale
5359|1|12|Lorgalis Manuscript
5360|1|12|Highborne Relic
5361|0|15|Fishbone Toothpick
5362|0|15|Chew Toy
5363|0|15|Folded Handkerchief
5364|0|15|Dry Salt Lick
5366|1|12|Glowing Soul Gem
5367|0|15|Primitive Rock Tool
5368|0|15|Empty Wallet
5369|0|15|Gnawed Bone
5370|0|15|Bent Spoon
5371|0|15|Piece of Coral
5373|1|15|Lucky Charm
5374|0|15|Small Pocket Watch
5375|0|15|Scratching Stick
5376|0|15|Broken Mirror
5377|0|15|Scallop Shell
5379|0|2|Boot Knife
5380|1|12|Sealed Letter to Elissa
5381|1|12|Sealed Letter to Balthule
5382|1|12|Anaya's Pendant
5383|1|12|Athrikus Narassin's Head
5385|1|12|Crawler Leg
5386|1|12|Fine Moonstalker Pelt
5387|2|4|Enchanted Moonstalker Cloak
5388|1|12|Ran Bloodtooth's Skull
5389|1|12|Corrupted Furbolg Totem
5390|1|12|Fandral's Message
5391|1|12|Rare Earth
5392|1|2|Thistlewood Dagger
5393|1|2|Thistlewood Staff
5394|1|4|Archery Training Gloves
5395|1|4|Woodland Shield
5396|1|13|Key to Searing Gorge
5397|1|13|Defias Gunpowder
5398|1|4|Canopy Leggings
5399|1|4|Tracking Boots
5400|1|12|Blood of Cobrahn
5401|1|12|Blood of Pythas
5402|1|12|Blood of Anacondra
5403|1|12|Blood of Serpentis
5404|1|4|Serpent's Shoulders
5405|1|4|Draped Cloak
5406|1|0|Empty Minor Bloodstone
5411|1|4|Winterhoof Cleansing Totem
5412|1|12|Thresher Eye
5413|1|12|Moonstalker Fang
5414|1|12|Grizzled Scalp
5415|1|12|Thunderhorn Cleansing Totem
5416|1|12|Wildmane Cleansing Totem
5419|1|4|Feral Bracers
5420|2|4|Banshee Armor
5421|1|0|Fiery Blaze Enchantment
5422|2|4|Brambleweed Leggings
5423|3|2|Boahn's Fang
5424|1|12|Ancient Statuette
5425|2|4|Runescale Girdle
5426|3|2|Serpent's Kiss
5427|0|15|Crude Pocket Watch
5428|0|15|An Exotic Cookbook
5429|0|15|A Pretty Rock
5430|0|15|Intricate Bauble
5431|0|15|Empty Hip Flask
5432|0|15|Hickory Pipe
5433|0|15|Rag Doll
5435|0|15|Shiny Dinglehopper
5437|1|12|Bathran's Hair
5439|1|11|Small Quiver
5440|1|12|Bottle of Disease
5441|1|11|Small Shot Pouch
5442|1|12|Head of Arugal
5443|3|4|Gold-plated Buckler
5444|2|4|Miner's Cape
5445|1|12|Ring of Zoram
5446|0|15|Broken Elemental Bracer
5447|0|15|Damaged Elemental Bracer
5448|0|15|Fractured Elemental Bracer
5451|0|15|Crushed Elemental Bracer
5455|1|12|Divined Scroll
5456|1|12|Divining Scroll
5457|1|0|Severed Voodoo Claw
5458|1|4|Dirtwood Belt
5459|2|2|Defender Axe
5460|1|12|Orendil's Cure
5461|1|12|Branch of Cenarius
5462|1|12|Dartol's Rod of Transformation
5463|1|12|Glowing Gem
5464|1|12|Iron Shaft
5465|1|7|Small Spider Leg
5466|1|7|Scorpid Stinger
5467|1|7|Kodo Meat
5468|1|7|Soft Frenzy Flesh
5469|1|7|Strider Meat
5470|1|7|Thunder Lizard Tail
5471|1|7|Stag Meat
5472|1|0|Kaldorei Spider Kabob
5473|1|0|Scorpid Surprise
5474|1|0|Roasted Kodo Meat
5475|1|13|Wooden Key
5476|1|0|Fillet of Frenzy
5477|1|0|Strider Stew
5478|1|0|Dig Rat Stew
5479|1|0|Crispy Lizard Tail
5480|1|0|Lean Venison
5481|1|12|Satyr Horns
5482|1|9|Recipe: Kaldorei Spider Kabob
5483|1|9|Recipe: Scorpid Surprise
5484|1|9|Recipe: Roasted Kodo Meat
5485|1|9|Recipe: Fillet of Frenzy
5486|1|9|Recipe: Strider Stew
5487|1|9|Recipe: Dig Rat Stew
5488|1|9|Recipe: Crispy Lizard Tail
5489|1|9|Recipe: Lean Venison
5490|1|12|Wrathtail Head
5493|1|12|Elune's Tear
5494|1|12|Handful of Stardust
5498|2|7|Small Lustrous Pearl
5500|2|7|Iridescent Pearl
5503|1|7|Clam Meat
5504|1|7|Tangy Clam Meat
5505|1|12|Teronis' Journal
5506|0|15|Beady Eye Stalk
5507|1|0|Ornate Spyglass
5508|1|12|Fallen Moonstone
5509|1|0|Healthstone
5510|1|0|Greater Healthstone
5511|1|0|Lesser Healthstone
5512|1|0|Minor Healthstone
5513|1|0|Mana Jade
5514|1|4|Mana Agate
5516|0|2|Threshadon Fang
5517|1|15|Tiny Bronze Key
5518|1|15|Tiny Iron Key
5519|1|12|Iron Pommel
5520|1|12|Velinde's Journal
5521|1|12|Velinde's Key
5522|1|4|Spellstone
5523|1|7|Small Barnacled Clam
5524|1|7|Thick-shelled Clam
5525|1|0|Boiled Clams
5526|1|0|Clam Chowder
5527|1|0|Goblin Deviled Clams
5528|1|9|Recipe: Clam Chowder
5529|0|15|Tomb Dust
5530|1|15|Blinding Powder
5533|1|12|Ilkrud Magthrull's Tome
5534|1|12|Parker's Lunch
5535|1|12|Compendium of the Fallen
5536|1|12|Mythology of the Titans
5537|1|12|Sarilus Foulborne's Head
5538|1|12|Vorrel's Wedding Ring
5539|1|12|Letter of Commendation
5540|2|2|Pearl-handled Dagger
5541|2|2|Iridescent Hammer
5542|2|4|Pearl-clasped Cloak
5543|2|9|Plans: Iridescent Hammer
5544|1|12|Dal Bloodclaw's Skull
5547|1|12|Reconstructed Rod
5565|1|15|Infernal Stone
5566|0|15|Broken Antler
5567|0|15|Silver Hook
5568|1|6|Smooth Pebble
5569|0|15|Seaweed
5570|1|12|Deepmoss Egg
5571|1|1|Small Black Pouch
5572|1|1|Small Green Pouch
5573|1|1|Green Leather Bag
5574|1|1|White Leather Bag
5575|1|1|Large Green Sack
5576|1|1|Large Brown Sack
5577|2|9|Plans: Rough Bronze Bracers
5578|2|9|Plans: Silvered Bronze Breastplate
5579|1|2|Militia Warhammer
5580|1|2|Militia Hammer
5581|1|2|Smooth Walking Staff
5582|1|12|Stonetalon Sap
5583|1|12|Fey Dragon Scale
5584|1|12|Twilight Whisker
5585|1|12|Courser Eye
5586|1|2|Thistlewood Blade
5587|2|2|Thornroot Club
5588|1|12|Lydon's Toxin
5589|1|4|Moss-covered Gauntlets
5590|1|4|Cord Bracers
5591|1|4|Rain-spotted Cape
5592|1|4|Shackled Girdle
5593|1|4|Crag Buckler
5594|1|12|Letter to Jin'Zil
5595|1|2|Thicket Hammer
5596|1|2|Ashwood Bow
5601|0|15|Hatched Egg Sac
5602|0|15|Sticky Spider Webbing
5603|1|1|Wizbang's Gunnysack
5604|2|2|Elven Wand
5605|1|2|Pruning Knife
5606|1|4|Gardening Gloves
5608|2|4|Living Cowl
5609|2|4|Steadfast Cinch
5610|2|4|Gustweald Cloak
5611|2|4|Tear of Grief
5612|1|4|Ivy Cuffs
5613|2|2|Staff of the Purifier
5614|2|2|Seraph's Strike
5615|2|2|Woodsman Sword
5616|3|2|Gutwrencher
5617|2|4|Vagabond Leggings
5618|1|4|Scout's Cloak
5619|1|12|Jade Phial
5620|1|12|Vial of Innocent Blood
5621|1|12|Tourmaline Phial
5622|2|4|Clergy Ring
5623|1|12|Amethyst Phial
5624|2|4|Circlet of the Order
5626|2|2|Skullchipper
5627|2|2|Relic Blade
5628|1|12|Zamah's Note
5629|2|4|Hammerfist Gloves
5630|2|4|Windfelt Gloves
5631|1|0|Rage Potion
5632|1|0|Cowardly Flight Potion
5633|1|0|Great Rage Potion
5634|1|0|Free Action Potion
5635|1|7|Sharp Claw
5636|0|15|Delicate Feather
5637|1|7|Large Fang
5638|1|12|Toxic Fogger
5639|1|12|Filled Jade Phial
5640|1|9|Recipe: Rage Potion
5641|1|9|Recipe: Cowardly Flight Potion
5642|1|9|Recipe: Free Action Potion
5643|1|9|Recipe: Great Rage Potion
5644|1|9|Tome of Conjure Water
5645|1|12|Filled Tourmaline Phial
5646|1|12|Vial of Blessed Water
5647|1|9|Tome of Blink
5648|1|9|Tome of Frost Armor III
5649|1|9|Tome of Blizzard
5650|1|9|Tome of Conjure Water III
5654|1|15|Instant Toxin
5655|3|15|Chestnut Mare Bridle
5656|3|15|Brown Horse Bridle
5657|1|9|Recipe: Instant Toxin
5658|1|9|Libram: Seal of Might
5659|1|12|Smoldering Embers
5660|1|9|Libram: Seal of Righteousness
5661|1|9|Libram: Seal of Righteousness II
5662|1|9|Libram: Seal of Righteousness III
5663|1|15|Horn of the Red Wolf
5664|1|12|Corroded Shrapnel
5665|3|15|Horn of the Dire Wolf
5666|1|9|Libram: Seal of Wrath II
5667|1|9|Libram: Seal of Wisdom II
5668|3|15|Horn of the Brown Wolf
5669|1|12|Dust Devil Debris
5670|1|9|Libram: Seal of Wrath IV
5671|1|9|Libram: Seal of Might III
5672|1|9|Libram: Exorcism
5673|1|9|Libram: Exorcism II
5674|1|9|Libram: Exorcism III
5675|1|12|Crystalized Scales
5676|1|9|Libram: Sense Undead
5677|1|9|Libram: Turn Undead
5678|1|9|Libram: Seal of Sacrifice
5679|1|9|Libram: Seal of Wisdom III
5680|1|9|Libram: Seal of Protection II
5681|1|12|Corrosive Sap
5682|1|9|Libram: Turn Undead II
5683|1|9|Libram: Divine Shield II
5684|1|9|Libram: Seal of Salvation
5685|1|9|Libram: Redemption
5686|1|12|Ordanus' Head
5687|1|12|Gatekeeper's Key
5689|1|12|Sleepers' Key
5690|1|12|Claw Key
5691|1|12|Barrow Key
5692|1|12|Remote Detonator (Red)
5693|1|12|Remote Detonator (Blue)
5694|1|12|NG-5 Explosives (Red)
5695|1|12|NG-5 Explosives (Blue)
5696|1|9|Tablet of Shock
5697|1|9|Tablet of Healing Totem
5698|1|9|Tablet of Lightning Shield
5699|1|9|Tablet of Ghost Wolf
5700|1|9|Tablet of Healing Totem II
5701|1|9|Tablet of Sentry Totem
5702|1|9|Tablet of Agitating Totem II
5703|1|9|Tablet of Thunderclap
5704|1|9|Tablet of Water Breathing
5705|1|9|Tablet of Healing Totem III
5706|1|9|Tablet of Serpent Totem III
5707|1|9|Tablet of Far Sight
5708|1|9|Tablet of Ethereal Form
5709|1|9|Tablet of Water Walking
5710|1|9|Tablet of Healing Totem IV
5711|1|9|Tablet of Ghost Wolf II
5712|1|9|Tablet of Serpent Totem IV
5713|1|9|Tablet of Thunderbolt
5714|1|9|Tablet of Ensnaring Totem II
5715|1|9|Tablet of Lightning Storm III
5716|1|9|Tablet of Restoration VI
5717|1|12|Venture Co. Letters
5718|1|12|Venture Co. Engineering Plans
5719|1|9|Grimoire of Life Drain II
5720|1|9|Grimoire of Curse of Mannoroth II
5721|1|9|Grimoire of Create Spellstone
5722|1|9|Grimoire of Siphon Mana II
5723|1|9|Grimoire of Curse of Sargeras III
5724|1|9|Grimoire of Curse of Tongues
5725|1|9|Grimoire of Pestilence III
5726|1|9|Grimoire of Create Greater Bloodstone
5727|1|9|Grimoire of Mana Funnel
5728|1|9|Grimoire of Rain of Fire II
5729|1|9|Grimoire of Fear III
5730|1|9|Book of Rejuvenation
5731|1|12|Scroll of Messaging
5732|1|12|NG-5
5733|1|12|Unidentified Ore
5734|1|12|Super Reaper 6000 Blueprints
5735|1|12|Sealed Envelope
5736|1|12|Gerenzo's Mechanical Arm
5737|1|12|Covert Ops Plans: Alpha & Beta
5738|1|15|Covert Ops Pack
5739|2|4|Barbaric Harness
5740|1|0|Red Fireworks Rocket
5741|0|15|Rock Chip
5742|2|2|Gemstone Dagger
5743|2|4|Prismstone Ring
5744|2|2|Pale Skinner
5748|2|2|Centaur Longbow
5749|2|2|Scythe Axe
5750|2|4|Warchief's Girdle
5751|2|4|Webwing Cloak
5752|2|2|Wyvern Tailspike
5753|2|4|Ruffled Chaplet
5754|2|4|Wolfpack Medallion
5755|2|4|Onyx Shredder Plate
5756|3|2|Sliverblade
5757|2|2|Hardwood Cudgel
5758|2|15|Mithril Lockbox
5759|2|15|Thorium Lockbox
5760|2|15|Eternium Lockbox
5761|1|2|Anvilmar Sledge
5762|1|1|Red Linen Bag
5763|1|1|Red Woolen Bag
5764|1|1|Green Silk Pack
5765|1|1|Black Silk Pack
5766|2|4|Lesser Wizard's Robe
5767|1|4|Violet Robes
5768|1|12|Gnome Race Ticket
5769|1|12|Goblin Race Ticket
5770|2|4|Robes of Arcana
5771|1|9|Pattern: Red Linen Bag
5772|1|9|Pattern: Red Woolen Bag
5773|2|9|Pattern: Robes of Arcana
5774|2|9|Pattern: Green Silk Pack
5775|2|9|Pattern: Black Silk Pack
5776|1|2|Elder's Cane
5777|1|2|Brave's Axe
5778|1|2|Primitive Walking Stick
5779|1|2|Forsaken Bastard Sword
5780|2|4|Murloc Scale Belt
5781|2|4|Murloc Scale Breastplate
5782|2|4|Thick Murloc Armor
5783|2|4|Murloc Scale Bracers
5784|1|7|Slimy Murloc Scale
5785|1|7|Thick Murloc Scale
5786|1|9|Pattern: Murloc Scale Belt
5787|1|9|Pattern: Murloc Scale Breastplate
5788|2|9|Pattern: Thick Murloc Armor
5789|2|9|Pattern: Murloc Scale Bracers
5790|1|12|Lonebrow's Journal
5791|1|12|Henrig Lonebrow's Journal
5792|1|12|Razorflank's Medallion
5793|1|12|Razorflank's Heart
5794|1|12|Salty Scorpid Venom
5795|1|12|Hardened Tortoise Shell
5796|1|12|Encrusted Tail Fin
5797|1|12|Indurium Flake
5798|1|12|Rocket Car Parts
5799|1|12|Kravel's Parts Order
5800|1|12|Kravel's Parts
5801|1|12|Kraul Guano
5802|1|12|Delicate Car Parts
5803|1|12|Speck of Dream Dust
5804|1|12|Goblin Rumors
5805|1|12|Heart of Zeal
5806|1|12|Fool's Stout
5807|1|12|Fool's Stout Report
5808|1|12|Pridewing Venom Sac
5809|1|12|Highperch Venom Sac
5810|1|12|Fresh Carcass
5811|1|12|Frostmaw's Mane
5812|2|4|Robes of Antiquity
5813|2|2|Emil's Brand
5814|2|4|Snapbrook Armor
5815|2|2|Glacial Stone
5816|1|0|Light of Elune
5817|2|2|Lunaris Bow
5818|2|2|Moonbeam Wand
5819|3|4|Sunblaze Coif
5820|2|4|Faerie Mantle
5821|2|4|Darkstalker Boots
5822|2|4|Hedgeseed Gauntlets
5823|1|0|Poisonous Mushroom
5824|1|12|Tablet of Will
5825|1|12|Treshala's Pendant
5826|1|12|Kravel's Scheme
5827|1|12|Fizzle Brassbolts' Letter
5828|6|4|Ring of Uber Resists (TEST)
5829|0|15|Razor-sharp Beak
5830|1|12|Kenata's Head
5831|1|12|Fardel's Head
5832|1|12|Marcel's Head
5833|1|12|Indurium Ore
5834|1|12|Mok'Morokk's Snuff
5835|1|12|Mok'Morokk's Grog
5836|1|12|Mok'Morokk's Strongbox
5837|1|12|Steelsnap's Rib
5838|1|12|Kodo Skin Scroll
5839|0|15|Journal Page
5840|1|12|Searing Tongue
5841|1|12|Searing Heart
5842|1|12|Unrefined Ore Sample
5843|1|12|Grenka's Claw
5844|1|12|Fragments of Rok'Alim
5845|1|0|Flank of Meat
5846|1|12|Korran's Sealed Note
5847|1|12|Mirefin Head
5848|1|12|Hollow Vulture Bone
5849|1|12|Crate of Crash Helmets
5850|1|12|Belgrom's Sealed Note
5851|1|13|Cozzle's Key
5852|1|12|Fuel Regulator Blueprints
5853|1|12|Intact Silithid Carapace
5854|1|12|Silithid Talon
5855|1|12|Silithid Heart
5857|1|12|Gnome Prize Box
5858|1|12|Goblin Prize Box
5859|1|0|Party Grenade
5860|1|12|Legacy of the Aspects
5861|1|12|Beginnings of the Undead Threat
5862|1|12|Seaforium Booster
5863|1|15|Guild Charter
5864|3|15|Gray Ram
5865|1|12|Modified Seaforium Booster
5866|1|12|Sample of Indurium Ore
5867|1|12|Etched Phial
5868|1|12|Filled Etched Phial
5869|1|12|Cloven Hoof
5871|0|15|Large Hoof
5872|3|15|Brown Ram
5873|3|15|White Ram
5874|1|15|Harness: Black Ram
5875|1|15|Harness: Blue Ram
5876|1|12|Blueleaf Tuber
5877|1|12|Cracked Silithid Carapace
5878|1|0|Super Snuff
5879|1|12|Twilight Pendant
5880|1|0|Crate With Holes
5881|1|12|Head of Kelris
5882|1|12|Captain's Documents
5883|1|12|Forked Mudrock Tongue
5884|1|12|Unpopped Darkmist Eye
5896|1|12|Theramore Guard Medallion UNUSED
5897|1|12|Snufflenose Owner's Manual
5916|1|13|Gnome Camera Key
5917|1|12|Spy's Report
5918|1|12|Defiant Orc Head
5919|1|12|Blackened Iron Shield
5936|1|4|Animal Skin Belt
5937|1|13|Goblin Camera Key
5938|1|12|Pristine Crawler Leg
5939|1|4|Sewing Gloves
5940|1|4|Bone Buckler
5941|1|4|Brass Scale Pants
5942|1|12|Jeweled Pendant
5943|2|4|Rift Bracers
5944|2|4|Greaves of the People's Militia
5945|1|12|Deadmire's Tooth
5946|1|12|Sealed Note to Elling
5947|1|12|Defias Docket
5948|1|12|Letter to Jorgen
5949|1|12|Scrap of Paper
5950|1|12|Reethe's Badge
5951|1|0|Moist Towelette
5952|1|12|Corrupted Brain Stem
5956|1|2|Blacksmith Hammer
5957|2|4|Handstitched Leather Vest
5958|2|4|Fine Leather Pants
5959|1|12|Acidic Venom Sac
5960|1|12|Sealed Note to Watcher Backus
5961|2|4|Dark Leather Pants
5962|2|4|Guardian Pants
5963|2|4|Barbaric Leggings
5964|2|4|Barbaric Shoulders
5965|2|4|Guardian Cloak
5966|2|4|Guardian Gloves
5967|2|4|Girdle of Nobility
5968|2|4|Rugged Boots
5969|2|4|Regent's Cloak
5970|2|4|Serpent Gloves
5971|2|4|Feathered Cape
5972|2|9|Pattern: Fine Leather Pants
5973|1|9|Pattern: Barbaric Leggings
5974|2|9|Pattern: Guardian Cloak
5975|2|4|Ruffian Belt
5976|1|4|Guild Tabard
5996|1|0|Draught of Water Breathing
5997|1|0|Elixir of Minor Defense
5998|1|12|Stormpike's Request
6016|1|12|Wolf Heart Sample
6037|2|7|Truesilver Bar
6038|1|0|Giant Clam Scorcho
6039|1|9|Recipe: Giant Clam Scorcho
6040|2|4|Golden Scale Bracers
6041|1|0|Steel Weapon Chain
6042|1|0|Iron Shield Spike
6043|1|0|Iron Counterweight
6044|2|9|Plans: Iron Shield Spike
6045|2|9|Plans: Iron Counterweight
6046|2|9|Plans: Steel Weapon Chain
6047|1|9|Plans: Golden Scale Coif
6048|1|0|Shadow Protection Potion
6049|1|0|Fire Protection Potion
6050|1|0|Frost Protection Potion
6051|1|0|Holy Protection Potion
6052|1|0|Nature Protection Potion
6053|1|9|Recipe: Holy Protection Potion
6054|1|9|Recipe: Shadow Protection Potion
6055|1|9|Recipe: Fire Protection Potion
6056|1|9|Recipe: Frost Protection Potion
6057|1|9|Recipe: Nature Protection Potion
6058|1|4|Blackened Leather Belt
6059|1|4|Nomadic Vest
6060|1|4|Flax Bracers
6061|1|4|Graystone Bracers
6062|1|4|Heavy Cord Bracers
6063|1|4|Cold Steel Gauntlets
6064|1|12|Miniature Platinum Discs
6065|1|12|Khadgar's Essays on Dimensional Convergence
6066|1|12|Khan Dez'hepah's Head
6067|1|12|Centaur Ear
6068|1|9|Recipe: Shadow Oil
6069|1|12|Crudely Dried Meat
6070|1|4|Wolfskin Bracers
6071|1|12|Draenethyst Crystal
6072|1|12|Khan Jehn's Head
6073|1|12|Khan Shaka's Head
6074|1|0|War Horn Mouthpiece
6075|1|12|Vimes's Report
6076|1|4|Tapered Pants
6077|1|12|Maraudine Key Fragment
6078|1|4|Pikeman Shield
6079|1|12|Crude Charm
6080|1|12|Shadow Panther Heart
6081|1|12|Mire Lord Fungus
6082|1|12|Deepstrider Tumor
6083|1|12|Broken Tears
6084|2|4|Stormwind Guard Leggings
6085|2|4|Footman Tunic
6086|1|12|Faustin's Truth Serum
6087|3|4|Chausses of Westfall
6089|1|12|Zraedus's Brew
6091|1|12|Crate of Power Stones
6092|2|4|Black Whelp Boots
6093|2|2|Orc Crusher
6094|2|2|Piercing Axe
6095|2|4|Wandering Boots
6096|1|4|Apprentice's Shirt
6097|1|4|Acolyte's Shirt
6098|0|4|Neophyte's Robe
6116|0|4|Apprentice's Robe
6117|1|4|Squire's Shirt
6118|0|4|Squire's Pants
6119|0|4|Neophyte's Robe
6120|1|4|Recruit's Shirt
6121|0|4|Recruit's Pants
6122|1|4|Recruit's Boots
6123|0|4|Novice's Robe
6124|0|4|Novice's Pants
6125|1|4|Brawler's Harness
6126|0|4|Trapper's Pants
6127|1|4|Trapper's Boots
6129|0|4|Acolyte's Robe
6130|1|4|Trapper's Shirt
6131|0|4|Trapper's Pants
6132|1|9|Libram: Seal of Wisdom
6133|1|9|Libram: Seal of Fury
6134|1|4|Primitive Mantle
6135|0|4|Primitive Kilt
6136|1|4|Thug Shirt
6137|0|4|Thug Pants
6138|1|4|Thug Boots
6139|0|4|Novice's Robe
6140|0|4|Apprentice's Robe
6144|0|4|Neophyte's Robe
6145|1|12|Clarice's Pendant
6146|1|12|Sundried Driftwood
6147|2|4|Ratty Old Belt
6148|1|4|Web-covered Boots
6149|1|0|Greater Mana Potion
6150|0|15|A Frayed Knot
6166|1|12|Coyote Jawbone
6167|1|12|Neeka's Report
6168|1|12|Sawtooth Snapper Claw
6169|1|12|Unprepared Sawtooth Flank
6170|1|12|Wizards' Reagents
6171|1|4|Wolf Handler Gloves
6172|1|12|Lost Supplies
6173|1|4|Snow Boots
6174|0|2|Twain Random Sword
6175|1|12|Atal'ai Artifact
6176|1|4|Dwarven Kite Shield
6177|1|4|Ironwrought Bracers
6178|1|12|Shipment to Nethergarde
6179|2|4|Privateer's Cape
6180|2|4|Slarkskin
6181|1|12|Fetish of Hakkar
6182|1|4|Dim Torch
6183|1|0|Unlit Poor Torch
6184|1|12|Monstrous Crawler Leg
6185|1|4|Bear Shawl
6186|2|2|Trogg Slicer
6187|2|4|Dwarven Defender
6188|2|4|Mud Stompers
6189|2|4|Durable Chain Shoulders
6190|1|12|Draenethyst Shard
6191|2|4|Kimbra Boots
6192|1|12|Khan Hratha's Head
6193|1|12|Bundle of Atal'ai Artifacts
6194|2|2|Barreling Reaper
6195|2|4|Wax-polished Armor
6196|0|2|Noboru's Cudgel
6197|2|4|Loch Croc Hide Vest
6198|2|4|Jurassic Wristguards
6199|2|4|Black Widow Band
6200|2|4|Garneg's War Belt
6201|2|4|Lithe Boots
6202|2|4|Fingerless Gloves
6203|2|4|Thuggish Shield
6204|2|4|Tribal Worg Helm
6205|2|2|Burrowing Shovel
6206|1|2|Rock Chipper
6207|1|13|PVP - Horde Tower Plans
6208|1|13|PVP - Alliance Tower Plans
6209|1|13|PVP - Horde Mine Deed
6210|1|13|PVP - Alliance Mine Deed
6211|1|9|Recipe: Elixir of Ogre's Strength
6212|1|12|Head of Jammal'an
6214|2|2|Heavy Copper Maul
6215|2|2|Balanced Fighting Stick
6217|1|7|Copper Rod
6218|1|7|Runed Copper Rod
6219|1|2|Arclight Spanner
6220|3|2|Meteor Shard
6222|2|9|Formula: Imbue Chest - Minor Spirit
6223|2|4|Crest of Darkshire
6226|2|4|Bloody Apron
6238|2|4|Brown Linen Robe
6239|2|4|Red Linen Vest
6240|2|4|Blue Linen Vest
6241|2|4|White Linen Robe
6242|2|4|Blue Linen Robe
6243|2|4|Green Woolen Robe
6244|1|0|ggggfg
6245|1|12|Karnitol's Satchel
6246|1|12|Hatefury Claw
6247|1|12|Hatefury Horn
6248|1|12|Scorpashi Venom
6249|1|12|Aged Kodo Hide
6250|1|12|Felhound Brain
6251|1|12|Nether Wing
6252|1|12|Doomwarder Blood
6253|1|12|Leftwitch's Package
6255|2|2|Fishing Pole (JEFFTEST)
6256|1|2|Fishing Pole
6257|1|12|Roc Gizzard
6258|1|12|Ironfur Liver
6259|1|12|Groddoc Liver
6260|1|7|Blue Dye
6261|1|7|Orange Dye
6262|1|12|Galen's Journal
6263|2|4|Blue Overalls
6264|2|4|Greater Adept's Robe
6265|1|15|Soul Shard
6266|2|4|Disciple's Vest
6267|2|4|Disciple's Pants
6268|2|4|Pioneer Tunic
6269|2|4|Pioneer Trousers
6270|1|9|Pattern: Blue Linen Vest
6271|2|9|Pattern: Red Linen Vest
6272|1|9|Pattern: Blue Linen Robe
6273|1|9|Pattern: Green Woolen Robe
6274|1|9|Pattern: Blue Overalls
6275|1|9|Pattern: Greater Adept's Robe
6276|1|12|Musty Note
6277|1|12|Musty Parchment
6278|1|12|Musty Scroll
6279|1|12|Musty Letter
6280|1|12|Musty Missive
6281|1|12|Rattlecage Skull
6282|2|4|Sacred Burial Trousers
6283|1|12|The Book of Ur
6284|1|12|Runes of Summoning
6285|1|12|Egalin's Grimoire
6286|1|12|Pure Hearts
6287|1|12|Atal'ai Tablet Fragment
6288|1|12|Atal'ai Tablet
6289|1|7|Raw Longjaw Mud Snapper
6290|1|0|Brilliant Smallfish
6291|1|7|Raw Brilliant Smallfish
6292|1|15|10 Pound Mud Snapper
6293|0|15|Dried Bat Blood
6294|1|15|12 Pound Mud Snapper
6295|1|15|15 Pound Mud Snapper
6296|0|15|Patch of Bat Hair
6297|0|15|Old Skull
6298|0|15|Bloody Bat Fang
6299|1|0|Sickly Looking Fish
6300|0|15|Husk Fragment
6301|0|15|Old Teamster's Skull
6302|0|15|Delicate Insect Wing
6303|1|7|Raw Slitherskin Mackerel
6304|0|15|Damp Diary Page (Day 4)
6305|0|15|Damp Diary Page (Day 87)
6306|0|15|Damp Diary Page (Day 512)
6307|1|15|Message in a Bottle
6308|1|7|Raw Bristle Whisker Catfish
6309|1|15|17 Pound Catfish
6310|1|15|19 Pound Catfish
6311|1|15|22 Pound Catfish
6312|1|12|Dalin's Heart
6313|1|12|Corma's Heart
6314|2|4|Wolfmaster Cape
6315|2|2|Steelarrow Crossbow
6316|1|0|Loch Frenzy Delight
6317|1|7|Raw Loch Frenzy
6318|3|2|Odo's Ley Staff
6319|2|4|Girdle of the Blindwatcher
6320|3|4|Commander's Crest
6321|3|4|Silverlaine's Family Seal
6323|2|2|Baron's Scepter
6324|3|4|Robes of Arugal
6325|1|9|Recipe: Brilliant Smallfish
6326|1|9|Recipe: Slitherskin Mackerel
6327|3|2|The Pacifier
6328|1|9|Recipe: Longjaw Mud Snapper
6329|1|9|Recipe: Loch Frenzy Delight
6330|1|9|Recipe: Bristle Whisker Catfish
6331|3|2|Howling Blade
6332|3|4|Black Pearl Ring
6333|2|2|Spikelash Dagger
6335|2|4|Grizzled Boots
6336|2|4|Infantry Tunic
6337|2|4|Infantry Leggings
6338|1|7|Silver Rod
6339|1|7|Runed Silver Rod
6340|2|4|Fenrus' Hide
6341|2|4|Eerie Stable Lantern
6342|2|9|Formula: Enchant Chest - Minor Intellect
6343|2|9|Formula: Imbue Chest - Spirit
6344|2|9|Formula: Enchant Bracer - Minor Spirit
6345|2|9|Formula: Imbue Cloak - Protection
6346|2|9|Formula: Enchant Chest - Lesser Intellect
6347|2|9|Formula: Enchant Bracer - Minor Strength
6348|2|9|Formula: Enchant Weapon - Minor Beastslayer
6349|1|9|Formula: Enchant 2H Weapon - Lesser Intellect
6350|2|4|Rough Bronze Boots
6351|1|15|Dented Crate
6352|1|15|Waterlogged Crate
6353|1|15|Small Chest
6354|1|15|Small Locked Chest
6355|1|15|Sturdy Locked Chest
6356|1|15|Battered Chest
6357|1|15|Sealed Crate
6358|1|7|Oily Blackmouth
6359|1|7|Firefin Snapper
6360|2|2|Steelscale Crushfish
6361|1|7|Raw Rainbow Fin Albacore
6362|1|7|Raw Rockscale Cod
6363|1|15|26 Pound Catfish
6364|1|15|32 Pound Catfish
6365|1|2|Strong Fishing Pole
6366|1|2|Darkwood Fishing Pole
6367|1|2|Big Iron Fishing Pole
6368|1|9|Recipe: Rainbow Fin Albacore
6369|1|9|Recipe: Rockscale Cod
6370|1|7|Blackmouth Oil
6371|1|7|Fire Oil
6372|1|0|Swim Speed Potion
6373|1|0|Elixir of Fire Power
6375|2|9|Formula: Enchant Bracer - Lesser Spirit
6376|2|9|Formula: Enchant Boots - Minor Stamina
6377|2|9|Formula: Enchant Boots - Minor Agility
6378|2|4|Seer's Cape
6379|2|4|Inscribed Leather Belt
6380|2|4|Inscribed Buckler
6381|2|4|Bright Cloak
6382|2|4|Forest Leather Belt
6383|2|4|Forest Buckler
6384|1|4|Stylish Blue Shirt
6385|1|4|Stylish Green Shirt
6386|2|4|Glimmering Mail Legguards
6387|2|4|Glimmering Mail Bracers
6388|2|4|Glimmering Mail Pauldrons
6389|2|4|Glimmering Mail Coif
6390|2|9|Pattern: Stylish Blue Shirt
6391|2|9|Pattern: Stylish Green Shirt
6392|3|4|Belt of Arugal
6393|2|4|Silver-thread Gloves
6394|2|4|Silver-thread Boots
6395|2|4|Silver-thread Amice
6396|2|4|Emblazoned Chestpiece
6397|2|4|Emblazoned Gloves
6398|2|4|Emblazoned Belt
6399|2|4|Emblazoned Shoulders
6400|2|4|Glimmering Shield
6401|1|9|Pattern: Dark Silk Shirt
6402|2|4|Mail Combat Leggings
6403|2|4|Mail Combat Armguards
6404|2|4|Mail Combat Spaulders
]==],
[==[
6405|2|4|Nightsky Trousers
6406|2|4|Nightsky Boots
6407|2|4|Nightsky Wristbands
6408|2|4|Insignia Gloves
6409|2|4|Insignia Belt
6410|2|4|Insignia Bracers
6411|2|4|Chief Brigadier Armor
6412|2|4|Chief Brigadier Boots
6413|2|4|Chief Brigadier Bracers
6414|3|4|Seal of Sylvanas
6415|2|4|Aurora Robe
6416|2|4|Aurora Boots
6417|2|4|Aurora Cloak
6418|2|4|Aurora Sash
6419|2|4|Glyphed Mitts
6420|2|4|Glyphed Boots
6421|2|4|Glyphed Belt
6422|2|4|Glyphed Helm
6423|2|4|Blackforge Greaves
6424|2|4|Blackforge Cape
6425|2|4|Blackforge Girdle
6426|2|4|Blackforge Bracers
6427|2|4|Mistscape Robe
6428|2|4|Mistscape Gloves
6429|2|4|Mistscape Wizard Hat
6430|2|4|Imperial Leather Breastplate
6431|2|4|Imperial Leather Boots
6432|2|4|Imperial Cloak
6433|2|4|Imperial Leather Helm
6435|1|12|Infused Burning Gem
6436|1|12|Burning Gem
6438|0|15|Dull Elemental Bracer
6439|0|15|Broken Binding Bracer
6440|3|4|Brainlash
6441|1|12|Shadowstalker Scalp
6442|1|12|Oracle Crystal
6443|1|12|Deviate Hide
6444|0|15|Forked Tongue
6445|0|15|Brittle Molting
6446|1|1|Snakeskin Bag
6447|1|4|Worn Turtle Shell Shield
6448|2|2|Tail Spike
6449|3|4|Glowing Lizardscale Cloak
6450|1|0|Silk Bandage
6451|1|0|Heavy Silk Bandage
6452|1|0|Anti-Venom
6453|1|0|Strong Anti-Venom
6454|2|9|Manual: Strong Anti-Venom
6455|0|15|Old Wagonwheel
6456|0|15|Acidic Slime
6457|0|15|Rusted Engineering Parts
6458|1|0|Oil Covered Fish
6459|2|4|Savage Trodders
6460|3|4|Cobrahn's Grasp
6461|3|4|Slime-encrusted Pads
6462|1|12|Secure Crate
6463|3|4|Deep Fathom Ring
6464|1|0|Wailing Essence
6465|2|4|Robe of the Moccasin
6466|2|4|Deviate Scale Cloak
6467|2|4|Deviate Scale Gloves
6468|3|4|Deviate Scale Belt
6469|3|2|Venomstrike
6470|1|7|Deviate Scale
6471|1|7|Perfect Deviate Scale
6472|3|2|Stinging Viper
6473|2|4|Armor of the Fang
6474|1|9|Pattern: Deviate Scale Cloak
6475|1|9|Pattern: Deviate Scale Gloves
6476|2|9|Pattern: Deviate Scale Belt
6477|2|4|Grassland Sash
6478|2|4|Rat Stompers
6479|1|12|Malem Pendant
6480|2|4|Slick Deviate Leggings
6481|2|4|Dagmire Gauntlets
6482|2|4|Firewalker Boots
6486|1|0|Singed Scale
6487|1|12|Vile Familiar Head
6488|1|12|Simple Tablet
6489|1|12|Weatherworn Parchment
6490|1|12|Dark Parchment
6491|1|12|Heavy Parchment
6492|1|12|Sooty Parchment
6493|1|12|Tattered Parchment
6494|1|12|Scrawled Parchment
6495|1|12|Weatherbeaten Parchment
6496|1|12|Detailed Parchment
6497|1|12|Simple Parchment
6498|1|12|Inscribed Kodo Leather
6499|1|12|Inscribed Kodo Leather
6500|1|12|Inscribed Kodo Leather
6501|1|12|Inscribed Kodo Leather
6502|2|4|Violet Scale Armor
6503|2|4|Harlequin Robes
6504|3|2|Wingblade
6505|3|2|Crescent Staff
6506|1|4|Infantry Boots
6507|1|4|Infantry Bracers
6508|1|4|Infantry Cloak
6509|1|4|Infantry Belt
6510|1|4|Infantry Gauntlets
6511|2|4|Journeyman's Robe
6512|2|4|Disciple's Robe
6513|1|4|Disciple's Sash
6514|1|4|Disciple's Cloak
6515|1|4|Disciple's Gloves
6516|1|12|Imp Summoning Scroll
6517|1|4|Pioneer Belt
6518|1|4|Pioneer Boots
6519|1|4|Pioneer Bracers
6520|1|4|Pioneer Cloak
6521|1|4|Pioneer Gloves
6522|1|0|Deviate Fish
6523|1|4|Buckled Harness
6524|1|4|Studded Leather Harness
6525|1|4|Grunt's Harness
6526|1|4|Battle Harness
6527|2|4|Ancestral Robe
6528|2|4|Spellbinder Robe
6529|1|0|Shiny Bauble
6530|1|0|Nightcrawlers
6531|2|4|Barbaric Cloth Robe
6532|1|0|Bright Baubles
6533|1|0|Aquadynamic Fish Attractor
6534|1|12|Forged Steel Bars
6535|1|12|Tablet of Verga
6536|2|4|Willow Vest
6537|2|4|Willow Boots
6538|2|4|Willow Robe
6539|2|4|Willow Belt
6540|2|4|Willow Pants
6541|2|4|Willow Gloves
6542|2|4|Willow Cape
6543|2|4|Willow Bracers
6544|1|12|Voidwalker Summoning Scroll
6545|2|4|Soldier's Armor
6546|2|4|Soldier's Leggings
6547|2|4|Soldier's Gauntlets
6548|2|4|Soldier's Girdle
6549|1|4|Soldier's Cloak
6550|2|4|Soldier's Wristguards
6551|2|4|Soldier's Boots
6552|2|4|Bard's Tunic
6553|2|4|Bard's Trousers
6554|2|4|Bard's Gloves
6555|1|4|Bard's Cloak
6556|2|4|Bard's Bracers
6557|2|4|Bard's Boots
6558|2|4|Bard's Belt
6559|2|4|Bard's Buckler
6560|2|4|Soldier's Shield
6561|2|4|Seer's Padded Armor
6562|2|4|Shimmering Boots
6563|2|4|Shimmering Bracers
6564|2|4|Shimmering Cloak
6565|2|4|Shimmering Gloves
6566|1|4|Shimmering Amice
6567|2|4|Shimmering Armor
6568|2|4|Shimmering Trousers
6569|2|4|Shimmering Robe
6570|2|4|Shimmering Sash
6571|2|4|Scouting Buckler
6572|2|4|Defender Shield
6573|2|4|Defender Boots
6574|2|4|Defender Bracers
6575|2|4|Defender Cloak
6576|2|4|Defender Girdle
6577|2|4|Defender Gauntlets
6578|2|4|Defender Leggings
6579|1|4|Defender Spaulders
6580|2|4|Defender Tunic
6581|2|4|Scouting Belt
6582|2|4|Scouting Boots
6583|2|4|Scouting Bracers
6584|2|4|Scouting Tunic
6585|2|4|Scouting Cloak
6586|2|4|Scouting Gloves
6587|2|4|Scouting Trousers
6588|1|4|Scouting Spaulders
6589|2|4|Viridian Band
6590|2|4|Battleforge Boots
6591|2|4|Battleforge Wristguards
6592|2|4|Battleforge Armor
6593|2|4|Battleforge Cloak
6594|2|4|Battleforge Girdle
6595|2|4|Battleforge Gauntlets
6596|2|4|Battleforge Legguards
6597|2|4|Battleforge Shoulderguards
6598|2|4|Dervish Buckler
6599|2|4|Battleforge Shield
6600|2|4|Dervish Belt
6601|2|4|Dervish Boots
6602|2|4|Dervish Bracers
6603|2|4|Dervish Tunic
6604|2|4|Dervish Cape
6605|2|4|Dervish Gloves
6607|2|4|Dervish Leggings
6608|2|4|Bright Armor
6609|2|4|Sage's Cloth
6610|2|4|Sage's Robe
6611|2|4|Sage's Sash
6612|2|4|Sage's Boots
6613|2|4|Sage's Bracers
6614|2|4|Sage's Cloak
6615|2|4|Sage's Gloves
6616|2|4|Sage's Pants
6617|2|4|Sage's Mantle
6619|1|9|Manual: The Path of Defense
6620|1|12|Elaborate Parchment
6621|1|9|Manual of Taunt
6622|3|2|Sword of Zeal
6623|1|12|Succubus Summoning Scroll
6624|1|12|Ken'zigla's Draught
6625|1|12|Dirt-caked Pendant
6626|1|12|Dogran's Pendant
6627|3|4|Mutant Scale Breastplate
6628|2|4|Raven's Claws
6629|2|4|Sporid Cape
6630|3|4|Seedcloud Buckler
6631|3|2|Living Root
6632|2|4|Feyscale Cloak
6633|2|2|Butcher's Slicer
6634|1|12|Ritual Salve
6635|1|0|Earth Sapta
6636|1|0|Fire Sapta
6637|1|0|Water Sapta
6638|1|0|Air Sapta
6640|1|12|Felstalker Hoof
6641|2|2|Haunting Blade
6642|3|4|Phantom Armor
6643|2|15|Bloated Brilliant Smallfish
6644|1|15|Bloated Mackerel
6645|2|15|Bloated Mud Snapper
6646|1|15|Bloated Albacore
6647|2|15|Bloated Bristle Whisker Catfish
6648|1|12|Stoneskin Totem Scroll
6649|1|12|Searing Totem Scroll
6650|1|12|Healing Stream Totem Scroll
6651|1|2|Broken Wine Bottle
6652|1|12|Reagent Pouch
6653|1|12|Torch of the Dormant Flame
6654|1|12|Torch of the Eternal Flame
6655|1|12|Glowing Ember
6656|1|12|Rough Quartz
6657|1|0|Savory Deviate Delight
6658|1|12|Example Collar
6659|2|4|Scarab Trousers
6660|3|2|Julie's Dagger
6661|2|9|Recipe: Savory Deviate Delight
6662|1|0|Elixir of Giant Growth
6663|2|9|Recipe: Elixir of Giant Growth
6664|2|4|Voodoo Mantle
6665|2|4|Hexed Bracers
6666|2|4|Dredge Boots
6667|2|4|Engineer's Cloak
6668|2|4|Draftsman Boots
6669|2|4|Sacred Band
6670|2|4|Panther Armor
6671|2|4|Juggernaut Leggings
6672|2|9|Schematic: Flash Bomb
6675|2|4|Tempered Bracers
6676|2|4|Constable Buckler
6677|2|2|Spellcrafter Wand
6678|2|4|Band of Elven Grace
6679|2|2|Armor Piercer
6681|1|2|Thornspike
6682|2|4|Death Speaker Robes
6684|1|12|Snufflenose Command Stick
6685|2|4|Death Speaker Mantle
6686|2|4|Tusken Helm
6687|3|2|Corpsemaker
6688|2|4|Whisperwind Headdress
6689|3|2|Wind Spirit Staff
6690|2|4|Ferine Leggings
6691|3|2|Swinetusk Shank
6692|3|2|Pronged Reaver
6693|3|4|Agamaggan's Clutch
6694|3|4|Heart of Agamaggan
6695|3|4|Stygian Bone Amulet
6696|3|2|Nightstalker Bow
6697|3|4|Batwing Mantle
6698|6|4|Stone of Pierce
6707|6|4|Stone of Lapidis
6708|6|4|Stone of Goodman
6709|2|4|Moonglow Vest
6710|2|9|Pattern: Moonglow Vest
6711|6|4|Stone of Kurtz
6712|1|15|Practice Lock
6713|1|4|Ripped Pants
6714|1|0|Ez-Thro Dynamite
6715|1|0|Ruined Jumper Cables
6716|2|9|Schematic: EZ-Thro Dynamite
6717|1|12|Gaffer Jack
6718|1|12|Electropeller
6719|2|4|Windborne Belt
6720|2|4|Spirit Hunter Headdress
6721|2|4|Chestplate of Kor
6722|2|4|Beastial Manacles
6723|2|4|Medal of Courage
6724|6|4|Stone of Backus
6725|3|4|Marbled Buckler
6726|2|4|Razzeric's Customized Seatbelt
6727|2|4|Razzeric's Racing Grips
6728|6|4|Stone of Brownell
6729|2|2|Fizzle's Zippy Lighter
6730|2|4|Ironforge Chain
6731|2|4|Ironforge Breastplate
6732|2|4|Gnomish Mechanic's Gloves
6733|2|4|Ironforge Gauntlets
6734|2|9|Plans: Ironforge Chain
6735|2|9|Plans: Ironforge Breastplate
6736|2|9|Plans: Ironforge Gauntlets
6737|2|4|Dryleaf Pants
6738|2|2|Bleeding Crescent
6739|2|2|Cliffrunner's Aim
6740|2|4|Azure Sash
6741|1|2|Orcish War Sword
6742|3|4|Stonefist Girdle
6743|2|4|Sustaining Ring
6744|2|4|Gloves of Kapelan
6745|2|4|Swiftrunner Cape
6746|2|4|Basalt Buckler
6747|2|4|Enforcer Pauldrons
6748|2|4|Monkey Ring
6749|2|4|Tiger Band
6750|2|4|Snake Hoop
6751|2|4|Mourning Shawl
6752|2|4|Lancer Boots
6753|1|12|Feather Charm
6754|1|1|Large Moneybag
6755|1|15|A Small Container of Gems
6756|1|1|Jewelry Box
6757|2|4|Jaina's Signet Ring
6767|1|12|Tyranis' Pendant
6773|2|4|Kolkar Marauder Chain
6774|2|4|Traitor's Finger
6775|1|12|Tome of Divinity
6776|1|12|Tome of Valor
6777|1|12|Tome of Righteousness
6778|1|12|Tome of Justice
6779|1|12|Tome of Nobility
6780|2|4|Lilac Sash
6781|1|0|Bartleby's Mug
6782|1|0|Marshal Haggard's Badge
6783|1|12|Dead-tooth's Key
6784|2|4|Braced Handguards
6785|1|12|Powers of the Void
6786|1|4|Simple Dress
6787|2|4|White Woolen Dress
6788|2|4|Kolkar Hunter's Belt
6789|2|4|Ceremonial Centaur Blanket
6790|2|4|Ring of Calm
6791|2|4|Hellion Boots
6792|2|4|Sanguine Pauldrons
6793|2|4|Auric Bracers
6794|2|4|Stormfire Gauntlets
6795|1|4|White Swashbuckler's Shirt
6796|1|4|Red Swashbuckler's Shirt
6797|2|2|Eyepoker
6798|2|2|Blasting Hackbut
6799|1|12|Vejrek's Head
6800|1|12|Umbral Ore
6801|2|4|Baroque Apron
6802|3|2|Sword of Omen
6803|3|4|Prophetic Cane
6804|2|2|Windstorm Hammer
6805|1|12|Horn of Vorlus
6806|2|2|Dancing Flame
6807|1|0|Frog Leg Stew
6808|1|12|Elunite Ore
6809|1|12|Elura's Medallion
6810|1|12|Surena's Choker
6811|1|0|Aquadynamic Fish Lens
6812|1|0|Case of Elunite
6826|0|15|Brilliant Scale
6827|1|15|Box of Supplies
6828|2|4|Visionary Buckler
6829|3|2|Sword of Serenity
6830|3|2|Bonebiter
6831|3|2|Black Menace
6832|3|4|Cloak of Blight
6833|1|4|White Tuxedo Shirt
6834|1|4|Black Tuxedo
6835|1|4|Black Tuxedo Pants
6836|1|4|Dress Shoes
6837|1|4|Wedding Dress
6838|1|12|Scorched Spider Fang
6839|1|12|Charred Horn
6840|1|12|Galvanized Horn
6841|1|0|Vial of Phlogiston
6842|1|0|Furen's Instructions
6843|1|12|Cask of Scalder
6844|1|12|Burning Blood
6845|1|12|Burning Rock
6846|1|12|Defias Script
6847|1|12|Dark Iron Script
6848|1|12|Searing Coral
6849|1|12|Sunscorched Shell
6850|1|12|Bloodscalp Scalp
6851|1|0|Essence of the Exile
6852|1|0|Eternal Eye
6866|1|12|Symbol of Life
6887|1|0|Spotted Yellowtail
6888|1|0|Herb Baked Egg
6889|1|7|Small Egg
6890|1|0|Smoked Bear Meat
6891|1|9|Recipe: Herb Baked Egg
6892|1|9|Recipe: Smoked Bear Meat
6893|1|13|Workshop Key
6894|1|12|Whirlwind Heart
6895|1|12|Jordan's Smithing Hammer
6897|1|9|Manual: Path of the Berserker
6898|3|4|Orb of Soran'ruk
6899|0|4|Warlock Orb 35
6900|3|4|Enchanted Gold Bloodrobe
6901|3|4|Glowing Thresher Cape
6902|2|4|Bands of Serra'kis
6903|2|4|Gaze Dreamer Pants
6904|3|2|Bite of Serra'kis
6905|2|2|Reef Axe
6906|3|4|Algae Fists
6907|3|4|Tortoise Armor
6908|2|4|Ghamoo-ra's Bind
6909|3|2|Strike of the Hydra
6910|3|4|Leech Pants
6911|3|4|Moss Cinch
6912|1|12|Heartswood
6913|1|12|Heartswood Core
6914|1|12|Soran'ruk Fragment
6915|1|12|Large Soran'ruk Fragment
6916|1|12|Tome of Divinity
6926|1|0|Furen's Notes
6927|1|0|Big Will's Ear
6928|1|12|Bloodstone Choker
6929|1|0|Bath'rah's Parchment
6930|1|12|Rod of Channeling
6931|1|12|Moldy Tome
6947|1|0|Instant Poison
6948|1|15|Hearthstone
6949|1|0|Instant Poison II
6950|1|0|Instant Poison III
6951|1|0|Mind-numbing Poison II
6952|1|12|Thick Bear Fur
6953|3|2|Verigan's Fist
6966|2|2|Elunite Axe
6967|2|2|Elunite Sword
6968|2|2|Elunite Hammer
6969|2|2|Elunite Dagger
6970|2|4|Furen's Favor
6971|2|4|Fire Hardened Coif
6972|3|4|Fire Hardened Hauberk
6973|2|4|Fire Hardened Leggings
6974|2|4|Fire Hardened Gauntlets
6975|3|2|Whirlwind Axe
6976|3|2|Whirlwind Warhammer
6977|3|2|Whirlwind Sword
6978|2|2|Umbral Axe
6979|2|2|Haggard's Axe
6980|2|2|Haggard's Dagger
6981|2|2|Umbral Dagger
6982|2|2|Umbral Mace
6983|2|2|Haggard's Hammer
6984|2|2|Umbral Sword
6985|2|2|Haggard's Sword
6986|0|15|Crimson Lotus
6987|1|7|Fish Scale
6988|1|12|Felhunter Summoning Scroll
6989|1|12|Vial of Hatefury Blood
6990|1|12|Lesser Infernal Stone
6991|1|12|Smoldering Coal
6992|1|12|Jordan's Ore Shipment
6993|1|12|Jordan's Refined Ore Shipment
6994|1|12|Whitestone Oak Lumber
6995|1|12|Corrupted Kor Gem
6996|1|12|Jordan's Weapon Notes
6997|1|12|Tattered Manuscript
6998|2|4|Nimbus Boots
6999|1|12|Tome of the Cabal
7000|2|4|Heartwood Girdle
7001|3|2|Gravestone Scepter
7002|3|4|Arctic Buckler
7003|2|4|Beetle Clasps
7004|2|4|Prelacy Cape
7005|1|2|Skinning Knife
7006|1|12|Reconstructed Tome
7007|1|12|Backus' Phat Lewt
7026|1|4|Linen Belt
7027|2|4|Boots of Darkness
7046|2|4|Azure Silk Pants
7047|2|4|Hands of Darkness
7048|2|4|Azure Silk Hood
7049|2|4|Truefaith Gloves
7050|2|4|Silk Headband
7051|2|4|Earthen Vest
7052|2|4|Azure Silk Belt
7053|2|4|Azure Silk Cloak
7054|3|4|Robe of Power
7055|2|4|Crimson Silk Belt
7056|2|4|Crimson Silk Cloak
7057|2|4|Green Silken Shoulders
7058|2|4|Crimson Silk Vest
7059|2|4|Crimson Silk Shoulders
7060|2|4|Azure Shoulders
7061|2|4|Earthen Silk Belt
7062|2|4|Crimson Silk Pantaloons
7063|2|4|Crimson Silk Robe
7064|2|4|Crimson Silk Gloves
7065|2|4|Green Silk Armor
7066|1|4|Exotic Silk Dress
7067|1|7|Elemental Earth
7068|1|7|Elemental Fire
7069|1|7|Elemental Air
7070|1|7|Elemental Water
7071|1|7|Iron Buckle
7072|1|7|Naga Scale
7073|0|15|Broken Fang
7074|0|15|Chipped Claw
7075|1|7|Core of Earth
7076|2|7|Essence of Earth
7077|1|7|Heart of Fire
7078|2|7|Essence of Fire
7079|1|7|Globe of Water
7080|2|7|Essence of Water
7081|1|7|Breath of Wind
7082|2|7|Essence of Air
7083|1|12|Purified Kor Gem
7084|2|9|Pattern: Crimson Silk Shoulders
7085|2|9|Pattern: Azure Shoulders
7086|2|9|Pattern: Earthen Silk Belt
7087|1|9|Pattern: Crimson Silk Cloak
7088|1|9|Pattern: Crimson Silk Robe
7089|1|9|Pattern: Azure Silk Cloak
7090|2|9|Pattern: Green Silk Armor
7091|2|9|Pattern: Truefaith Gloves
7092|2|9|Pattern: Hands of Darkness
7093|2|9|Pattern: Boots of Darkness
7094|1|2|Driftwood Branch
7095|1|4|Bog Boots
7096|0|15|Plucked Feather
7097|1|0|Leg Meat
7098|0|15|Splintered Tusk
7099|0|15|Severed Pincer
7100|0|15|Sticky Ichor
7101|0|15|Bug Eye
7106|2|4|Zodiac Gloves
7107|2|4|Belt of the Stars
7108|2|4|Infantry Shield
7109|1|4|Pioneer Buckler
7110|2|4|Silver-thread Armor
7111|2|4|Nightsky Armor
7112|2|4|Aurora Armor
7113|2|4|Mistscape Armor
7114|1|9|Pattern: Azure Silk Gloves
7115|2|2|Heirloom Axe
7116|2|2|Heirloom Dagger
7117|2|2|Heirloom Hammer
7118|2|2|Heirloom Sword
7119|1|12|Twitching Antenna
7120|2|4|Ruga's Bulwark
7126|1|12|Smoky Iron Ingot
7127|1|0|Powdered Azurite
7128|1|12|Uncloven Satyr Hoof
7129|2|4|Brutal Gauntlets
7130|2|4|Brutal Helm
7131|1|12|Dragonmaw Shinbone
7132|2|4|Brutal Legguards
7133|3|4|Brutal Hauberk
7134|1|12|Sturdy Dragonmaw Shinbone
7135|0|12|Broken Dragonmaw Shinbone
7146|2|13|The Scarlet Key
7148|1|4|Goblin Jumper Cables
7166|2|2|Copper Dagger
7170|0|2|Twain Random Sword FOO
7187|2|4|VanCleef's Boots
7188|2|4|Stormwind Guard Shield
7189|2|4|Goblin Rocket Boots
7190|0|15|Scorched Rocket Boots
7191|1|7|Fused Wiring
7192|2|9|Schematic: Goblin Rocket Boots
7206|1|12|Mirror Lake Water Sample
7207|1|12|Jennea's Flask
7208|1|12|Tazan's Key
7209|1|15|Tazan's Satchel
7226|1|12|Mage-tastic Gizmonitor
7227|1|0|Balnir Snapdragons
7228|1|0|Tigule's Strawberry Ice Cream
7229|2|4|Explorer's Vest
7230|3|2|Smite's Mighty Hammer
7231|1|12|Astor's Letter of Introduction
7247|1|15|Chest of Containment Coffers
7248|1|4|Twain TEST Cloak
7249|1|12|Charged Rift Gem
7266|1|0|Ur's Treatise on Shadow Magic
7267|1|12|Pristine Spider Silk
7268|1|12|Xavian Water Sample
7269|1|12|Deino's Flask
7270|1|12|Laughing Sister's Hair
7271|1|12|Flawless Ivory Tusk
7272|1|12|Bolt Charged Bramble
7273|1|12|Witherbark Totem Stick
7274|1|12|Rituals of Power
7275|1|12|The Agamaggan Scrolls
7276|1|4|Handstitched Leather Cloak
7277|1|4|Handstitched Leather Bracers
7278|1|11|Light Leather Quiver
7279|1|11|Small Leather Ammo Pouch
7280|2|4|Rugged Leather Pants
7281|2|4|Light Leather Bracers
7282|2|4|Light Leather Pants
7283|2|4|Black Whelp Cloak
7284|2|4|Red Whelp Gloves
7285|2|4|Nimble Leather Gloves
7286|1|7|Black Whelp Scale
7287|1|7|Red Whelp Scale
7288|2|9|Pattern: Rugged Leather Pants
7289|1|9|Pattern: Black Whelp Cloak
7290|1|9|Pattern: Red Whelp Gloves
7291|1|12|Infernal Orb
7292|1|12|Filled Containment Coffer
7293|1|12|Dalaran Mana Gem
7294|1|12|Andron's Ledger
7295|1|12|Tazan's Logbook
7296|0|15|Extinguished Torch
7297|1|4|Morbent's Bane
7298|2|2|Blade of Cunning
7306|1|12|Fenwick's Head
7307|1|0|Flesh Eating Worm
7308|1|12|Cantation of Manifestation
7309|1|12|Dalaran Status Report
7326|2|2|Thun'grim's Axe
7327|2|2|Thun'grim's Dagger
7328|2|2|Thun'grim's Mace
7329|2|2|Thun'grim's Sword
7330|2|4|Infiltrator Buckler
7331|2|4|Phalanx Shield
7332|2|4|Regal Armor
7333|1|12|Overseer's Whistle
7334|2|4|Efflorescent Robe
7335|2|4|Grizzly Tunic
7336|2|4|Wildwood Chain
7337|1|4|The Rock
7338|1|4|Mood Ring
7339|1|4|Miniscule Diamond Ring
7340|1|4|Flawless Diamond Solitaire
7341|1|4|Cubic Zirconia Ring
7342|1|4|Silver Piffeny Band
7343|1|12|Bingles' Wrench
7344|2|4|Torch of Holy Flame
7345|1|12|Bingles' Screwdriver
7346|1|12|Bingles' Hammer
7347|1|12|Bingles' Cog Inverter
7348|2|4|Fletcher's Gloves
7349|2|4|Herbalist's Gloves
7350|1|4|Disciple's Bracers
7351|1|4|Disciple's Boots
7352|2|4|Earthen Leather Shoulders
7353|2|4|Elder's Padded Armor
7354|2|4|Elder's Boots
7355|2|4|Elder's Bracers
7356|2|4|Elder's Cloak
7357|2|4|Elder's Hat
7358|2|4|Pilferer's Gloves
7359|2|4|Heavy Earthen Gloves
7360|2|9|Pattern: Dark Leather Gloves
7361|2|9|Pattern: Herbalist's Gloves
7362|1|9|Pattern: Earthen Leather Shoulders
7363|2|9|Pattern: Pilferer's Gloves
7364|2|9|Pattern: Heavy Earthen Gloves
7365|1|12|Gnoam Sprecklesprocket
7366|2|4|Elder's Gloves
7367|2|4|Elder's Mantle
7368|2|4|Elder's Pants
7369|2|4|Elder's Robe
7370|2|4|Elder's Sash
7371|2|11|Heavy Quiver
7372|2|11|Heavy Leather Ammo Pouch
7373|2|4|Dusky Leather Leggings
7374|2|4|Dusky Leather Armor
7375|2|4|Green Whelp Armor
7376|1|12|Bingles' Blastencapper
7377|2|4|Frost Leather Cloak
7378|2|4|Dusky Bracers
7386|2|4|Green Whelp Bracers
7387|2|4|Dusky Belt
7388|1|0|Skull Key
7389|1|12|Venture Co. Ledger
7390|2|4|Dusky Boots
7391|2|4|Swift Boots
7392|1|7|Green Whelp Scale
7406|2|4|Infiltrator Cord
7407|2|4|Infiltrator Armor
7408|2|4|Infiltrator Shoulders
7409|2|4|Infiltrator Boots
7410|2|4|Infiltrator Bracers
7411|2|4|Infiltrator Cloak
7412|2|4|Infiltrator Gloves
7413|2|4|Infiltrator Cap
7414|2|4|Infiltrator Pants
7415|2|4|Dervish Spaulders
7416|2|4|Phalanx Bracers
7417|2|4|Phalanx Boots
7418|2|4|Phalanx Breastplate
7419|2|4|Phalanx Cloak
7420|2|4|Phalanx Headguard
7421|2|4|Phalanx Gauntlets
7422|2|4|Phalanx Girdle
7423|2|4|Phalanx Leggings
7424|2|4|Phalanx Spaulders
7425|1|12|Cyrik's Head
7426|2|4|Cerulean Ring
7427|2|4|Cerulean Talisman
7428|1|7|Shadowcat Hide
7429|2|4|Twilight Armor
7430|2|4|Twilight Robe
7431|2|4|Twilight Pants
7432|2|4|Twilight Cowl
7433|2|4|Twilight Gloves
7434|2|4|Twilight Boots
7435|2|4|Twilight Mantle
7436|2|4|Twilight Cape
7437|2|4|Twilight Cuffs
7438|2|4|Twilight Belt
7439|2|4|Sentinel Breastplate
7440|2|4|Sentinel Trousers
7441|2|4|Sentinel Cap
7442|1|12|Gyromast's Key
7443|2|4|Sentinel Gloves
7444|2|4|Sentinel Boots
7445|2|4|Sentinel Shoulders
7446|2|4|Sentinel Cloak
7447|2|4|Sentinel Bracers
7448|2|4|Sentinel Girdle
7449|2|9|Pattern: Dusky Leather Leggings
7450|2|9|Pattern: Green Whelp Armor
7451|2|9|Pattern: Green Whelp Bracers
7452|3|9|Pattern: Dusky Boots
7453|2|9|Pattern: Swift Boots
7454|2|4|Knight's Breastplate
7455|2|4|Knight's Legguards
7456|2|4|Knight's Headguard
7457|2|4|Knight's Gauntlets
7458|2|4|Knight's Boots
7459|2|4|Knight's Pauldrons
7460|2|4|Knight's Cloak
7461|2|4|Knight's Bracers
7462|2|4|Knight's Girdle
7463|2|4|Sentinel Buckler
7464|1|12|Glyphs of Summoning
7465|2|4|Knight's Crest
7466|2|4|Vermilion Band
7467|2|4|Vermilion Necklace
7468|2|4|Regal Robe
7469|2|4|Regal Leggings
7470|2|4|Regal Wizard Hat
7471|2|4|Regal Gloves
7472|2|4|Regal Boots
7473|2|4|Regal Mantle
7474|2|4|Regal Cloak
7475|2|4|Regal Cuffs
7476|2|4|Regal Sash
7477|2|4|Ranger Tunic
7478|2|4|Ranger Leggings
7479|2|4|Ranger Helm
7480|2|4|Ranger Gloves
7481|2|4|Ranger Boots
7482|2|4|Ranger Shoulders
7483|2|4|Ranger Cloak
7484|2|4|Ranger Wristguards
7485|2|4|Ranger Cord
7486|2|4|Captain's Breastplate
7487|2|4|Captain's Leggings
7488|2|4|Captain's Circlet
7489|2|4|Captain's Gauntlets
7490|2|4|Captain's Boots
7491|2|4|Captain's Shoulderguards
7492|2|4|Captain's Cloak
7493|2|4|Captain's Bracers
7494|2|4|Captain's Waistguard
7495|2|4|Captain's Buckler
7496|2|4|Field Plate Shield
7497|2|4|Ivory Band
7498|1|12|Top of Gelkak's Key
7499|1|12|Middle of Gelkak's Key
7500|1|12|Bottom of Gelkak's Key
7506|2|4|Gnomish Universal Remote
7507|2|4|Arcane Orb
7508|2|4|Ley Orb
7509|2|4|Manaweave Robe
7510|2|4|Lesser Spellfire Robes
7511|2|4|Astral Knot Robe
7512|2|4|Nether-lace Robe
7513|3|2|Ragefire Wand
7514|3|2|Icefury Wand
7515|3|4|Celestial Orb
7516|1|0|Tabetha's Instructions
7517|2|4|Gossamer Tunic
7518|2|4|Gossamer Robe
7519|2|4|Gossamer Pants
7520|2|4|Gossamer Headpiece
7521|2|4|Gossamer Gloves
7522|2|4|Gossamer Boots
7523|2|4|Gossamer Shoulderpads
7524|2|4|Gossamer Cape
7525|2|4|Gossamer Bracers
7526|2|4|Gossamer Belt
7527|2|4|Cabalist Chestpiece
7528|2|4|Cabalist Leggings
7529|2|4|Cabalist Helm
7530|2|4|Cabalist Gloves
7531|2|4|Cabalist Boots
7532|2|4|Cabalist Spaulders
7533|2|4|Cabalist Cloak
7534|2|4|Cabalist Bracers
7535|2|4|Cabalist Belt
7536|2|4|Champion's Wall Shield
7537|2|4|Gothic Shield
7538|2|4|Champion's Armor
7539|2|4|Champion's Leggings
7540|2|4|Champion's Helmet
7541|2|4|Champion's Gauntlets
7542|2|4|Champion's Greaves
7543|2|4|Champion's Pauldrons
7544|2|4|Champion's Cape
7545|2|4|Champion's Bracers
7546|2|4|Champion's Girdle
7547|2|4|Onyx Ring
7548|2|4|Onyx Choker
7549|2|4|Fairy's Embrace
7550|2|4|Warrior's Honor
7551|2|4|Entwined Opaline Talisman
7552|2|4|Falcon's Hook
7553|2|4|Band of the Unicorn
7554|2|4|Willow Branch
7555|2|4|Regal Star
7556|2|4|Twilight Orb
7557|2|4|Gossamer Rod
7558|2|4|Shimmering Stave
7559|2|4|Runic Cane
7560|1|9|Schematic: Gnomish Universal Remote
7561|1|9|Schematic: Goblin Jumper Cables
7566|1|12|Agamand Family Sword
7567|1|12|Agamand Family Axe
7568|1|12|Agamand Family Dagger
7569|1|12|Agamand Family Mace
7586|1|12|Tharnariun's Hope
7587|1|12|Thun'grim's Instructions
7606|2|4|Polar Gauntlets
7607|2|2|Sable Wand
7608|2|4|Seer's Fine Stein
7609|2|4|Elder's Amber Stave
7610|2|4|Aurora Sphere
7611|2|4|Mistscape Stave
7613|1|9|Pattern: Green Leather Armor
7626|1|12|Bundle of Furs
7627|1|0|Dolanaar Delivery
7628|1|12|Nondescript Letter
7629|1|0|Ukor's Burden
7646|1|12|Crate of Inn Supplies
7666|2|12|Shattered Necklace
7667|1|12|Talvash's Phial of Scrying
7668|1|15|Bloodstained Journal
7669|1|12|Shattered Necklace Ruby
7670|1|12|Shattered Necklace Sapphire
7671|1|12|Shattered Necklace Topaz
7672|1|12|Shattered Necklace Power Source
7673|3|4|Talvash's Enhancing Necklace
7674|1|12|Delivery to Mathias
7675|1|12|Defias Shipping Schedule
7676|1|0|Thistle Tea
7678|1|9|Recipe: Thistle Tea
7679|1|12|Shrike Bat Fang
7680|1|12|Jadespine Basilisk Scale
7681|1|12|Obsidian Golem Shard
7682|3|2|Torturing Poker
7683|1|2|Bloody Brass Knuckles
7684|2|4|Bloodmage Mantle
7685|3|4|Orb of the Forgotten Seer
7686|3|4|Ironspine's Eye
7687|3|2|Ironspine's Fist
7688|3|4|Ironspine's Ribcage
7689|3|2|Morbid Dawn
7690|3|4|Ebon Vise
7691|3|4|Embalmed Shroud
7708|3|2|Necrotic Wand
7709|3|4|Blighted Leggings
7710|3|2|Loksey's Training Stick
7711|2|4|Robe of Doan
7712|2|4|Mantle of Doan
7713|3|2|Illusionary Rod
7714|3|2|Hypnotic Blade
7715|1|12|Onin's Report
7716|1|12|Shattered Necklace
7717|3|2|Ravager
7718|3|4|Herod's Shoulder
7719|3|4|Raging Berserker's Helm
7720|3|4|Whitemane's Chapeau
7721|3|2|Hand of Righteousness
7722|3|4|Triune Amulet
7723|3|2|Mograine's Might
7724|3|4|Gauntlets of Divinity
7726|3|4|Aegis of the Scarlet Commander
7727|3|4|Watchman Pauldrons
7728|3|4|Beguiler Robes
7729|3|2|Chesterfall Musket
7730|3|2|Cobalt Crusher
7731|3|4|Ghostshard Talisman
7733|1|12|Staff of Prehistoria
7734|3|4|Six Demon Bag
7735|1|12|Jannok's Rose
7736|3|2|Fight Club
7737|1|12|Sethir's Journal
7738|2|4|Evergreen Gloves
7739|2|4|Timberland Cape
7740|1|12|Gni'kiv Medallion
7741|1|12|The Shaft of Tsol
7742|1|9|Schematic: Gnomish Cloaking Device
7746|2|4|Explorers' League Commendation
7747|2|4|Vile Protector
7748|2|4|Forcestone Buckler
7749|2|4|Omega Orb
7750|2|4|Mantle of Woe
7751|2|4|Vorrel's Boots
7752|3|2|Dreamslayer
7753|3|2|Bloodspiller
7754|3|4|Harbinger Boots
7755|3|4|Flintrock Shoulders
7756|2|4|Dog Training Gloves
7757|3|2|Windweaver Staff
7758|3|2|Ruthless Shiv
7759|3|4|Archon Chestpiece
7760|3|4|Warchief Kilt
7761|3|2|Steelclaw Reaver
7766|1|12|Empty Brown Waterskin
7767|1|12|Empty Blue Waterskin
7768|1|12|Empty Red Waterskin
7769|1|12|Filled Brown Waterskin
7770|1|12|Filled Blue Waterskin
7771|1|12|Filled Red Waterskin
7786|3|2|Headsplitter
7787|3|4|Resplendent Guardian
7806|1|0|Lollipop
7807|1|0|Candy Bar
7808|1|0|Chocolate Square
7809|1|4|Easter Dress
7810|1|12|Vial of Purest Water
7811|1|12|Remaining Drops of Purest Water
7812|1|12|Corrupt Manifestation's Bracers
7813|1|12|Shard of Water
7846|1|12|Crag Coyote Fang
7847|1|12|Buzzard Gizzard
7848|1|12|Rock Elemental Shard
7866|1|12|Empty Thaumaturgy Vessel
7867|1|12|Vessel of Dragon's Blood
7868|1|15|Thieven' Kit
7869|1|15|Lucius's Lockbox
7870|1|12|Thaumaturgy Vessel Lockbox
7871|1|12|Token of Thievery
7872|1|7|Rusty Thieves' Tools
7886|1|12|Untranslated Journal
7887|1|12|Necklace and Gem Salvage
7888|3|4|Jarkal's Enhancing Necklace
7906|1|12|Horns of Nez'ra
7907|1|15|Certificate of Thievery
7908|1|12|Klaven Mortwake's Journal
7909|2|7|Aquamarine
7910|2|7|Star Ruby
7911|2|7|Truesilver Ore
7912|1|7|Solid Stone
7913|2|4|Barbaric Iron Shoulders
7914|2|4|Barbaric Iron Breastplate
7915|2|4|Barbaric Iron Helm
7916|2|4|Barbaric Iron Boots
7917|2|4|Barbaric Iron Gloves
7918|2|4|Heavy Mithril Shoulder
7919|2|4|Heavy Mithril Gauntlet
7920|2|4|Mithril Plate Pants
7921|2|4|Heavy Mithril Pants
7922|2|4|Steel Plate Helm
7923|1|13|Defias Tower Key
7924|2|4|Mithril Plate Bracers
7925|2|4|Mithril Plate Gloves
7926|2|4|Ornate Mithril Pants
7927|2|4|Ornate Mithril Gloves
7928|2|4|Ornate Mithril Shoulders
7929|2|4|Orcish War Leggings
7930|2|4|Heavy Mithril Breastplate
7931|2|4|Mithril Coif
7932|2|4|Mithril Plate Shoulders
7933|2|4|Heavy Mithril Boots
7934|2|4|Heavy Mithril Helm
7935|2|4|Ornate Mithril Breastplate
7936|2|4|Ornate Mithril Boots
7937|2|4|Ornate Mithril Helm
7938|3|4|Truesilver Gauntlets
7939|3|4|Truesilver Breastplate
7941|2|2|Heavy Mithril Axe
7942|2|2|Blue Glittering Axe
7943|2|2|Wicked Mithril Blade
7944|2|2|Dazzling Mithril Rapier
7945|2|2|Big Black Mace
7946|2|2|Runed Mithril Hammer
7947|2|2|Ebon Shiv
7948|2|4|Girdle of Thero-shan
7949|2|4|Leggings of Thero-shan
7950|2|4|Armor of Thero-shan
7951|2|4|Hands of Thero-shan
7952|2|4|Boots of Thero-shan
7953|2|4|Mask of Thero-shan
7954|3|2|The Shatterer
7955|2|2|Copper Claymore
7956|2|2|Bronze Warhammer
7957|2|2|Bronze Greatsword
7958|2|2|Bronze Battle Axe
7959|3|2|Blight
7960|3|2|Truesilver Champion
7961|3|2|Phantom Blade
7963|2|4|Steel Breastplate
7964|1|0|Solid Sharpening Stone
7965|1|0|Solid Weightstone
7966|1|7|Solid Grinding Stone
7967|2|0|Mithril Shield Spike
7968|1|12|Southsea Treasure
7969|2|0|Mithril Spurs
7970|1|0|E.C.A.C.
7971|2|7|Black Pearl
7972|1|7|Ichor of Undeath
7973|1|7|Big-mouth Clam
7974|1|7|Zesty Clam Meat
7975|2|9|Plans: Heavy Mithril Pants
7976|3|9|Plans: Mithril Shield Spike
7977|2|9|Plans: Mithril Scale Gloves
7978|2|9|Plans: Barbaric Iron Shoulders
7979|2|9|Plans: Barbaric Iron Breastplate
7980|2|9|Plans: Barbaric Iron Helm
7981|2|9|Plans: Barbaric Iron Boots
7982|2|9|Plans: Barbaric Iron Gloves
7983|2|9|Plans: Ornate Mithril Pants
7984|2|9|Plans: Ornate Mithril Gloves
7985|2|9|Plans: Ornate Mithril Shoulders
7986|2|9|Plans: Ornate Mithril Breastplate
7987|2|9|Plans: Ornate Mithril Helm
7988|2|9|Plans: Ornate Mithril Boots
7989|2|9|Plans: Mithril Spurs
7990|2|9|Plans: Heavy Mithril Helm
7991|3|9|Plans: Mithril Plate Shoulders
7992|2|9|Plans: Blue Glittering Axe
7993|2|9|Plans: Dazzling Mithril Rapier
7994|2|9|Plans: Orcish War Leggings
7995|1|9|Plans: Mithril Plate Bracers
7996|1|4|Worn Fishing Hat
7997|0|4|Red Defias Mask
8006|3|2|The Ziggler
8007|1|0|Mana Citrine
8008|1|0|Mana Ruby
8009|1|12|Dentrium Power Stone
8026|1|12|Garrett Family Treasure
8027|1|12|Krom Stoutarm's Treasure
8028|3|9|Plans: Runed Mithril Hammer
8029|2|9|Plans: Wicked Mithril Blade
8030|1|9|Plans: Ebon Shiv
8046|1|9|Kearnen's Journal
8047|1|12|Magenta Fungus Cap
8048|1|0|Emerald Dreamcatcher
8049|1|12|Gnarlpine Necklace
8050|1|12|Tallonkai's Jewel
8051|1|12|Flare Gun
8052|1|12|An'Alleum Power Stone
8053|1|12|Obsidian Power Source
8066|1|12|Fizzule's Whistle
8067|1|6|Crafted Light Shot
8068|1|6|Crafted Heavy Shot
8069|1|6|Crafted Solid Shot
8070|1|12|Reward Voucher
8071|2|2|Sizzle Stick
8072|1|13|Silixiz's Tower Key
8073|1|12|Cache of Zanzil's Altered Mixture
8074|1|12|Gallywix's Head
8075|1|0|Conjured Sourdough
8076|1|0|Conjured Sweet Roll
8077|1|0|Conjured Mineral Water
8078|1|0|Conjured Sparkling Water
8079|1|0|Conjured Crystal Water
8080|0|4|Light Plate Chestpiece
8081|0|4|Light Plate Belt
8082|0|4|Light Plate Boots
8083|0|4|Light Plate Bracers
8084|0|4|Light Plate Gloves
8085|0|4|Light Plate Pants
8086|0|4|Light Plate Shoulderpads
8087|1|15|Sample of Zanzil's Altered Mixture
8088|1|4|Platemail Belt
8089|1|4|Platemail Boots
8090|1|4|Platemail Bracers
8091|1|4|Platemail Gloves
8092|1|4|Platemail Helm
8093|1|4|Platemail Leggings
8094|1|4|Platemail Armor
8095|1|0|Hinott's Oil
8106|2|4|Hibernal Armor
8107|2|4|Hibernal Boots
8108|2|4|Hibernal Bracers
8109|2|4|Hibernal Cloak
8110|2|4|Hibernal Gloves
8111|2|4|Hibernal Mantle
8112|2|4|Hibernal Pants
8113|2|4|Hibernal Robe
8114|2|4|Hibernal Sash
8115|2|4|Hibernal Cowl
8116|2|4|Heraldic Belt
8117|2|4|Heraldic Boots
8118|2|4|Heraldic Bracers
8119|2|4|Heraldic Breastplate
8120|2|4|Heraldic Cloak
8121|2|4|Heraldic Gloves
8122|2|4|Heraldic Headpiece
8123|2|4|Heraldic Leggings
8124|2|4|Heraldic Spaulders
8125|2|4|Myrmidon's Bracers
8126|2|4|Myrmidon's Breastplate
8127|2|4|Myrmidon's Cape
8128|2|4|Myrmidon's Gauntlets
8129|2|4|Myrmidon's Girdle
8130|2|4|Myrmidon's Greaves
8131|2|4|Myrmidon's Helm
8132|2|4|Myrmidon's Leggings
8133|2|4|Myrmidon's Pauldrons
8134|2|4|Myrmidon's Defender
8135|2|4|Chromite Shield
8136|1|12|Gargantuan Tumor
8137|2|4|Chromite Bracers
8138|2|4|Chromite Chestplate
8139|2|4|Chromite Gauntlets
8140|2|4|Chromite Girdle
8141|2|4|Chromite Greaves
8142|2|4|Chromite Barbute
8143|2|4|Chromite Legplates
8144|2|4|Chromite Pauldrons
8146|1|7|Wicked Claw
8147|1|15|Tiny Copper Key
8148|1|15|Tiny Silver Key
8149|1|12|Voodoo Charm
8150|1|7|Deeprock Salt
8151|1|7|Flask of Mojo
8152|1|7|Flask of Big Mojo
8153|1|7|Wildvine
8154|1|7|Scorpid Scale
8155|1|12|Sathrah's Sacrifice
8156|2|4|Jouster's Wristguards
8157|2|4|Jouster's Chestplate
8158|2|4|Jouster's Gauntlets
8159|2|4|Jouster's Girdle
8160|2|4|Jouster's Greaves
8161|2|4|Jouster's Visor
8162|2|4|Jouster's Legplates
8163|2|4|Jouster's Pauldrons
8165|1|7|Worn Dragonscale
8167|1|7|Turtle Scale
8168|1|7|Jet Black Feather
8169|1|7|Thick Hide
8170|1|7|Rugged Leather
8171|1|7|Rugged Hide
8172|1|7|Cured Thick Hide
8173|1|0|Thick Armor Kit
8174|2|4|Comfortable Leather Hat
8175|2|4|Nightscape Tunic
8176|2|4|Nightscape Headband
8177|1|2|Practice Sword
8178|2|2|Training Sword
8179|1|2|Cadet's Bow
8180|2|2|Hunting Bow
8181|1|2|Hunting Rifle
8182|1|2|Pellet Rifle
8183|2|2|Precision Bow
8184|2|2|Firestarter
8185|2|4|Turtle Scale Leggings
8186|2|2|Dire Wand
8187|2|4|Turtle Scale Gloves
8188|2|2|Explosive Shotgun
8189|2|4|Turtle Scale Breastplate
8190|3|2|Hanzo Sword
8191|2|4|Turtle Scale Helm
8192|2|4|Nightscape Shoulders
8193|2|4|Nightscape Pants
8194|2|2|Goblin Nutcracker
8195|2|4|Nightscape Cloak
8196|2|2|Ebon Scimitar
8197|2|4|Nightscape Boots
8198|2|4|Turtle Scale Bracers
8199|2|2|Battlefield Destroyer
8200|2|4|Big Voodoo Robe
8201|2|4|Big Voodoo Mask
8202|2|4|Big Voodoo Pants
8203|2|4|Tough Scorpid Breastplate
8204|2|4|Tough Scorpid Gloves
8205|2|4|Tough Scorpid Bracers
8206|2|4|Tough Scorpid Leggings
8207|2|4|Tough Scorpid Shoulders
8208|2|4|Tough Scorpid Helm
8209|2|4|Tough Scorpid Boots
8210|2|4|Wild Leather Shoulders
8211|2|4|Wild Leather Vest
8212|2|4|Wild Leather Leggings
8213|2|4|Wild Leather Boots
8214|2|4|Wild Leather Helmet
8215|2|4|Wild Leather Cloak
8216|2|4|Big Voodoo Cloak
8217|2|11|Quickdraw Quiver
8218|2|11|Thick Leather Ammo Pouch
8223|3|2|Blade of the Basilisk
8224|2|2|Silithid Ripper
8225|3|2|Tainted Pierce
8226|3|2|The Butcher
8243|1|0|Scooby Snack
8244|3|12|Flawless Draenethyst Sphere
8245|2|4|Imperial Red Tunic
8246|2|4|Imperial Red Boots
8247|2|4|Imperial Red Bracers
8248|2|4|Imperial Red Cloak
8249|2|4|Imperial Red Gloves
8250|2|4|Imperial Red Mantle
8251|2|4|Imperial Red Pants
8252|2|4|Imperial Red Robe
8253|2|4|Imperial Red Sash
8254|2|4|Imperial Red Circlet
8255|2|4|Serpentskin Girdle
8256|2|4|Serpentskin Boots
8257|2|4|Serpentskin Bracers
8258|2|4|Serpentskin Armor
8259|2|4|Serpentskin Cloak
8260|2|4|Serpentskin Gloves
8261|2|4|Serpentskin Helm
8262|2|4|Serpentskin Leggings
8263|2|4|Serpentskin Spaulders
8264|2|4|Ebonhold Wristguards
8265|2|4|Ebonhold Armor
8266|2|4|Ebonhold Cloak
8267|2|4|Ebonhold Gauntlets
8268|2|4|Ebonhold Girdle
8269|2|4|Ebonhold Boots
8270|2|4|Ebonhold Helmet
8271|2|4|Ebonhold Leggings
8272|2|4|Ebonhold Shoulderpads
8273|2|4|Valorous Wristguards
8274|2|4|Valorous Chestguard
8275|2|4|Ebonhold Buckler
8276|2|4|Valorous Gauntlets
8277|2|4|Valorous Girdle
8278|2|4|Valorous Greaves
8279|2|4|Valorous Helm
8280|2|4|Valorous Legguards
8281|2|4|Valorous Pauldrons
8282|2|4|Valorous Shield
8283|2|4|Arcane Armor
8284|2|4|Arcane Boots
8285|2|4|Arcane Bands
8286|2|4|Arcane Cloak
8287|2|4|Arcane Gloves
8288|2|4|Arcane Pads
8289|2|4|Arcane Leggings
8290|2|4|Arcane Robe
8291|2|4|Arcane Sash
8292|2|4|Arcane Cover
8293|2|4|Traveler's Belt
8294|2|4|Traveler's Boots
8295|2|4|Traveler's Bracers
8296|2|4|Traveler's Jerkin
8297|2|4|Traveler's Cloak
8298|2|4|Traveler's Gloves
8299|2|4|Traveler's Helm
8300|2|4|Traveler's Leggings
8301|2|4|Traveler's Spaulders
8302|2|4|Hero's Bracers
8303|2|4|Hero's Breastplate
8304|2|4|Hero's Cape
8305|2|4|Hero's Gauntlets
8306|2|4|Hero's Belt
8307|2|4|Hero's Boots
8308|2|4|Hero's Band
8309|2|4|Hero's Leggings
8310|2|4|Hero's Pauldrons
8311|2|4|Alabaster Plate Vambraces
8312|2|4|Alabaster Breastplate
8313|2|4|Hero's Buckler
8314|2|4|Alabaster Plate Gauntlets
8315|2|4|Alabaster Plate Girdle
8316|2|4|Alabaster Plate Greaves
8317|2|4|Alabaster Plate Helmet
8318|2|4|Alabaster Plate Leggings
8319|2|4|Alabaster Plate Pauldrons
8320|2|4|Alabaster Shield
8343|1|7|Heavy Silken Thread
8344|1|12|Silvery Spinnerets
8345|3|4|Wolfshead Helm
8346|3|4|Gauntlets of the Sea
8347|3|4|Dragonscale Gauntlets
8348|3|4|Helm of Fire
8349|3|4|Feathered Breastplate
8350|2|4|The 1 Ring
8363|1|12|Shaman Voodoo Charm
8364|1|0|Mithril Head Trout
8365|1|7|Raw Mithril Head Trout
8366|2|15|Bloated Mithril Head Trout
8367|3|4|Dragonscale Breastplate
8368|1|7|Thick Wolfhide
8383|1|15|Plain Letter
8384|3|9|Pattern: Comfortable Leather Hat
8385|1|9|Pattern: Turtle Scale Gloves
8386|2|9|Pattern: Big Voodoo Robe
8387|2|9|Pattern: Big Voodoo Mask
8388|2|9|Pattern: Nightscape Cloak
8389|2|9|Pattern: Big Voodoo Pants
8390|2|9|Pattern: Big Voodoo Cloak
8391|1|12|Snickerfang Jowl
8392|1|12|Blasted Boar Lung
8393|1|12|Scorpok Pincer
8394|1|12|Basilisk Brain
8395|2|9|Pattern: Tough Scorpid Breastplate
8396|1|12|Vulture Gizzard
8397|2|9|Pattern: Tough Scorpid Bracers
8398|2|9|Pattern: Tough Scorpid Gloves
8399|2|9|Pattern: Tough Scorpid Boots
8400|2|9|Pattern: Tough Scorpid Shoulders
8401|2|9|Pattern: Tough Scorpid Leggings
8402|2|9|Pattern: Tough Scorpid Helm
8403|2|9|Pattern: Wild Leather Shoulders
8404|2|9|Pattern: Wild Leather Vest
8405|2|9|Pattern: Wild Leather Helmet
8406|2|9|Pattern: Wild Leather Boots
8407|2|9|Pattern: Wild Leather Leggings
8408|2|9|Pattern: Wild Leather Cloak
8409|2|9|Pattern: Nightscape Shoulders
8410|1|0|R.O.I.D.S.
8411|1|0|Lung Juice Cocktail
8412|1|0|Ground Scorpok Assay
8423|1|0|Cerebral Cortex Compound
8424|1|0|Gizzard Gum
8425|0|15|Parrot Droppings
8426|0|15|Large Ruffled Feather
8427|0|15|Mutilated Rat Carcass
8428|1|12|Laden Dew Gland
8429|0|15|Punctured Dew Gland
8430|0|15|Empty Dew Gland
8431|1|12|Spool of Light Chartreuse Silk Thread
8432|1|0|Eau de Mixilpixil
8443|1|12|Gahz'ridian Ornament
8444|1|0|Executioner's Key
8463|1|12|Warchief's Orders
8483|1|12|Wastewander Water Pouch
8484|1|15|Gadgetzan Water Co. Care Package
8485|1|15|Cat Carrier (Bombay)
8486|1|15|Cat Carrier (Cornish Rex)
8487|1|15|Cat Carrier (Orange Tabby)
8488|1|15|Cat Carrier (Silver Tabby)
8489|1|15|Cat Carrier (White Kitten)
8490|1|15|Cat Carrier (Siamese)
8491|1|15|Cat Carrier (Black Tabby)
8492|1|15|Parrot Cage (Green Wing Macaw)
8493|1|0|Weegli's Barrel
8494|1|15|Parrot Cage (Hyacinth Macaw)
8495|1|15|Parrot Cage (Senegal)
8496|1|15|Parrot Cage (Cockatiel)
8497|1|15|Rabbit Crate (Snowshoe)
8498|1|15|Tiny Emerald Whelpling
8499|1|15|Tiny Crimson Whelpling
8500|1|15|Great Horned Owl
8501|1|15|Hawk Owl
8502|2|15|Bronze Lotterybox
8503|2|15|Heavy Bronze Lotterybox
8504|2|15|Iron Lotterybox
8505|2|15|Heavy Iron Lotterybox
8506|2|15|Mithril Lotterybox
8507|2|15|Heavy Mithril Lotterybox
8508|0|15|Large Fin
8523|1|12|Field Testing Kit
8524|2|12|Model 4711-FTZ Power Source
8525|1|12|Zinge's Purchase Order
8526|1|12|Violet Tragan
8527|1|12|Sealed Field Testing Kit
8528|1|12|Violet Powder
8529|1|0|Noggenfogger Elixir
8543|1|0|Underwater Mushroom Cap
8544|1|0|Mageweave Bandage
8545|1|0|Heavy Mageweave Bandage
8546|1|0|Powerful Smelling Salts
8547|2|9|Formula: Powerful Smelling Salts
8548|1|0|Divino-matic Rod
8563|3|15|Red Mechanostrider
8564|1|12|Hippogryph Egg
8583|1|15|Horn of the Skeletal Mount
8584|1|12|Untapped Dowsing Widget
8585|1|12|Tapped Dowsing Widget
8586|4|15|Whistle of the Mottled Red Raptor
8587|1|12|Centipaar Insect Parts
8588|3|15|Whistle of the Emerald Raptor
8589|1|15|Old Whistle of the Ivory Raptor
8590|1|15|Old Whistle of the Obsidian Raptor
8591|3|15|Whistle of the Turquoise Raptor
8592|3|15|Whistle of the Violet Raptor
8593|1|12|Scrimshank's Surveying Gear
8594|1|12|Insect Analysis Report
8595|3|15|Blue Mechanostrider
8603|1|12|Thistleshrub Dew
8623|2|12|OOX-17/TN Distress Beacon
8624|1|4|Red Sparkler
8625|1|4|White Sparkler
8626|1|4|Blue Sparkler
8627|1|15|Reins of the Night saber
8628|1|15|Reins of the Spotted Nightsaber
8629|3|15|Reins of the Striped Nightsaber
8630|1|15|Reins of the Bengal Tiger
8631|3|15|Reins of the Striped Frostsaber
8632|3|15|Reins of the Spotted Frostsaber
8633|1|15|Reins of the Leopard
8643|1|12|Extraordinary Egg
8644|1|12|Fine Egg
8645|1|12|Ordinary Egg
8646|1|12|Bad Egg
8647|1|12|Egg Crate
8663|2|4|Mithril Insignia
8683|1|12|Clara's Fresh Apple
8684|1|12|Hinterlands Honey Ripple
8685|1|12|Dran's Ripple Delivery
8686|1|12|Mithril Pendant
8687|1|12|Sealed Description of Thredd's Visitor
8703|2|12|Signet of Expertise
8704|2|12|OOX-09/HL Distress Beacon
8705|2|12|OOX-22/FE Distress Beacon
8707|1|12|Gahz'rilla's Electrified Scale
8708|4|2|Hammer of Expertise
8723|1|12|Caliph Scorpidsting's Head
8724|1|12|Rin'ji's Secret
8743|1|9|Book of Mark of the Wild
8744|1|9|Book of Wrath
8745|1|9|Book of Healing Touch
8746|0|4|Interlaced Cowl
8747|0|4|Hardened Leather Helm
8748|0|4|Double Mail Coif
8749|0|4|Crochet Hat
8750|0|4|Thick Leather Hat
8751|0|4|Overlinked Coif
8752|0|4|Laminated Scale Circlet
8753|0|4|Smooth Leather Helmet
8754|0|4|Twill Cover
8755|0|4|Light Plate Helmet
8756|1|9|Book of Regrowth II
8757|1|9|Book of Starfire
8758|1|9|Book of Remove Curse
8759|1|9|Book of Regrowth III
8760|1|9|Book of Abolish Poison
8761|1|9|Book of Starfire II
8762|1|9|Book of Rejuvenation V
8763|1|9|Book of Moonfire V
8764|1|9|Book of Faerie Fire II
8765|1|9|Book of Regrowth IV
8766|1|0|Morning Glory Dew
8768|1|9|Book of Starfire III
8769|1|9|Book of Thorns IV
8770|1|9|Book of Moonfire VI
8771|1|9|Book of Rejuvenation VI
8772|1|9|Book of Regrowth V
8773|1|9|Book of Entangling Roots V
8774|1|9|Book of Healing Touch VII
8775|1|9|Book of Tranquility II
8776|1|9|Book of Mark of the Wild VI
8777|1|9|Book of Moonfire IX
8778|1|9|Book of Rejuvenation VII
8779|1|9|Book of Faerie Fire III
8780|1|9|Book of Starfire V
8781|1|9|Book of Regrowth VII
8782|1|9|Book of Thorns V
8783|1|9|Book of Healing Touch IX
8784|1|9|Book of Wrath VII
8785|1|9|Book of Rejuvenation IX
8786|1|9|Book of Tranquility III
8787|1|9|Book of Soothe Animal
8788|1|9|Book of Soothe Animal II
8789|1|9|Book of Soothe Animal III
8790|1|9|Book of Faerie Fire IV
8791|1|9|Book of Regrowth VIII
8792|1|9|Book of Thorns VI
8793|1|9|Book of Wrath VIII
8794|1|9|Book of Healing Touch X
8795|1|9|Book of Entangling Roots VI
8796|1|9|Book of Moonfire X
8797|1|9|Book of Rejuvenation X
8798|1|9|Book of Starfire VI
8799|1|9|Book of Mark of the Wild VII
8800|1|9|Book of Regrowth IX
8801|1|9|Book of Tranquility IV
8802|1|9|Tome of Arcane Intellect
8803|1|9|Tome of Fireball
8804|1|9|Tome of Arcane Explosion
8805|1|9|Tome of Detect Magic
8806|1|9|Tome of Remove Lesser Curse
8807|1|9|Tome of Amplify Magic
8808|1|9|Tome of Mana Shield
8809|1|9|Tome of Sleep
8810|1|9|Tome of Sleep II
8811|1|9|Tome of Scorch
8812|1|9|Tome of Arcane Explosion II
]==],
[==[
8813|1|9|Tome of Dampen Magic II
8814|1|9|Tome of Fireball V
8815|1|9|Tome of Cone of Cold
8816|1|9|Tome of Frostbolt V
8818|1|9|Tome of Mana Shield II
8819|1|9|Tome of Scorch II
8820|1|9|Tome of Fire Ward II
8821|1|9|Tome of Amplify Magic II
8822|1|9|Tome of Arcane Explosion III
8823|1|9|Tome of Fire Blast IV
8824|1|9|Tome of Fireball VI
8825|1|9|Tome of Frost Ward III
8826|1|9|Tome of Arcane Missiles IV
8827|1|0|Draught of Water Walking
8828|1|9|Tome of Frostbolt VI
8829|1|9|Tome of Cone of Cold II
8830|1|9|Tome of Scorch III
8831|1|7|Purple Lotus
8832|1|9|Tome of Blizzard III
8833|1|9|Tome of Mana Shield III
8834|1|9|Tome of Dampen Magic III
8835|1|9|Tome of Fireball VII
8836|1|7|Arthas' Tears
8837|1|9|Tome of Arcane Explosion V
8838|1|7|Sungrass
8839|1|7|Blindweed
8840|1|9|Tome of Conjure Mana Gem II
8841|1|9|Tome of Fire Blast V
8842|1|9|Tome of Frostbolt VII
8843|1|9|Tome of Fire Ward III
8844|1|9|Tome of Sleep III
8845|1|7|Ghost Mushroom
8846|1|7|Gromsblood
8847|1|9|Tome of Scorch V
8848|1|9|Tome of Flamestrike IV
8849|1|9|Tome of Arcane Missiles V
8850|1|9|Tome of Conjure Water V
8851|1|9|Tome of Fireball VIII
8852|1|9|Tome of Arcane Intellect IV
8853|1|9|Tome of Conjure Food V
8854|1|9|Tome of Cone of Cold III
8855|1|9|Tome of Amplify Magic III
8856|1|9|Tome of Frostbolt VIII
8857|1|9|Tome of Blizzard IV
8858|1|9|Tome of Mana Shield IV
8859|1|9|Tome of Fire Blast VI
8860|1|9|Tome of Fireball IX
8861|1|9|Tome of Conjure Mana Gem III
8862|1|9|Tome of Arcane Missiles VI
8863|1|9|Tome of Dampen Magic IV
8864|1|9|Tome of Flamestrike V
8865|1|9|Tome of Ice Armor III
8866|1|9|Tome of Cone of Cold IV
8867|1|9|Tome of Frostbolt IX
8868|1|9|Tome of Conjure Water VI
8869|1|9|Tome of Fire Ward IV
8870|1|9|Tome of Greater Invisibility
8871|1|9|Tome of Conjure Food VI
8872|1|9|Tome of Blizzard V
8873|1|9|Tome of Mana Shield V
8874|1|9|Tome of Scorch VI
8875|1|9|Tome of Frost Ward IV
8876|1|9|Tome of Frost Ward II
8877|1|9|Tome of Fireball X
8878|1|9|Tome of Fire Blast VII
8879|1|9|Tome of Frost Nova IV
8880|1|9|Tome of Arcane Explosion VI
8881|1|9|Tome of Khadgar's Unlocking IV
8882|1|9|Tome of Amplify Magic IV
8883|1|9|Tome of Arcane Intellect V
8884|1|9|Tome of Frostbolt X
8885|1|9|Tome of Arcane Missiles VII
8886|1|9|Tome of Flamestrike VI
8887|1|9|Tome of Scorch VII
8888|1|9|Tome of Cone of Cold V
8889|1|9|Tome of Conjure Mana Gem IV
8890|1|9|Tome of Fireball XI
8891|1|9|Tome of Ice Armor IV
8892|1|9|Tome of Conjure Water VII
8893|1|9|Tome of Sleep IV
8894|1|9|Tome of Dampen Magic V
8895|1|9|Tome of Blizzard VI
8896|1|9|Tome of Mana Shield VI
8897|1|9|Tome of Fire Ward V
8898|1|9|Tome of Arcane Explosion IV
8899|1|9|Tome of Scorch IV
8900|1|9|Book of Entangling Roots IV
8901|1|9|Book of Healing Touch VIII
8902|1|9|Book of Mark of the Wild V
8903|1|9|Book of Moonfire VII
8904|1|9|Book of Moonfire VIII
8905|1|9|Book of Regrowth VI
8906|1|9|Book of Rejuvenation VIII
8907|1|9|Book of Starfire IV
8909|1|9|Libram: Holy Strike II
8910|1|9|Libram: Lay on Hands
8911|1|9|Libram: Fist of Justice
8912|1|9|Libram: Crusader Strike
8913|1|9|Libram: Holy Strike III
8914|1|9|Libram: Crusader Strike II
8915|1|9|Libram: Holy Strike IV
8916|1|9|Libram: Fist of Justice II
8917|1|9|Libram: Lay on Hands II
8918|1|9|Libram: Seal of Protection III
8919|1|9|Libram: Holy Strike V
8920|1|9|Libram: Crusader Strike III
8921|1|9|Libram: Fist of Justice III
8922|1|9|Libram: Holy Strike VI
8923|1|15|Essence of Agony
8924|1|15|Dust of Deterioration
8925|1|7|Crystal Vial
8926|1|0|Instant Poison IV
8927|1|0|Instant Poison V
8928|1|0|Instant Poison VI
8929|1|9|Libram: Exorcism IV
8930|1|9|Libram: Seal of Righteousness IV
8931|1|9|Libram: Crusader Strike IV
8932|1|0|Alterac Swiss
8933|1|9|Libram: Holy Light VII
8934|1|9|Libram: Holy Strike VII
8935|1|9|Libram: Judgement II
8936|1|9|Libram: Seal of Wrath III
8937|1|9|Libram: Lay on Hands III
8938|1|9|Libram: Turn Undead III
8939|1|9|Libram: Exorcism V
8940|1|9|Libram: Fist of Justice IV
8941|1|9|Libram: Holy Light VIII
8942|1|9|Libram: Seal of Righteousness V
8943|1|9|Libram: Holy Strike VIII
8944|1|9|Libram: Crusader Strike V
8945|1|9|Libram: Judgement III
8947|1|9|Libram: Exorcism VI
8948|1|0|Dried King Bolete
8949|1|0|Elixir of Agility
8950|1|0|Homemade Cherry Pie
8951|1|0|Elixir of Defense
8952|1|0|Roasted Quail
8953|1|0|Deep Fried Plantains
8954|1|9|Codex of Holy Word: Fortitude
8955|1|9|Codex of Fade
8956|1|0|Oil of Immolation
8957|1|0|Spinefin Halibut
8958|1|9|Codex of Mind Blast
8959|1|7|Raw Spinefin Halibut
8960|1|9|Codex of Cure Disease
8961|1|9|Codex of Psychic Scream
8962|1|9|Codex of Mind Blast II
8963|1|9|Codex of Mind Soothe
8964|1|9|Codex of Flash Heal
8965|1|9|Codex of Fade II
8966|1|9|Codex of Shackle Undead
8967|1|9|Codex of Mind Blast III
8968|1|9|Codex of Mana Burn
8969|1|9|Codex of Flash Heal II
8971|1|9|Codex of Psychic Scream II
8972|1|9|Codex of Mind Blast IV
8973|1|12|Thick Yeti Hide
8974|1|9|Codex of Mind Control
8975|1|9|Codex of Fade III
8976|1|9|Codex of Abolish Disease
8977|1|9|Codex of Mana Burn II
8978|1|9|Codex of Flash Heal III
8980|1|9|Codex of Mind Blast V
8981|1|9|Codex of Mind Soothe II
8983|1|9|Codex of Flash Heal IV
8984|1|0|Deadly Poison III
8985|1|0|Deadly Poison IV
8986|1|9|Codex of Shackle Undead II
8987|1|9|Codex of Holy Protection II
8988|1|9|Codex of Mana Burn III
8989|1|9|Codex of Fade IV
8990|1|9|Codex of Mind Blast VI
8991|1|9|Codex of Inner Fire IV
8992|1|9|Codex of Psychic Scream III
8993|1|9|Codex of Shadow Protection II
8994|1|9|Codex of Shadow Word: Pain VI
8995|1|9|Codex of Holy Word: Shield VII
8996|1|9|Codex of Resurrection III
8997|1|9|Codex of Mind Control II
8998|1|9|Codex of Mind Vision II
8999|1|9|Codex of Flash Heal V
9000|1|9|Codex of Renew VII
9001|1|9|Codex of Greater Heal II
9002|1|9|Codex of Mind Blast VII
9003|1|9|Codex of Holy Smite VII
9004|1|9|Codex of Holy Word: Fortitude V
9005|1|9|Codex of Mana Burn IV
9006|1|9|Codex of Holy Word: Shield VIII
9007|1|9|Codex of Fade V
9008|1|9|Codex of Prayer of Healing III
9009|1|9|Codex of Inner Fire V
9010|1|9|Codex of Flash Heal VI
9011|1|9|Codex of Shadow Word: Pain VII
9012|1|9|Codex of Renew VIII
9013|1|9|Codex of Greater Heal III
9014|1|9|Codex of Mind Soothe III
9015|1|9|Codex of Mind Blast VIII
9016|1|9|Codex of Holy Smite VIII
9017|1|9|Codex of Holy Protection III
9018|1|9|Codex of Holy Word: Shield IX
9019|1|9|Codex of Renew IX
9020|1|9|Codex of Psychic Scream IV
9021|1|9|Codex of Mana Burn V
9022|1|9|Codex of Flash Heal VII
9023|1|9|Codex of Shadow Protection III
9024|1|9|Codex of Mind Control III
9025|1|9|Codex of Greater Heal IV
9026|1|9|Codex of Resurrection IV
9027|1|9|Codex of Mind Blast IX
9028|1|9|Codex of Shadow Word: Pain VIII
9029|1|9|Codex of Fade VI
9030|1|0|Restorative Potion
9031|1|9|Codex of Shackle Undead III
9032|1|9|Codex of Prayer of Healing IV
9033|1|9|Codex of Inner Fire VI
9034|1|9|Codex of Holy Word: Fortitude VI
9035|1|9|Codex of Holy Word: Shield X
9036|1|0|Magic Resistance Potion
9037|1|9|Tablet of Rockbiter Weapon
9039|1|9|Tablet of Earth Shock
9040|1|9|Tablet of Healing Wave II
9041|1|9|Tablet of Earthbind Totem
9043|1|9|Tablet of Stoneclaw Totem
9044|1|9|Tablet of Earth Shock II
9046|1|9|Tablet of Strength of Earth Totem
9047|1|9|Tablet of Flame Shock
9048|1|9|Tablet of Rebirth
9049|1|9|Tablet of Fire Nova Totem
9050|1|9|Tablet of Healing Wave III
9051|1|9|Tablet of Earth Shock III
9052|1|9|Tablet of Stoneskin Totem II
9053|1|9|Tablet of Rockbiter Weapon II
9054|1|9|Tablet of Flame Shock II
9055|1|9|Tablet of Stoneclaw Totem II
9056|1|9|Tablet of Healing Wave IV
9057|1|9|Tablet of Frostbrand Weapon
9058|1|9|Tablet of Frost Shock
9059|1|9|Tablet of Flametongue Weapon
9060|1|7|Inlaid Mithril Cylinder
9061|1|7|Goblin Rocket Fuel
9062|1|9|Tablet of Cure Disease
9063|1|9|Tablet of Poison Cleansing Totem
9064|1|9|Tablet of Flametongue Weapon II
9065|1|9|Tablet of Fire Nova Totem II
9066|1|9|Tablet of Frost Resistance Totem
9067|1|9|Tablet of Strength of Earth Totem II
9068|1|9|Tablet of Stoneskin Totem III
9069|1|9|Tablet of Earth Shock IV
9070|1|9|Tablet of Healing Wave V
9071|1|9|Tablet of Mana Font Totem
9072|1|9|Tablet of Flametongue Totem
9073|1|9|Tablet of Windfury Weapon
9074|1|9|Tablet of Flame Shock III
9075|1|9|Tablet of Fire Resistance Totem
9076|1|9|Tablet of Magma Totem
9077|1|9|Tablet of Stoneclaw Totem III
9078|1|9|Tablet of Grounding Totem
9079|1|9|Tablet of Lightning Shock
9080|1|9|Tablet of Nature Resistance Totem
9081|1|9|Tablet of Healing Stream Totem II
9082|1|9|Tablet of Rockbiter Weapon III
9083|1|9|Tablet of Searing Totem III
9084|1|9|Tablet of Windfury Totem
9085|1|9|Tablet of Fire Nova Totem III
9086|1|9|Tablet of Healing Wave VI
9087|1|9|Tablet of Purge II
9088|1|0|Gift of Arthas
9089|1|9|Tablet of Frost Shock II
9090|1|9|Tablet of Frostbrand Weapon II
9091|1|9|Tablet of Stoneskin Totem IV
9092|1|9|Tablet of Sentry Totem
9093|1|9|Tablet of Mana Font Totem II
9094|1|9|Tablet of Flametongue Weapon III
9095|1|9|Tablet of Earth Shock V
9096|1|9|Tablet of Disease Cleansing Totem
9097|1|9|Tablet of Magma Totem II
9098|1|9|Tablet of Strength of Earth Totem III
9099|1|9|Tablet of Stoneclaw Totem IV
9100|1|9|Tablet of Lightning Shield V
9101|1|9|Tablet of Windfury Weapon II
9102|1|9|Tablet of Chain Lightning II
9103|1|9|Tablet of Healing Stream Totem III
9104|1|9|Tablet of Searing Totem IV
9105|1|9|Tablet of Healing Wave VII
9123|1|9|Tablet of Lightning Bolt VI
9124|1|9|Tablet of Lightning Shock II
9125|1|9|Tablet of Grace of Air Totem
9126|1|9|Tablet of Flametongue Totem II
9127|1|9|Tablet of Fire Resistance Totem II
9128|1|9|Tablet of Fire Nova Totem IV
9129|1|9|Tablet of Rockbiter Weapon IV
9130|1|9|Tablet of Nature Resistance Totem II
9131|1|9|Tablet of Stoneskin Totem V
9132|1|9|Tablet of Molten Blast VI
9133|1|9|Tablet of Chain Heal II
9134|1|9|Tablet of Windfury Totem II
9135|1|9|Tablet of Frost Shock III
9136|1|9|Tablet of Mana Font Totem III
9137|1|9|Tablet of Lightning Shield VI
9138|1|9|Tablet of Magma Totem III
9139|1|9|Tablet of Frostbrand Weapon III
9140|1|9|Tablet of Chain Lightning III
9141|1|9|Tablet of Stoneclaw Totem V
9142|1|9|Tablet of Earth Shock VI
9143|1|9|Tablet of Healing Wave VIII
9144|1|0|Wildvine Potion
9145|1|9|Tablet of Lightning Bolt VII
9146|1|9|Tablet of Searing Totem V
9147|1|9|Tablet of Healing Stream Totem IV
9148|1|9|Tablet of Flametongue Weapon IV
9149|1|4|Philosopher's Stone
9150|1|9|Tablet of Strength of Earth Totem IV
9151|1|9|Tablet of Flame Shock V
9152|1|9|Tablet of Fire Nova Totem V
9153|1|12|Rig Blueprints
9154|1|0|Draught of Detect Undead
9155|1|0|Arcane Elixir
9156|1|9|Tablet of Molten Blast VII
9157|1|9|Tablet of Chain Heal III
9158|1|9|Tablet of Frost Resistance Totem III
9159|1|9|Tablet of Lightning Shock III
9160|1|9|Tablet of Windfury Weapon III
9161|1|9|Tablet of Stoneskin Totem VI
9162|1|9|Tablet of Lightning Shield VII
9164|1|9|Tablet of Grace of Air Totem II
9165|1|9|Tablet of Flametongue Totem III
9166|1|9|Tablet of Mana Font Totem IV
9167|1|9|Tablet of Chain Lightning IV
9168|1|9|Tablet of Healing Wave IX
9169|1|9|Tablet of Lightning Bolt VIII
9170|1|9|Tablet of Fire Resistance Totem III
9171|1|9|Tablet of Magma Totem IV
9172|1|0|Invisibility Potion
9173|1|12|Goblin Transponder
9174|1|9|Tablet of Frost Shock IV
9175|1|9|Tablet of Rockbiter Weapon V
9176|1|9|Tablet of Stoneclaw Totem VI
9177|1|9|Tablet of Earth Shock VII
9178|1|9|Tablet of Nature Resistance Totem III
9179|1|0|Elixir of Greater Intellect
9180|1|9|Tablet of Windfury Totem III
9181|1|9|Tablet of Healing Stream Totem V
9182|1|9|Tablet of Searing Totem VI
9183|1|9|Tablet of Chain Heal
9184|1|9|Tablet of Flame Shock IV
9185|1|9|Tablet of Frost Resistance Totem II
9186|1|0|Mind-numbing Poison III
9187|1|0|Elixir of Greater Agility
9188|1|9|Tablet of Searing Totem II
9189|1|12|Shay's Bell
9190|1|9|Grimoire of Immolate
9191|1|9|Grimoire of Curse of Weakness
9192|1|9|Grimoire of Corruption
9193|1|9|Grimoire of Life Tap
9194|1|9|Grimoire of Curse of Agony
9195|1|9|Grimoire of Drain Soul
9197|1|0|Draught of Dream Vision
9198|1|9|Grimoire of Health Funnel
9199|1|9|Grimoire of Curse of Recklessness
9200|1|9|Grimoire of Curse of Weakness II
9201|1|9|Grimoire of Corruption II
9202|1|9|Grimoire of Life Tap II
9203|1|9|Grimoire of Ritual of Summoning
9204|1|9|Grimoire of Health Funnel II
9205|1|9|Grimoire of Curse of Agony II
9206|1|0|Elixir of Greater Strength
9207|1|9|Grimoire of Create Bloodstone II
9208|1|9|Grimoire of Drain Soul II
9209|1|9|Grimoire of Curse of Weakness III
9210|1|7|Ghost Dye
9211|1|9|Grimoire of Curse of Recklessness II
9212|1|9|Grimoire of Shadow Bolt V
9214|2|9|Grimoire of Inferno
9215|1|9|Grimoire of Health Funnel III
9216|1|9|Grimoire of Corruption III
9217|1|9|Grimoire of Life Tap III
9218|1|9|Grimoire of Enslave Demon
9219|1|9|Grimoire of Hellfire
9221|1|9|Grimoire of Curse of Agony III
9222|1|9|Grimoire of Curse of the Elements
9223|1|9|Grimoire of Curse of Weakness IV
9224|1|0|Potion of Demon Slaying
9225|1|9|Grimoire of Shadow Bolt VI
9226|1|9|Grimoire of Health Funnel IV
9227|1|9|Grimoire of Drain Soul III
9228|1|9|Grimoire of Create Bloodstone III
9229|1|9|Grimoire of Life Drain IV
9230|1|9|Grimoire of Curse of Recklessness III
9231|1|9|Grimoire of Corruption IV
9233|1|0|Draught of Detect Demon
9234|1|12|Tiara of the Deep
9235|1|12|Pratt's Letter
9236|1|12|Jangdor's Letter
9237|1|12|Woodpaw Gnoll Mane
9238|1|12|Uncracked Scarab Shell
9240|2|12|Mallet of Zul'Farrak
9241|1|12|Sacred Mallet
9242|0|15|Ancient Tablet
9243|2|4|Shriveled Heart
9244|1|12|Stoley's Shipment
9245|1|12|Stoley's Bottle
9246|1|12|Firebeard's Head
9247|1|12|Hatecrest Naga Scale
9248|1|12|Mysterious Relic
9249|2|13|Captain's Key
9250|1|12|Ship Schedule
9251|1|12|Upper Map Fragment
9252|1|12|Lower Map Fragment
9253|1|12|Middle Map Fragment
9254|1|12|Cuergo's Treasure Map
9255|1|12|Lahassa Essence
9256|1|12|Imbel Essence
9257|1|12|Samha Essence
9258|1|12|Byltan Essence
9259|1|15|Troll Tribal Necklace
9260|1|0|Volatile Rum
9261|0|15|Lead Ore
9262|1|7|Black Vitriol
9263|1|12|Troyas' Stave
9264|1|0|Elixir of Shadow Power
9265|2|12|Cuergo's Hidden Treasure
9266|1|12|Woodpaw Battle Plans
9275|1|12|Cuergo's Key
9276|1|15|Pirate's Footlocker
9277|1|12|Techbot's Memory Core
9278|1|12|Essential Artificial
9279|1|12|White Punch Card
9280|1|12|Yellow Punch Card
9281|1|12|Red Punch Card
9282|1|12|Blue Punch Card
9283|1|12|Empty Leaden Collection Phial
9284|1|12|Full Leaden Collection Phial
9285|2|4|Field Plate Vambraces
9286|2|4|Field Plate Armor
9287|2|4|Field Plate Gauntlets
9288|2|4|Field Plate Girdle
9289|2|4|Field Plate Boots
9290|2|4|Field Plate Helmet
9291|2|4|Field Plate Leggings
9292|2|4|Field Plate Pauldrons
9293|2|9|Recipe: Magic Resistance Potion
9294|2|9|Recipe: Wildvine Potion
9295|2|9|Recipe: Invisibility Potion
9296|2|9|Recipe: Gift of Arthas
9297|2|9|Recipe: Draught of Dream Vision
9298|2|9|Recipe: Elixir of Giants
9299|1|13|Thermaplugg's Safe Combination
9300|1|9|Recipe: Potion of Demon Slaying
9301|2|9|Recipe: Elixir of Shadow Power
9302|1|9|Recipe: Ghost Dye
9303|1|9|Recipe: Philosopher's Stone
9304|1|9|Recipe: Transmute Iron to Gold
9305|1|9|Recipe: Transmute Mithril to Truesilver
9306|1|12|Stave of Equinex
9307|1|12|A Sparkling Stone
9308|1|12|Grime-Encrusted Object
9309|1|12|Robo-mechanical Guts
9311|1|0|Default Stationery
9312|1|0|Blue Firework
9313|1|0|Green Firework
9314|1|0|Red Streaks Firework
9315|1|0|Yellow Rose Firework
9316|1|12|Prismatic Punch Card
9317|1|0|Red, White and Blue Firework
9318|1|0|Red Firework
9319|1|0|Nimboya's Laden Pike
9320|1|12|Witherbark Skull
9321|1|12|Venom Bottle
9322|1|12|Undamaged Venom Sac
9323|1|12|Gadrin's Parchment
9324|1|12|Shadra's Venom
9325|1|12|A Small Stave
9326|1|12|Grime-Encrusted Ring
9327|2|12|Security DELTA Data Access Card
9328|1|12|Super Snapper FX
9329|1|12|A Short Note
9330|1|12|Snapshot of Gammerita
9331|1|12|Feralas: A History
9332|0|15|Crusted Bandages
9333|0|4|Tarnished Silver Necklace
9334|0|15|Cracked Pottery
9335|0|15|Broken Obsidian Club
9336|0|15|Gold-capped Troll Tusk
9355|0|15|Hoop Earring
9356|0|15|A Wooden Leg
9357|0|15|A Parrot Skeleton
9358|0|15|A Head Rag
9359|3|2|Southsea Lamp
9360|1|0|Cuergo's Gold
9361|1|0|Cuergo's Gold with Worm
9362|2|4|Brilliant Gold Ring
9363|1|15|Sparklematic-Wrapped Box
9364|1|12|Heavy Leaden Collection Phial
9365|1|12|High Potency Radioactive Fallout
9366|2|4|Golden Scale Gauntlets
9367|2|9|Plans: Golden Scale Gauntlets
9368|1|12|Jer'kai's Signet Ring
9369|1|12|Iridescent Sprite Darter Wing
9370|1|12|Gordunni Scroll
9371|1|12|Gordunni Orb
9372|4|2|Sul'thraze the Lasher
9375|3|4|Expert Goldminer's Helmet
9378|3|2|Shovelphlange's Mining Axe
9379|3|2|Sang'thraze the Deflector
9380|3|2|Jang'thraze the Protector
9381|3|2|Earthen Rod
9382|2|4|Tromping Miner's Boots
9383|3|2|Obsidian Cleaver
9384|3|2|Stonevault Shiv
9385|3|2|Archaic Defender
9386|3|2|Excavator's Brand
9387|2|4|Revelosh's Boots
9388|2|4|Revelosh's Armguards
9389|2|4|Revelosh's Spaulders
9390|2|4|Revelosh's Gloves
9391|3|2|The Shoveler
9392|3|2|Annealed Blade
9393|3|4|Beacon of Hope
9394|3|4|Horned Viking Helmet
9395|3|4|Gloves of Old
9396|3|4|Legguards of the Vault
9397|3|4|Energy Cloak
9398|2|4|Worn Running Boots
9399|2|6|Precision Arrow
9400|1|2|Baelog's Shortbow
9401|3|2|Nordic Longshank
9402|3|4|Earthborn Kilt
9403|1|4|Battered Viking Shield
9404|3|4|Olaf's All Purpose Shield
9405|3|4|Girdle of Golem Strength
9406|3|4|Spirewind Fetter
9407|3|4|Stoneweaver Leggings
9408|3|2|Ironshod Bludgeon
9409|3|4|Ironaya's Bracers
9410|3|4|Cragfists
9411|2|4|Rockshard Pauldrons
9412|3|2|Galgann's Fireblaster
9413|3|2|The Rockpounder
9414|2|4|Oilskin Leggings
9415|3|4|Grimlok's Tribal Vestments
9416|3|2|Grimlok's Charge
9417|3|4|Archaedic Shard
9418|3|2|Stoneslayer
9419|2|2|Galgann's Firehammer
9420|3|4|Adventurer's Pith Helmet
9421|1|0|Major Healthstone
9422|3|2|Shadowforge Bushmaster
9423|3|2|The Jackhammer
9424|3|2|Ginn-su Sword
9425|3|2|Pendulum of Doom
9426|3|2|Monolithic Bow
9427|3|2|Stonevault Bonebreaker
9428|3|4|Unearthed Bands
9429|3|4|Miner's Hat of the Deep
9430|3|4|Spaulders of a Lost Age
9431|3|4|Papal Fez
9432|3|4|Skullplate Bracers
9433|3|4|Forgotten Wraps
9434|3|4|Elemental Raiment
9435|3|4|Reticulated Bone Gauntlets
9436|1|12|Faranell's Parcel
9437|1|12|Untested Basilisk Sample
9438|1|12|Acceptable Scorpid Sample
9439|1|12|Untested Hyena Sample
9440|1|12|Acceptable Basilisk Sample
9441|1|12|Acceptable Hyena Sample
9442|1|12|Untested Scorpid Sample
9443|1|12|Used Monster Sample
9444|1|4|Techbot CPU Shell
9445|3|4|Grubbis Paws
9446|3|2|Electrocutioner Leg
9447|3|4|Electrocutioner Lagnut
9448|2|4|Spidertank Oilrag
9449|3|2|Manual Crowd Pummeler
9450|2|4|Gnomebot Operating Boots
9451|1|0|Bubbling Water
9452|3|2|Hydrocane
9453|3|2|Toxic Revenger
9454|3|4|Acidic Walkers
9455|3|4|Emissary Cuffs
9456|3|2|Glass Shooter
9457|3|2|Royal Diplomatic Scepter
9458|3|4|Thermaplugg's Central Core
9459|3|2|Thermaplugg's Left Arm
9460|1|12|Grimtotem Horn
9461|3|4|Charged Gear
9462|1|12|Crate of Grimtotem Horns
9463|1|12|Gordunni Cobalt
9465|3|2|Digmaster 5000
9466|1|12|Orwin's Shovel
9467|2|2|Gahz'rilla Fang
9468|1|12|Sharpbeak's Feather
9469|3|4|Gahz'rilla Scale Armor
9470|3|4|Bad Mojo Mask
9471|1|12|Nekrum's Medallion
9472|1|12|Hexx's Key
9473|3|4|Jinxed Hoodoo Skin
9474|3|4|Jinxed Hoodoo Kilt
9475|3|2|Diabolic Skiver
9476|3|4|Big Bad Pauldrons
9477|3|2|The Chief's Enforcer
9478|3|2|Ripsaw
9479|3|4|Embrace of the Lycan
9480|3|2|Eyegouger
9481|3|2|The Minotaur
9482|3|2|Witch Doctor's Cane
9483|3|2|Flaming Incinerator
9484|3|4|Spellshock Leggings
9485|3|2|Vibroblade
9486|3|2|Supercharger Battle Axe
9487|3|2|Hi-tech Supergun
9488|3|2|Oscillating Power Hammer
9489|2|2|Gyromatic Icemaker
9490|3|2|Gizmotron Megachopper
9491|3|4|Hotshot Pilot's Gloves
9492|3|4|Electromagnetic Gigaflux Reactivator
9507|1|12|A Carefully-packed Crate
9508|3|4|Mechbuilder's Overalls
9509|3|4|Petrolspill Leggings
9510|3|4|Caverndeep Trudgers
9511|3|2|Bloodletter Scalpel
9512|3|4|Blackmetal Cape
9513|2|2|Ley Staff
9514|2|2|Arcane Staff
9515|2|4|Nether-lace Tunic
9516|2|4|Astral Knot Blouse
9517|3|2|Celestial Stave
9518|2|4|Mud's Crushers
9519|2|4|Durtfeet Stompers
9520|2|2|Silent Hunter
9521|2|2|Skullsplitter
9522|2|4|Energized Stone Circle
9523|1|12|Troll Temper
9527|2|2|Spellshifter Rod
9528|1|12|Edana's Dark Heart
9529|1|15|Internal Warrior Equipment Kit L25
9530|1|12|Horn of Hatetalon
9531|2|4|Gemshale Pauldrons
9532|1|15|Internal Warrior Equipment Kit L30
9533|3|4|Masons Fraternity Ring
9534|3|4|Engineer's Guild Headpiece
9535|2|4|Fire-welded Bracers
9536|2|4|Fairywing Mantle
9537|1|15|Neatly Wrapped Box
9538|3|4|Talvash's Gold Ring
9539|1|15|Box of Rations
9540|1|15|Box of Spells
9541|1|15|Box of Goodies
9542|1|12|Simple Letter
9543|1|12|Simple Rune
9544|1|12|Simple Memorandum
9545|1|12|Simple Sigil
9546|1|0|Simple Scroll
9547|1|12|Simple Note
9548|1|12|Hallowed Letter
9550|1|12|Encrypted Rune
9551|1|12|Encrypted Sigil
9552|1|12|Rune-Inscribed Note
9553|1|12|Etched Parchment
9554|1|12|Encrypted Tablet
9555|1|12|Encrypted Letter
9556|1|12|Hallowed Rune
9557|1|12|Hallowed Sigil
9558|1|12|Encrypted Memorandum
9559|1|12|Encrypted Scroll
9560|1|12|Encrypted Parchment
9561|1|12|Hallowed Tablet
9562|1|12|Rune-Inscribed Tablet
9563|1|12|Consecrated Rune
9564|1|12|Etched Tablet
9565|1|12|Etched Note
9566|1|12|Etched Rune
9567|1|12|Etched Sigil
9568|1|12|Rune-Inscribed Parchment
9569|1|0|Hallowed Scroll
9570|1|12|Consecrated Letter
9571|1|12|Glyphic Letter
9572|1|12|<UNUSED> Glyphic Rune
9573|1|12|Glyphic Memorandum
9574|1|12|Glyphic Scroll
9575|1|12|Glyphic Tablet
9576|1|12|Tainted Letter
9577|1|12|Tainted Memorandum
9578|1|12|Tainted Scroll
9579|1|12|Tainted Parchment
9580|1|12|Verdant Sigil
9581|1|12|Verdant Note
9587|1|1|Thawpelt Sack
9588|3|4|Nogg's Gold Ring
9589|1|12|Encrusted Minerals
9590|1|12|Splintered Log
9591|1|12|Resilient Sinew
9592|1|12|Metallic Fragments
9593|1|12|Treant Muisek
9594|1|12|Wildkin Muisek
9595|1|12|Hippogryph Muisek
9596|1|12|Faerie Dragon Muisek
9597|1|12|Mountain Giant Muisek
9598|2|4|Sleeping Robes
9599|2|4|Barkmail Leggings
9600|1|4|Lace Pants
9601|1|4|Cushioned Boots
9602|2|2|Brushwood Blade
9603|2|2|Gritroot Staff
9604|2|2|Mechanic's Pipehammer
9605|2|4|Repairman's Cape
9606|1|12|Treant Muisek Vessel
9607|2|4|Bastion of Stormwind
9608|2|2|Shoni's Disarming Tool
9609|2|4|Shilly Mitts
9618|1|12|Wildkin Muisek Vessel
9619|1|12|Hippogryph Muisek Vessel
9620|1|12|Faerie Dragon Muisek Vessel
9621|1|12|Mountain Giant Muisek Vessel
9622|2|4|Reedknot Ring
9623|3|4|Civinad Robes
9624|3|4|Triprunner Dungarees
9625|3|4|Dual Reinforced Leggings
9626|2|2|Dwarven Charge
9627|2|4|Explorer's League Lodestar
9628|1|12|Neeru's Herb Pouch
9629|1|12|A Shrunken Head
9630|2|4|Pratt's Handcrafted Boots
9631|2|4|Pratt's Handcrafted Gloves
9632|2|4|Jangdor's Handcrafted Gloves
9633|2|4|Jangdor's Handcrafted Boots
9634|2|4|Skilled Handling Gloves
9635|2|4|Master Apothecary Cape
9636|2|4|Swashbuckler Sash
9637|2|4|Shinkicker Boots
9638|2|4|Chelonian Cuffs
9639|3|2|The Hand of Antu'sul
9640|3|4|Vice Grips
9641|3|4|Lifeblood Amulet
9642|2|4|Band of the Great Tortoise
9643|2|4|Optomatic Deflector
9644|2|4|Thermotastic Egg Timer
9645|2|4|Gnomish Inventor Boots
9646|2|4|Gnomish Water Sinking Device
9647|2|4|Failed Flying Experiment
9648|2|4|Chainlink Towel
9649|2|4|Royal Highmark Vestments
9650|2|4|Honorguard Chestpiece
9651|2|2|Gryphon Rider's Stormhammer
9652|2|4|Gryphon Rider's Leggings
9653|2|4|Speedy Racer Goggles
9654|2|2|Cairnstone Sliver
9655|2|4|Seedtime Hoop
9656|2|4|Granite Grips
9657|2|4|Vinehedge Cinch
9658|2|4|Boots of the Maharishi
9660|2|4|Stargazer Cloak
9661|2|4|Earthclasp Barrier
9662|2|4|Rushridge Boots
9663|2|4|Dawnrider's Chestpiece
9664|2|4|Sentinel's Guard
9665|2|4|Wingcrest Gloves
9666|2|4|Stronghorn Girdle
9678|2|2|Tok'kar's Murloc Basher
9679|2|2|Tok'kar's Murloc Chopper
9680|2|2|Tok'kar's Murloc Shanker
9681|1|0|Grilled King Crawler Legs
9682|2|4|Leather Chef's Belt
9683|2|2|Strength of the Treant
9684|2|2|Force of the Hippogryph
9685|2|2|Will of the Mountain Giant
9686|2|2|Spirit of the Faerie Dragon
9687|2|4|Grappler's Belt
9698|2|4|Gloves of Insight
9699|2|4|Garrison Cloak
9703|2|4|Scorched Cape
9704|2|4|Rustler Gloves
9705|2|4|Tharg's Shoelace
9706|2|4|Tharg's Disk
9718|3|2|Reforged Blade of Heroes
9719|3|15|Broken Blade of Heroes
9738|1|12|Gem of Cobrahn
9739|1|12|Gem of Anacondra
9740|1|12|Gem of Pythas
9741|1|12|Gem of Serpentis
9742|1|4|Simple Cord
9743|1|4|Simple Shoes
9744|1|4|Simple Bands
9745|1|4|Simple Cape
9746|1|4|Simple Gloves
9747|2|4|Simple Britches
9748|2|4|Simple Robe
9749|2|4|Simple Blouse
9750|1|4|Nomad Sash
9751|1|4|Nomad Sandals
9752|1|4|Nomad Bands
9753|2|4|Gypsy Buckler
9754|1|4|Nomad Cloak
9755|1|4|Nomad Gloves
9756|2|4|Gypsy Trousers
9757|2|4|Gypsy Tunic
9758|1|4|Cadet Belt
9759|1|4|Cadet Boots
9760|1|4|Cadet Bracers
9761|1|4|Cadet Cloak
9762|1|4|Cadet Gauntlets
9763|2|4|Cadet Leggings
9764|2|4|Cadet Shield
9765|2|4|Cadet Vest
9766|2|4|Greenweave Sash
9767|2|4|Greenweave Sandals
9768|2|4|Greenweave Bracers
9769|2|4|Greenweave Branch
9770|2|4|Greenweave Cloak
9771|2|4|Greenweave Gloves
9772|2|4|Greenweave Leggings
9773|2|4|Greenweave Robe
9774|2|4|Greenweave Vest
9775|2|4|Bandit Cinch
9776|2|4|Bandit Boots
9777|2|4|Bandit Bracers
9778|2|4|Bandit Buckler
9779|2|4|Bandit Cloak
9780|2|4|Bandit Gloves
9781|2|4|Bandit Pants
9782|2|4|Bandit Jerkin
9783|2|4|Raider's Chestpiece
9784|2|4|Raider's Boots
9785|2|4|Raider's Bracers
9786|2|4|Raider's Cloak
9787|2|4|Raider's Gauntlets
9788|2|4|Raider's Belt
9789|2|4|Raider's Legguards
9790|2|4|Raider's Shield
9791|2|4|Ivycloth Tunic
9792|2|4|Ivycloth Boots
9793|2|4|Ivycloth Bracelets
9794|2|4|Ivycloth Cloak
9795|2|4|Ivycloth Gloves
9796|2|4|Ivycloth Mantle
9797|2|4|Ivycloth Pants
9798|2|4|Ivycloth Robe
9799|2|4|Ivycloth Sash
9800|2|4|Ivy Orb
9801|2|4|Superior Belt
9802|2|4|Superior Boots
9803|2|4|Superior Bracers
9804|2|4|Superior Buckler
9805|2|4|Superior Cloak
9806|2|4|Superior Gloves
9807|2|4|Superior Shoulders
9808|2|4|Superior Leggings
9809|2|4|Superior Tunic
9810|2|4|Fortified Boots
9811|2|4|Fortified Bracers
9812|2|4|Fortified Cloak
9813|2|4|Fortified Gauntlets
9814|2|4|Fortified Belt
9815|2|4|Fortified Leggings
9816|2|4|Fortified Shield
9817|2|4|Fortified Spaulders
9818|2|4|Fortified Chain
9819|2|4|Durable Tunic
9820|2|4|Durable Boots
9821|2|4|Durable Bracers
9822|2|4|Durable Cape
9823|2|4|Durable Gloves
9824|2|4|Durable Shoulders
9825|2|4|Durable Pants
9826|2|4|Durable Robe
9827|2|4|Scaled Leather Belt
9828|2|4|Scaled Leather Boots
9829|2|4|Scaled Leather Bracers
9830|2|4|Scaled Shield
9831|2|4|Scaled Cloak
9832|2|4|Scaled Leather Gloves
9833|2|4|Scaled Leather Leggings
9834|2|4|Scaled Leather Shoulders
9835|2|4|Scaled Leather Tunic
9836|2|4|Banded Armor
9837|2|4|Banded Bracers
9838|2|4|Banded Cloak
9839|2|4|Banded Gauntlets
9840|2|4|Banded Girdle
9841|2|4|Banded Leggings
9842|2|4|Banded Pauldrons
9843|2|4|Banded Shield
9844|2|4|Conjurer's Vest
9845|2|4|Conjurer's Shoes
9846|2|4|Conjurer's Bracers
9847|2|4|Conjurer's Cloak
9848|2|4|Conjurer's Gloves
9849|2|4|Conjurer's Hood
9850|2|4|Conjurer's Mantle
9851|2|4|Conjurer's Breeches
9852|2|4|Conjurer's Robe
9853|2|4|Conjurer's Cinch
9854|2|4|Archer's Jerkin
9855|2|4|Archer's Belt
9856|2|4|Archer's Boots
9857|2|4|Archer's Bracers
9858|2|4|Archer's Buckler
9859|2|4|Archer's Cap
9860|2|4|Archer's Cloak
9861|2|4|Archer's Gloves
9862|2|4|Archer's Trousers
9863|2|4|Archer's Shoulderpads
9864|2|4|Renegade Boots
9865|2|4|Renegade Bracers
9866|2|4|Renegade Chestguard
9867|2|4|Renegade Cloak
9868|2|4|Renegade Gauntlets
9869|2|4|Renegade Belt
9870|2|4|Renegade Circlet
9871|2|4|Renegade Leggings
9872|2|4|Renegade Pauldrons
9873|2|4|Renegade Shield
9874|2|4|Sorcerer Drape
9875|2|4|Sorcerer Sash
9876|2|4|Sorcerer Slippers
9877|2|4|Sorcerer Cloak
9878|2|4|Sorcerer Hat
9879|2|4|Sorcerer Bracelets
9880|2|4|Sorcerer Gloves
9881|2|4|Sorcerer Mantle
9882|2|4|Sorcerer Sphere
9883|2|4|Sorcerer Pants
9884|2|4|Sorcerer Robe
9885|2|4|Huntsman's Boots
9886|2|4|Huntsman's Bands
9887|2|4|Huntsman's Armor
9889|2|4|Huntsman's Cap
9890|2|4|Huntsman's Cape
9891|2|4|Huntsman's Belt
9892|2|4|Huntsman's Gloves
9893|2|4|Huntsman's Leggings
9894|2|4|Huntsman's Shoulders
9895|2|4|Jazeraint Boots
9896|2|4|Jazeraint Bracers
9897|2|4|Jazeraint Chestguard
9898|2|4|Jazeraint Cloak
9899|2|4|Jazeraint Shield
9900|2|4|Jazeraint Gauntlets
9901|2|4|Jazeraint Belt
9902|2|4|Jazeraint Helm
9903|2|4|Jazeraint Leggings
9904|2|4|Jazeraint Pauldrons
9905|2|4|Royal Blouse
9906|2|4|Royal Sash
9907|2|4|Royal Boots
9908|2|4|Royal Cape
9909|2|4|Royal Bands
9910|2|4|Royal Gloves
9911|2|4|Royal Trousers
9912|2|4|Royal Amice
9913|2|4|Royal Gown
9914|2|4|Royal Scepter
9915|2|4|Royal Headband
9916|2|4|Tracker's Belt
9917|2|4|Tracker's Boots
9918|2|4|Brigade Defender
9919|2|4|Tracker's Cloak
9920|2|4|Tracker's Gloves
9921|2|4|Tracker's Headband
9922|2|4|Tracker's Leggings
9923|2|4|Tracker's Shoulderpads
9924|2|4|Tracker's Tunic
9925|2|4|Tracker's Wristguards
9926|2|4|Brigade Boots
9927|2|4|Brigade Bracers
9928|2|4|Brigade Breastplate
9929|2|4|Brigade Cloak
9930|2|4|Brigade Gauntlets
9931|2|4|Brigade Girdle
9932|2|4|Brigade Circlet
9933|2|4|Brigade Leggings
9934|2|4|Brigade Pauldrons
9935|2|4|Embossed Plate Shield
9936|2|4|Abjurer's Boots
9937|2|4|Abjurer's Bands
9938|2|4|Abjurer's Cloak
9939|2|4|Abjurer's Gloves
9940|2|4|Abjurer's Hood
9941|2|4|Abjurer's Mantle
9942|2|4|Abjurer's Pants
9943|2|4|Abjurer's Robe
9944|2|4|Abjurer's Crystal
9945|2|4|Abjurer's Sash
9946|2|4|Abjurer's Tunic
9947|2|4|Chieftain's Belt
9948|2|4|Chieftain's Boots
9949|2|4|Chieftain's Bracers
9950|2|4|Chieftain's Breastplate
9951|2|4|Chieftain's Cloak
9952|2|4|Chieftain's Gloves
9953|2|4|Chieftain's Headdress
9954|2|4|Chieftain's Leggings
9955|2|4|Chieftain's Shoulders
9956|2|4|Warmonger's Bracers
9957|2|4|Warmonger's Chestpiece
9958|2|4|Warmonger's Buckler
9959|2|4|Warmonger's Cloak
9960|2|4|Warmonger's Gauntlets
9961|2|4|Warmonger's Belt
9962|2|4|Warmonger's Greaves
9963|2|4|Warmonger's Circlet
9964|2|4|Warmonger's Leggings
9965|2|4|Warmonger's Pauldrons
9966|2|4|Embossed Plate Armor
9967|2|4|Embossed Plate Gauntlets
9968|2|4|Embossed Plate Girdle
9969|2|4|Embossed Plate Helmet
9970|2|4|Embossed Plate Leggings
9971|2|4|Embossed Plate Pauldrons
9972|2|4|Embossed Plate Bracers
9973|2|4|Embossed Plate Boots
9974|2|4|Overlord's Shield
9978|1|12|Gahz'ridian Detector
9998|2|4|Black Mageweave Vest
9999|2|4|Black Mageweave Leggings
10000|1|12|Margol's Horn
10001|2|4|Black Mageweave Robe
10002|2|4|Shadoweave Pants
10003|2|4|Black Mageweave Gloves
10004|2|4|Shadoweave Robe
10005|1|12|Margol's Gigantic Horn
10007|2|4|Red Mageweave Vest
10008|2|4|White Bandit Mask
10009|2|4|Red Mageweave Pants
10010|2|4|Stormcloth Pants
10011|2|4|Stormcloth Gloves
10018|2|4|Red Mageweave Gloves
10019|3|4|Dreamweave Gloves
10020|2|4|Stormcloth Vest
10021|3|4|Dreamweave Vest
10022|1|12|Proof of Deed
10023|2|4|Shadoweave Gloves
10024|2|4|Black Mageweave Headband
10025|2|4|Shadoweave Mask
10026|2|4|Black Mageweave Boots
10027|2|4|Black Mageweave Shoulders
10028|2|4|Shadoweave Shoulders
10029|2|4|Red Mageweave Shoulders
10030|2|4|Admiral's Hat
10031|2|4|Shadoweave Boots
10032|2|4|Stormcloth Headband
10033|2|4|Red Mageweave Headband
10034|1|4|Tuxedo Shirt
10035|1|4|Tuxedo Pants
10036|1|4|Tuxedo Jacket
10038|2|4|Stormcloth Shoulders
10039|2|4|Stormcloth Boots
10040|1|4|White Wedding Dress
10041|3|4|Dreamweave Circlet
10042|2|4|Cindercloth Robe
10043|2|4|Pious Legwraps
10044|2|4|Cindercloth Boots
10045|1|4|Simple Linen Pants
10046|1|4|Simple Linen Boots
10047|2|4|Simple Kilt
10048|2|4|Colorful Kilt
10049|2|2|Diabolist's Blade
10050|1|1|Mageweave Bag
10051|1|1|Red Mageweave Bag
10052|1|4|Orange Martial Shirt
10053|1|4|Simple Black Dress
10054|1|4|Lavender Mageweave Shirt
10055|1|4|Pink Mageweave Shirt
10056|1|4|Orange Mageweave Shirt
10057|2|4|Duskwoven Tunic
10058|2|4|Duskwoven Sandals
10059|2|4|Duskwoven Bracers
10060|2|4|Duskwoven Cape
10061|2|4|Duskwoven Turban
10062|2|4|Duskwoven Gloves
10063|2|4|Duskwoven Amice
10064|2|4|Duskwoven Pants
10065|2|4|Duskwoven Robe
10066|2|4|Duskwoven Sash
10067|2|4|Righteous Waistguard
10068|2|4|Righteous Boots
10069|2|4|Righteous Bracers
10070|2|4|Righteous Armor
10071|2|4|Righteous Cloak
10072|2|4|Righteous Gloves
10073|2|4|Righteous Helmet
10074|2|4|Righteous Leggings
10075|2|4|Righteous Spaulders
10076|2|4|Lord's Armguards
10077|2|4|Lord's Breastplate
10078|2|4|Lord's Crest
10079|2|4|Lord's Cape
10080|2|4|Lord's Gauntlets
10081|2|4|Lord's Girdle
10082|2|4|Lord's Boots
10083|2|4|Lord's Crown
10084|2|4|Lord's Legguards
10085|2|4|Lord's Pauldrons
10086|2|4|Gothic Plate Armor
10087|2|4|Gothic Plate Gauntlets
10088|2|4|Gothic Plate Girdle
10089|2|4|Gothic Sabatons
10090|2|4|Gothic Plate Helmet
10091|2|4|Gothic Plate Leggings
10092|2|4|Gothic Plate Spaulders
10093|2|4|Revenant Deflector
10094|2|4|Gothic Plate Vambraces
10095|2|4|Councillor's Boots
10096|2|4|Councillor's Cuffs
10097|2|4|Councillor's Circlet
10098|2|4|Councillor's Cloak
10099|2|4|Councillor's Gloves
10100|2|4|Councillor's Shoulders
10101|2|4|Councillor's Pants
10102|2|4|Councillor's Robes
10103|2|4|Councillor's Sash
10104|2|4|Councillor's Tunic
10105|2|4|Wanderer's Armor
10106|2|4|Wanderer's Boots
10107|2|4|Wanderer's Bracers
10108|2|4|Wanderer's Cloak
10109|2|4|Wanderer's Belt
10110|2|4|Wanderer's Gloves
10111|2|4|Wanderer's Hat
10112|2|4|Wanderer's Leggings
10113|2|4|Wanderer's Shoulders
10118|2|4|Ornate Breastplate
10119|2|4|Ornate Greaves
10120|2|4|Ornate Cloak
10121|2|4|Ornate Gauntlets
10122|2|4|Ornate Girdle
10123|2|4|Ornate Circlet
10124|2|4|Ornate Legguards
10125|2|4|Ornate Pauldrons
10126|2|4|Ornate Bracers
10127|2|4|Revenant Bracers
10128|2|4|Revenant Chestplate
10129|2|4|Revenant Gauntlets
10130|2|4|Revenant Girdle
10131|2|4|Revenant Boots
10132|2|4|Revenant Helmet
10133|2|4|Revenant Leggings
10134|2|4|Revenant Shoulders
10135|2|4|High Councillor's Tunic
10136|2|4|High Councillor's Bracers
10137|2|4|High Councillor's Boots
10138|2|4|High Councillor's Cloak
10139|2|4|High Councillor's Circlet
10140|2|4|High Councillor's Gloves
10141|2|4|High Councillor's Pants
10142|2|4|High Councillor's Mantle
10143|2|4|High Councillor's Robe
10144|2|4|High Councillor's Sash
10145|2|4|Mighty Girdle
10146|2|4|Mighty Boots
10147|2|4|Mighty Armsplints
10148|2|4|Mighty Cloak
10149|2|4|Mighty Gauntlets
10150|2|4|Mighty Helmet
10151|2|4|Mighty Tunic
10152|2|4|Mighty Leggings
10153|2|4|Mighty Spaulders
10154|2|4|Mercurial Girdle
10155|2|4|Mercurial Greaves
10156|2|4|Mercurial Bracers
10157|2|4|Mercurial Breastplate
10158|2|4|Mercurial Guard
10159|2|4|Mercurial Cloak
10160|2|4|Mercurial Circlet
10161|2|4|Mercurial Gauntlets
10162|2|4|Mercurial Legguards
10163|2|4|Mercurial Pauldrons
10164|2|4|Templar Chestplate
10165|2|4|Templar Gauntlets
10166|2|4|Templar Girdle
10167|2|4|Templar Boots
10168|2|4|Templar Crown
10169|2|4|Templar Legplates
10170|2|4|Templar Pauldrons
10171|2|4|Templar Bracers
10172|2|4|Mystical Mantle
10173|2|4|Mystical Bracers
10174|2|4|Mystical Cape
10175|2|4|Mystical Headwrap
10176|2|4|Mystical Gloves
10177|2|4|Mystical Leggings
10178|2|4|Mystical Robe
10179|2|4|Mystical Boots
10180|2|4|Mystical Belt
10181|2|4|Mystical Armor
10182|2|4|Swashbuckler's Breastplate
10183|2|4|Swashbuckler's Boots
10184|2|4|Swashbuckler's Bracers
10185|2|4|Swashbuckler's Cape
10186|2|4|Swashbuckler's Gloves
10187|2|4|Swashbuckler's Eyepatch
10188|2|4|Swashbuckler's Leggings
10189|2|4|Swashbuckler's Shoulderpads
10190|2|4|Swashbuckler's Belt
10191|2|4|Crusader's Armguards
10192|2|4|Crusader's Boots
10193|2|4|Crusader's Armor
10194|2|4|Crusader's Cloak
10195|2|4|Crusader's Shield
10196|2|4|Crusader's Gauntlets
10197|2|4|Crusader's Belt
10198|2|4|Crusader's Helm
10199|2|4|Crusader's Leggings
10200|2|4|Crusader's Pauldrons
10201|2|4|Overlord's Greaves
10202|2|4|Overlord's Vambraces
10203|2|4|Overlord's Chestplate
10204|2|4|Heavy Lamellar Shield
10205|2|4|Overlord's Gauntlets
10206|2|4|Overlord's Girdle
10207|2|4|Overlord's Crown
10208|2|4|Overlord's Legplates
10209|2|4|Overlord's Spaulders
10210|2|4|Elegant Mantle
10211|2|4|Elegant Boots
10212|2|4|Elegant Cloak
10213|2|4|Elegant Bracers
10214|2|4|Elegant Gloves
10215|2|4|Elegant Robes
10216|2|4|Elegant Belt
10217|2|4|Elegant Leggings
10218|2|4|Elegant Tunic
10219|2|4|Elegant Circlet
10220|2|4|Nightshade Tunic
10221|2|4|Nightshade Girdle
10222|2|4|Nightshade Boots
10223|2|4|Nightshade Armguards
10224|2|4|Nightshade Cloak
10225|2|4|Nightshade Gloves
10226|2|4|Nightshade Helmet
10227|2|4|Nightshade Leggings
10228|2|4|Nightshade Spaulders
10229|2|4|Engraved Bracers
10230|2|4|Engraved Breastplate
10231|2|4|Engraved Cape
10232|2|4|Engraved Gauntlets
10233|2|4|Engraved Girdle
10234|2|4|Engraved Boots
10235|2|4|Engraved Helm
10236|2|4|Engraved Leggings
10237|2|4|Engraved Pauldrons
10238|2|4|Heavy Lamellar Boots
10239|2|4|Heavy Lamellar Vambraces
10240|2|4|Heavy Lamellar Chestpiece
10241|2|4|Heavy Lamellar Helm
10242|2|4|Heavy Lamellar Gauntlets
10243|2|4|Heavy Lamellar Girdle
10244|2|4|Heavy Lamellar Leggings
10245|2|4|Heavy Lamellar Pauldrons
10246|2|4|Master's Vest
10247|2|4|Master's Boots
10248|2|4|Master's Bracers
10249|2|4|Master's Cloak
10250|2|4|Master's Hat
10251|2|4|Master's Gloves
10252|2|4|Master's Leggings
10253|2|4|Master's Mantle
10254|2|4|Master's Robe
10255|2|4|Master's Belt
10256|2|4|Adventurer's Bracers
10257|2|4|Adventurer's Boots
10258|2|4|Adventurer's Cape
10259|2|4|Adventurer's Belt
10260|2|4|Adventurer's Gloves
10261|2|4|Adventurer's Bandana
10262|2|4|Adventurer's Legguards
10263|2|4|Adventurer's Shoulders
10264|2|4|Adventurer's Tunic
10265|2|4|Masterwork Bracers
10266|2|4|Masterwork Breastplate
10267|2|4|Masterwork Cape
10268|2|4|Masterwork Gauntlets
10269|2|4|Masterwork Girdle
10270|2|4|Masterwork Boots
10271|2|4|Masterwork Shield
10272|2|4|Masterwork Circlet
10273|2|4|Masterwork Legplates
10274|2|4|Masterwork Pauldrons
10275|2|4|Emerald Breastplate
10276|2|4|Emerald Sabatons
10277|2|4|Emerald Gauntlets
10278|2|4|Emerald Girdle
10279|2|4|Emerald Helm
10280|2|4|Emerald Legplates
10281|2|4|Emerald Pauldrons
10282|2|4|Emerald Vambraces
10283|1|12|Wolf Heart Samples
10284|1|7|Simple Flour
10285|1|7|Shadow Silk
10286|1|7|Heart of the Wild
10287|2|4|Greenweave Mantle
10288|2|4|Sage's Circlet
10289|2|4|Durable Hat
10290|1|7|Pink Dye
10298|2|4|Gnomeregan Band
10299|2|4|Gnomeregan Amulet
10300|2|9|Pattern: Red Mageweave Vest
10301|2|9|Pattern: White Bandit Mask
10302|2|9|Pattern: Red Mageweave Pants
10303|2|9|Pattern: Stormcloth Pants
10304|2|9|Pattern: Stormcloth Gloves
10305|1|0|Scroll of Protection IV
10306|1|0|Scroll of Spirit IV
10307|1|0|Scroll of Stamina IV
10308|1|0|Scroll of Intellect IV
10309|1|0|Scroll of Agility IV
10310|1|0|Scroll of Strength IV
10311|1|9|Pattern: Orange Martial Shirt
10312|2|9|Pattern: Red Mageweave Gloves
10313|2|9|Pattern: Stormcloth Vest
10314|1|9|Pattern: Lavender Mageweave Shirt
10315|2|9|Pattern: Red Mageweave Shoulders
10316|2|9|Pattern: Colorful Kilt
10317|1|9|Pattern: Pink Mageweave Shirt
10318|1|9|Pattern: Admiral's Hat
10319|2|9|Pattern: Stormcloth Headband
10320|2|9|Pattern: Red Mageweave Headband
10321|1|9|Pattern: Tuxedo Shirt
10322|2|9|Pattern: Stormcloth Shoulders
10323|1|9|Pattern: Tuxedo Pants
10324|2|9|Pattern: Stormcloth Boots
10325|1|9|Pattern: White Wedding Dress
10326|1|9|Pattern: Tuxedo Jacket
10327|1|12|Horn of Echeyakee
10328|3|4|Scarlet Chestpiece
10329|2|4|Scarlet Belt
10330|3|4|Scarlet Leggings
10331|2|4|Scarlet Gauntlets
10332|3|4|Scarlet Boots
10333|2|4|Scarlet Wristguards
10338|1|12|Fresh Zhevra Carcass
10358|2|4|Duracin Bracers
10359|2|4|Everlast Boots
10360|1|15|Black Kingsnake
10361|1|15|Brown Snake
10362|2|4|Ornate Shield
10363|2|4|Engraved Wall
10364|2|4|Templar Shield
10365|2|4|Emerald Shield
10366|2|4|Demon Guard
10367|2|4|Hyperion Shield
10368|2|4|Imbued Plate Armor
10369|2|4|Imbued Plate Gauntlets
10370|2|4|Imbued Plate Girdle
10371|2|4|Imbued Plate Greaves
10372|2|4|Imbued Plate Helmet
10373|2|4|Imbued Plate Leggings
10374|2|4|Imbued Plate Pauldrons
10375|2|4|Imbued Plate Vambraces
10376|2|4|Commander's Boots
10377|2|4|Commander's Vambraces
10378|2|4|Commander's Armor
10379|2|4|Commander's Helm
10380|2|4|Commander's Gauntlets
10381|2|4|Commander's Girdle
10382|2|4|Commander's Leggings
10383|2|4|Commander's Pauldrons
10384|2|4|Hyperion Armor
10385|2|4|Hyperion Greaves
10386|2|4|Hyperion Gauntlets
10387|2|4|Hyperion Girdle
10388|2|4|Hyperion Helm
10389|2|4|Hyperion Legplates
10390|2|4|Hyperion Pauldrons
10391|2|4|Hyperion Vambraces
10392|1|15|Crimson Snake
10393|1|15|Cockroach
10394|1|15|Prairie Dog Whistle
10398|1|15|Mechanical Chicken
10399|3|4|Blackened Defias Armor
10400|2|4|Blackened Defias Leggings
10401|2|4|Blackened Defias Gloves
10402|2|4|Blackened Defias Boots
10403|2|4|Blackened Defias Belt
10404|2|4|Durable Belt
10405|1|4|Bandit Shoulders
10406|2|4|Scaled Leather Headband
10407|1|4|Raider's Shoulderpads
10408|2|4|Banded Helm
10409|2|4|Banded Boots
10410|3|4|Leggings of the Fang
10411|2|4|Footpads of the Fang
10412|2|4|Belt of the Fang
10413|2|4|Gloves of the Fang
10414|1|12|Sample Snapjaw Shell
10418|2|4|Glimmering Mithril Insignia
10420|1|12|Skull of the Coldbringer
10421|2|4|Rough Copper Vest
10423|2|4|Silvered Bronze Leggings
10424|2|9|Plans: Silvered Bronze Leggings
10438|1|12|Felix's Box
10439|1|12|Durnan's Scalding Mornbrew
10440|1|12|Nori's Mug
10441|1|12|Glowing Shard
10442|1|12|Mysterious Artifact
10443|1|12|Singed Letter
10444|1|12|Standard Issue Flare Gun
10445|1|12|Drawing Kit
10446|1|12|Heart of Obsidion
10447|1|12|Head of Lathoric the Black
10450|1|12|Undamaged Hippogryph Feather
10454|2|12|Essence of Eranikus
10455|2|4|Chained Essence of Eranikus
10456|1|15|A Bulging Coin Purse
10457|0|15|Empty Sea Snail Shell
10458|1|12|Prayer to Elune
10459|1|12|Chief Sharptusk Thornmantle's Head
10460|1|13|Hakkari Blood
10461|2|4|Shadowy Bracers
10462|2|4|Shadowy Belt
10463|2|9|Pattern: Shadoweave Mask
10464|1|12|Staff of Command
10465|1|12|Egg of Hakkar
10466|1|12|Atal'ai Stone Circle
10467|1|15|Trader's Satchel
10478|1|12|Roland's Mana Gem
10479|2|15|Kovic's Trading Satchel
10498|1|7|Gyromatic Micro-Adjustor
10499|2|4|Bright-Eye Goggles
10500|2|4|Fire Goggles
10501|2|4|Catseye Ultra Goggles
10502|2|4|Spellpower Goggles Xtreme
10503|2|4|Rose Colored Goggles
10504|3|4|Green Lens
10505|1|7|Solid Blasting Powder
10506|2|4|Deepdive Helmet
10507|1|0|Solid Dynamite
10508|2|2|Mithril Blunderbuss
10509|1|12|Heart of Flame
10510|2|2|Mithril Heavy-bore Rifle
10511|1|12|Golem Oil
10512|2|6|Hi-Impact Mithril Slugs
10513|2|6|Mithril Gyro-Shot
10514|1|0|Mithril Frag Bomb
10515|1|4|Torch of Retribution
10518|2|4|Parachute Cloak
10538|1|12|Tablet of Beth'Amara
10539|1|12|Tablet of Jin'yael
10540|1|12|Tablet of Markri
10541|1|12|Tablet of Sael'hai
10542|2|4|Goblin Mining Helmet
10543|2|4|Goblin Construction Helmet
10544|1|2|Thistlewood Maul
10545|2|4|Gnomish Goggles
10546|1|0|Deadly Scope
10547|1|2|Camping Knife
10548|1|0|Sniper Scope
10549|2|4|Rancher's Trousers
10550|1|4|Wooly Mittens
10551|1|12|Thorium Plated Dagger
10552|1|12|Symbol of Ragnaros
10553|2|4|Foreman Vest
10554|2|4|Foreman Pants
10556|1|12|Stone Circle
10558|1|7|Gold Power Core
10559|1|7|Mithril Tube
10560|1|7|Unstable Trigger
10561|1|7|Mithril Casing
10562|1|0|Hi-Explosive Bomb
10563|1|12|Rubbing: Rune of Beth'Amara
10564|1|12|Rubbing: Rune of Jin'yael
10565|1|12|Rubbing: Rune of Markri
10566|1|12|Rubbing: Rune of Sael'hai
10567|3|2|Quillshooter
10569|1|15|Hoard of the Black Dragonflight
10570|3|2|Manslayer
10571|3|2|Ebony Boneclub
10572|3|2|Freezing Shard
10573|3|2|Boneslasher
10574|3|4|Corpseshroud
10575|1|15|Black Dragonflight Molt
10576|1|4|Mithril Mechanical Dragonling
10577|1|4|Goblin Mortar
10578|3|4|Thoughtcast Boots
10579|3|6|Explosive Arrow
10580|1|0|Goblin "Boom" Box
10581|3|4|Death's Head Vestment
10582|3|4|Briar Tredders
10583|3|4|Quillward Harness
10584|3|4|Stormgale Fists
10585|1|4|Goblin Radio
10586|1|0|The Big One
10587|1|4|Goblin Bomb Dispenser
10588|2|4|Goblin Rocket Helmet
10589|1|12|Oathstone of Ysera's Dragonflight
10590|1|12|Pocked Black Box
10592|1|0|Catseye Draught
10593|2|12|Imperfect Draenethyst Fragment
10595|2|15|Kum'isha's Junk
10597|1|12|Head of Magus Rimtori
10598|1|12|Hetaera's Bloodied Head
10599|1|12|Hetaera's Beaten Head
10600|1|12|Hetaera's Bruised Head
10601|2|9|Schematic: Bright-Eye Goggles
10602|1|9|Schematic: Deadly Scope
10603|2|9|Schematic: Catseye Ultra Goggles
10604|2|9|Schematic: Mithril Heavy-bore Rifle
10605|3|9|Schematic: Spellpower Goggles Xtreme
10606|2|9|Schematic: Parachute Cloak
10607|1|9|Schematic: Deepdive Helmet
]==],
[==[
10608|3|9|Schematic: Sniper Scope
10609|1|9|Schematic: Mithril Mechanical Dragonling
10610|1|12|Hetaera's Blood
10620|1|7|Thorium Ore
10621|1|0|Runed Scroll
10622|1|12|Kadrak's Flag
10623|3|2|Winter's Bite
10624|3|2|Stinging Bow
10625|3|2|Stealthblade
10626|3|2|Ragehammer
10627|3|2|Bludgeon of the Grinning Dog
10628|3|2|Deathblow
10629|3|4|Mistwalker Boots
10630|3|4|Soulcatcher Halo
10631|3|4|Murkwater Gauntlets
10632|3|4|Slimescale Bracers
10633|3|4|Silvershell Leggings
10634|3|4|Mindseye Circle
10635|1|4|Painted Chain Leggings
10636|1|4|Nomadic Gloves
10637|2|4|Brewer's Gloves
10638|2|4|Long Draping Cape
10639|1|12|Hyacinth Mushroom
10640|1|12|Webwood Ichor
10641|1|12|Moonpetal Lily
10642|1|12|Iverron's Antidote
10643|1|12|Sealed Letter to Ag'tor
10644|1|9|Recipe: Goblin Rocket Fuel
10645|1|4|Gnomish Death Ray
10646|1|0|Goblin Sapper Charge
10647|1|7|Engineer's Ink
10648|1|7|Blank Parchment
10649|1|12|Nightmare Shard
10650|1|12|Plague-Infested Quilboar Mane
10651|0|12|Cracked Arcane Focusing Crystal
10652|2|2|Will of the Mountain Giant
10653|2|4|Trailblazer Boots
10654|2|4|Jutebraid Gloves
10655|1|4|Sedgeweed Britches
10656|1|4|Barkmail Vest
10657|2|4|Talbar Mantle
10658|2|4|Quagmire Galoshes
10659|2|4|Shard of the Splithooves
10660|1|12|First Mosh'aru Tablet
10661|1|12|Second Mosh'aru Tablet
10662|1|12|Filled Egg of Hakkar
10663|1|0|Essence of Hakkar
10664|1|12|A Note to Magus Rimtori
10678|1|12|Magatha's Note
10679|1|12|Andron's Note
10680|1|12|Jes'rimon's Note
10681|1|12|Xylem's Note
10682|1|12|Belnistrasz's Oathstone
10683|1|1|Explorer's Knapsack
10684|1|0|Colossal Parachute
10686|2|4|Aegis of Battle
10687|1|0|Empty Vial Labeled #1
10688|1|0|Empty Vial Labeled #2
10689|1|0|Empty Vial Labeled #3
10690|1|0|Empty Vial Labeled #4
10691|1|12|Filled Vial Labeled #1
10692|1|12|Filled Vial Labeled #2
10693|1|12|Filled Vial Labeled #3
10694|1|12|Filled Vial Labeled #4
10695|1|15|Box of Empty Vials
10696|2|2|Enchanted Azsharite Felbane Sword
10697|2|2|Enchanted Azsharite Felbane Dagger
10698|2|2|Enchanted Azsharite Felbane Staff
10699|1|12|Yeh'kinya's Bramble
10700|2|4|Encarmine Boots
10701|2|4|Boots of Zua'tec
10702|2|4|Enormous Ogre Boots
10703|2|2|Fiendish Skiv
10704|2|2|Chillnail Splinter
10705|2|4|Firwillow Wristbands
10706|2|4|Nightscale Girdle
10707|2|4|Steelsmith Greaves
10708|2|4|Skullspell Orb
10709|2|4|Pyrestone Orb
10710|3|4|Dragonclaw Ring
10711|3|4|Dragon's Blood Necklace
10712|1|12|Cuely's Elixir
10713|1|9|Plans: Inlaid Mithril Cylinder
10714|1|12|Crystallized Azsharite
10715|1|12|Kim'Jael's Scope
10716|1|4|Gnomish Shrink Ray
10717|1|12|Kim'Jael's Compass
10718|1|12|Kim'Jael's Wizzlegoober
10719|1|0|Mobile Alarm
10720|1|4|Gnomish Net-o-Matic Projector
10721|2|4|Gnomish Harm Prevention Belt
10722|1|12|Kim'Jael's Stuffed Chicken
10723|1|4|Gnomish Ham Radio
10724|2|4|Gnomish Rocket Boots
10725|1|4|Gnomish Battle Chicken
10726|2|4|Gnomish Mind Control Cap
10727|1|4|Goblin Dragon Gun
10728|1|9|Pattern: Black Swashbuckler's Shirt
10738|1|12|Shipment to Galvan
10739|2|4|Ring of Fortitude
10740|2|4|Centurion Legplates
10741|2|4|Lordrec Helmet
10742|2|4|Dragonflight Leggings
10743|2|4|Drakefire Headguard
10744|2|2|Axe of the Ebon Drake
10745|2|4|Kaylari Shoulders
10746|2|4|Runesteel Vambraces
10747|2|4|Teacher's Sash
10748|2|4|Wanderlust Boots
10749|3|4|Avenguard Helm
10750|3|2|Lifeforce Dirk
10751|3|4|Gemburst Circlet
10752|2|15|Emerald Encrusted Chest
10753|1|12|Amulet of Grol
10754|1|12|Amulet of Sevine
10755|1|12|Amulet of Allistarj
10757|1|13|Ward of the Defiler
10758|3|2|X'caliboar
10759|1|12|Severed Horn of the Defiler
10760|2|4|Swine Fists
10761|3|2|Coldrage Dagger
10762|3|4|Robes of the Lich
10763|3|4|Icemetal Barbute
10764|3|4|Deathchill Armor
10765|2|4|Bonefingers
10766|3|2|Plaguerot Sprig
10767|3|4|Savage Boar's Guard
10768|3|4|Boar Champion's Belt
10769|3|4|Glowing Eye of Mordresh
10770|3|4|Mordresh's Lifeless Skull
10771|3|4|Deathmage Sash
10772|2|2|Glutton's Cleaver
10773|2|15|Hakkari Urn
10774|3|4|Fleshhide Shoulders
10775|3|4|Carapace of Tuten'kash
10776|3|4|Silky Spider Cape
10777|3|4|Arachnid Gloves
10778|2|4|Necklace of Sanctuary
10779|2|4|Demon's Blood
10780|2|4|Mark of Hakkar
10781|2|4|Hakkari Breastplate
10782|2|4|Hakkari Shroud
10783|3|4|Atal'ai Spaulders
10784|3|4|Atal'ai Breastplate
10785|2|4|Atal'ai Leggings
10786|2|4|Atal'ai Boots
10787|3|4|Atal'ai Gloves
10788|2|4|Atal'ai Girdle
10789|1|12|Manual of Engineering Disciplines
10790|1|12|Gnome Engineer Membership Card
10791|1|12|Goblin Engineer Membership Card
10792|1|12|Nixx's Pledge of Secrecy
10793|1|12|Overspark's Pledge of Secrecy
10794|1|12|Oglethorpe's Pledge of Secrecy
10795|3|4|Drakeclaw Band
10796|3|4|Drakestone
10797|3|2|Firebreather
10798|3|4|Atal'alarion's Tusk Ring
10799|3|2|Headspike
10800|3|4|Darkwater Bracers
10801|3|4|Slitherscale Boots
10802|2|4|Wingveil Cloak
10803|2|2|Blade of the Wretched
10804|2|2|Fist of the Damned
10805|2|2|Eater of the Dead
10806|3|4|Vestments of the Atal'ai Prophet
10807|3|4|Kilt of the Atal'ai Prophet
10808|3|4|Gloves of the Atal'ai Prophet
10818|1|12|Yeh'kinya's Scroll
10819|1|12|Wildkin Feather
10820|2|4|Jackseed Belt
10821|2|4|Sower's Cloak
10822|1|15|Dark Whelpling
10823|3|2|Vanquisher's Sword
10824|3|4|Amberglow Talisman
10826|2|2|Staff of Lore
10827|2|4|Surveyor's Tunic
10828|3|2|Dire Nail
10829|3|4|Dragon's Eye
10830|1|0|M73 Frag Grenade
10831|1|12|Fel Orb
10832|1|12|Fel Tracker Owner's Manual
10833|3|4|Horns of Eranikus
10834|1|15|Felhound Tracker Kit
10835|3|4|Crest of Supremacy
10836|3|2|Rod of Corrosion
10837|3|2|Tooth of Eranikus
10838|3|2|Might of Hakkar
10839|1|15|Crystallized Note
10840|1|15|Crystallized Note
10841|1|0|Goldthorn Tea
10842|3|4|Windscale Sarong
10843|3|4|Featherskin Cape
10844|3|2|Spire of Hakkar
10845|3|4|Warrior's Embrace
10846|3|4|Bloodshot Greaves
10847|4|2|Dragon's Call
10858|1|9|Plans: Solid Iron Maul
10918|1|0|Wound Poison
10919|2|4|Apothecary Gloves
10920|1|0|Wound Poison II
10921|1|0|Wound Poison III
10922|1|0|Wound Poison IV
10938|2|7|Lesser Magic Essence
10939|2|7|Greater Magic Essence
10940|1|7|Strange Dust
10958|1|12|Hilary's Necklace
10959|2|1|Demon Hide Sack
10978|3|7|Small Glimmering Shard
10998|2|7|Lesser Astral Essence
10999|1|12|Ironfel
11000|1|13|Shadowforge Key
11018|1|12|Un'Goro Soil
11020|1|12|Evergreen Pouch
11022|1|12|Packet of Tharlendris Seeds
11023|1|15|Ancona Chicken
11024|1|12|Evergreen Herb Casing
11026|1|15|Tree Frog Box
11027|1|15|Wood Frog Box
11038|2|9|Formula: Enchant 2H Weapon - Lesser Spirit
11039|2|9|Formula: Enchant Cloak - Minor Agility
11040|1|12|Morrowgrain
11058|1|12|Sha'ni's Nose-Ring
11078|1|13|Relic Coffer Key
11079|1|13|Gor'tesh's Lopped Off Head
11080|1|12|Gor'tesh's Lopped Off Head
11081|2|9|Formula: Enchant Shield - Lesser Protection
11082|2|7|Greater Astral Essence
11083|1|7|Soul Dust
11084|3|7|Large Glimmering Shard
11085|1|13|Customer of the Month Coffer Key
11086|3|2|Jang'thraze the Protector
11098|2|9|Formula: Enchant Cloak - Lesser Shadow Resistance
11099|1|7|Dark Iron Ore
11101|2|9|Formula: Enchant Bracer - Lesser Strength
11102|1|12|Unhatched Sprite Darter Egg
11103|1|12|Seed Voucher
11104|1|12|Large Compass
11105|1|12|Curled Map Parchment
11106|1|12|Lion-headed Key
11107|1|12|A Small Pack
11108|1|12|Faded Photograph
11109|1|0|Special Chicken Feed
11110|1|15|Chicken Egg
11111|1|12|Broken Sprite Darter Egg
11112|1|12|Research Equipment
11113|1|12|Crate of Foodstuffs
11114|1|12|Dinosaur Bone
11115|1|13|Secret Safe Key
11116|2|15|A Mangled Journal
11118|3|4|Archaedic Stone
11119|1|12|Milly's Harvest
11120|2|2|Belgrom's Hammer
11121|2|2|Darkwater Talwar
11122|2|4|Carrot on a Stick
11123|3|4|Rainstrider Leggings
11124|3|4|Helm of Exile
11125|1|12|Grape Manifest
11126|1|12|Tablet of Kurniya
11127|1|12|Scavenged Goods
11128|1|7|Golden Rod
11129|1|12|Essence of the Elements
11130|1|7|Runed Golden Rod
11131|1|12|Hive Wall Sample
11133|1|12|Linken's Training Sword
11134|2|7|Lesser Mystic Essence
11135|2|7|Greater Mystic Essence
11136|1|12|Linken's Tempered Sword
11137|1|7|Vision Dust
11138|3|7|Small Glowing Shard
11139|3|7|Large Glowing Shard
11140|1|13|Prison Cell Key
11141|1|12|Bait
11142|1|12|Broken Samophlange
11143|1|12|Nugget Slug
11144|1|7|Truesilver Rod
11145|1|7|Runed Truesilver Rod
11146|1|12|Broken and Battered Samophlange
11147|1|12|Samophlange Manual Cover
11148|1|0|Samophlange Manual Page
11149|1|12|Samophlange Manual
11150|2|9|Formula: Enchant Gloves - Mining
11151|2|9|Formula: Enchant Gloves - Herbalism
11152|2|9|Formula: Enchant Gloves - Fishing
11162|1|12|Linken's Superior Sword
11163|2|9|Formula: Enchant Bracer - Lesser Deflection
11164|2|9|Formula: Enchant Weapon - Lesser Beastslayer
11165|2|9|Formula: Enchant Weapon - Lesser Elemental Slayer
11166|2|9|Formula: Enchant Gloves - Skinning
11167|2|9|Formula: Enchant Boots - Lesser Spirit
11168|2|9|Formula: Enchant Shield - Lesser Block
11169|1|12|Book of Aquor
11171|1|12|Fel Iron
11172|1|12|Silvery Claws
11173|1|12|Irontree Heart
11174|2|7|Lesser Nether Essence
11175|2|7|Greater Nether Essence
11176|1|7|Dream Dust
11177|3|7|Small Radiant Shard
11178|3|7|Large Radiant Shard
11179|1|12|Golden Flame
11184|1|12|Blue Power Crystal
11185|1|12|Green Power Crystal
11186|1|12|Red Power Crystal
11187|1|4|Stemleaf Bracers
11188|1|12|Yellow Power Crystal
11189|1|4|Woodland Robes
11190|1|4|Viny Gloves
11191|1|4|Farmer's Boots
11192|1|4|Outfitter Gloves
11193|2|4|Blazewind Breastplate
11194|2|4|Prismscale Hauberk
11195|2|4|Warforged Chestplate
11196|2|4|Mindburst Medallion
11197|1|13|Dark Keeper Key
11198|1|12|Rune of Escape
11199|1|4|Engineer's Shield 1
11200|1|4|Engineer's Shield 2
11201|1|4|Engineer's Shield 3
11202|2|9|Formula: Enchant Shield - Stamina
11203|2|9|Formula: Enchant Gloves - Advanced Mining
11204|2|9|Formula: Enchant Bracer - Greater Spirit
11205|2|9|Formula: Enchant Gloves - Advanced Herbalism
11206|2|9|Formula: Enchant Cloak - Lesser Agility
11207|2|9|Formula: Enchant Weapon - Fiery Weapon
11208|2|9|Formula: Enchant Weapon - Demonslaying
11222|1|12|Head of Krom'zar
11223|2|9|Formula: Enchant Bracer - Deflection
11224|2|9|Formula: Enchant Shield - Frost Resistance
11225|2|9|Formula: Enchant Bracer - Greater Stamina
11226|2|9|Formula: Enchant Gloves - Riding Skill
11227|1|12|Piece of Krom'zar's Banner
11228|1|15|Frenzied Dragonflight Molt
11229|2|4|Brightscale Girdle
11230|1|12|Encased Fiery Essence
11231|1|12|Altered Black Dragonflight Molt
11242|1|12|Evoroot
11243|1|12|Videre Elixir
11262|3|4|Orb of Lorica
11263|3|2|Nether Force Wand
11265|3|2|Cragwood Maul
11266|1|12|Fractured Elemental Shard
11267|1|12|Elemental Shard Sample
11268|1|12|Head of Argelmach
11269|1|12|Intact Elemental Core
11270|1|12|Nixx's Signed Pledge
11282|1|12|Oglethorpe's Signed Pledge
11283|1|12|Overspark's Signed Pledge
11284|1|6|Accurate Slugs
11285|1|6|Jagged Arrow
11286|1|12|Thorium Shackles
11287|2|2|Lesser Magic Wand
11288|2|2|Greater Magic Wand
11289|2|2|Lesser Mystic Wand
11290|2|2|Greater Mystic Wand
11291|1|7|Star Wood
11302|3|4|Uther's Strength
11303|2|2|Fine Shortbow
11304|2|2|Fine Longbow
11305|2|2|Dense Shortbow
11306|2|2|Sturdy Recurve
11307|2|2|Massive Longbow
11308|2|2|Sylvan Shortbow
11309|1|12|The Heart of the Mountain
11310|3|4|Flameseer Mantle
11311|2|4|Emberscale Cape
11312|1|12|Lost Thunderbrew Recipe
11313|1|12|Ribbly's Head
11315|1|12|Bloodpetal Sprout
11316|1|12|Bloodpetal
11318|1|12|Atal'ai Haze
11319|1|12|Unloaded Zapper
11320|1|12|Bloodpetal Zapper
11324|1|1|Explorer's Knapsack
11325|1|0|Dark Iron Ale Mug
11362|1|11|Medium Quiver
11363|1|11|Medium Shot Pouch
11364|1|4|Tabard of Stormwind
11366|1|12|Helendis Riverhorn's Letter
11367|1|12|Solomon's Plea to Bolvar
11368|1|12|Bolvar's Decree
11370|1|7|Dark Iron Ore
11371|1|7|Dark Iron Bar
11382|2|7|Blood of the Mountain
11384|0|15|Broken Basilisk Teeth
11385|0|15|Basilisk Scale
11386|0|15|Squishy Basilisk Eye
11387|0|15|Basilisk Heart
11388|0|15|Basilisk Venom
11389|0|15|Shimmering Basilisk Skin
11390|0|15|Broken Bat Fang
11391|0|15|Spined Bat Wing
11392|0|15|Severed Bat Claw
11393|0|15|Small Bat Skull
11394|0|15|Bat Heart
11395|0|15|Bat Ear
11402|0|15|Sleek Bat Pelt
11403|0|15|Large Bat Fang
11404|1|12|Evil Bat Eye
11405|1|0|Giant Silver Vein
11406|0|15|Rotting Bear Carcass
11407|1|12|Torn Bear Pelt
11408|0|15|Bear Jaw
11409|0|15|Bear Flank
11410|0|15|Savage Bear Claw
11411|0|2|Large Bear Bone
11412|1|12|Nagmara's Vial
11413|1|0|Nagmara's Filled Vial
11414|0|15|Grizzled Mane
11415|1|0|Mixed Berries
11416|0|15|Delicate Ribcage
11417|0|15|Feathery Wing
11418|0|15|Hollow Wing Bone
11419|0|15|Mysterious Unhatched Egg
11420|0|15|Elegant Writing Tool
11422|1|15|Goblin Engineer's Renewal Gift
11423|1|15|Gnome Engineer's Renewal Gift
11442|1|15|Stormwind Deputy Kit
11444|1|0|Grim Guzzler Boar
11445|1|12|Flute of the Ancients
11446|1|12|A Crumpled Up Note
11462|1|12|Discarded Knife
11463|2|12|Undelivered Parcel
11464|1|12|Marshal Windsor's Lost Information
11465|1|12|Marshal Windsor's Lost Information
11466|1|12|Raschal's Report
11467|1|12|Blackrock Medallion
11468|1|12|Dark Iron Fanny Pack
11469|2|4|Bloodband Bracers
11470|1|12|Tablet Transcript
11471|1|12|Fragile Sprite Darter Egg
11472|1|12|Silvermane Stalker Flank
11473|1|12|PX83-Enigmatron
11474|1|15|Sprite Darter Egg
11475|1|4|Wine-stained Cloak
11476|1|12|U'cha's Pelt
11477|1|12|White Ravasaur Claw
11478|1|12|Un'Goro Gorilla Pelt
11479|1|12|Un'Goro Stomper Pelt
11480|1|12|Un'Goro Thunderer Pelt
11482|1|12|Crystal Pylon User's Manual
11502|2|4|Loreskin Shoulders
11503|1|12|Blood Amber
11504|1|12|Piece of Threshadon Carcass
11507|1|12|Spotted Hyena Pelt
11508|1|4|Gamemaster's Slippers
11509|1|12|Ravasaur Pheromone Gland
11510|1|12|Lar'korwi's Head
11511|1|12|Cenarion Beacon
11512|1|12|Patch of Tainted Skin
11513|1|12|Tainted Vitriol
11514|1|12|Fel Creep
11515|1|12|Corrupted Soul Shard
11516|1|12|Cenarion Plant Salve
11522|1|4|Silver Totem of Aquementas
11562|1|12|Crystal Restore
11563|1|12|Crystal Force
11564|1|12|Crystal Ward
11565|1|12|Crystal Yield
11566|1|12|Crystal Charge
11567|1|12|Crystal Spire
11568|1|15|Torwa's Pouch
11569|1|12|Preserved Threshadon Meat
11570|1|12|Preserved Pheromone Mixture
11582|1|15|Fel Salve
11583|1|12|Cactus Apple
11584|1|0|Cactus Apple Surprise
11590|1|0|Mechanical Repair Kit
11602|1|13|Grim Guzzler Key
11603|3|2|Vilerend Slicer
11604|3|4|Dark Iron Plate
11605|2|4|Dark Iron Shoulders
11606|2|4|Dark Iron Mail
11607|3|2|Dark Iron Sunderer
11608|3|2|Dark Iron Pulverizer
11609|1|12|Altered Black Dragonflight Molt
11610|3|9|Plans: Dark Iron Pulverizer
11611|3|9|Plans: Dark Iron Sunderer
11612|3|9|Plans: Dark Iron Plate
11614|2|9|Plans: Dark Iron Mail
11615|2|9|Plans: Dark Iron Shoulders
11617|1|12|Eridan's Supplies
11622|2|12|Lesser Arcanum of Rumination
11623|3|4|Spritecaster Cape
11624|3|4|Kentic Amice
11625|3|4|Enthralled Sphere
11626|3|4|Blackveil Cape
11627|3|4|Fleetfoot Greaves
11628|3|2|Houndmaster's Bow
11629|3|2|Houndmaster's Rifle
11630|3|6|Rockshard Pellets
11631|3|4|Stoneshell Guard
11632|3|4|Earthslag Shoulders
11633|3|4|Spiderfang Carapace
11634|3|4|Silkweb Gloves
11635|3|2|Hookfang Shanker
11642|2|12|Lesser Arcanum of Constitution
11643|2|12|Lesser Arcanum of Tenacity
11644|2|12|Lesser Arcanum of Resilience
11645|2|12|Lesser Arcanum of Voracity
11646|2|12|Lesser Arcanum of Voracity
11647|2|12|Lesser Arcanum of Voracity
11648|2|12|Lesser Arcanum of Voracity
11649|2|12|Lesser Arcanum of Voracity
11662|3|4|Ban'thok Sash
11665|3|4|Ogreseer Fists
11668|1|12|Flute of Xavaric
11669|3|4|Naglering
11674|1|12|Jadefire Felbind
11675|3|4|Shadefiend Boots
11677|3|4|Graverot Cape
11678|3|4|Carapace of Anub'shiah
11679|3|4|Rubicund Armguards
11682|1|12|Eridan's Vial
11684|4|2|Ironfoe
11685|3|4|Splinthide Shoulders
11686|3|4|Girdle of Beastial Fury
11702|3|2|Grizzle's Skinner
11703|3|4|Stonewall Girdle
11722|3|4|Dregmetal Spaulders
11723|1|12|Goodsteel's Balanced Flameberge
11724|1|12|Overdue Package
11725|1|12|Solid Crystal Leg Shaft
11726|4|4|Savage Gladiator Chain
11727|1|12|Goodsteel Ledger
11728|3|4|Savage Gladiator Leggings
11729|3|4|Savage Gladiator Helm
11730|3|4|Savage Gladiator Grips
11731|3|4|Savage Gladiator Greaves
11732|2|9|Libram of Rumination
11733|2|9|Libram of Constitution
11734|2|9|Libram of Tenacity
11735|3|4|Ragefury Eyepatch
11736|2|9|Libram of Resilience
11737|2|9|Libram of Voracity
11742|2|1|Wayfarer's Knapsack
11743|2|2|Rockfist
11744|3|2|Bloodfist
11745|3|4|Fists of Phalanx
11746|3|4|Golem Skull Helm
11747|3|4|Flamestrider Robes
11748|3|2|Pyric Caduceus
11749|3|4|Searingscale Leggings
11750|3|2|Kindling Stave
11751|1|12|Burning Essence
11752|1|12|Black Blood of the Tormented
11753|1|12|Eye of Kajal
11754|2|12|Black Diamond
11755|3|4|Verek's Collar
11764|3|4|Cinderhide Armsplints
11765|3|4|Pyremail Wristguards
11766|3|4|Flameweave Cuffs
11767|3|4|Emberplate Armguards
11768|2|4|Incendic Bracers
11782|3|4|Boreal Mantle
11783|3|4|Chillsteel Girdle
11784|3|2|Arbiter's Blade
11785|3|4|Rock Golem Bulwark
11786|3|2|Stone of the Earth
11787|3|4|Shalehusk Boots
11802|3|4|Lavacrest Leggings
11803|3|2|Force of Magma
11804|1|12|Spraggle's Canteen
11805|3|2|Rubidium Hammer
11807|3|4|Sash of the Burning Heart
11808|4|4|Circle of Flame
11809|3|2|Flame Wrath
11810|3|4|Force of Will
11811|3|4|Smoking Heart of the Mountain
11812|3|4|Cape of the Fire Salamander
11813|2|9|Formula: Smoking Heart of the Mountain
11814|3|4|Molten Fists
11815|3|4|Hand of Justice
11816|3|2|Angerforge's Battle Axe
11817|3|2|Lord General's Sword
11818|1|12|Grimesilt Outhouse Key
11819|3|4|Second Wind
11820|3|4|Royal Decorated Armor
11821|3|4|Warstrife Leggings
11822|3|4|Omnicast Boots
11823|3|4|Luminary Kilt
11824|3|4|Cyclopean Band
11825|1|0|Pet Bombling
11826|1|0|Lil' Smoky
11827|2|9|Schematic: Lil' Smoky
11828|2|9|Schematic: Pet Bombling
11829|1|12|Un'Goro Ash
11830|1|12|Webbed Diemetradon Scale
11831|1|12|Webbed Pterrordax Scale
11832|3|4|Burst of Knowledge
11833|1|12|Gorishi Queen Lure
11834|1|12|Super Sticky Tar
11835|1|12|Gorishi Queen Brain
11837|1|12|Gorishi Scent Gland
11839|3|4|Chief Architect's Monocle
11840|1|4|Master Builder's Shirt
11841|3|4|Senior Designer's Pantaloons
11842|3|4|Lead Surveyor's Mantle
11843|1|12|Bank Voucher
11844|1|12|Pestlezugg's Un'Goro Report
11845|1|1|Handmade Leather Bag
11846|1|0|Wizbang's Special Brew
11847|1|4|Battered Cloak
11848|1|4|Flax Belt
11849|1|4|Rustmetal Bracers
11850|1|4|Short Duskbat Cape
11851|1|4|Scavenger Tunic
11852|1|4|Roamer's Leggings
11853|2|4|Rambling Boots
11854|2|2|Samophlange Screwdriver
11855|2|4|Tork Wrench
11856|2|2|Ceremonial Elven Blade
11857|2|2|Sanctimonial Rod
11858|2|4|Battlehard Cape
11859|2|4|Jademoon Orb
11860|2|2|Charged Lightning Rod
11861|2|4|Girdle of Reprisal
11862|2|4|White Bone Band
11863|2|2|White Bone Shredder
11864|2|2|White Bone Spear
11865|2|4|Rancor Boots
11866|3|4|Nagmara's Whipping Belt
11867|2|4|Maddening Gauntlets
11868|2|4|Choking Band
11869|2|4|Sha'ni's Ring
11870|2|4|Oblivion Orb
11871|2|4|Snarkshaw Spaulders
11872|2|4|Eschewal Greaves
11873|2|4|Ethereal Mist Cape
11874|2|4|Clouddrift Mantle
11875|2|4|Breezecloud Bracers
11876|2|4|Plainstalker Tunic
11882|2|4|Outrider Leggings
11883|1|15|A Dingy Fanny Pack
11884|2|4|Moonlit Amice
11885|1|12|Shadowforge Torch
11886|1|12|Urgent Message
11887|1|15|Cenarion Circle Cache
11888|2|4|Quintis' Research Gloves
11889|2|4|Bark Iron Pauldrons
11902|2|2|Linken's Sword of Mastery
11903|1|15|Cat Carrier (Corrupted Kitten)
11904|2|4|Spirit of Aquementas
11905|2|4|Linken's Boomerang
11906|2|2|Beastsmasher
11907|2|2|Beastslayer
11908|2|4|Archaeologist's Quarry Boots
11909|2|4|Excavator's Utility Belt
11910|2|4|Bejeweled Legguards
11911|2|4|Treetop Leggings
11912|1|15|Package of Empty Ooze Containers
11913|2|4|Clayridge Helm
11914|1|0|Empty Cursed Ooze Jar
11915|2|4|Shizzle's Drizzle Blocker
11916|2|4|Shizzle's Muzzle
11917|2|4|Shizzle's Nozzle Wiper
11918|2|4|Grotslab Gloves
11919|2|4|Cragplate Greaves
11920|3|2|Wraith Scythe
11921|3|2|Impervious Giant
11922|3|2|Blood-etched Blade
11923|3|2|The Hammer of Grace
11924|3|4|Robes of the Royal Crown
11925|3|4|Ghostshroud
11926|3|4|Deathdealer Breastplate
11927|3|4|Legplates of the Eternal Guardian
11928|3|4|Thaurissan's Royal Scepter
11929|3|4|Haunting Specter Leggings
11930|3|4|The Emperor's New Cape
11931|3|2|Dreadforge Retaliator
11932|3|2|Guiding Stave of Wisdom
11933|3|4|Imperial Jewel
11934|3|4|Emperor's Seal
11935|3|4|Magmus Stone
11936|2|4|Relic Hunter Belt
11937|1|15|Fat Sack of Coins
11938|1|15|Sack of Gems
11939|0|15|Shiny Bracelet
11940|0|15|Sparkly Necklace
11941|0|15|False Documents
11942|0|15|Legal Documents
11943|0|15|Deed to Thandol Span
11944|0|15|Dark Iron Baby Booties
11945|2|4|Dark Iron Ring
11946|2|4|Fire Opal Necklace
11947|1|12|Filled Cursed Ooze Jar
11948|1|0|Empty Tainted Ooze Jar
11949|1|12|Filled Tainted Ooze Jar
11950|1|0|Windblossom Berries
11951|1|0|Whipper Root Tuber
11952|1|0|Night Dragon's Breath
11953|1|0|Empty Pure Sample Jar
11954|1|12|Filled Pure Sample Jar
11955|1|15|Bag of Empty Ooze Containers
11962|3|4|Manacle Cuffs
11963|2|4|Penance Spaulders
11964|2|2|Swiftstrike Cudgel
11965|2|4|Quartz Ring
11966|1|15|Small Sack of Coins
11967|2|4|Zircon Band
11968|2|4|Amber Hoop
11969|2|4|Jacinth Circle
11970|2|4|Spinel Ring
11971|2|4|Amethyst Band
11972|2|4|Carnelian Loop
11973|2|4|Hematite Link
11974|2|4|Aquamarine Ring
11975|2|4|Topaz Ring
11976|2|4|Sardonyx Knuckle
11977|2|4|Serpentine Loop
11978|2|4|Jasper Link
11979|2|4|Peridot Circle
11980|2|4|Opal Ring
11981|2|4|Lead Band
11982|2|4|Viridian Band
11983|2|4|Chrome Ring
11984|2|4|Cobalt Ring
11985|2|4|Cerulean Ring
11986|2|4|Thallium Hoop
11987|2|4|Iridium Circle
11988|2|4|Tellurium Band
11989|2|4|Vanadium Loop
11990|2|4|Selenium Loop
11991|2|4|Quicksilver Ring
11992|2|4|Vermilion Band
11993|2|4|Clay Ring
11994|2|4|Coral Band
11995|2|4|Ivory Band
11996|2|4|Basalt Ring
11997|2|4|Greenstone Circle
11998|2|4|Jet Loop
11999|2|4|Lodestone Hoop
12000|2|2|Limb Cleaver
12001|2|4|Onyx Ring
12002|2|4|Marble Circle
12003|1|0|Dark Dwarven Lager
12004|2|4|Obsidian Band
12005|2|4|Granite Ring
12006|2|4|Meadow Ring
12007|2|4|Prairie Ring
12008|2|4|Savannah Ring
12009|2|4|Tundra Ring
12010|2|4|Fen Ring
12011|2|4|Forest Hoop
12012|2|4|Marsh Ring
12013|2|4|Desert Ring
12014|2|4|Arctic Ring
12015|2|4|Swamp Ring
12016|2|4|Jungle Ring
12017|2|4|Prismatic Band
12018|3|4|Conservator Helm
12019|2|4|Cerulean Talisman
12020|2|4|Thallium Choker
12021|3|4|Shieldplate Sabatons
12022|2|4|Iridium Chain
12023|2|4|Tellurium Necklace
12024|2|4|Vanadium Talisman
12025|2|4|Selenium Chain
12026|2|4|Quicksilver Pendant
12027|2|4|Vermilion Necklace
12028|2|4|Basalt Necklace
12029|2|4|Greenstone Talisman
12030|2|4|Jet Chain
12031|2|4|Lodestone Necklace
12032|2|4|Onyx Choker
12033|1|15|Thaurissan Family Jewels
12034|2|4|Marble Necklace
12035|2|4|Obsidian Pendant
12036|2|4|Granite Necklace
12037|1|7|Mystery Meat
12038|2|4|Lagrave's Seal
12039|2|4|Tundra Necklace
12040|2|4|Forest Pendant
12041|3|4|Windshear Leggings
12042|2|4|Marsh Chain
12043|2|4|Desert Choker
12044|2|4|Arctic Pendant
12045|2|4|Swamp Pendant
12046|2|4|Jungle Necklace
12047|2|4|Spectral Necklace
12048|2|4|Prismatic Pendant
12049|2|4|Splintsteel Armor
12050|2|4|Hazecover Boots
12051|2|4|Brazen Gauntlets
12052|2|4|Ring of the Moon
12053|2|4|Volcanic Rock Ring
12054|2|4|Demon Band
12055|2|4|Stardust Band
12056|2|4|Ring of the Heavens
12057|2|4|Dragonscale Band
12058|2|4|Demonic Bone Ring
12059|3|4|Conqueror's Medallion
12060|1|12|Shindrell's Note
12061|2|2|Blade of Reckoning
12062|2|2|Skilled Fighting Blade
12064|1|4|Gamemaster Hood
12065|2|4|Ward of the Elements
12066|2|4|Shaleskin Cape
12082|2|4|Wyrmhide Spaulders
12083|2|4|Valconian Sash
12102|2|4|Ring of the Aristocrat
12103|3|4|Star of Mystaria
12104|2|4|Brindlethorn Tunic
12105|2|4|Pridemail Leggings
12106|2|4|Boulderskin Breastplate
12107|2|4|Whispersilk Leggings
12108|2|4|Basaltscale Armor
12109|2|4|Azure Moon Amice
12110|2|4|Raincaster Drape
12111|2|4|Lavaplate Gauntlets
12112|2|4|Crypt Demon Bracers
12113|2|4|Sunborne Cape
12114|2|4|Nightfall Gloves
12115|2|4|Stalwart Clutch
12122|2|15|Kum'isha's Junk
12143|1|13|Dragonspine Key
12144|1|13|Eggscilloscope
12162|1|9|Plans: Hardened Iron Shortsword
12163|1|9|Plans: Moonsteel Broadsword
12164|1|9|Plans: Massive Iron Axe
12184|1|7|Raptor Flesh
12185|3|4|Bloodsail Admiral's Hat
12190|1|0|Dreamless Sleep Potion
12191|1|12|Silver Dawning's Lockbox
12192|1|12|Mist Veil's Lockbox
12202|1|7|Tiger Meat
12203|1|7|Red Wolf Meat
12204|1|7|Heavy Kodo Meat
12205|1|7|White Spider Meat
12206|1|7|Tender Crab Meat
12207|1|7|Giant Egg
12208|1|7|Tender Wolf Meat
12209|1|0|Lean Wolf Steak
12210|1|0|Roast Raptor
12211|1|0|Spiced Wolf Ribs
12212|1|0|Jungle Stew
12213|1|0|Carrion Surprise
12214|1|0|Mystery Stew
12215|1|0|Heavy Kodo Stew
12216|1|0|Spiced Chili Crab
12217|1|0|Dragonbreath Chili
12218|1|0|Monster Omelet
12219|1|12|Unadorned Seal of Ascension
12220|1|12|Intact Elemental Bracer
12223|1|7|Meaty Bat Wing
12224|1|0|Crispy Bat Wing
12225|1|2|Blump Family Fishing Pole
12226|1|9|Recipe: Crispy Bat Wing
12227|1|9|Recipe: Lean Wolf Steak
12228|1|9|Recipe: Roast Raptor
12229|1|9|Recipe: Hot Wolf Ribs
12230|1|12|Felwood Slime Sample
12231|1|9|Recipe: Jungle Stew
12232|1|9|Recipe: Carrion Surprise
12233|1|9|Recipe: Mystery Stew
12234|1|12|Corrupted Felwood Sample
12235|1|12|Un'Goro Slime Sample
12236|1|12|Pure Un'Goro Sample
12237|1|12|Fine Crab Chunks
12238|1|0|Darkshore Grouper
12239|1|9|Recipe: Dragonbreath Chili
12240|1|9|Recipe: Heavy Kodo Stew
12241|1|12|Collected Dragon Egg
12242|1|12|Sea Creature Bones
12243|3|2|Smoldering Claw
12247|2|2|Broad Bladed Knife
12248|2|2|Daring Dirk
12249|2|2|Merciless Axe
12250|2|2|Midnight Axe
12251|2|2|Big Stick
12252|2|2|Staff of Protection
12253|2|4|Brilliant Red Cloak
12254|2|4|Well Oiled Cloak
12255|2|4|Pale Leggings
12256|2|4|Cindercloth Leggings
12257|2|4|Heavy Notched Belt
12258|2|4|Serpent Clasp Belt
12259|2|2|Glinting Steel Dagger
12260|2|2|Searing Golden Blade
12261|2|9|Plans: Searing Golden Blade
12262|1|12|Empty Worg Pup Cage
12263|1|12|Caged Worg Pup
12264|1|15|Worg Carrier
12282|1|2|Worn Battleaxe
12283|1|12|Broodling Essence
12284|1|12|Draco-Incarcinatrix 900
12286|1|12|Eggscilloscope Prototype
12287|1|12|Collectronic Module
12288|1|12|Encased Corrupt Ooze
12289|1|12|Sea Turtle Remains
12291|1|12|Merged Ooze Sample
12292|1|12|Strangely Marked Box
12293|1|12|Fine Gold Thread
12295|2|4|Leggings of the People's Militia
12296|2|2|Spark of the People's Militia
12299|1|4|Netted Gloves
12300|1|12|Orb of Draconic Energy
12301|1|13|Bamboo Cage Key
12302|4|15|Reins of the Frostsaber
12303|4|15|Reins of the Nightsaber
12323|1|12|Unforged Seal of Ascension
12324|1|12|Forged Seal of Ascension
12325|3|15|Reins of the Primal Leopard
12326|3|15|Reins of the Tawny Sabercat
12327|3|15|Reins of the Golden Sabercat
12330|4|15|Horn of the Red Wolf
12334|1|12|Frostmaul Shards
12335|2|12|Gemstone of Smolderthorn
12336|2|12|Gemstone of Spirestone
12337|2|12|Gemstone of Bloodaxe
12339|1|12|Vaelan's Gift
12341|1|12|Blackwood Fruit Sample
12342|1|12|Blackwood Grain Sample
12343|1|12|Blackwood Nut Sample
12344|3|4|Seal of Ascension
12345|1|12|Bijou's Belongings
12346|1|12|Empty Cleansing Bowl
12347|1|12|Filled Cleansing Bowl
12349|1|12|Cliffspring River Sample
12350|1|12|Empty Sampling Tube
12351|4|15|Horn of the Arctic Wolf
12352|1|12|Doomrigger's Clasp
12353|4|15|White Stallion Bridle
12354|4|15|Palomino Bridle
12355|1|12|Talisman of Corruption
12356|1|12|Highperch Wyvern Egg
12358|1|12|Darkstone Tablet
12359|1|7|Thorium Bar
12360|2|7|Arcanite Bar
12361|2|7|Blue Sapphire
12363|2|7|Arcane Crystal
12364|2|7|Huge Emerald
12365|1|7|Dense Stone
12366|1|12|Thick Yeti Fur
12367|1|12|Pristine Yeti Horn
12368|1|12|Dawn's Gambit
12369|1|12|Scepter of Vectus
12382|2|13|Key to the City
12383|1|12|Moontouched Feather
12384|1|12|Cache of Mau'ari
12385|1|0|test
12402|1|12|Ancient Egg
12404|1|0|Dense Sharpening Stone
12405|2|4|Thorium Armor
12406|2|4|Thorium Belt
12408|2|4|Thorium Bracers
12409|2|4|Thorium Boots
12410|2|4|Thorium Helm
12411|1|12|Third Mosh'aru Tablet
12412|1|12|Fourth Mosh'aru Tablet
12414|2|4|Thorium Leggings
12415|2|4|Radiant Breastplate
12416|2|4|Radiant Belt
12417|2|4|Radiant Circlet
12418|2|4|Radiant Gloves
12419|2|4|Radiant Boots
12420|2|4|Radiant Leggings
12422|2|4|Imperial Plate Chest
12424|2|4|Imperial Plate Belt
12425|2|4|Imperial Plate Bracers
12426|2|4|Imperial Plate Boots
12427|2|4|Imperial Plate Helm
12428|2|4|Imperial Plate Shoulders
12429|2|4|Imperial Plate Leggings
12430|1|12|Frostsaber E'ko
12431|1|12|Winterfall E'ko
12432|1|12|Shardtooth E'ko
12433|1|12|Wildkin E'ko
12434|1|12|Chillwind E'ko
12435|1|12|Ice Thistle E'ko
12436|1|12|Frostmaul E'ko
12437|1|12|Ridgewell's Crate
12438|1|12|Tinkee's Letter
12440|1|0|Magic Knucklebone (DND)
12442|1|4|Charm Pouch (DND)
12443|1|4|Knucklebone Pouch (DND)
12444|1|12|Uncracked Chillwind Horn
12445|1|12|Felnok's Package
12446|1|2|Anvilmar Musket
12447|1|2|Thistlewood Bow
12448|1|2|Light Hunting Rifle
12449|1|2|Primitive Bow
12450|1|12|Juju Flurry
12451|1|12|Juju Power
12455|1|12|Juju Ember
12457|1|12|Juju Chill
12458|1|12|Juju Guile
12459|1|12|Juju Escape
12460|1|12|Juju Might
12462|4|4|Embrace of the Wind Serpent
12463|3|2|Drakefang Butcher
12464|3|4|Bloodfire Talons
12465|3|4|Nightfall Drape
12466|3|4|Dawnspire Cord
12467|1|12|Alien Egg
12468|0|2|Chilton Wand
12469|3|2|Mutilator
12470|3|4|Sandstalker Ankleguards
12471|3|4|Desertwalker Cane
12472|1|12|Krakle's Thermometer
12522|2|4|Bingles' Flying Gloves
12524|1|12|Blue-feathered Amulet
12525|1|12|Jaron's Supplies
12527|3|2|Ribsplitter
12528|3|2|The Judge's Gavel
12529|1|15|Smolderweb Carrier
12530|1|12|Spire Spider Egg
12531|3|2|Searing Needle
12532|3|2|Spire of the Stoneshaper
12533|1|0|Roughshod Pike
12534|1|12|Omokk's Head
12535|3|2|Doomforged Straightedge
12542|3|4|Funeral Pyre Vestment
12543|3|4|Songstone of Ironforge
12544|3|4|Thrall's Resolve
12545|3|4|Eye of Orgrimmar
12546|3|4|Aristocratic Cuffs
12547|3|4|Mar Alom's Grip
12548|3|4|Magni's Will
12549|3|4|Braincage
12550|3|4|Runed Golem Shackles
12551|3|4|Stoneshield Cloak
12552|3|4|Blisterbane Wrap
12553|3|4|Swiftwalker Boots
12554|3|4|Hands of the Exalted Herald
12555|3|4|Battlechaser's Greaves
12556|3|4|High Priestess Boots
12557|3|4|Ebonsteel Spaulders
12558|1|12|Blue-feathered Necklace
12562|1|12|Important Blackrock Documents
12563|1|12|Warlord Goretooth's Command
12564|1|12|Assassination Note
12565|1|15|Winna's Kitten Carrier
12566|1|12|Hardened Flasket
12567|1|12|Filled Flasket
12582|3|2|Keris of Zul'Serak
12583|3|2|Blackhand Doomsaw
12584|4|2|Grand Marshal's Longsword
12585|1|15|Stormwind Medallion
12586|1|0|Immature Venom Sac
12587|3|4|Eye of Rend
12588|3|4|Bonespike Shoulder
12589|3|4|Dustfeather Sash
12590|4|2|Felstriker
12592|4|2|Blackblade of Shahram
12602|3|4|Draconian Deflector
12603|3|4|Nightbrace Tunic
12604|3|4|Starfire Tiara
12605|3|2|Serpentine Skuller
12606|3|4|Crystallized Girdle
12607|3|7|Brilliant Chromatic Scale
12608|3|4|Butcher's Apron
12609|3|4|Polychromatic Visionwrap
12610|2|4|Runic Plate Shoulders
12611|2|4|Runic Plate Boots
12612|2|4|Runic Plate Helm
12613|2|4|Runic Breastplate
12614|2|4|Runic Plate Leggings
12615|2|4|Savage Mail Tunic
12616|2|4|Savage Mail Boots
12617|2|4|Savage Mail Shoulders
12618|3|4|Enchanted Thorium Breastplate
12619|3|4|Enchanted Thorium Leggings
12620|3|4|Enchanted Thorium Helm
12621|3|2|Demonfork
12622|1|12|Shardtooth Meat
12623|1|12|Chillwind Meat
12624|3|4|Wildthorn Mail
12625|3|4|Dawnbringer Shoulders
12626|3|4|Funeral Cuffs
12627|1|12|Temporal Displacer
12628|3|4|Demon Forged Breastplate
12630|1|12|Head of Rend Blackhand
12631|3|4|Fiery Plate Gauntlets
12632|3|4|Storm Gauntlets
12633|3|4|Whitesoul Helm
12634|3|4|Chiselbrand Girdle
12635|1|12|Simple Parchment
12636|3|4|Helm of the Great Chief
12637|3|4|Backusarian Gauntlets
12638|1|12|Andorhal Watch
12639|4|4|Stronghold Gauntlets
12640|4|4|Lionheart Helm
12641|4|4|Invulnerable Mail
12642|1|12|Cleansed Infernal Orb
12643|1|0|Dense Weightstone
12644|1|7|Dense Grinding Stone
12645|2|0|Thorium Shield Spike
12646|1|12|Infus Emerald
12647|1|12|Felhas Ruby
12648|1|12|Imprisoned Felhound Spirit
12649|1|12|Imprisoned Infernal Spirit
12650|1|0|Attuned Dampener
12651|3|2|Blackcrow
12652|1|12|Bijou's Reconnaissance Report
12653|3|2|Riphook
12654|3|6|Doomshot
12655|1|7|Enchanted Thorium Bar
12662|2|7|Demonic Rune
12663|1|12|Glyphed Oaken Branch
12682|2|9|Plans: Thorium Armor
12683|2|9|Plans: Thorium Belt
12684|2|9|Plans: Thorium Bracers
12685|2|9|Plans: Radiant Belt
12687|2|9|Plans: Imperial Plate Shoulders
12688|2|9|Plans: Imperial Plate Belt
12689|2|9|Plans: Radiant Breastplate
12690|2|9|Plans: Imperial Plate Bracers
12691|2|9|Pattern: Wildthorn Mail
12692|2|9|Plans: Thorium Shield Spike
12693|2|9|Plans: Thorium Boots
12694|2|9|Plans: Thorium Helm
12695|2|9|Plans: Radiant Gloves
12696|3|9|Plans: Demon Forged Breastplate
12697|2|9|Plans: Radiant Boots
12698|3|9|Plans: Dawnbringer Shoulders
12699|3|9|Plans: Fiery Plate Gauntlets
12700|2|9|Plans: Imperial Plate Boots
12701|2|9|Plans: Imperial Plate Helm
12702|2|9|Plans: Radiant Circlet
12703|3|9|Pattern: Storm Gauntlets
12704|2|9|Plans: Thorium Leggings
12705|2|9|Plans: Imperial Plate Chest
12706|2|9|Plans: Runic Plate Shoulders
12707|2|9|Plans: Runic Plate Boots
12708|1|12|Crossroads' Supply Crates
12709|3|2|Pip's Skinner
12710|1|12|Glowing Hunk of the Beast's Flesh
12711|3|9|Plans: Whitesoul Helm
12712|1|0|Warosh's Mojo
12713|2|9|Plans: Radiant Leggings
12714|2|9|Plans: Runic Plate Helm
12715|2|9|Plans: Imperial Plate Leggings
12716|3|9|Pattern: Helm of the Great Chief
12717|4|9|Plans: Lionheart Helm
12718|2|9|Plans: Runic Breastplate
12719|2|9|Plans: Runic Plate Leggings
12720|4|9|Plans: Stronghold Gauntlets
12721|1|12|Good Luck Half-Charm
12722|1|12|Good Luck Other-Half-Charm
12723|1|12|Good Luck Charm
12724|1|12|Janice's Parcel
12725|3|9|Plans: Enchanted Thorium Helm
12726|3|9|Plans: Enchanted Thorium Leggings
12727|3|9|Plans: Enchanted Thorium Breastplate
12728|4|9|Pattern: Invulnerable Mail
12730|1|12|Warosh's Scroll
12731|4|12|Pristine Hide of the Beast
12732|1|12|Incendia Agave
12733|1|12|Sacred Frostsaber Meat
12734|1|12|Enchanted Scarlet Thread
12735|2|12|Frayed Abomination Stitching
12736|1|12|Frostwhisper's Embalming Fluid
12737|1|12|Gloom Weed
12738|1|12|Dalson Outhouse Key
12739|1|12|Dalson Cabinet Key
12740|1|12|Fifth Mosh'aru Tablet
12741|1|12|Sixth Mosh'aru Tablet
12752|4|4|Cap of the Scarlet Savant
12753|2|12|Skin of Shadow
12756|4|4|Leggings of Arcana
12757|4|4|Breastplate of Bloodthirst
12762|1|12|Secrecy of Plans
12763|1|0|Un'Goro Etherfruit
12764|2|2|Thorium Greatsword
12765|1|12|Secret Note #1
12766|1|12|Secret Note #2
12768|1|12|Secret Note #3
12769|3|2|Bleakwood Hew
12770|1|12|Bijou's Information
12771|1|12|Empty Firewater Flask
12772|2|2|Inlaid Thorium Hammer
12773|2|2|Ornate Thorium Handaxe
12774|3|2|Dawn's Edge
12775|2|2|Huge Thorium Battleaxe
12776|3|2|Enchanted Battlehammer
12777|3|2|Blazing Rapier
12778|1|12|Document Chest
12779|2|2|Rune Edge
12780|1|12|General Drakkisath's Command
12781|3|2|Serenity
12782|3|2|Corruption
12783|3|2|Heartseeker
12784|3|2|Arcanite Reaper
12785|1|12|Incendia Powder
12790|3|2|Arcanite Champion
12791|3|2|Barman Shanker
12792|2|2|Volcanic Hammer
12793|3|4|Mixologist's Tunic
12794|3|2|Masterwork Stormhammer
12795|3|2|Blood Talon
12796|3|2|Hammer of the Titans
12797|3|2|Frostguard
12798|3|2|Annihilator
12799|2|7|Large Opal
12800|2|7|Azerothian Diamond
12802|3|2|Darkspear
12803|2|7|Living Essence
12804|1|7|Powerful Mojo
12805|2|4|Orb of Fire
12806|3|12|Unforged Rune Covered Breastplate
12807|1|12|Scourge Banner
12808|2|7|Essence of Undeath
12809|2|7|Guardian Stone
12810|1|7|Enchanted Leather
12811|2|7|Righteous Orb
12812|3|12|Unfired Plate Gauntlets
12813|1|12|Flask of Mystery Goo
12814|1|12|Flame in a Bottle
12815|1|12|Beacon Torch
12816|2|9|Plans: Thorium Greatsword
12817|3|9|Plans: Bleakwood Hew
12818|2|9|Plans: Inlaid Thorium Hammer
12819|2|9|Plans: Ornate Thorium Handaxe
12820|1|0|Winterfall Firewater
12821|3|9|Plans: Dawn's Edge
12822|1|12|Toxic Horror Droplet
12823|1|9|Plans: Huge Thorium Battleaxe
12824|2|9|Plans: Enchanted Battlehammer
12825|2|9|Plans: Blazing Rapier
12826|2|9|Plans: Rune Edge
12827|2|9|Plans: Serenity
12828|2|9|Plans: Volcanic Hammer
12829|1|12|Winterfall Crate
12830|1|9|Plans: Corruption
12831|3|9|Plans: Blood Talon
12832|3|9|Plans: Darkspear
12833|3|9|Plans: Hammer of the Titans
12834|3|9|Plans: Arcanite Champion
12835|3|9|Plans: Annihilator
12836|3|9|Plans: Frostguard
12837|3|9|Plans: Masterwork Stormhammer
12838|3|9|Plans: Arcanite Reaper
12839|3|9|Plans: Heartseeker
12840|1|12|Minion's Scourgestone
12841|1|12|Invader's Scourgestone
12842|1|12|Crudely-written Log
12843|2|12|Corruptor's Scourgestone
12844|2|12|Argent Dawn Valor Token
12845|1|12|Medallion of Faith
12846|1|4|Argent Dawn Commission
12847|1|12|Soul Stained Pike
12848|1|12|Blood Stained Pike
12849|2|12|Demon Kissed Sack
12871|4|15|Chromatic Carapace
12884|1|0|Arnak's Hoof
12885|1|0|Pamela's Doll
12886|1|0|Pamela's Doll's Head
12887|1|12|Pamela's Doll's Left Side
12888|1|12|Pamela's Doll's Right Side
12891|1|12|Jaron's Pick
12894|1|0|Joseph's Wedding Ring
12895|4|4|Breastplate of the Chromatic Flight
12896|1|12|First Relic Fragment
12897|1|12|Second Relic Fragment
12898|1|12|Third Relic Fragment
12899|1|12|Fourth Relic Fragment
12900|1|12|Annals of Darrowshire
12903|4|4|Legguards of the Chromatic Defier
12904|2|4|Shawn's Super Special Swami Hat
12905|3|4|Wildfire Cape
12906|1|12|Purified Moonwell Water
12907|1|12|Corrupt Moonwell Water
12922|1|0|Empty Canteen
12923|1|12|Awbee's Scale
12924|1|0|Ritual Candle
12925|1|12|Arikara Serpent Skin
12926|3|4|Flaming Band
12927|3|4|Truestrike Shoulders
12928|1|12|Umi's Mechanical Yeti
12929|3|4|Emberfury Talisman
12930|3|4|Briarwood Reed
12935|3|4|Warmaster Legguards
12936|3|4|Battleborn Armbraces
12938|1|12|Blood of Heroes
12939|3|2|Dal'Rend's Tribal Guardian
12940|3|2|Dal'Rend's Sacred Charge
12942|1|12|Panther Cage Key
12945|4|4|Legplates of the Chromatic Defier
12946|1|12|Hypercapacitor Gizmo
12947|6|4|Alex's Ring of Audacity
12952|3|4|Gyth's Skull
12953|3|4|Dragoneye Coif
12954|1|12|Davil's Libram
12955|1|12|Redpath's Shield
12956|1|12|Skull of Horgus
12957|1|12|Shattered Sword of Marduk
12958|1|9|Recipe: Transmute Arcanite
12960|3|4|Tribal War Feathers
12961|1|4|JEFF TEST SHIELD
12962|1|4|JEFF TEST GLOVES
12963|3|4|Blademaster Leggings
12964|3|4|Tristam Legguards
12965|3|4|Spiritshroud Leggings
12966|3|4|Blackmist Armguards
12967|3|4|Bloodmoon Cloak
12968|3|4|Frostweaver Cape
12969|3|2|Seeping Willow
12970|3|4|General's Ceremonial Plate
12971|1|2|JEFF TEST SWORD
12972|1|2|JEFF TEST SWORD II
12973|1|13|Scarlet Cannonball
12974|3|2|The Black Knight
12975|3|2|Prospector Axe
12976|3|2|Ironpatch Blade
12977|3|4|Magefist Gloves
12978|3|4|Stormbringer Belt
12979|3|4|Firebane Cloak
12982|3|4|Silver-linked Footguards
12983|3|2|Rakzur Club
12984|3|2|Skycaller
12985|3|4|Ring of Defense
12987|3|4|Darkweave Breeches
12988|3|4|Starsight Tunic
12989|3|2|Gargoyle's Bite
12990|3|2|Razor's Edge
12992|3|2|Searing Blade
12994|3|4|Thorbia's Gauntlets
12996|3|4|Band of Purification
12997|3|4|Redbeard Crest
12998|3|4|Magician's Mantle
12999|3|4|Drakewing Bands
13000|3|2|Staff of Hale Magefire
13001|3|4|Maiden's Circle
13002|3|4|Lady Alizabeth's Pendant
13003|3|2|Lord Alexander's Battle Axe
13004|3|2|Torch of Austen
13005|3|4|Amy's Blanket
13006|3|2|Mass of McGowan
13007|3|4|Mageflame Cloak
13008|3|4|Dalewind Trousers
13009|3|4|Cow King's Hide
13010|3|4|Dreamsinger Legguards
13011|3|4|Silver-lined Belt
13012|3|4|Yorgen Bracers
13013|3|4|Elder Wizard's Mantle
13014|3|2|Axe of Rin'ji
13015|3|2|Serathil
13016|3|2|Killmaim
13017|3|2|Hellslayer Battle Axe
13018|3|2|Executioner's Cleaver
13019|3|2|Harpyclaw Short Bow
13020|3|2|Skystriker Bow
13021|3|2|Needle Threader
13022|3|2|Gryphonwing Long Bow
13023|3|2|Eaglehorn Long Bow
13024|3|2|Beazel's Basher
13025|3|2|Deadwood Sledge
13026|3|2|Heaven's Light
13027|3|2|Bonesnapper
13028|3|2|Bludstone Hammer
13029|3|4|Umbral Crystal
13030|3|4|Basilisk Bone
13031|3|4|Orb of Mistmantle
13032|3|2|Sword of Corruption
13033|3|2|Zealot Blade
13034|3|2|Speedsteel Rapier
13035|3|2|Serpent Slicer
13036|3|2|Assassination Blade
13037|3|2|Crystalpine Stinger
13038|3|2|Swiftwind
13039|3|2|Skull Splitting Crossbow
13040|3|2|Heartseeking Crossbow
13041|3|2|Guardian Blade
13042|3|2|Sword of the Magistrate
13043|3|2|Blade of the Titans
13044|3|2|Demonslayer
13045|3|2|Viscous Hammer
13046|3|2|Blanchard's Stout
13047|3|2|Twig of the World Tree
13048|3|2|Looming Gavel
13049|3|2|Deanship Claymore
13051|3|2|Witchfury
13052|3|2|Warmonger
13053|3|2|Doombringer
13054|3|2|Grim Reaper
13055|3|2|Bonechewer
13056|3|2|Frenzied Striker
13057|3|2|Bloodpike
13058|3|2|Khoo's Point
13059|3|2|Stoneraven
13060|3|2|The Needler
13062|3|2|Thunderwood
13063|3|2|Starfaller
13064|3|2|Jaina's Firestarter
13065|3|2|Wand of Allistarj
13066|3|4|Wyrmslayer Spaulders
13067|3|4|Hydralick Armor
13068|3|4|Obsidian Greaves
13070|3|4|Sapphiron's Scale Boots
13071|3|4|Plated Fist of Hakoo
13072|3|4|Stonegrip Gauntlets
13073|3|4|Mugthol's Helm
13074|3|4|Golem Shard Leggings
13075|3|4|Direwing Legguards
13076|3|4|Giantslayer Bracers
13077|3|4|Girdle of Uther
13079|3|4|Shield of Thorsen
13080|3|4|Widow's Clutch
13081|3|4|Skullance Shield
13082|3|4|Mountainside Buckler
13083|3|4|Garrett Family Crest
13084|3|4|Kaleidoscope Chain
13085|3|4|Horizon Choker
13086|4|15|Reins of the Winterspring Frostsaber
13087|3|4|River Pride Choker
13088|3|4|Gazlowe's Charm
13089|3|4|Skibi's Pendant
13090|3|4|Breastplate of the Chosen
13091|3|4|Medallion of Grand Marshal Morris
13093|3|4|Blush Ember Ring
13094|3|4|The Queen's Jewel
13095|3|4|Assault Band
13096|3|4|Band of the Hierophant
13097|3|4|Thunderbrow Ring
13098|3|4|Painweaver Band
13099|3|4|Moccasins of the White Hare
13100|3|4|Furen's Boots
13101|3|4|Wolfrunner Shoes
13102|3|4|Cassandra's Grace
13103|3|4|Pads of the Venom Spider
13105|3|4|Sutarn's Ring
13106|3|4|Glowing Magical Bracelets
13107|3|4|Magiskull Cuffs
13108|3|4|Tigerstrike Mantle
13109|3|4|Blackflame Cape
13110|3|4|Wolffear Harness
13111|3|4|Sandals of the Insurgent
13112|3|4|Winged Helm
13113|3|4|Feathermoon Headdress
13114|3|4|Troll's Bane Leggings
13115|3|4|Sheepshear Mantle
13116|3|4|Spaulders of the Unseen
13117|3|4|Ogron's Sash
13118|3|4|Serpentine Sash
13119|3|4|Enchanted Kodo Bracers
13120|3|4|Deepfury Bracers
13121|3|4|Wing of the Whelpling
13122|3|4|Dark Phantom Cape
13123|3|4|Dreamwalker Armor
13124|3|4|Ravasaur Scale Boots
13125|3|4|Elven Chain Boots
13126|3|4|Battlecaller Gauntlets
13127|3|4|Frostreaver Crown
13128|3|4|High Bergg Helm
13129|3|4|Firemane Leggings
13130|3|4|Windrunner Legguards
13131|3|4|Sparkleshell Mantle
13132|3|4|Skeletal Shoulders
13133|3|4|Drakesfire Epaulets
13134|3|4|Belt of the Gladiator
13135|3|4|Lordly Armguards
13136|3|2|Lil Timmy's Peashooter
13137|3|2|Ironweaver
13138|3|2|The Silencer
13139|3|2|Guttbuster
13140|1|12|Blood Red Key
13141|3|4|Tooth of Gnarr
13142|3|4|Brigam Girdle
13143|4|4|Mark of the Dragon Lord
13144|3|4|Serenity Belt
13145|3|4|Enormous Ogre Belt
13146|3|2|Shell Launcher Shotgun
13148|3|2|Chillpike
13149|1|0|Eldarathian Tome of Summoning Vol. 1
13151|1|0|The Mystic Studies of Hor'ank
13152|1|0|The Story With No Conclusion
13153|1|0|Tome of Mal'cin Vorail
13154|1|0|Jael'marin's Studies of the Arcane
13155|1|0|Resonating Skull
13156|1|0|Mystic Crystal
13157|1|12|Fetid Skull
13158|1|12|Words of the High Chief
13159|1|12|Bone Dust
13161|3|2|Trindlehaven Staff
13162|3|4|Reiver Claws
13163|3|2|Relentless Scythe
13164|3|4|Heart of the Scale
13166|3|4|Slamshot Shoulders
13167|3|2|Fist of Omokk
13168|3|4|Plate of the Shaman King
13169|3|4|Tressermane Leggings
13170|3|4|Skyshroud Leggings
13171|2|4|Smokey's Lighter
13172|1|12|Grimm's Premium Tobacco
13173|3|2|Flightblade Throwing Axe
13174|1|12|Plagued Flesh Sample
13175|2|2|Voone's Twitchbow
13176|1|12|Scourge Data
13177|3|4|Talisman of Evasion
13178|3|4|Rosewine Circle
13179|3|4|Brazecore Armguards
13180|1|12|Stratholme Holy Water
13181|3|4|Demonskin Gloves
13182|3|2|Phase Blade
13183|3|2|Venomspitter
13184|3|4|Fallbrush Handgrips
13185|3|4|Sunderseer Mantle
13186|1|12|Empty Felstone Field Bottle
13187|1|12|Empty Dalson's Tears Bottle
]==],
[==[
13188|1|12|Empty Writhing Haunt Bottle
13189|1|12|Empty Gahrron's Withering Bottle
13190|1|12|Filled Felstone Field Bottle
13191|1|12|Filled Dalson's Tears Bottle
13192|1|12|Filled Writhing Haunt Bottle
13193|1|12|Filled Gahrron's Withering Bottle
13194|1|12|Felstone Field Cauldron Key
13195|1|12|Dalson's Tears Cauldron Key
13196|1|12|Gahrron's Withering Cauldron Key
13197|1|12|Writhing Haunt Cauldron Key
13198|3|2|Hurd Smasher
13199|3|4|Crushridge Bindings
13202|1|12|Extended Annals of Darrowshire
13203|3|4|Armswake Cloak
13204|3|2|Bashguuder
13205|3|4|Rhombeard Protector
13206|3|4|Wolfshear Leggings
13207|1|12|Shadow Lord Fel'dan's Head
13208|3|4|Bleak Howler Armguards
13209|3|4|Seal of the Dawn
13210|3|4|Pads of the Dread Wolf
13211|3|4|Slashclaw Bracers
13212|3|4|Halycon's Spiked Collar
13213|3|4|Smolderweb's Eye
13214|0|4|TestBoots - Puffed Mail Green
13216|2|4|Crown of the Penitent
13217|2|4|Band of the Penitent
13218|3|2|Fang of the Crystal Spider
13223|1|12|Stratholme Courier's Pouch
13243|3|4|Argent Defender
13244|3|4|Gilded Gauntlets
13245|3|4|Kresh's Back
13246|3|2|Argent Avenger
13247|2|15|Quartermaster Zigris' Footlocker
13248|3|2|Burstshot Harquebus
13249|3|2|Argent Crusader
13250|1|12|Head of Balnazzar
13251|1|12|Head of Baron Rivendare
13252|3|4|Cloudrunner Girdle
13253|3|4|Hands of Power
13254|3|4|Astral Guard
13255|3|4|Trueaim Gauntlets
13257|3|4|Demonic Runed Spaulders
13258|3|4|Slaghide Gauntlets
13259|3|4|Ribsteel Footguards
13260|3|4|Wind Dancer Boots
13261|3|4|Globe of D'sak
13262|5|2|Ashbringer
13282|3|4|Ogreseer Tower Boots
13283|3|4|Magus Ring
13284|3|4|Swiftdart Battleboots
13285|3|2|The Blackrock Slicer
13286|3|2|Rivenspike
13287|2|9|Pattern: Raptor Hide Harness
13288|2|9|Pattern: Raptor Hide Belt
13289|1|12|Egan's Blaster
13302|1|13|Market Row Postbox Key
13303|1|13|Crusaders' Square Postbox Key
13304|1|13|Festival Lane Postbox Key
13305|1|13|Elders' Square Postbox Key
13306|1|13|King's Square Postbox Key
13307|1|13|Ezra Grimm's Postbox Key
13308|1|9|Schematic: Ice Deflector
13309|1|9|Schematic: Lovingly Crafted Boomstick
13310|1|9|Schematic: Accurate Scope
13311|1|9|Schematic: Mechanical Dragonling
13313|1|12|Sacred Highborne Writings
13314|4|4|Alanna's Embrace
13315|2|4|Testament of Hope
13317|4|15|Whistle of the Ivory Raptor
13320|1|12|Arcane Quickener
13321|3|15|Green Mechanostrider
13322|3|15|Unpainted Mechanostrider
13323|3|15|Purple Mechanostrider
13324|3|15|Red & Blue Mechanostrider
13325|3|15|Fluorescent Green Mechanostrider
13326|4|15|White Mechanostrider Mod A
13327|4|15|Icy Blue Mechanostrider Mod A
13328|4|15|Black Ram
13329|4|15|Frost Ram
13330|1|1|Dereks Radish Bag
13331|3|15|Red Skeletal Horse
13332|3|15|Blue Skeletal Horse
13333|3|15|Brown Skeletal Horse
13334|4|15|Green Skeletal Warhorse
13335|3|15|Deathcharger's Reins
13340|3|4|Cape of the Black Baron
13342|1|15|Pet Fish
13343|1|15|Pet Stone
13344|3|4|Dracorian Gauntlets
13345|3|4|Seal of Rivendare
13346|3|4|Robes of the Exalted
13347|2|12|Crystal of Zin-Malor
13348|3|2|Demonshear
13349|3|2|Scepter of the Unholy
13350|1|12|Insignia of the Black Guard
13351|1|12|Crimson Hammersmith's Apron
13352|1|12|Vosh'gajin's Snakestone
13353|4|4|Book of the Dead
13354|1|12|Ectoplasmic Resonator
13356|1|12|Somatic Intensifier
13357|1|12|Osseous Agitator
13358|3|4|Wyrmtongue Shoulders
13359|3|4|Crown of Tyranny
13360|3|2|Gift of the Elven Magi
13361|3|2|Skullforge Reaver
13362|0|15|Letter from the Front
13363|0|15|Municipal Proclamation
13364|0|15|Ezra Grimm's Advertisement
13365|0|15|Town Meeting Notice
13366|0|15|Ingenious Toy
13367|0|0|Wrapped Gift
13368|3|2|Bonescraper
13369|3|4|Fire Striders
13370|1|12|Vitreous Focuser
13371|2|4|Father Flame
13372|3|2|Slavedriver's Cane
13373|3|4|Band of Flesh
13374|3|4|Soulstealer Mantle
13375|3|4|Crest of Retribution
13376|3|4|Royal Tribunal Cloak
13377|3|6|Miniature Cannon Balls
13378|3|4|Songbird Blouse
13379|3|4|Piccolo of the Flaming Fire
13380|3|2|Willey's Portable Howitzer
13381|3|4|Master Cannoneer Boots
13382|3|4|Cannonball Runner
13383|3|4|Woollies of the Prancing Minstrel
13384|3|4|Rainbow Girdle
13385|3|4|Tome of Knowledge
13386|3|4|Archivist Cape
13387|3|4|Foresight Girdle
13388|3|4|The Postmaster's Tunic
13389|3|4|The Postmaster's Trousers
13390|3|4|The Postmaster's Band
13391|3|4|The Postmaster's Treads
13392|3|4|The Postmaster's Seal
13393|3|2|Malown's Slam
13394|3|4|Skul's Cold Embrace
13395|3|4|Skul's Fingerbone Claws
13396|3|2|Skul's Ghastly Touch
13397|3|4|Stoneskin Gargoyle Cape
13398|3|4|Boots of the Shrieker
13399|3|2|Gargoyle Shredder Talons
13400|3|4|Vambraces of the Sadist
13401|3|2|The Cruel Hand of Timmy
13402|3|4|Timmy's Galoshes
13403|3|4|Grimgore Noose
13404|3|4|Mask of the Unforgiven
13405|3|4|Wailing Nightbane Pauldrons
13408|3|2|Soul Breaker
13409|3|4|Tearfall Bracers
13422|1|7|Stonescale Eel
13423|1|7|Stonescale Oil
13442|1|0|Mighty Rage Potion
13443|1|0|Superior Mana Potion
13444|1|0|Major Mana Potion
13445|1|0|Elixir of Greater Defense
13446|1|0|Major Healing Potion
13447|1|0|Elixir of the Sages
13448|1|12|The Deed to Caer Darrow
13450|1|12|The Deed to Southshore
13451|1|12|The Deed to Tarren Mill
13452|1|0|Elixir of the Mongoose
13453|1|0|Elixir of Brute Force
13454|1|0|Greater Arcane Elixir
13455|1|0|Greater Stoneshield Potion
13456|1|0|Greater Frost Protection Potion
13457|1|0|Greater Fire Protection Potion
13458|1|0|Greater Nature Protection Potion
13459|1|0|Greater Shadow Protection Potion
13460|1|0|Greater Holy Protection Potion
13461|1|0|Greater Arcane Protection Potion
13462|1|0|Purification Potion
13463|1|7|Dreamfoil
13464|1|7|Golden Sansam
13465|1|7|Mountain Silversage
13466|1|7|Plaguebloom
13467|1|7|Icecap
13468|2|7|Black Lotus
13469|1|12|Head of Weldon Barov
13470|1|12|Head of Alexi Barov
13471|1|12|The Deed to Brill
13473|2|4|Felstone Good Luck Charm
13474|2|2|Farmer Dalson's Shotgun
13475|2|4|Dalson Family Wedding Ring
13476|2|9|Recipe: Mighty Rage Potion
13477|1|9|Recipe: Superior Mana Potion
13478|1|9|Recipe: Elixir of Superior Defense
13479|2|9|Recipe: Elixir of the Sages
13480|1|9|Recipe: Major Healing Potion
13481|2|9|Recipe: Elixir of Brute Force
13482|2|9|Recipe: Transmute Air to Fire
13483|2|9|Recipe: Transmute Fire to Earth
13484|2|9|Recipe: Transmute Earth to Water
13485|2|9|Recipe: Transmute Water to Air
13486|2|9|Recipe: Transmute Undeath to Water
13487|2|9|Recipe: Transmute Water to Undeath
13488|2|9|Recipe: Transmute Life to Earth
13489|2|9|Recipe: Transmute Earth to Life
13490|2|9|Recipe: Greater Stoneshield Potion
13491|2|9|Recipe: Elixir of the Mongoose
13492|2|9|Recipe: Purification Potion
13493|2|9|Recipe: Greater Arcane Elixir
13494|2|9|Recipe: Greater Fire Protection Potion
13495|2|9|Recipe: Greater Frost Protection Potion
13496|2|9|Recipe: Greater Nature Protection Potion
13497|2|9|Recipe: Greater Arcane Protection Potion
13498|3|4|Handcrafted Mastersmith Leggings
13499|2|9|Recipe: Greater Shadow Protection Potion
13500|2|9|Recipe: Greater Holy Protection Potion
13501|2|9|Recipe: Major Mana Potion
13502|3|4|Handcrafted Mastersmith Girdle
13503|2|4|Alchemist's Stone
13505|4|2|Runeblade of Baron Rivendare
13506|1|0|Flask of Petrification
13507|1|12|Cliffwatcher Longhorn Report
13508|2|0|Eye of Arachnida
13509|2|0|Clutch of Foresight
13510|1|0|Flask of the Titans
13511|1|0|Flask of Distilled Wisdom
13512|1|0|Flask of Supreme Power
13513|1|0|Flask of Chromatic Resistance
13514|2|0|Wail of the Banshee
13515|3|4|Ramstein's Lightning Bolts
13517|1|9|Recipe: Alchemist's Stone
13518|2|9|Recipe: Flask of Petrification
13519|2|9|Recipe: Flask of the Titans
13520|2|9|Recipe: Flask of Distilled Wisdom
13521|2|9|Recipe: Flask of Supreme Power
13522|2|9|Recipe: Flask of Chromatic Resistance
13523|1|12|Blood of Innocents
13524|3|4|Skull of Burning Shadows
13525|2|4|Darkbind Fingers
13526|2|4|Flamescarred Girdle
13527|2|4|Lavawalker Greaves
13528|2|4|Twilight Void Bracers
13529|3|4|Husk of Nerub'enkan
13530|2|4|Fangdrip Runners
13531|2|4|Crypt Stalker Leggings
13532|2|4|Darkspinner Claws
13533|2|4|Acid-etched Pauldrons
13534|3|2|Banshee Finger
13535|2|4|Coldtouch Phantom Wraps
13536|1|12|Horn of Awakening
13537|2|4|Chillhide Bracers
13538|2|4|Windshrieker Pauldrons
13539|2|4|Banshee's Touch
13542|1|12|Demon Box
13543|1|12|Krastinov's Bag of Horrors UNUSED
13544|2|4|Spectral Essence
13545|1|12|Shellfish
13546|1|0|Bloodbelly Fish
13562|1|0|Remains of Trey Lightforge
13582|3|15|Zergling Leash
13583|3|15|Panda Collar
13584|3|15|Diablo Stone
13585|1|12|Keepsake of Remembrance
13602|1|4|Greater Spellstone
13603|1|4|Major Spellstone
13624|1|12|Soulbound Keepsake
13626|1|12|Human Head of Ras Frostwhisper
13699|1|4|Firestone
13700|1|4|Greater Firestone
13701|1|4|Major Firestone
13702|1|12|Doom Weed
13703|1|0|Kodo Bone
13704|1|13|Skeleton Key
13724|1|0|Enriched Manna Biscuit
13725|1|12|Krastinov's Bag of Horrors
13752|1|12|Soulbound Keepsake
13754|1|7|Raw Glossy Mightfish
13755|1|0|Raw Winter Squid
13756|1|7|Raw Summer Bass
13757|1|7|Lightning Eel
13758|1|7|Raw Redgill
13759|1|7|Raw Nightfin Snapper
13760|1|7|Raw Sunscale Salmon
13761|1|0|Frozen Eggs
13810|1|0|Blessed Sunfruit
13811|2|4|Necklace of the Dawn
13812|2|4|Ring of the Dawn
13813|1|0|Blessed Sunfruit Juice
13815|1|12|Some Rune
13816|0|2|Fine Longsword
13817|0|2|Tapered Greatsword
13818|0|2|Jagged Axe
13819|0|2|Balanced War Axe
13820|0|2|Clout Mace
13821|0|2|Bulky Maul
13822|0|2|Spiked Dagger
13823|0|2|Stout War Staff
13824|0|2|Recurve Long Bow
13825|0|2|Primed Musket
13842|1|15|Fall/Winter Morning
13843|1|15|Fall/Winter Afternoon
13844|1|15|Fall/Winter Evening
13845|1|15|Fall/Winter Night
13846|1|15|Spring/Summer Morning
13847|1|15|Spring/Summer Afternoon
13848|1|15|Spring/Summer Evening
13849|1|15|Spring/Summer Night
13850|1|12|Rumbleshot's Ammo
13851|1|0|Hot Wolf Ribs
13852|1|12|The Grand Crusader's Command
13853|1|12|Slab of Carrion Worm Meat
13856|2|4|Runecloth Belt
13857|2|4|Runecloth Tunic
13858|2|4|Runecloth Robe
13860|2|4|Runecloth Cloak
13863|2|4|Runecloth Gloves
13864|2|4|Runecloth Boots
13865|2|4|Runecloth Pants
13866|2|4|Runecloth Headband
13867|2|4|Runecloth Shoulders
13868|2|4|Frostweave Robe
13869|2|4|Frostweave Tunic
13870|2|4|Frostweave Gloves
13871|2|4|Frostweave Pants
13872|1|12|Bundle of Wood
13873|1|13|Viewing Room Key
13874|1|15|Heavy Crate
13875|1|15|Ironbound Locked Chest
13876|1|15|40 Pound Yellowtail
13877|1|15|47 Pound Yellowtail
13878|1|15|53 Pound Yellowtail
13879|1|15|59 Pound Yellowtail
13880|1|15|68 Pound Yellowtail
13881|2|15|Bloated Redgill
13882|1|15|42 Pound Redgill
13883|1|15|45 Pound Redgill
13884|1|15|49 Pound Redgill
13885|1|15|34 Pound Redgill
13886|1|15|37 Pound Redgill
13887|1|15|52 Pound Redgill
13888|1|7|Darkclaw Lobster
13889|1|7|Raw Whitescale Salmon
13890|1|12|Raw Plated Armorfish
13891|2|15|Bloated Whitescale Salmon
13892|1|12|Kodo Kombobulator
13893|1|0|Large Raw Mightfish
13895|1|4|Formal Dangui
13896|1|4|Dark Green Wedding Hanbok
13897|1|4|White Traditional Hanbok
13898|1|4|Royal Dangui
13899|1|4|Red Traditional Hanbok
13900|1|4|Green Wedding Hanbok
13901|1|15|15 Pound Salmon
13902|1|15|18 Pound Salmon
13903|1|15|22 Pound Salmon
13904|1|15|25 Pound Salmon
13905|1|15|29 Pound Salmon
13906|1|15|32 Pound Salmon
13907|1|15|7 Pound Lobster
13908|1|15|9 Pound Lobster
13909|1|15|12 Pound Lobster
13910|1|15|15 Pound Lobster
13911|1|15|19 Pound Lobster
13912|1|15|21 Pound Lobster
13913|1|15|22 Pound Lobster
13914|1|15|70 Pound Mightfish
13915|1|15|85 Pound Mightfish
13916|1|15|92 Pound Mightfish
13917|1|15|103 Pound Mightfish
13918|1|15|Reinforced Locked Chest
13920|1|12|Healthy Dragon Scale
13926|2|7|Golden Pearl
13927|1|0|Cooked Glossy Mightfish
13928|1|0|Grilled Squid
13929|1|0|Hot Smoked Bass
13930|1|0|Filet of Redgill
13931|1|0|Nightfin Soup
13932|1|0|Poached Sunscale Salmon
13933|1|0|Lobster Stew
13934|1|0|Mightfish Steak
13935|1|0|Baked Salmon
13937|4|2|Headmaster's Charge
13938|3|2|Bonecreeper Stylus
13939|1|9|Recipe: Spotted Yellowtail
13940|1|9|Recipe: Cooked Glossy Mightfish
13941|1|9|Recipe: Filet of Redgill
13942|1|9|Recipe: Grilled Squid
13943|1|9|Recipe: Hot Smoked Bass
13944|3|4|Tombstone Breastplate
13945|1|9|Recipe: Nightfin Soup
13946|1|9|Recipe: Poached Sunscale Salmon
13947|1|9|Recipe: Lobster Stew
13948|1|9|Recipe: Mightfish Steak
13949|1|9|Recipe: Baked Salmon
13950|3|4|Detention Strap
13951|3|4|Vigorsteel Vambraces
13952|3|2|Iceblade Hacker
13953|3|2|Silent Fang
13954|3|4|Verdant Footpads
13955|3|4|Stoneform Shoulders
13956|3|4|Clutch of Andros
13957|3|4|Gargoyle Slashers
13958|3|4|Wyrmthalak's Shackles
13959|3|4|Omokk's Girth Restrainer
13960|3|4|Heart of the Fiend
13961|3|4|Halycon's Muzzle
13962|3|4|Vosh'gajin's Strand
13963|3|4|Voone's Vice Grips
13964|3|2|Witchblade
13965|3|4|Blackhand's Breadth
13966|3|4|Mark of Tyranny
13967|3|4|Windreaver Greaves
13968|3|4|Eye of the Beast
13969|3|4|Loomguard Armbraces
13982|3|2|Warblade of Caer Darrow
13983|3|2|Gravestone War Axe
13984|3|2|Darrowspike
13986|3|4|Crown of Caer Darrow
14002|3|4|Darrowshire Strongguard
14022|3|4|Barov Peasant Caller
14023|3|4|Barov Peasant Caller
14024|3|2|Frightalon
14025|2|4|Mystic's Belt
14042|2|4|Cindercloth Vest
14043|2|4|Cindercloth Gloves
14044|2|4|Cindercloth Cloak
14045|2|4|Cindercloth Pants
14046|1|1|Runecloth Bag
14047|1|7|Runecloth
14048|1|7|Bolt of Runecloth
14062|1|15|Kodo Mount
14083|1|2|Tyrande's Staff
14086|1|4|Beaded Sandals
14087|1|4|Beaded Cuffs
14088|1|4|Beaded Cloak
14089|1|4|Beaded Gloves
14090|2|4|Beaded Britches
14091|2|4|Beaded Robe
14093|1|4|Beaded Cord
14094|2|4|Beaded Wraps
14095|1|4|Native Bands
14096|2|4|Native Vest
14097|2|4|Native Pants
14098|1|4|Native Cloak
14099|1|4|Native Sash
14100|2|4|Brightcloth Robe
14101|2|4|Brightcloth Gloves
14102|1|4|Native Handwraps
14103|2|4|Brightcloth Cloak
14104|2|4|Brightcloth Pants
14106|2|4|Felcloth Robe
14107|2|4|Felcloth Pants
14108|2|4|Felcloth Boots
14109|2|4|Native Robe
14110|1|4|Native Sandals
14111|2|4|Felcloth Hood
14112|2|4|Felcloth Shoulders
14113|2|4|Aboriginal Sash
14114|2|4|Aboriginal Footwraps
14115|1|4|Aboriginal Bands
14116|1|4|Aboriginal Cape
14117|2|4|Aboriginal Gloves
14119|2|4|Aboriginal Loincloth
14120|2|4|Aboriginal Robe
14121|2|4|Aboriginal Vest
14122|2|4|Ritual Bands
14123|2|4|Ritual Cape
14124|2|4|Ritual Gloves
14125|2|4|Ritual Leggings
14126|1|4|Ritual Amice
14127|2|4|Ritual Shroud
14128|2|4|Wizardweave Robe
14129|2|4|Ritual Sandals
14130|2|4|Wizardweave Turban
14131|2|4|Ritual Belt
14132|2|4|Wizardweave Leggings
14133|2|4|Ritual Tunic
14134|3|4|Cloak of Fire
14136|3|4|Robe of Winter Night
14137|3|4|Mooncloth Leggings
14138|3|4|Mooncloth Vest
14139|3|4|Mooncloth Shoulders
14140|3|4|Mooncloth Circlet
14141|2|4|Ghostweave Vest
14142|2|4|Ghostweave Gloves
14143|2|4|Ghostweave Belt
14144|2|4|Ghostweave Pants
14145|2|2|Cursed Felblade
14146|4|4|Gloves of Spell Mastery
14147|2|4|Cavedweller Bracers
14148|2|4|Crystalline Cuffs
14149|2|4|Subterranean Cape
14150|2|4|Robe of Evocation
14151|2|2|Chanting Blade
14152|4|4|Robe of the Archmage
14153|4|4|Robe of the Void
14154|4|4|Truefaith Vestments
14155|2|1|Mooncloth Bag
14156|3|1|Bottomless Bag
14157|1|4|Pagan Mantle
14158|2|4|Pagan Vest
14159|2|4|Pagan Shoes
14160|2|4|Pagan Bands
14161|2|4|Pagan Cape
14162|2|4|Pagan Mitts
14163|2|4|Pagan Wraps
14164|2|4|Pagan Belt
14165|2|4|Pagan Britches
14166|2|4|Buccaneer's Bracers
14167|2|4|Buccaneer's Cape
14168|2|4|Buccaneer's Gloves
14169|1|4|Aboriginal Shoulder Pads
14170|1|4|Buccaneer's Mantle
14171|2|4|Buccaneer's Pants
14172|2|4|Buccaneer's Robes
14173|2|4|Buccaneer's Cord
14174|2|4|Buccaneer's Boots
14175|2|4|Buccaneer's Vest
14176|2|4|Watcher's Boots
14177|2|4|Watcher's Cuffs
14178|2|4|Watcher's Cap
14179|2|4|Watcher's Cape
14180|2|4|Watcher's Jerkin
14181|2|4|Watcher's Handwraps
14182|2|4|Watcher's Mantle
14183|2|4|Watcher's Leggings
14184|2|4|Watcher's Robes
14185|2|4|Watcher's Cinch
14186|2|4|Raincaller Mantle
14187|2|4|Raincaller Cuffs
14188|2|4|Raincaller Cloak
14189|2|4|Raincaller Cap
14190|2|4|Raincaller Vest
14191|2|4|Raincaller Mitts
14192|2|4|Raincaller Robes
14193|2|4|Raincaller Pants
14194|2|4|Raincaller Cord
14195|2|4|Raincaller Boots
14196|2|4|Thistlefur Sandals
14197|2|4|Thistlefur Bands
14198|2|4|Thistlefur Cloak
14199|2|4|Thistlefur Gloves
14200|2|4|Thistlefur Cap
14201|2|4|Thistlefur Mantle
14202|2|4|Thistlefur Jerkin
14203|2|4|Thistlefur Pants
14204|2|4|Thistlefur Robe
14205|2|4|Thistlefur Belt
14206|2|4|Vital Bracelets
14207|2|4|Vital Leggings
14208|2|4|Vital Headband
14209|2|4|Vital Sash
14210|2|4|Vital Cape
14211|2|4|Vital Handwraps
14212|2|4|Vital Shoulders
14213|2|4|Vital Raiment
14214|2|4|Vital Boots
14215|2|4|Vital Tunic
14216|2|4|Geomancer's Jerkin
14217|2|4|Geomancer's Cord
14218|2|4|Geomancer's Boots
14219|2|4|Geomancer's Cloak
14220|2|4|Geomancer's Cap
14221|2|4|Geomancer's Bracers
14222|2|4|Geomancer's Gloves
14223|2|4|Geomancer's Spaulders
14224|2|4|Geomancer's Trousers
14225|2|4|Geomancer's Wraps
14226|2|4|Embersilk Bracelets
14227|1|7|Ironweb Spider Silk
14228|2|4|Embersilk Coronet
14229|2|4|Embersilk Cloak
14230|2|4|Embersilk Tunic
14231|2|4|Embersilk Mitts
14232|2|4|Embersilk Mantle
14233|2|4|Embersilk Leggings
14234|2|4|Embersilk Robes
14235|2|4|Embersilk Cord
14236|2|4|Embersilk Boots
14237|2|4|Darkmist Armor
14238|2|4|Darkmist Boots
14239|2|4|Darkmist Cape
14240|2|4|Darkmist Bands
14241|2|4|Darkmist Handguards
14242|2|4|Darkmist Pants
14243|2|4|Darkmist Mantle
14244|2|4|Darkmist Wraps
14245|2|4|Darkmist Girdle
14246|2|4|Darkmist Wizard Hat
14247|2|4|Lunar Mantle
14248|2|4|Lunar Bindings
14249|2|4|Lunar Vest
14250|2|4|Lunar Slippers
14251|2|4|Lunar Cloak
14252|2|4|Lunar Coronet
14253|2|4|Lunar Handwraps
14254|2|4|Lunar Raiment
14255|2|4|Lunar Belt
14256|1|7|Felcloth
14257|2|4|Lunar Leggings
14258|2|4|Bloodwoven Cord
14259|2|4|Bloodwoven Boots
14260|2|4|Bloodwoven Bracers
14261|2|4|Bloodwoven Cloak
14262|2|4|Bloodwoven Mitts
14263|2|4|Bloodwoven Mask
14264|2|4|Bloodwoven Pants
14265|2|4|Bloodwoven Wraps
14266|2|4|Bloodwoven Pads
14267|2|4|Bloodwoven Jerkin
14268|2|4|Gaea's Cuffs
14269|2|4|Gaea's Slippers
14270|2|4|Gaea's Cloak
14271|2|4|Gaea's Circlet
14272|2|4|Gaea's Handwraps
14273|2|4|Gaea's Amice
14274|2|4|Gaea's Leggings
14275|2|4|Gaea's Raiment
14276|2|4|Gaea's Belt
14277|2|4|Gaea's Tunic
14278|2|4|Opulent Mantle
14279|2|4|Opulent Bracers
14280|2|4|Opulent Cape
14281|2|4|Opulent Crown
14282|2|4|Opulent Gloves
14283|2|4|Opulent Leggings
14284|2|4|Opulent Robes
14285|2|4|Opulent Boots
14286|2|4|Opulent Belt
14287|2|4|Opulent Tunic
14288|2|4|Arachnidian Armor
14289|2|4|Arachnidian Girdle
14290|2|4|Arachnidian Footpads
14291|2|4|Arachnidian Bracelets
14292|2|4|Arachnidian Cape
14293|2|4|Arachnidian Circlet
14294|2|4|Arachnidian Gloves
14295|2|4|Arachnidian Legguards
14296|2|4|Arachnidian Pauldrons
14297|2|4|Arachnidian Robes
14298|2|4|Bonecaster's Spaulders
14299|2|4|Bonecaster's Boots
14300|2|4|Bonecaster's Cape
14301|2|4|Bonecaster's Bindings
14302|2|4|Bonecaster's Gloves
14303|2|4|Bonecaster's Shroud
14304|2|4|Bonecaster's Belt
14305|2|4|Bonecaster's Sarong
14306|2|4|Bonecaster's Vest
14307|2|4|Bonecaster's Crown
14308|2|4|Celestial Tunic
14309|2|4|Celestial Belt
14310|2|4|Celestial Slippers
14311|2|4|Celestial Bindings
14312|2|4|Celestial Crown
14313|2|4|Celestial Cape
14314|2|4|Celestial Handwraps
14315|2|4|Celestial Kilt
14316|2|4|Celestial Pauldrons
14317|2|4|Celestial Silk Robes
14318|2|4|Resplendent Tunic
14319|2|4|Resplendent Boots
14320|2|4|Resplendent Bracelets
14321|2|4|Resplendent Cloak
14322|2|4|Resplendent Circlet
14323|2|4|Resplendent Gauntlets
14324|2|4|Resplendent Sarong
14325|2|4|Resplendent Epaulets
14326|2|4|Resplendent Robes
14327|2|4|Resplendent Belt
14328|2|4|Eternal Chestguard
14329|2|4|Eternal Boots
14330|2|4|Eternal Bindings
14331|2|4|Eternal Cloak
14332|2|4|Eternal Crown
14333|2|4|Eternal Gloves
14334|2|4|Eternal Sarong
14335|2|4|Eternal Spaulders
14336|2|4|Eternal Wraps
14337|2|4|Eternal Cord
14338|1|12|Empty Water Tube
14339|1|12|Moonwell Water Tube
14340|3|4|Freezing Lich Robes
14341|1|7|Rune Thread
14342|1|7|Mooncloth
14343|3|7|Small Brilliant Shard
14344|3|7|Large Brilliant Shard
14364|2|4|Mystic's Slippers
14365|2|4|Mystic's Cape
14366|2|4|Mystic's Bracelets
14367|2|4|Mystic's Gloves
14368|1|4|Mystic's Shoulder Pads
14369|2|4|Mystic's Wrap
14370|2|4|Mystic's Woolies
14371|2|4|Mystic's Robe
14372|2|4|Sanguine Armor
14373|2|4|Sanguine Belt
14374|2|4|Sanguine Sandals
14375|2|4|Sanguine Cuffs
14376|2|4|Sanguine Cape
14377|2|4|Sanguine Handwraps
14378|2|4|Sanguine Mantle
14379|2|4|Sanguine Trousers
14380|2|4|Sanguine Robe
14381|1|12|Grimtotem Satchel
14382|1|4|Durability Chestpiece
14383|1|4|Durability Bracers
14384|1|4|Durability Boots
14385|1|4|Durability Cloak
14386|1|4|Durability Hat
14387|1|4|Durability Gloves
14388|1|4|Durability Leggings
14389|3|4|Durability Shoulderpads
14390|1|4|Durability Belt
14391|1|2|Durability Sword
14392|1|2|Durability Staff
14393|1|4|Durability Shield
14394|1|2|Durability Bow
14395|1|12|Spells of Shadow
14396|1|12|Incantations from the Nether
14397|2|4|Resilient Mantle
14398|2|4|Resilient Tunic
14399|2|4|Resilient Boots
14400|2|4|Resilient Cape
14401|2|4|Resilient Cap
14402|2|4|Resilient Bands
14403|2|4|Resilient Handgrips
14404|2|4|Resilient Leggings
14405|2|4|Resilient Robe
14406|2|4|Resilient Cord
14407|2|4|Stonecloth Vest
14408|2|4|Stonecloth Boots
14409|2|4|Stonecloth Cape
14410|2|4|Stonecloth Circlet
14411|2|4|Stonecloth Gloves
14412|2|4|Stonecloth Epaulets
14413|2|4|Stonecloth Robe
14414|2|4|Stonecloth Belt
14415|2|4|Stonecloth Britches
14416|2|4|Stonecloth Bindings
14417|2|4|Silksand Tunic
14418|2|4|Silksand Boots
14419|2|4|Silksand Bracers
14420|2|4|Silksand Cape
14421|2|4|Silksand Circlet
14422|2|4|Silksand Gloves
14423|2|4|Silksand Shoulder Pads
14424|2|4|Silksand Legwraps
14425|2|4|Silksand Wraps
14426|2|4|Silksand Girdle
14427|2|4|Windchaser Wraps
14428|2|4|Windchaser Footpads
14429|2|4|Windchaser Cuffs
14430|2|4|Windchaser Cloak
14431|2|4|Windchaser Handguards
14432|2|4|Windchaser Amice
14433|2|4|Windchaser Woolies
14434|2|4|Windchaser Robes
14435|2|4|Windchaser Cinch
14436|2|4|Windchaser Coronet
14437|2|4|Venomshroud Vest
14438|2|4|Venomshroud Boots
14439|2|4|Venomshroud Armguards
14440|2|4|Venomshroud Cape
14441|2|4|Venomshroud Mask
14442|2|4|Venomshroud Mitts
14443|2|4|Venomshroud Mantle
14444|2|4|Venomshroud Leggings
14445|2|4|Venomshroud Silk Robes
14446|2|4|Venomshroud Belt
14447|2|4|Highborne Footpads
14448|2|4|Highborne Bracelets
14449|2|4|Highborne Crown
14450|2|4|Highborne Cloak
14451|2|4|Highborne Gloves
14452|2|4|Highborne Pauldrons
14453|2|4|Highborne Robes
14454|2|4|Highborne Cord
14455|2|4|Highborne Padded Armor
14456|2|4|Elunarian Vest
14457|2|4|Elunarian Cuffs
14458|2|4|Elunarian Boots
14459|2|4|Elunarian Cloak
14460|2|4|Elunarian Diadem
14461|2|4|Elunarian Handgrips
14462|2|4|Elunarian Sarong
14463|2|4|Elunarian Spaulders
14464|2|4|Elunarian Silk Robes
14465|2|4|Elunarian Belt
14466|2|9|Pattern: Frostweave Tunic
14467|2|9|Pattern: Frostweave Robe
14468|1|9|Pattern: Runecloth Bag
14469|1|9|Pattern: Runecloth Robe
14470|2|9|Pattern: Runecloth Tunic
14471|2|9|Pattern: Cindercloth Vest
14472|1|9|Pattern: Runecloth Cloak
14473|2|9|Pattern: Ghostweave Belt
14474|2|9|Pattern: Frostweave Gloves
14476|2|9|Pattern: Cindercloth Gloves
14477|2|9|Pattern: Ghostweave Gloves
14478|2|9|Pattern: Brightcloth Robe
14479|2|9|Pattern: Brightcloth Gloves
14480|2|9|Pattern: Ghostweave Vest
14481|1|9|Pattern: Runecloth Gloves
14482|2|9|Pattern: Cindercloth Cloak
14483|1|9|Pattern: Felcloth Pants
14484|2|9|Pattern: Brightcloth Cloak
14485|2|9|Pattern: Wizardweave Leggings
14486|3|9|Pattern: Cloak of Fire
14487|3|2|Bonechill Hammer
14488|1|9|Pattern: Runecloth Boots
14489|2|9|Pattern: Frostweave Pants
14490|2|9|Pattern: Cindercloth Pants
14491|2|9|Pattern: Runecloth Pants
14492|2|9|Pattern: Felcloth Boots
14493|3|9|Pattern: Robe of Winter Night
14494|2|9|Pattern: Brightcloth Pants
14495|2|9|Pattern: Ghostweave Pants
14496|2|9|Pattern: Felcloth Hood
14497|3|9|Pattern: Mooncloth Leggings
14498|2|9|Pattern: Runecloth Headband
14499|2|9|Pattern: Mooncloth Bag
14500|2|9|Pattern: Wizardweave Robe
14501|3|9|Pattern: Mooncloth Vest
14502|3|4|Frostbite Girdle
14503|3|4|Death's Clutch
14504|2|9|Pattern: Runecloth Shoulders
14505|2|9|Pattern: Wizardweave Turban
14506|2|9|Pattern: Felcloth Robe
14507|3|9|Pattern: Mooncloth Shoulders
14508|2|9|Pattern: Felcloth Shoulders
14509|3|9|Pattern: Mooncloth Circlet
14510|3|9|Pattern: Bottomless Bag
14511|4|9|Pattern: Gloves of Spell Mastery
14512|4|9|Pattern: Truefaith Vestments
14513|4|9|Pattern: Robe of the Archmage
14514|4|9|Pattern: Robe of the Void
14522|3|4|Maelstrom Leggings
14523|1|12|Demon Pick
14525|3|4|Boneclenched Gauntlets
14526|1|9|Pattern: Mooncloth
14528|3|4|Rattlecage Buckler
14529|1|0|Runecloth Bandage
14530|1|0|Heavy Runecloth Bandage
14531|3|2|Frightskull Shaft
14536|3|4|Bonebrace Hauberk
14537|3|4|Corpselight Greaves
14538|3|4|Deadwalker Mantle
14539|3|4|Bone Ring Helm
14540|1|12|Taragaman the Hungerer's Heart
14541|3|2|Barovian Family Sword
14542|1|0|Kravel's Crate
14543|3|4|Darkshade Gloves
14544|1|12|Lieutenant's Insignia
14545|3|4|Ghostloom Leggings
14546|1|12|Roon's Kodo Horn
14547|1|12|Hand of Iruxos
14548|3|4|Royal Cap Spaulders
14549|4|4|Boots of Avoidance
14550|4|4|Bladebane Armguards
14551|4|4|Edgemaster's Handguards
14552|4|4|Stockade Pauldrons
14553|4|4|Sash of Mercy
14554|4|4|Cloudkeeper Legplates
14555|4|2|Alcor's Sunrazor
14557|4|4|The Lion Horn of Stormwind
14558|4|4|Lady Maye's Pendant
14559|2|4|Prospector's Sash
14560|2|4|Prospector's Boots
14561|2|4|Prospector's Cuffs
14562|2|4|Prospector's Chestpiece
14563|2|4|Prospector's Cloak
14564|2|4|Prospector's Mitts
14565|2|4|Prospector's Woolies
14566|2|4|Prospector's Pads
14567|2|4|Bristlebark Belt
14568|2|4|Bristlebark Boots
14569|2|4|Bristlebark Bindings
14570|2|4|Bristlebark Blouse
14571|2|4|Bristlebark Cape
14572|2|4|Bristlebark Gloves
14573|2|4|Bristlebark Amice
14574|2|4|Bristlebark Britches
14576|3|2|Ebon Hilt of Marduk
14577|3|4|Skullsmoke Pants
14578|2|4|Dokebi Cord
14579|2|4|Dokebi Boots
14580|2|4|Dokebi Bracers
14581|2|4|Dokebi Chestguard
14582|2|4|Dokebi Cape
14583|2|4|Dokebi Gloves
14584|2|4|Dokebi Hat
14585|2|4|Dokebi Leggings
14587|2|4|Dokebi Mantle
14588|2|4|Hawkeye's Cord
14589|2|4|Hawkeye's Shoes
14590|2|4|Hawkeye's Bracers
14591|2|4|Hawkeye's Helm
14592|2|4|Hawkeye's Tunic
14593|2|4|Hawkeye's Cloak
14594|2|4|Hawkeye's Gloves
14595|2|4|Hawkeye's Breeches
14596|2|4|Hawkeye's Epaulets
14598|2|4|Warden's Waistband
14599|2|4|Warden's Footpads
14600|2|4|Warden's Wristbands
14601|2|4|Warden's Wraps
14602|2|4|Warden's Cloak
14603|2|4|Warden's Mantle
14604|2|4|Warden's Wizard Hat
14605|2|4|Warden's Woolies
14606|2|4|Warden's Gloves
14607|2|4|Hawkeye's Buckler
14608|2|4|Dokebi Buckler
14610|1|12|Araj's Scarab
14611|3|4|Bloodmail Hauberk
14612|3|4|Bloodmail Legguards
14613|1|12|Taelan's Hammer
14614|3|4|Bloodmail Belt
14615|3|4|Bloodmail Gauntlets
14616|3|4|Bloodmail Boots
14617|1|4|Sawbones Shirt
14619|1|12|Skeletal Fragments
14620|3|4|Deathbone Girdle
14621|3|4|Deathbone Sabatons
14622|3|4|Deathbone Gauntlets
14623|3|4|Deathbone Legguards
14624|3|4|Deathbone Chestplate
14625|1|12|Symbol of Lost Honor
14626|3|4|Necropile Robe
14627|1|9|Pattern: Bright Yellow Shirt
14628|1|12|Imbued Skeletal Fragments
14629|3|4|Necropile Cuffs
14630|1|9|Pattern: Enchanter's Cowl
14631|3|4|Necropile Boots
14632|3|4|Necropile Leggings
14633|3|4|Necropile Mantle
14634|2|9|Recipe: Frost Oil
14635|1|9|Pattern: Gem-studded Leather Belt
14636|3|4|Cadaverous Belt
14637|3|4|Cadaverous Armor
14638|3|4|Cadaverous Leggings
14639|1|9|Schematic: Minor Recombobulator
14640|3|4|Cadaverous Gloves
14641|3|4|Cadaverous Walkers
14644|1|12|Skeleton Key Mold
14645|1|12|Unfinished Skeleton Key
14646|1|12|Northshire Gift Voucher
14647|1|12|Coldridge Valley Gift Voucher
14648|1|12|Shadowglen Gift Voucher
14649|1|12|Valley of Trials Gift Voucher
14650|1|12|Camp Narache Gift Voucher
14651|1|12|Deathknell Gift Voucher
14652|2|4|Scorpashi Sash
14653|2|4|Scorpashi Slippers
14654|2|4|Scorpashi Wristbands
14655|2|4|Scorpashi Breastplate
14656|2|4|Scorpashi Cape
14657|2|4|Scorpashi Gloves
14658|2|4|Scorpashi Skullcap
14659|2|4|Scorpashi Leggings
14660|2|4|Scorpashi Shoulder Pads
14661|2|4|Keeper's Cord
14662|2|4|Keeper's Hooves
14663|2|4|Keeper's Bindings
14664|2|4|Keeper's Armor
14665|2|4|Keeper's Cloak
14666|2|4|Keeper's Gloves
14667|2|4|Keeper's Wreath
14668|2|4|Keeper's Woolies
14669|2|4|Keeper's Mantle
14670|2|4|Pridelord Armor
14671|2|4|Pridelord Boots
14672|2|4|Pridelord Bands
14673|2|4|Pridelord Cape
14674|2|4|Pridelord Girdle
14675|2|4|Pridelord Gloves
14676|2|4|Pridelord Halo
14677|2|4|Pridelord Pants
14678|2|4|Pridelord Pauldrons
14679|1|12|Of Love and Family
14680|2|4|Indomitable Vest
14681|2|4|Indomitable Boots
14682|2|4|Indomitable Armguards
14683|2|4|Indomitable Cloak
14684|2|4|Indomitable Belt
14685|2|4|Indomitable Gauntlets
14686|2|4|Indomitable Headdress
14687|2|4|Indomitable Leggings
14688|2|4|Indomitable Epaulets
14722|2|4|War Paint Anklewraps
14723|2|4|War Paint Bindings
14724|2|4|War Paint Cloak
14725|2|4|War Paint Waistband
14726|2|4|War Paint Gloves
14727|2|4|War Paint Legguards
14728|1|4|War Paint Shoulder Pads
14729|2|4|War Paint Shield
14730|2|4|War Paint Chestpiece
14742|2|4|Hulking Boots
14743|2|4|Hulking Bands
14744|2|4|Hulking Chestguard
14745|2|4|Hulking Cloak
14746|2|4|Hulking Belt
14747|2|4|Hulking Gauntlets
14748|2|4|Hulking Leggings
14749|2|4|Hulking Spaulders
14750|2|4|Slayer's Cuffs
14751|2|4|Slayer's Surcoat
14752|2|4|Slayer's Cape
14753|2|4|Slayer's Skullcap
14754|2|4|Slayer's Gloves
14755|2|4|Slayer's Sash
14756|2|4|Slayer's Slippers
14757|2|4|Slayer's Pants
14758|2|4|Slayer's Shoulder Pads
14759|2|4|Enduring Bracers
14760|2|4|Enduring Breastplate
14761|2|4|Enduring Belt
14762|2|4|Enduring Boots
14763|2|4|Enduring Cape
14764|2|4|Enduring Gauntlets
14765|2|4|Enduring Circlet
14766|2|4|Enduring Breeches
14767|2|4|Enduring Pauldrons
14768|2|4|Ravager's Armor
14769|2|4|Ravager's Sandals
14770|2|4|Ravager's Armguards
14771|2|4|Ravager's Cloak
14772|2|4|Ravager's Handwraps
14773|2|4|Ravager's Cord
14774|2|4|Ravager's Crown
14775|2|4|Ravager's Woolies
14776|2|4|Ravager's Mantle
14777|2|4|Ravager's Shield
14778|2|4|Khan's Bindings
14779|2|4|Khan's Chestpiece
14780|2|4|Khan's Buckler
14781|2|4|Khan's Cloak
14782|2|4|Khan's Gloves
14783|2|4|Khan's Belt
14784|2|4|Khan's Greaves
14785|2|4|Khan's Helmet
14786|2|4|Khan's Legguards
14787|2|4|Khan's Mantle
14788|2|4|Protector Armguards
14789|2|4|Protector Breastplate
14790|2|4|Protector Buckler
14791|2|4|Protector Cape
14792|2|4|Protector Gauntlets
14793|2|4|Protector Waistband
14794|2|4|Protector Ankleguards
14795|2|4|Protector Helm
14796|2|4|Protector Legguards
14797|2|4|Protector Pads
14798|2|4|Bloodlust Breastplate
14799|2|4|Bloodlust Boots
14800|2|4|Bloodlust Buckler
14801|2|4|Bloodlust Cape
14802|2|4|Bloodlust Gauntlets
14803|2|4|Bloodlust Belt
14804|2|4|Bloodlust Helm
14805|2|4|Bloodlust Britches
14806|2|4|Bloodlust Epaulets
14807|2|4|Bloodlust Bracelets
14808|2|4|Warstrike Belt
14809|2|4|Warstrike Sabatons
14810|2|4|Warstrike Armsplints
14811|2|4|Warstrike Chestguard
14812|2|4|Warstrike Buckler
14813|2|4|Warstrike Cape
14814|2|4|Warstrike Helmet
14815|2|4|Warstrike Gauntlets
14816|2|4|Warstrike Legguards
14817|2|4|Warstrike Shoulder Pads
14821|2|4|Symbolic Breastplate
14825|2|4|Symbolic Crest
14826|2|4|Symbolic Gauntlets
14827|2|4|Symbolic Belt
14828|2|4|Symbolic Greaves
14829|2|4|Symbolic Legplates
14830|2|4|Symbolic Pauldrons
14831|2|4|Symbolic Crown
14832|2|4|Symbolic Vambraces
14833|2|4|Tyrant's Gauntlets
14834|2|4|Tyrant's Armguards
14835|2|4|Tyrant's Chestpiece
14838|2|4|Tyrant's Belt
14839|2|4|Tyrant's Greaves
14840|2|4|Tyrant's Legplates
14841|2|4|Tyrant's Epaulets
14842|2|4|Tyrant's Shield
14843|2|4|Tyrant's Helm
14844|2|4|Sunscale Chestguard
14846|2|4|Sunscale Gauntlets
14847|2|4|Sunscale Belt
14848|2|4|Sunscale Sabatons
14849|2|4|Sunscale Helmet
14850|2|4|Sunscale Legplates
14851|2|4|Sunscale Spaulders
14852|2|4|Sunscale Shield
14853|2|4|Sunscale Wristguards
14854|2|4|Vanguard Breastplate
14855|2|4|Vanguard Gauntlets
14856|2|4|Vanguard Girdle
14857|2|4|Vanguard Sabatons
14858|2|4|Vanguard Headdress
14859|2|4|Vanguard Legplates
14860|2|4|Vanguard Pauldrons
14861|2|4|Vanguard Vambraces
14862|2|4|Warleader's Breastplate
14863|2|4|Warleader's Gauntlets
14864|2|4|Warleader's Belt
14865|2|4|Warleader's Greaves
14866|2|4|Warleader's Crown
14867|2|4|Warleader's Leggings
14868|2|4|Warleader's Shoulders
14869|2|4|Warleader's Bracers
14872|1|12|Tirion's Gift
14894|1|0|Lily Root
14895|2|4|Saltstone Surcoat
14896|2|4|Saltstone Sabatons
14897|2|4|Saltstone Gauntlets
14898|2|4|Saltstone Girdle
14899|2|4|Saltstone Helm
14900|2|4|Saltstone Legplates
14901|2|4|Saltstone Shoulder Pads
14902|2|4|Saltstone Shield
14903|2|4|Saltstone Armsplints
14904|2|4|Brutish Breastplate
14905|2|4|Brutish Gauntlets
14906|2|4|Brutish Belt
14907|2|4|Brutish Helmet
14908|2|4|Brutish Legguards
14909|2|4|Brutish Shoulders
14910|2|4|Brutish Armguards
14911|2|4|Brutish Boots
14912|2|4|Brutish Shield
14913|2|4|Jade Greaves
14914|2|4|Jade Bracers
14915|2|4|Jade Breastplate
14916|2|4|Jade Deflector
14917|2|4|Jade Gauntlets
14918|2|4|Jade Belt
14919|2|4|Jade Circlet
14920|2|4|Jade Legplates
14921|2|4|Jade Epaulets
14922|2|4|Lofty Sabatons
14923|2|4|Lofty Armguards
14924|2|4|Lofty Breastplate
14925|2|4|Lofty Helm
14926|2|4|Lofty Gauntlets
14927|2|4|Lofty Belt
14928|2|4|Lofty Legguards
14929|2|4|Lofty Shoulder Pads
14930|2|4|Lofty Shield
14931|2|4|Heroic Armor
14932|2|4|Heroic Greaves
14933|2|4|Heroic Gauntlets
14934|2|4|Heroic Girdle
14935|2|4|Heroic Skullcap
14936|2|4|Heroic Legplates
14937|2|4|Heroic Pauldrons
14938|2|4|Heroic Bracers
14939|2|4|Warbringer's Chestguard
14940|2|4|Warbringer's Sabatons
14941|2|4|Warbringer's Armsplints
14942|2|4|Warbringer's Gauntlets
14943|2|4|Warbringer's Belt
14944|2|4|Warbringer's Crown
14945|2|4|Warbringer's Legguards
14946|2|4|Warbringer's Spaulders
14947|2|4|Warbringer's Shield
14948|2|4|Bloodforged Chestpiece
14949|2|4|Bloodforged Gauntlets
14950|2|4|Bloodforged Belt
14951|2|4|Bloodforged Sabatons
14952|2|4|Bloodforged Helmet
14953|2|4|Bloodforged Legplates
14954|2|4|Bloodforged Shield
14955|2|4|Bloodforged Shoulder Pads
14956|2|4|Bloodforged Bindings
14957|2|4|High Chief's Sabatons
14958|2|4|High Chief's Armor
14959|2|4|High Chief's Gauntlets
14960|2|4|High Chief's Belt
14961|2|4|High Chief's Crown
14962|2|4|High Chief's Legguards
14963|2|4|High Chief's Pauldrons
14964|2|4|High Chief's Shield
14965|2|4|High Chief's Bindings
14966|2|4|Glorious Breastplate
14967|2|4|Glorious Gauntlets
14968|2|4|Glorious Belt
14969|2|4|Glorious Headdress
14970|2|4|Glorious Legplates
14971|2|4|Glorious Shoulder Pads
14972|2|4|Glorious Sabatons
14973|2|4|Glorious Shield
14974|2|4|Glorious Bindings
14975|2|4|Exalted Harness
14976|2|4|Exalted Gauntlets
14977|2|4|Exalted Girdle
14978|2|4|Exalted Sabatons
14979|2|4|Exalted Helmet
14980|2|4|Exalted Legplates
14981|2|4|Exalted Epaulets
14982|2|4|Exalted Shield
14983|2|4|Exalted Armsplints
15002|1|12|Nimboya's Pike
15003|1|4|Primal Belt
15004|1|4|Primal Boots
15005|1|4|Primal Bands
15006|1|4|Primal Buckler
15007|1|4|Primal Cape
15008|1|4|Primal Mitts
15009|2|4|Primal Leggings
15010|2|4|Primal Wraps
15011|2|4|Lupine Cord
15012|2|4|Lupine Slippers
15013|1|4|Lupine Cuffs
15014|2|4|Lupine Buckler
15015|1|4|Lupine Cloak
15016|2|4|Lupine Handwraps
15017|2|4|Lupine Leggings
15018|2|4|Lupine Vest
15019|1|4|Lupine Mantle
15042|1|12|Empty Termite Jar
15043|1|12|Plagueland Termites
15044|1|12|Barrel of Plagueland Termites
15045|3|4|Green Dragonscale Breastplate
15046|3|4|Green Dragonscale Leggings
15047|3|4|Red Dragonscale Breastplate
15048|3|4|Blue Dragonscale Breastplate
15049|3|4|Blue Dragonscale Shoulders
15050|3|4|Black Dragonscale Breastplate
15051|3|4|Black Dragonscale Shoulders
15052|3|4|Black Dragonscale Leggings
15053|2|4|Volcanic Breastplate
15054|2|4|Volcanic Leggings
15055|2|4|Volcanic Shoulders
15056|3|4|Stormshroud Armor
15057|3|4|Stormshroud Pants
15058|3|4|Stormshroud Shoulders
15059|3|4|Living Breastplate
15060|3|4|Living Leggings
15061|3|4|Living Shoulders
15062|3|4|Devilsaur Leggings
15063|3|4|Devilsaur Gauntlets
15064|3|4|Warbear Harness
15065|3|4|Warbear Woolies
15066|3|4|Ironfeather Breastplate
15067|3|4|Ironfeather Shoulders
15068|2|4|Frostsaber Tunic
15069|2|4|Frostsaber Leggings
15070|2|4|Frostsaber Gloves
15071|2|4|Frostsaber Boots
15072|2|4|Chimeric Leggings
15073|2|4|Chimeric Boots
15074|2|4|Chimeric Gloves
15075|2|4|Chimeric Vest
15076|2|4|Heavy Scorpid Vest
15077|2|4|Heavy Scorpid Bracers
15078|2|4|Heavy Scorpid Gauntlet
15079|2|4|Heavy Scorpid Leggings
15080|2|4|Heavy Scorpid Helm
15081|2|4|Heavy Scorpid Shoulders
15082|2|4|Heavy Scorpid Belt
15083|2|4|Wicked Leather Gauntlets
15084|2|4|Wicked Leather Bracers
15085|2|4|Wicked Leather Armor
15086|2|4|Wicked Leather Headband
15087|2|4|Wicked Leather Pants
15088|2|4|Wicked Leather Belt
15090|2|4|Runic Leather Armor
15091|2|4|Runic Leather Gauntlets
15092|2|4|Runic Leather Bracers
15093|2|4|Runic Leather Belt
15094|2|4|Runic Leather Headband
15095|2|4|Runic Leather Pants
15096|2|4|Runic Leather Shoulders
15102|1|15|Un'Goro Tested Sample
15103|1|15|Corrupt Tested Sample
15104|2|4|Wingborne Boots
15105|2|2|Staff of Noh'Orahil
15106|2|2|Staff of Dar'Orahil
15107|3|4|Orb of Noh'Orahil
15108|3|4|Orb of Dar'Orahil
15109|3|2|Staff of Soran'ruk
15110|2|4|Rigid Belt
15111|2|4|Rigid Moccasins
15112|2|4|Rigid Bracelets
15113|2|4|Rigid Buckler
15114|2|4|Rigid Cape
15115|2|4|Rigid Gloves
15116|2|4|Rigid Shoulders
15117|2|4|Rigid Leggings
15118|2|4|Rigid Tunic
15119|2|4|Highborne Pants
15120|2|4|Robust Girdle
15121|2|4|Robust Boots
15122|2|4|Robust Bracers
15123|2|4|Robust Buckler
15124|2|4|Robust Cloak
15125|2|4|Robust Gloves
15126|2|4|Robust Leggings
15127|2|4|Robust Shoulders
15128|2|4|Robust Tunic
15129|2|4|Robust Helm
15130|2|4|Cutthroat's Vest
15131|2|4|Cutthroat's Boots
15132|2|4|Cutthroat's Armguards
15133|2|4|Cutthroat's Buckler
15134|2|4|Cutthroat's Hat
15135|2|4|Cutthroat's Cape
15136|2|4|Cutthroat's Belt
15137|2|4|Cutthroat's Mitts
15138|3|4|Onyxia Scale Cloak
15139|2|4|Cutthroat's Pants
15140|2|4|Cutthroat's Mantle
15141|4|4|Onyxia Scale Breastplate
15142|2|4|Ghostwalker Boots
15143|2|4|Ghostwalker Bindings
15144|2|4|Ghostwalker Rags
15145|2|4|Ghostwalker Buckler
15146|2|4|Ghostwalker Crown
15147|2|4|Ghostwalker Cloak
15148|2|4|Ghostwalker Belt
15149|2|4|Ghostwalker Gloves
15150|2|4|Ghostwalker Pads
15151|2|4|Ghostwalker Legguards
15152|2|4|Nocturnal Shoes
15153|2|4|Nocturnal Cloak
15154|2|4|Nocturnal Sash
15155|2|4|Nocturnal Gloves
15156|2|4|Nocturnal Cap
15157|2|4|Nocturnal Leggings
15158|2|4|Nocturnal Shoulder Pads
15159|2|4|Nocturnal Tunic
15160|2|4|Nocturnal Wristbands
15161|2|4|Imposing Belt
15162|2|4|Imposing Boots
15163|2|4|Imposing Bracers
15164|2|4|Imposing Vest
15165|2|4|Imposing Cape
15166|2|4|Imposing Gloves
15167|2|4|Imposing Bandana
15168|2|4|Imposing Pants
15169|2|4|Imposing Shoulders
15170|2|4|Potent Armor
15171|2|4|Potent Boots
15172|2|4|Potent Bands
15173|2|4|Potent Cape
15174|2|4|Potent Gloves
15175|2|4|Potent Helmet
15176|2|4|Potent Pants
15177|2|4|Potent Shoulders
15178|2|4|Potent Belt
15179|2|4|Praetorian Padded Armor
15180|2|4|Praetorian Girdle
15181|2|4|Praetorian Boots
15182|2|4|Praetorian Wristbands
15183|2|4|Praetorian Cloak
15184|2|4|Praetorian Gloves
15185|2|4|Praetorian Coif
15186|2|4|Praetorian Leggings
15187|2|4|Praetorian Pauldrons
15188|2|4|Grand Armguards
15189|2|4|Grand Boots
15190|2|4|Grand Cloak
15191|2|4|Grand Belt
15192|2|4|Grand Gauntlets
15193|2|4|Grand Crown
15194|2|4|Grand Legguards
15195|2|4|Grand Breastplate
15196|1|4|Private's Tabard
15197|1|4|Scout's Tabard
15198|1|4|Knight's Colors
15199|1|4|Stone Guard's Herald
15200|3|4|Senior Sergeant's Insignia
15202|2|4|Wildkeeper Leggings
15203|2|4|Guststorm Legguards
15204|2|2|Moonstone Wand
15205|2|2|Owlsight Rifle
15206|2|4|Jadefinger Baton
15207|2|4|Steelcap Shield
15208|1|12|Cenarion Moondust
15209|1|12|Relic Bundle
15210|2|2|Raider Shortsword
15211|2|2|Militant Shortsword
15212|2|2|Fighter Broadsword
15213|2|2|Mercenary Blade
15214|2|2|Nobles Brand
15215|2|2|Furious Falchion
15216|2|2|Rune Sword
15217|2|2|Widow Blade
15218|2|2|Crystal Sword
15219|2|2|Dimensional Blade
15220|2|2|Battlefell Sabre
15221|2|2|Holy War Sword
15222|2|2|Barbed Club
15223|2|2|Jagged Star
15224|2|2|Battlesmasher
15225|2|2|Sequoia Hammer
15226|2|2|Giant Club
15227|2|2|Diamond-Tip Bludgeon
15228|2|2|Smashing Star
15229|2|2|Blesswind Hammer
15230|2|2|Ridge Cleaver
15231|2|2|Splitting Hatchet
15232|2|2|Hacking Cleaver
15233|2|2|Savage Axe
15234|2|2|Greater Scythe
15235|2|2|Crescent Edge
15236|2|2|Moon Cleaver
15237|2|2|Corpse Harvester
15238|2|2|Warlord's Axe
15239|2|2|Felstone Reaver
15240|2|2|Demon's Claw
15241|2|2|Battle Knife
15242|2|2|Honed Stiletto
15243|2|2|Deadly Kris
15244|2|2|Razor Blade
15245|2|2|Vorpal Dagger
15246|2|2|Demon Blade
15247|2|2|Bloodstrike Dagger
15248|2|2|Gleaming Claymore
15249|2|2|Polished Zweihander
15250|2|2|Glimmering Flamberge
15251|2|2|Headstriker Sword
15252|2|2|Tusker Sword
15253|2|2|Beheading Blade
15254|2|2|Dark Espadon
15255|2|2|Gallant Flamberge
15256|2|2|Massacre Sword
15257|2|2|Shin Blade
15258|2|2|Divine Warblade
15259|2|2|Hefty Battlehammer
15260|2|2|Stone Hammer
15261|2|2|Sequoia Branch
15262|2|2|Greater Maul
15263|2|2|Royal Mallet
15264|2|2|Backbreaker
15265|2|2|Painbringer
15266|2|2|Fierce Mauler
15267|2|2|Brutehammer
15268|2|2|Twin-bladed Axe
15269|2|2|Massive Battle Axe
15270|2|2|Gigantic War Axe
15271|2|2|Colossal Great Axe
15272|2|2|Razor Axe
15273|2|2|Death Striker
15274|2|2|Diviner Long Staff
15275|2|2|Thaumaturgist Staff
15276|2|2|Magus Long Staff
15277|3|15|Gray Kodo
15278|2|2|Solstice Staff
15279|2|2|Ivory Wand
15280|2|2|Wizard's Hand
15281|2|2|Glowstar Rod
15282|2|2|Dragon Finger
15283|2|2|Lunar Wand
15284|2|2|Long Battle Bow
15285|2|2|Archer's Longbow
15286|2|2|Long Redwood Bow
15287|2|2|Crusader Bow
15288|2|2|Blasthorn Bow
15289|2|2|Archstrike Bow
15290|3|15|Brown Kodo
15291|2|2|Harpy Needler
15292|4|15|Green Kodo
15293|4|15|Teal Kodo
15294|2|2|Siege Bow
15295|2|2|Quillfire Bow
15296|2|2|Hawkeye Bow
15297|1|4|Grizzly Bracers
15298|2|4|Grizzly Buckler
15299|1|4|Grizzly Cape
15300|1|4|Grizzly Gloves
15301|1|4|Grizzly Slippers
15302|1|4|Grizzly Belt
15303|2|4|Grizzly Pants
15304|2|4|Grizzly Jerkin
15305|2|4|Feral Shoes
15306|2|4|Feral Bindings
15307|2|4|Feral Buckler
15308|2|4|Feral Cord
15309|2|4|Feral Cloak
15310|2|4|Feral Gloves
15311|2|4|Feral Harness
15312|2|4|Feral Leggings
15313|1|4|Feral Shoulder Pads
15314|1|0|Bundle of Relics
15322|2|2|Smoothbore Gun
15323|2|2|Percussion Shotgun
15324|2|2|Burnside Rifle
15325|2|2|Sharpshooter Harquebus
15326|1|2|Gleaming Throwing Axe
15327|1|2|Wicked Throwing Dagger
15328|1|12|Joseph's Key
15329|2|4|Wrangler's Belt
15330|2|4|Wrangler's Boots
15331|2|4|Wrangler's Wristbands
15332|2|4|Wrangler's Buckler
15333|2|4|Wrangler's Cloak
]==],
[==[
15334|2|4|Wrangler's Gloves
15335|2|2|Briarsteel Shortsword
15336|2|4|Wrangler's Leggings
15337|2|4|Wrangler's Wraps
15338|2|4|Wrangler's Mantle
15339|2|4|Pathfinder Hat
15340|2|4|Pathfinder Cloak
15341|2|4|Pathfinder Footpads
15342|2|4|Pathfinder Guard
15343|2|4|Pathfinder Gloves
15344|2|4|Pathfinder Pants
15345|2|4|Pathfinder Shoulder Pads
15346|2|4|Pathfinder Vest
15347|2|4|Pathfinder Belt
15348|2|4|Pathfinder Bracers
15349|2|4|Headhunter's Belt
15350|2|4|Headhunter's Slippers
15351|2|4|Headhunter's Bands
15352|2|4|Headhunter's Buckler
15353|2|4|Headhunter's Headdress
15354|2|4|Headhunter's Cloak
15355|2|4|Headhunter's Mitts
15356|2|4|Headhunter's Armor
15357|2|4|Headhunter's Spaulders
15358|2|4|Headhunter's Woolies
15359|2|4|Trickster's Vest
15360|2|4|Trickster's Bindings
15361|2|4|Trickster's Sash
15362|2|4|Trickster's Boots
15363|2|4|Trickster's Headdress
15364|2|4|Trickster's Cloak
15365|2|4|Trickster's Handwraps
15366|2|4|Trickster's Leggings
15367|2|4|Trickster's Protector
15368|2|4|Trickster's Pauldrons
15369|2|4|Wolf Rider's Belt
15370|2|4|Wolf Rider's Boots
15371|2|4|Wolf Rider's Cloak
15372|2|4|Wolf Rider's Gloves
15373|2|4|Wolf Rider's Headgear
15374|2|4|Wolf Rider's Leggings
15375|2|4|Wolf Rider's Shoulder Pads
15376|2|4|Wolf Rider's Padded Armor
15377|2|4|Wolf Rider's Wristbands
15378|2|4|Rageclaw Belt
15379|2|4|Rageclaw Boots
15380|2|4|Rageclaw Bracers
15381|2|4|Rageclaw Chestguard
15382|2|4|Rageclaw Cloak
15383|2|4|Rageclaw Gloves
15384|2|4|Rageclaw Helm
15385|2|4|Rageclaw Leggings
15386|2|4|Rageclaw Shoulder Pads
15387|2|4|Jadefire Bracelets
15388|2|4|Jadefire Belt
15389|2|4|Jadefire Sabatons
15390|2|4|Jadefire Chestguard
15391|2|4|Jadefire Cap
15392|2|4|Jadefire Cloak
15393|2|4|Jadefire Gloves
15394|2|4|Jadefire Pants
15395|2|4|Jadefire Epaulets
15396|2|2|Curvewood Dagger
15397|2|2|Oakthrush Staff
15398|1|4|Sandcomber Boots
15399|2|4|Dryweed Belt
15400|1|4|Clamshell Bracers
15401|2|4|Welldrip Gloves
15402|2|4|Noosegrip Gauntlets
15403|2|4|Ridgeback Bracers
15404|2|4|Breakwater Girdle
15405|2|4|Shucking Gloves
15406|2|4|Crustacean Boots
15407|1|7|Cured Rugged Hide
15408|1|7|Heavy Scorpid Scale
15409|1|7|Refined Deeprock Salt
15410|3|7|Scale of Onyxia
15411|3|4|Mark of Fordring
15412|1|7|Green Dragonscale
15413|3|4|Ornate Adamantium Breastplate
15414|1|7|Red Dragonscale
15415|1|7|Blue Dragonscale
15416|1|7|Black Dragonscale
15417|1|7|Devilsaur Leather
15418|3|2|Shimmering Platinum Warhammer
15419|1|7|Warbear Leather
15420|1|7|Ironfeather
15421|3|4|Shroud of the Exile
15422|1|7|Frostsaber Leather
15423|1|7|Chimera Leather
15424|2|2|Axe of Orgrimmar
15425|2|4|Peerless Bracers
15426|2|4|Peerless Boots
15427|2|4|Peerless Cloak
15428|2|4|Peerless Belt
15429|2|4|Peerless Gloves
15430|2|4|Peerless Headband
15431|2|4|Peerless Leggings
15432|2|4|Peerless Shoulders
15433|2|4|Peerless Armor
15434|2|4|Supreme Sash
15435|2|4|Supreme Shoes
15436|2|4|Supreme Bracers
15437|2|4|Supreme Cape
15438|2|4|Supreme Gloves
15439|2|4|Supreme Crown
15440|2|4|Supreme Leggings
15441|2|4|Supreme Shoulders
15442|2|4|Supreme Breastplate
15443|2|2|Kris of Orgrimmar
15444|2|2|Staff of Orgrimmar
15445|2|2|Hammer of Orgrimmar
15446|1|12|Stormwind Deputy Kit
15447|1|12|Living Rot
15448|1|12|Coagulated Rot
15449|2|4|Ghastly Trousers
15450|2|4|Dredgemire Leggings
15451|2|4|Gargoyle Leggings
15452|2|4|Featherbead Bracers
15453|2|4|Savannah Bracers
15454|1|12|Mortar and Pestle
15455|2|4|Dustfall Robes
15456|2|4|Lightstep Leggings
15457|2|4|Desert Shoulders
15458|2|4|Tundra Boots
15459|2|4|Grimtoll Wristguards
15461|2|4|Lightheel Boots
15462|2|4|Loamflake Bracers
15463|2|4|Palestrider Gloves
15464|2|2|Brute Hammer
15465|2|2|Stingshot Wand
15466|2|4|Clink Shield
15467|2|4|Inventor's League Ring
15468|2|4|Windsong Drape
15469|2|4|Windsong Cinch
15470|2|4|Plainsguard Leggings
15471|2|4|Brawnhide Armor
15472|1|4|Charger's Belt
15473|1|4|Charger's Boots
15474|1|4|Charger's Bindings
15475|1|4|Charger's Cloak
15476|1|4|Charger's Handwraps
15477|2|4|Charger's Pants
15478|1|4|Charger's Shield
15479|2|4|Charger's Armor
15480|1|4|War Torn Girdle
15481|1|4|War Torn Greaves
15482|1|4|War Torn Bands
15483|1|4|War Torn Cape
15484|1|4|War Torn Handgrips
15485|2|4|War Torn Pants
15486|2|4|War Torn Shield
15487|2|4|War Torn Tunic
15488|2|4|Bloodspattered Surcoat
15489|2|4|Bloodspattered Sabatons
15490|1|4|Bloodspattered Cloak
15491|2|4|Bloodspattered Gloves
15492|2|4|Bloodspattered Sash
15493|2|4|Bloodspattered Loincloth
15494|2|4|Bloodspattered Shield
15495|2|4|Bloodspattered Wristbands
15496|1|4|Bloodspattered Shoulder Pads
15497|2|4|Outrunner's Cord
15498|2|4|Outrunner's Slippers
15499|2|4|Outrunner's Cuffs
15500|2|4|Outrunner's Chestguard
15501|2|4|Outrunner's Cloak
15502|2|4|Outrunner's Gloves
15503|2|4|Outrunner's Legguards
15504|2|4|Outrunner's Shield
15505|1|4|Outrunner's Pauldrons
15506|2|4|Grunt's AnkleWraps
15507|2|4|Grunt's Bracers
15508|2|4|Grunt's Cape
15509|2|4|Grunt's Handwraps
15510|2|4|Grunt's Belt
15511|2|4|Grunt's Legguards
15512|2|4|Grunt's Shield
15513|2|4|Grunt's Pauldrons
15514|2|4|Grunt's Chestpiece
15515|2|4|Spiked Chain Belt
15516|2|4|Spiked Chain Slippers
15517|2|4|Spiked Chain Wristbands
15518|2|4|Spiked Chain Breastplate
15519|2|4|Spiked Chain Cloak
15520|2|4|Spiked Chain Gauntlets
15521|2|4|Spiked Chain Leggings
15522|2|4|Spiked Chain Shield
15523|2|4|Spiked Chain Shoulder Pads
15524|2|4|Sentry's Surcoat
15525|2|4|Sentry's Slippers
15526|2|4|Sentry's Cape
15527|2|4|Sentry's Gloves
15528|2|4|Sentry's Sash
15529|2|4|Sentry's Leggings
15530|2|4|Sentry's Shield
15531|2|4|Sentry's Shoulderguards
15532|2|4|Sentry's Armsplints
15533|2|4|Sentry's Headdress
15534|2|4|Wicked Chain Boots
15535|2|4|Wicked Chain Bracers
15536|2|4|Wicked Chain Chestpiece
15537|2|4|Wicked Chain Cloak
15538|2|4|Wicked Chain Gauntlets
15539|2|4|Wicked Chain Waistband
15540|2|4|Wicked Chain Helmet
15541|2|4|Wicked Chain Legguards
15542|2|4|Wicked Chain Shoulder Pads
15543|2|4|Wicked Chain Shield
15544|2|4|Thick Scale Sabatons
15545|2|4|Thick Scale Bracelets
15546|2|4|Thick Scale Breastplate
15547|2|4|Thick Scale Cloak
15548|2|4|Thick Scale Gauntlets
15549|2|4|Thick Scale Belt
15550|2|4|Thick Scale Crown
15551|2|4|Thick Scale Legguards
15552|2|4|Thick Scale Shield
15553|2|4|Thick Scale Shoulder Pads
15554|2|4|Pillager's Girdle
15555|2|4|Pillager's Boots
15556|2|4|Pillager's Bracers
15557|2|4|Pillager's Chestguard
15558|2|4|Pillager's Crown
15559|2|4|Pillager's Cloak
15560|2|4|Pillager's Gloves
15561|2|4|Pillager's Leggings
15562|2|4|Pillager's Pauldrons
15563|2|4|Pillager's Shield
15564|1|0|Rugged Armor Kit
15565|2|4|Marauder's Boots
15566|2|4|Marauder's Bracers
15567|2|4|Marauder's Tunic
15568|2|4|Marauder's Cloak
15569|2|4|Marauder's Crest
15570|2|4|Marauder's Gauntlets
15571|2|4|Marauder's Belt
15572|2|4|Marauder's Circlet
15573|2|4|Marauder's Leggings
15574|2|4|Marauder's Shoulder Pads
15575|2|4|Sparkleshell Belt
15576|2|4|Sparkleshell Sabatons
15577|2|4|Sparkleshell Bracers
15578|2|4|Sparkleshell Breastplate
15579|2|4|Sparkleshell Cloak
15580|2|4|Sparkleshell Headwrap
15581|2|4|Sparkleshell Gauntlets
15582|2|4|Sparkleshell Legguards
15583|2|4|Sparkleshell Shoulder Pads
15584|2|4|Sparkleshell Shield
15585|2|4|Pardoc Grips
15586|1|12|Fast-growing Flower
15587|2|4|Ringtail Girdle
15588|2|4|Bracesteel Belt
15589|2|4|Steadfast Stompers
15590|2|4|Steadfast Bracelets
15591|2|4|Steadfast Breastplate
15592|2|4|Steadfast Buckler
15593|2|4|Steadfast Coronet
15594|2|4|Steadfast Cloak
15595|2|4|Steadfast Gloves
15596|2|4|Steadfast Legplates
15597|2|4|Steadfast Shoulders
15598|2|4|Steadfast Girdle
15599|2|4|Ancient Greaves
15600|2|4|Ancient Vambraces
15601|2|4|Ancient Chestpiece
15602|2|4|Ancient Crown
15603|2|4|Ancient Cloak
15604|2|4|Ancient Defender
15605|2|4|Ancient Gauntlets
15606|2|4|Ancient Belt
15607|2|4|Ancient Legguards
15608|2|4|Ancient Pauldrons
15609|2|4|Bonelink Armor
15610|2|4|Bonelink Bracers
15611|2|4|Bonelink Cape
15612|2|4|Bonelink Gauntlets
15613|2|4|Bonelink Belt
15614|2|4|Bonelink Sabatons
15615|2|4|Bonelink Helmet
15616|2|4|Bonelink Legplates
15617|2|4|Bonelink Epaulets
15618|2|4|Bonelink Wall Shield
15619|2|4|Gryphon Mail Belt
15620|2|4|Gryphon Mail Bracelets
15621|2|4|Gryphon Mail Buckler
15622|2|4|Gryphon Mail Breastplate
15623|2|4|Gryphon Mail Crown
15624|2|4|Gryphon Cloak
15625|2|4|Gryphon Mail Gauntlets
15626|2|4|Gryphon Mail Greaves
15627|2|4|Gryphon Mail Legguards
15628|2|4|Gryphon Mail Pauldrons
15629|2|4|Formidable Bracers
15630|2|4|Formidable Sabatons
15631|2|4|Formidable Chestpiece
15632|2|4|Formidable Cape
15633|2|4|Formidable Crest
15634|2|4|Formidable Circlet
15635|2|4|Formidable Gauntlets
15636|2|4|Formidable Belt
15637|2|4|Formidable Legguards
15638|2|4|Formidable Shoulder Pads
15639|2|4|Ironhide Bracers
15640|2|4|Ironhide Breastplate
15641|2|4|Ironhide Belt
15642|2|4|Ironhide Greaves
15643|2|4|Ironhide Cloak
15644|2|4|Ironhide Gauntlets
15645|2|4|Ironhide Helmet
15646|2|4|Ironhide Legguards
15647|2|4|Ironhide Pauldrons
15648|2|4|Ironhide Shield
15649|2|4|Merciless Bracers
15650|2|4|Merciless Surcoat
15651|2|4|Merciless Crown
15652|2|4|Merciless Cloak
15653|2|4|Merciless Gauntlets
15654|2|4|Merciless Belt
15655|2|4|Merciless Legguards
15656|2|4|Merciless Epaulets
15657|2|4|Merciless Shield
15658|2|4|Impenetrable Sabatons
15659|2|4|Impenetrable Bindings
15660|2|4|Impenetrable Breastplate
15661|2|4|Impenetrable Cloak
15662|2|4|Impenetrable Gauntlets
15663|2|4|Impenetrable Belt
15664|2|4|Impenetrable Helmet
15665|2|4|Impenetrable Legguards
15666|2|4|Impenetrable Pauldrons
15667|2|4|Impenetrable Wall
15668|2|4|Magnificent Bracers
15669|2|4|Magnificent Breastplate
15670|2|4|Magnificent Helmet
15671|2|4|Magnificent Cloak
15672|2|4|Magnificent Gauntlets
15673|2|4|Magnificent Belt
15674|2|4|Magnificent Greaves
15675|2|4|Magnificent Guard
15676|2|4|Magnificent Leggings
15677|2|4|Magnificent Shoulders
15678|2|4|Triumphant Sabatons
15679|2|4|Triumphant Bracers
15680|2|4|Triumphant Chestpiece
15681|2|4|Triumphant Cloak
15682|2|4|Triumphant Gauntlets
15683|2|4|Triumphant Girdle
15684|2|4|Triumphant Skullcap
15685|2|4|Triumphant Legplates
15686|2|4|Triumphant Shoulder Pads
15687|2|4|Triumphant Shield
15688|1|12|Magic Beans
15689|2|4|Trader's Ring
15690|2|4|Kodobone Necklace
15691|2|2|Sidegunner Shottie
15692|2|2|Kodo Brander
15693|2|4|Grand Shoulders
15694|2|4|Merciless Greaves
15695|2|4|Studded Ring Shield
15696|1|12|Ruined Tome
15697|2|4|Kodo Rustler Boots
15698|2|4|Wrangling Spaulders
15699|1|15|Small Brown-wrapped Package
15702|2|4|Chemist's Ring
15703|2|4|Chemist's Smock
15704|2|4|Hunter's Insignia Medal
15705|2|2|Tidecrest Blade
15706|2|2|Hunt Tracker Blade
15707|2|4|Brantwood Sash
15708|2|4|Blight Leather Gloves
15709|2|4|Gearforge Girdle
15710|1|12|Cenarion Lunardust
15722|1|12|Spraggle's Canteen
15723|2|0|Tea with Sugar
15724|1|9|Pattern: Heavy Scorpid Bracers
15725|1|9|Pattern: Wicked Leather Gauntlets
15726|1|9|Pattern: Green Dragonscale Breastplate
15727|2|9|Pattern: Heavy Scorpid Vest
15728|2|9|Pattern: Wicked Leather Bracers
15729|1|9|Pattern: Chimeric Gloves
15730|3|9|Pattern: Red Dragonscale Breastplate
15731|2|9|Pattern: Runic Leather Gauntlets
15732|2|9|Pattern: Volcanic Leggings
15733|3|9|Pattern: Green Dragonscale Leggings
15734|1|9|Pattern: Living Shoulders
15735|1|9|Pattern: Ironfeather Shoulders
15736|1|12|Smokey's Special Compound
15737|2|9|Pattern: Chimeric Boots
15738|2|9|Pattern: Heavy Scorpid Gauntlets
15739|2|9|Pattern: Runic Leather Bracers
15740|1|9|Pattern: Frostsaber Boots
15741|1|9|Pattern: Stormshroud Pants
15742|1|9|Pattern: Warbear Harness
15743|2|9|Pattern: Heavy Scorpid Belt
15744|2|9|Pattern: Wicked Leather Headband
15745|2|9|Pattern: Runic Leather Belt
15746|2|9|Pattern: Chimeric Leggings
15747|2|9|Pattern: Frostsaber Leggings
15748|2|9|Pattern: Heavy Scorpid Leggings
15749|2|9|Pattern: Volcanic Breastplate
15750|1|12|Sceptre of Light
15751|1|9|Pattern: Blue Dragonscale Breastplate
15752|3|9|Pattern: Living Leggings
15753|3|9|Pattern: Stormshroud Armor
15755|2|9|Pattern: Chimeric Vest
15756|1|9|Pattern: Runic Leather Headband
15757|2|9|Pattern: Wicked Leather Pants
15758|1|9|Pattern: Devilsaur Gauntlets
15759|1|9|Pattern: Black Dragonscale Breastplate
15760|3|9|Pattern: Ironfeather Breastplate
15761|2|9|Pattern: Frostsaber Gloves
15762|1|9|Pattern: Heavy Scorpid Helm
15763|3|9|Pattern: Blue Dragonscale Shoulders
15764|3|9|Pattern: Stormshroud Shoulders
15765|2|9|Pattern: Runic Leather Pants
15766|1|12|Gem of the Serpent
15767|1|12|Hameya's Key
15768|2|9|Pattern: Wicked Leather Belt
15769|3|9|Pattern: Onyxia Scale Cloak
15770|3|9|Pattern: Black Dragonscale Shoulders
15771|3|9|Pattern: Living Breastplate
15772|3|9|Pattern: Devilsaur Leggings
15773|2|9|Pattern: Wicked Leather Armor
15774|2|9|Pattern: Heavy Scorpid Shoulders
15775|2|9|Pattern: Volcanic Shoulders
15776|2|9|Pattern: Runic Leather Armor
15777|2|9|Pattern: Runic Leather Shoulders
15778|2|0|Mechanical Yeti
15779|2|9|Pattern: Frostsaber Tunic
15780|4|9|Pattern: Onyxia Scale Breastplate
15781|3|9|Pattern: Black Dragonscale Leggings
15782|2|2|Beaststalker Blade
15783|2|2|Beasthunter Dagger
15784|2|4|Crystal Breeze Mantle
15785|1|12|Zaeldarr's Head
15786|2|4|Fernpulse Jerkin
15787|2|4|Willow Band Hauberk
15788|1|12|Everlook Report
15789|2|4|Deep River Cloak
15790|1|12|Studies in Spirit Speaking
15791|2|4|Turquoise Sash
15792|2|4|Plow Wood Spaulders
15793|0|15|A Chewed Bone
15794|0|4|Ripped Ogre Loincloth
15795|2|4|Emerald Mist Gauntlets
15796|2|4|Seaspray Bracers
15797|2|4|Shining Armplates
15798|0|15|Chipped Ogre Teeth
15799|2|4|Heroic Commendation Medal
15800|2|2|Intrepid Shortsword
15801|2|2|Valiant Shortsword
15802|3|4|Mooncloth Boots
15803|1|12|Book of the Ancients
15804|2|4|Cerise Drape
15805|3|4|Penelope's Rose
15806|3|2|Mirah's Song
15807|1|2|Light Crossbow
15808|1|2|Fine Light Crossbow
15809|1|2|Heavy Crossbow
15810|1|2|Short Spear
15811|1|2|Heavy Spear
15812|2|4|Orchid Amice
15813|2|4|Gold Link Belt
15814|2|2|Hameya's Slayer
15815|2|4|Hameya's Cloak
15822|2|4|Shadowskin Spaulders
15823|2|4|Bricksteel Gauntlets
15824|2|4|Astoria Robes
15825|2|4|Traphook Jerkin
15826|1|12|Curative Animal Salve
15827|2|4|Jadescale Breastplate
15842|1|12|Empty Dreadmist Peak Sampler
15843|1|12|Filled Dreadmist Peak Sampler
15844|1|12|Empty Cliffspring Falls Sampler
15845|1|12|Filled Cliffspring Falls Sampler
15846|1|0|Salt Shaker
15847|1|12|Quel'Thalas Registry
15848|1|12|Crate of Ghost Magnets
15849|1|12|Ghost-o-plasm
15850|1|12|Patch of Duskwing's Fur
15851|1|12|Lunar Fungus
15852|1|12|Kodo Horn
15853|3|2|Windreaper
15854|3|2|Dancing Sliver
15855|3|4|Ring of Protection
15856|3|4|Archlight Talisman
15857|3|4|Magebane Scion
15858|2|4|Freewind Gloves
15859|2|4|Seapost Girdle
15860|2|4|Blinkstrike Armguards
15861|2|4|Swiftfoot Treads
15862|2|2|Blitzcleaver
15863|2|2|Grave Scepter
15864|2|4|Condor Bracers
15865|2|4|Anchorhold Buckler
15866|2|4|Veildust Medicine Bag
15867|2|4|Prismcharm
15868|1|12|The Grand Crusader's Command
15869|2|0|Silver Skeleton Key
15870|2|0|Golden Skeleton Key
15871|2|0|Truesilver Skeleton Key
15872|2|0|Arcanite Skeleton Key
15873|3|4|Ragged John's Neverending Cup
15874|1|13|Soft-shelled Clam
15875|1|12|Rotten Apple
15876|1|12|Nathanos' Chest
15877|1|12|Shrine Bauble
15878|1|12|Rackmore's Silver Key
15879|1|12|Overlord Ror's Claw
15880|1|12|Head of Ramstein the Gorger
15881|1|12|Rackmore's Golden Key
15882|1|12|Half Pendant of Aquatic Endurance
15883|1|12|Half Pendant of Aquatic Agility
15884|1|12|Augustus' Receipt Book
15885|1|12|Pendant of the Sea Lion
15886|1|12|Timolain's Phylactery
15887|2|4|Heroic Guard
15890|2|4|Vanguard Shield
15891|2|4|Hulking Shield
15892|2|4|Slayer's Shield
15893|2|4|Prospector's Buckler
15894|2|4|Bristlebark Buckler
15895|1|4|Burnt Buckler
15902|1|15|A Crazy Grab Bag
15903|1|2|Right-Handed Claw
15904|1|2|Right-Handed Blades
15905|1|2|Right-Handed Brass Knuckles
15906|1|2|Left-Handed Brass Knuckles
15907|1|2|Left-Handed Claw
15908|1|12|Taming Rod
15909|1|2|Left-Handed Blades
15911|1|12|Taming Rod
15912|2|4|Buccaneer's Orb
15913|1|12|Taming Rod
15914|1|12|Taming Rod
15915|1|12|Taming Rod
15916|1|12|Taming Rod
15917|1|12|Taming Rod
15918|2|4|Conjurer's Sphere
15919|1|12|Taming Rod
15920|1|12|Taming Rod
15921|1|12|Taming Rod
15922|1|12|Taming Rod
15923|1|12|Taming Rod
15924|1|12|Soft-shelled Clam Meat
15925|2|4|Journeyman's Stave
15926|2|4|Spellbinder Orb
15927|2|4|Bright Sphere
15928|2|4|Silver-thread Rod
15929|2|4|Nightsky Orb
15930|2|4|Imperial Red Scepter
15931|2|4|Arcane Star
15932|2|4|Disciple's Stein
15933|2|4|Simple Branch
15934|2|4|Sage's Stave
15935|2|4|Durable Rod
15936|2|4|Duskwoven Branch
15937|2|4|Hibernal Sphere
15938|2|4|Mystical Orb
15939|2|4|Councillor's Scepter
15940|2|4|Elegant Scepter
15941|2|4|High Councillor's Scepter
15942|2|4|Master's Rod
15943|2|4|Imbued Shield
15944|2|4|Ancestral Orb
15945|2|4|Runic Stave
15946|2|4|Mystic's Sphere
15947|2|4|Sanguine Star
15962|2|4|Satyr's Rod
15963|2|4|Stonecloth Branch
15964|2|4|Silksand Star
15965|2|4|Windchaser Orb
15966|2|4|Venomshroud Orb
15967|2|4|Highborne Star
15968|2|4|Elunarian Sphere
15969|2|4|Beaded Orb
15970|2|4|Native Branch
15971|2|4|Aboriginal Rod
15972|2|4|Ritual Stein
15973|2|4|Watcher's Star
15974|2|4|Pagan Rod
15975|2|4|Raincaller Scepter
15976|2|4|Thistlefur Branch
15977|2|4|Vital Orb
15978|2|4|Geomancer's Rod
15979|2|4|Embersilk Stave
15980|2|4|Darkmist Orb
15981|2|4|Lunar Sphere
15982|2|4|Bloodwoven Rod
15983|2|4|Gaea's Scepter
15984|2|4|Opulent Scepter
15985|2|4|Arachnidian Branch
15986|2|4|Bonecaster's Star
15987|2|4|Astral Orb
15988|2|4|Resplendent Orb
15989|2|4|Eternal Rod
15990|2|4|Enduring Shield
15991|2|4|Warleader's Shield
15992|1|7|Dense Blasting Powder
15993|1|0|Thorium Grenade
15994|1|7|Thorium Widget
15995|2|2|Thorium Rifle
15996|1|15|Lifelike Mechanical Toad
15997|2|6|Thorium Shells
15998|1|12|Lewis' Note
15999|2|4|Spellpower Goggles Xtreme Plus
16000|1|7|Thorium Tube
16001|1|12|SI:7 Insignia (Fredo)
16002|1|12|SI:7 Insignia (Turyen)
16003|1|12|SI:7 Insignia (Rutger)
16004|3|2|Dark Iron Rifle
16005|1|0|Dark Iron Bomb
16006|1|7|Delicate Arcanite Converter
16007|3|2|Flawless Arcanite Rifle
16008|2|4|Master Engineer's Goggles
16009|2|4|Voice Amplification Modulator
16022|3|4|Arcanite Dragonling
16023|1|0|Masterwork Target Dummy
16026|1|4|PVP Plate Helm Alliance
16027|1|4|PVP Plate Breastplate Alliance
16028|1|4|PVP Plate Legplates Alliance
16029|1|4|PVP Plate Gauntlets Alliance
16030|1|4|PVP Plate Boots Alliance
16031|1|4|PVP Plate Shoulder Alliance
16033|1|4|PVP Plate Wrist Alliance
16034|1|4|PVP Plate Cloak Alliance
16035|1|4|PVP Cloth Helm Horde
16036|1|4|PVP Cloth Robe Horde
16037|1|4|PVP Cloth Legs Horde
16038|1|4|PVP Cloth Shoulder Horde
16039|3|2|Ta'Kierthan Songblade
16040|1|0|Arcane Bomb
16041|1|9|Schematic: Thorium Grenade
16042|1|9|Schematic: Thorium Widget
16043|2|9|Schematic: Thorium Rifle
16044|2|9|Schematic: Lifelike Mechanical Toad
16045|2|9|Schematic: Spellpower Goggles Xtreme Plus
16046|1|9|Schematic: Masterwork Target Dummy
16047|1|9|Schematic: Thorium Tube
16048|2|9|Schematic: Dark Iron Rifle
16049|2|9|Schematic: Dark Iron Bomb
16050|1|9|Schematic: Delicate Arcanite Converter
16051|2|9|Schematic: Thorium Shells
16052|2|9|Schematic: Voice Amplification Modulator
16053|2|9|Schematic: Master Engineer's Goggles
16054|2|9|Schematic: Arcanite Dragonling
16055|2|9|Schematic: Arcane Bomb
16056|2|9|Schematic: Flawless Arcanite Rifle
16057|1|1|Explorer's Knapsack
16058|3|4|Fordring's Seal
16059|1|4|Common Brown Shirt
16060|1|4|Common White Shirt
16072|1|9|Expert Cookbook
16073|1|9|Artisan Cookbook
16082|1|9|Artisan Fishing - The Way of the Lure
16083|1|9|Expert Fishing - The Bass and You
16084|1|9|Expert First Aid - Under Wraps
16085|1|9|Artisan First Aid - Heal Thyself
16110|1|9|Recipe: Monster Omelet
16111|1|9|Recipe: Spiced Chili Crab
16112|1|9|Manual: Heavy Silk Bandage
16113|1|9|Manual: Mageweave Bandage
16114|1|12|Foreman's Blackjack
16115|1|12|Osric's Crate
16166|1|0|Bean Soup
16167|1|0|Versicolor Treat
16168|1|0|Heaven Peach
16169|1|0|Wild Ricecake
16170|1|0|Steamed Mandu
16171|1|0|Shinsollo
16189|1|12|Maggran's Reserve Letter
16190|1|12|Bloodfury Ripper's Remains
16191|1|12|Ornate Mirror
16192|1|12|Besseleth's Fang
16202|2|7|Lesser Eternal Essence
16203|2|7|Greater Eternal Essence
16204|1|7|Illusion Dust
16205|1|12|Gaea Seed
16206|1|7|Arcanite Rod
16207|1|7|Runed Arcanite Rod
16208|1|12|Enchanted Gaea Seeds
16209|1|12|Podrig's Order
16210|1|12|Gordon's Crate
16214|2|9|Formula: Enchant Bracer - Greater Intellect
16215|2|9|Formula: Enchant Boots - Greater Stamina
16216|2|9|Formula: Enchant Cloak - Greater Resistance
16217|1|9|Formula: Enchant Shield - Greater Stamina
16218|2|9|Formula: Enchant Bracer - Superior Spirit
16219|2|9|Formula: Enchant Gloves - Greater Agility
16220|2|9|Formula: Enchant Boots - Spirit
16221|1|9|Formula: Enchant Chest - Major Stamina
16222|2|9|Formula: Enchant Shield - Superior Spirit
16223|2|9|Formula: Enchant Weapon - Icy Chill
16224|1|9|Formula: Enchant Cloak - Superior Defense
16242|2|9|Formula: Enchant Chest - Major Intellect
16243|1|9|Formula: Runed Arcanite Rod
16244|2|9|Formula: Enchant Gloves - Greater Strength
16245|2|9|Formula: Enchant Boots - Greater Agility
16246|2|9|Formula: Enchant Bracer - Superior Strength
16247|2|9|Formula: Enchant 2H Weapon - Superior Impact
16248|2|9|Formula: Enchant Weapon - Unholy Weapon
16249|2|9|Formula: Enchant 2H Weapon - Major Intellect
16250|2|9|Formula: Enchant Weapon - Superior Striking
16251|2|9|Formula: Enchant Bracer - Superior Stamina
16252|2|9|Formula: Enchant Weapon - Crusader
16253|2|9|Formula: Enchant Chest - Greater Stats
16254|3|9|Formula: Enchant Weapon - Lifestealing
16255|2|9|Formula: Enchant 2H Weapon - Major Spirit
16262|1|12|Nessa's Collection
16263|1|12|Laird's Response
16282|1|0|Bundle of Hides
16283|1|12|Ahanu's Leather Goods
16302|1|9|Grimoire of Firebolt (Rank 2)
16303|2|12|Ursangous's Paw
16304|2|12|Shadumbra's Head
16305|2|12|Sharptalon's Claw
16306|1|12|Zargh's Meats
16307|1|12|Gryshka's Letter
16308|1|13|Northridge Crowbar
16309|3|4|Drakefire Amulet
16310|1|12|Brock's List
16311|1|12|Honorary Picks
16312|1|12|Incendrites
16313|1|12|Felix's Chest
16314|1|12|Felix's Bucket of Bolts
16315|3|4|Sergeant Major's Cape
16316|1|9|Grimoire of Firebolt (Rank 3)
16317|1|9|Grimoire of Firebolt (Rank 4)
16318|1|9|Grimoire of Firebolt (Rank 5)
16319|1|9|Grimoire of Firebolt (Rank 6)
16320|1|9|Grimoire of Firebolt (Rank 7)
16321|1|9|Grimoire of Blood Pact (Rank 1)
16322|1|9|Grimoire of Blood Pact (Rank 2)
16323|1|9|Grimoire of Blood Pact (Rank 3)
16324|1|9|Grimoire of Blood Pact (Rank 4)
16325|1|9|Grimoire of Blood Pact (Rank 5)
16326|1|9|Grimoire of Fire Shield (Rank 1)
16327|1|9|Grimoire of Fire Shield (Rank 2)
16328|1|9|Grimoire of Fire Shield (Rank 3)
16329|1|9|Grimoire of Fire Shield (Rank 4)
16330|1|9|Grimoire of Fire Shield (Rank 5)
16331|1|9|Grimoire of Phase Shift
16332|1|12|Thazz'ril's Pick
16333|1|12|Samuel's Remains
16335|3|4|Senior Sergeant's Insignia
16336|3|4|Sergeant Major's Cape
16337|3|4|Sergeant Major's Cape
16338|1|15|Knight-Lieutenant's Steed
16339|1|15|Commander's Steed
16341|3|4|Sergeant's Cloak
16342|3|4|Sergeant's Cape
16343|1|15|Blood Guard's Mount
16344|1|15|Lieutenant General's Mount
16345|4|2|High Warlord's Blade
16346|1|9|Grimoire of Torment (Rank 2)
16347|1|9|Grimoire of Torment (Rank 3)
16348|1|9|Grimoire of Torment (Rank 4)
16349|1|9|Grimoire of Torment (Rank 5)
16350|1|9|Grimoire of Torment (Rank 6)
16351|1|9|Grimoire of Sacrifice (Rank 1)
16352|1|9|Grimoire of Sacrifice (Rank 2)
16353|1|9|Grimoire of Sacrifice (Rank 3)
16354|1|9|Grimoire of Sacrifice (Rank 4)
16355|1|9|Grimoire of Sacrifice (Rank 5)
16356|1|9|Grimoire of Sacrifice (Rank 6)
16357|1|9|Grimoire of Consume Shadows (Rank 1)
16358|1|9|Grimoire of Consume Shadows (Rank 2)
16359|1|9|Grimoire of Consume Shadows (Rank 3)
16360|1|9|Grimoire of Consume Shadows (Rank 4)
16361|1|9|Grimoire of Consume Shadows (Rank 5)
16362|1|9|Grimoire of Consume Shadows (Rank 6)
16363|1|9|Grimoire of Suffering (Rank 1)
16364|1|9|Grimoire of Suffering (Rank 2)
16365|1|9|Grimoire of Suffering (Rank 3)
16366|1|9|Grimoire of Suffering (Rank 4)
16367|3|4|Knight-Captain's Silk Sash
16368|1|9|Grimoire of Lash of Pain (Rank 2)
16369|3|4|Knight-Lieutenant's Silk Boots
16370|3|4|Knight-Captain's Silk Cuffs
16371|1|9|Grimoire of Lash of Pain (Rank 3)
16372|1|9|Grimoire of Lash of Pain (Rank 4)
16373|1|9|Grimoire of Lash of Pain (Rank 5)
16374|1|9|Grimoire of Lash of Pain (Rank 6)
16375|1|9|Grimoire of Soothing Kiss (Rank 1)
16376|1|9|Grimoire of Soothing Kiss (Rank 2)
16377|1|9|Grimoire of Soothing Kiss (Rank 3)
16378|1|9|Grimoire of Soothing Kiss (Rank 4)
16379|1|9|Grimoire of Seduction
16380|1|9|Grimoire of Lesser Invisibility
16381|1|9|Grimoire of Devour Magic (Rank 2)
16382|1|9|Grimoire of Devour Magic (Rank 3)
16383|1|9|Grimoire of Devour Magic (Rank 4)
16384|1|9|Grimoire of Tainted Blood (Rank 1)
16385|1|9|Grimoire of Tainted Blood (Rank 2)
16386|1|9|Grimoire of Tainted Blood (Rank 3)
16387|1|9|Grimoire of Tainted Blood (Rank 4)
16388|1|9|Grimoire of Spell Lock (Rank 1)
16389|1|9|Grimoire of Spell Lock (Rank 2)
16390|1|9|Grimoire of Paranoia
16391|3|4|Knight-Lieutenant's Silk Gloves
16392|3|4|Knight-Lieutenant's Leather Boots
16393|3|4|Knight-Lieutenant's Dragonhide Footwraps
16394|3|4|Knight-Captain's Leather Bracers
16395|3|4|Knight-Captain's Dragonhide Armsplints
16396|3|4|Knight-Lieutenant's Leather Gauntlets
16397|3|4|Knight-Lieutenant's Dragonhide Gloves
16398|3|4|Knight-Captain's Leather Belt
16399|3|4|Knight-Captain's Dragonhide Girdle
16400|3|4|Knight-Captain's Chain Girdle
16401|3|4|Knight-Lieutenant's Chain Boots
16402|3|4|Knight-Captain's Chain Armguards
16403|3|4|Knight-Lieutenant's Chain Gauntlets
16404|3|4|Knight-Captain's Plate Wristguards
16405|3|4|Knight-Lieutenant's Plate Boots
16406|3|4|Knight-Lieutenant's Plate Gauntlets
16407|3|4|Knight-Captain's Plate Girdle
16408|2|12|Befouled Water Globe
16409|3|4|Knight-Lieutenant's Lamellar Sabatons
16410|3|4|Knight-Lieutenant's Lamellar Gauntlets
16411|3|4|Knight-Captain's Lamellar Cinch
16412|3|4|Knight-Captain's Lamellar Armsplints
16413|3|4|Knight-Captain's Silk Raiment
16414|3|4|Knight-Captain's Silk Leggings
16415|3|4|Lieutenant Commander's Silk Spaulders
16416|3|4|Lieutenant Commander's Crown
16417|3|4|Knight-Captain's Leather Armor
16418|3|4|Lieutenant Commander's Leather Veil
16419|3|4|Knight-Captain's Leather Legguards
16420|3|4|Lieutenant Commander's Leather Spaulders
16421|3|4|Knight-Captain's Dragonhide Tunic
16422|3|4|Knight-Captain's Dragonhide Leggings
16423|3|4|Lieutenant Commander's Dragonhide Epaulets
16424|3|4|Lieutenant Commander's Dragonhide Shroud
16425|3|4|Knight-Captain's Chain Hauberk
16426|3|4|Knight-Captain's Chain Leggings
16427|3|4|Lieutenant Commander's Chain Pauldrons
16428|3|4|Lieutenant Commander's Chain Helmet
16429|3|4|Lieutenant Commander's Plate Helm
16430|3|4|Knight-Captain's Plate Chestguard
16431|3|4|Knight-Captain's Plate Leggings
16432|3|4|Lieutenant Commander's Plate Pauldrons
16433|3|4|Knight-Captain's Lamellar Breastplate
16434|3|4|Lieutenant Commander's Lamellar Headguard
16435|3|4|Knight-Captain's Lamellar Leggings
16436|3|4|Lieutenant Commander's Lamellar Shoulders
16437|4|4|Marshal's Silk Footwraps
16438|4|4|Marshal's Silk Bracers
16439|4|4|Marshal's Silk Sash
16440|4|4|Marshal's Silk Gloves
16441|4|4|Field Marshal's Coronet
16442|4|4|Marshal's Silk Leggings
16443|4|4|Field Marshal's Silk Vestments
16444|4|4|Field Marshal's Silk Spaulders
16445|4|4|Marshal's Dragonhide Bracers
16446|4|4|Marshal's Leather Footguards
16447|4|4|Marshal's Dragonhide Waistguard
16448|4|4|Marshal's Dragonhide Gauntlets
16449|4|4|Field Marshal's Dragonhide Spaulders
16450|4|4|Marshal's Dragonhide Legguards
16451|4|4|Field Marshal's Dragonhide Helmet
16452|4|4|Field Marshal's Dragonhide Breastplate
16453|4|4|Field Marshal's Leather Chestpiece
16454|4|4|Marshal's Leather Handgrips
16455|4|4|Field Marshal's Leather Mask
16456|4|4|Marshal's Leather Leggings
16457|4|4|Field Marshal's Leather Epaulets
16458|4|4|Marshal's Leather Cinch
16459|4|4|Marshal's Dragonhide Boots
16460|4|4|Marshal's Leather Armsplints
16461|4|4|Marshal's Chain Bracers
16462|4|4|Marshal's Chain Boots
16463|4|4|Marshal's Chain Grips
16464|4|4|Marshal's Chain Girdle
16465|4|4|Field Marshal's Chain Helm
16466|4|4|Field Marshal's Chain Breastplate
16467|4|4|Marshal's Chain Legguards
16468|4|4|Field Marshal's Chain Spaulders
16469|4|4|Marshal's Lamellar Armguards
16470|4|4|Marshal's Lamellar Belt
16471|4|4|Marshal's Lamellar Gloves
16472|4|4|Marshal's Lamellar Boots
16473|4|4|Field Marshal's Lamellar Chestplate
16474|4|4|Field Marshal's Lamellar Faceguard
16475|4|4|Marshal's Lamellar Legplates
16476|4|4|Field Marshal's Lamellar Pauldrons
16477|4|4|Field Marshal's Plate Armor
16478|4|4|Field Marshal's Plate Helm
16479|4|4|Marshal's Plate Legguards
16480|4|4|Field Marshal's Plate Shoulderguards
16481|4|4|Marshal's Plate Bracers
16482|4|4|Marshal's Plate Girdle
16483|4|4|Marshal's Plate Boots
16484|4|4|Marshal's Plate Gauntlets
16485|3|4|Blood Guard's Silk Footwraps
16486|3|4|First Sergeant's Silk Cuffs
16487|3|4|Blood Guard's Silk Gloves
16488|3|4|Legionnaire's Silk Belt
16489|3|4|Champion's Silk Hood
16490|3|4|Legionnaire's Silk Pants
16491|3|4|Legionnaire's Silk Robes
16492|3|4|Champion's Silk Shoulderpads
16493|3|4|Legionnaire's Dragonhide Armguards
16494|3|4|Blood Guard's Dragonhide Boots
16495|3|4|Legionnaire's Dragonhide Waistband
16496|3|4|Blood Guard's Dragonhide Gauntlets
16497|3|4|First Sergeant's Leather Armguards
16498|3|4|Blood Guard's Leather Treads
16499|3|4|Blood Guard's Leather Vices
16500|3|4|Legionnaire's Leather Girdle
16501|3|4|Champion's Dragonhide Spaulders
16502|3|4|Legionnaire's Dragonhide Trousers
16503|3|4|Champion's Dragonhide Helm
16504|3|4|Legionnaire's Dragonhide Breastplate
16505|3|4|Legionnaire's Leather Hauberk
16506|3|4|Champion's Leather Headguard
16507|3|4|Champion's Leather Mantle
16508|3|4|Legionnaire's Leather Leggings
16509|3|4|Blood Guard's Plate Boots
16510|3|4|Blood Guard's Plate Gloves
16511|3|4|Legionnaire's Plate Cinch
16512|3|4|Legionnaire's Plate Bracers
16513|3|4|Legionnaire's Plate Armor
16514|3|4|Champion's Plate Headguard
16515|3|4|Legionnaire's Plate Legguards
16516|3|4|Champion's Plate Pauldrons
16517|3|4|Legionnaire's Chain Bracers
16518|3|4|Blood Guard's Mail Walkers
16519|3|4|Blood Guard's Mail Grips
16520|3|4|Legionnaire's Mail Cinch
16521|3|4|Champion's Mail Helm
16522|3|4|Legionnaire's Mail Chestpiece
16523|3|4|Legionnaire's Mail Leggings
16524|3|4|Champion's Mail Shoulders
16525|3|4|Legionnaire's Chain Breastplate
16526|3|4|Champion's Chain Headguard
16527|3|4|Legionnaire's Chain Leggings
16528|3|4|Champion's Chain Pauldrons
16529|3|4|Legionnaire's Chain Girdle
16530|3|4|Blood Guard's Chain Gauntlets
16531|3|4|Blood Guard's Chain Boots
16532|3|4|First Sergeant's Mail Wristguards
16533|4|4|Warlord's Silk Cowl
16534|4|4|General's Silk Trousers
16535|4|4|Warlord's Silk Raiment
16536|4|4|Warlord's Silk Amice
16537|4|4|General's Silk Sash
16538|4|4|General's Silk Cuffs
16539|4|4|General's Silk Boots
16540|4|4|General's Silk Handguards
16541|4|4|Warlord's Plate Armor
16542|4|4|Warlord's Plate Headpiece
16543|4|4|General's Plate Leggings
16544|4|4|Warlord's Plate Shoulders
16545|4|4|General's Plate Boots
16546|4|4|General's Plate Armguards
16547|4|4|General's Plate Girdle
16548|4|4|General's Plate Gauntlets
16549|4|4|Warlord's Dragonhide Hauberk
16550|4|4|Warlord's Dragonhide Helmet
16551|4|4|Warlord's Dragonhide Epaulets
16552|4|4|General's Dragonhide Leggings
16553|4|4|General's Dragonhide Bracers
16554|4|4|General's Dragonhide Boots
16555|4|4|General's Dragonhide Gloves
16556|4|4|General's Dragonhide Belt
16557|4|4|General's Leather Girdle
16558|4|4|General's Leather Treads
16559|4|4|General's Leather Armsplints
16560|4|4|General's Leather Mitts
16561|4|4|Warlord's Leather Helm
16562|4|4|Warlord's Leather Spaulders
16563|4|4|Warlord's Leather Breastplate
16564|4|4|General's Leather Legguards
16565|4|4|Warlord's Chain Chestpiece
16566|4|4|Warlord's Chain Helmet
16567|4|4|General's Chain Legguards
16568|4|4|Warlord's Chain Shoulders
16569|4|4|General's Chain Sabatons
16570|4|4|General's Chain Wristguards
16571|4|4|General's Chain Gloves
16572|4|4|General's Chain Girdle
16573|4|4|General's Mail Boots
16574|4|4|General's Mail Gauntlets
16575|4|4|General's Mail Waistband
16576|4|4|General's Mail Bracers
16577|4|4|Warlord's Mail Armor
16578|4|4|Warlord's Mail Helm
16579|4|4|General's Mail Leggings
16580|4|4|Warlord's Mail Spaulders
16581|1|12|Resonite Crystal
16583|1|15|Demonic Figurine
16602|1|12|Troll Charm
16603|1|12|Enchanted Resonite Crystal
16604|2|4|Moon Robes of Elune
16605|2|4|Friar's Robes of the Light
16606|2|4|Juju Hex Robes
16607|2|4|Acolyte's Sacrificial Robes
16608|2|4|Aquarius Belt
16622|2|2|Thornflinger
16623|2|4|Opaline Medallion
16642|1|12|Shredder Operating Manual - Chapter 1
16643|1|12|Shredder Operating Manual - Chapter 2
16644|1|12|Shredder Operating Manual - Chapter 3
16645|1|12|Shredder Operating Manual - Page 1
16646|1|12|Shredder Operating Manual - Page 2
16647|1|12|Shredder Operating Manual - Page 3
16648|1|12|Shredder Operating Manual - Page 4
16649|1|12|Shredder Operating Manual - Page 5
16650|1|12|Shredder Operating Manual - Page 6
16651|1|12|Shredder Operating Manual - Page 7
16652|1|12|Shredder Operating Manual - Page 8
16653|1|12|Shredder Operating Manual - Page 9
16654|1|12|Shredder Operating Manual - Page 10
16655|1|12|Shredder Operating Manual - Page 11
16656|1|12|Shredder Operating Manual - Page 12
16658|2|4|Wildhunter Cloak
16659|2|4|Deftkin Belt
16660|2|4|Driftmire Shield
16661|2|4|Soft Willow Cape
16662|1|12|Fragment of the Dragon's Eye
16663|1|12|Blood of the Black Dragon Champion
16664|2|4|Ornate Bracers
16665|2|9|Tome of Tranquilizing Shot
16666|3|4|Vest of Elements
16667|3|4|Coif of Elements
16668|3|4|Kilt of Elements
16669|3|4|Pauldrons of Elements
16670|3|4|Boots of Elements
16671|3|4|Bindings of Elements
16672|3|4|Gauntlets of Elements
16673|3|4|Cord of Elements
16674|3|4|Beaststalker's Tunic
16675|3|4|Beaststalker's Boots
16676|3|4|Beaststalker's Gloves
16677|3|4|Beaststalker's Cap
16678|3|4|Beaststalker's Pants
16679|3|4|Beaststalker's Mantle
16680|3|4|Beaststalker's Belt
16681|3|4|Beaststalker's Bindings
16682|3|4|Magister's Boots
16683|3|4|Magister's Bindings
16684|3|4|Magister's Gloves
16685|3|4|Magister's Belt
16686|3|4|Magister's Crown
16687|3|4|Magister's Leggings
16688|3|4|Magister's Robes
16689|3|4|Magister's Mantle
16690|3|4|Devout Robe
16691|3|4|Devout Sandals
16692|3|4|Devout Gloves
16693|3|4|Devout Crown
16694|3|4|Devout Skirt
16695|3|4|Devout Mantle
16696|3|4|Devout Belt
16697|3|4|Devout Bracers
16698|3|4|Dreadmist Mask
16699|3|4|Dreadmist Leggings
16700|3|4|Dreadmist Robe
16701|3|4|Dreadmist Mantle
16702|3|4|Dreadmist Belt
16703|3|4|Dreadmist Bracers
16704|3|4|Dreadmist Sandals
16705|3|4|Dreadmist Wraps
16706|3|4|Wildheart Vest
16707|3|4|Shadowcraft Cap
16708|3|4|Shadowcraft Spaulders
16709|3|4|Shadowcraft Pants
16710|3|4|Shadowcraft Bracers
16711|3|4|Shadowcraft Boots
16712|3|4|Shadowcraft Gloves
16713|3|4|Shadowcraft Belt
16714|3|4|Wildheart Bracers
16715|3|4|Wildheart Boots
16716|3|4|Wildheart Belt
16717|3|4|Wildheart Gloves
16718|3|4|Wildheart Spaulders
16719|3|4|Wildheart Kilt
16720|3|4|Wildheart Cowl
16721|3|4|Shadowcraft Tunic
16722|3|4|Lightforge Bracers
16723|3|4|Lightforge Belt
16724|3|4|Lightforge Gauntlets
16725|3|4|Lightforge Boots
16726|3|4|Lightforge Breastplate
16727|3|4|Lightforge Helm
16728|3|4|Lightforge Legplates
16729|3|4|Lightforge Spaulders
16730|3|4|Breastplate of Valor
16731|3|4|Helm of Valor
16732|3|4|Legplates of Valor
16733|3|4|Spaulders of Valor
16734|3|4|Boots of Valor
16735|3|4|Bracers of Valor
16736|3|4|Belt of Valor
16737|3|4|Gauntlets of Valor
16738|2|4|Witherseed Gloves
16739|2|4|Rugwood Mantle
16740|2|4|Shredder Operating Gloves
16741|2|4|Oilrag Handwraps
16742|1|12|Warsong Saw Blades
16743|1|12|Logging Rope
16744|1|12|Warsong Oil
16745|1|12|Warsong Axe Shipment
16746|1|12|Warsong Report
16747|0|15|Broken Lock
16748|0|15|Padded Lining
16762|1|12|Fathom Core
16763|1|12|Warsong Runner Update
16764|1|12|Warsong Scout Update
16765|1|12|Warsong Outrider Update
16766|1|0|Undermine Clam Chowder
16767|1|9|Recipe: Undermine Clam Chowder
16768|2|4|Furbolg Medicine Pouch
16769|2|2|Furbolg Medicine Totem
16782|2|12|Strange Water Globe
16783|1|12|Bundle of Reports
16784|1|12|Sapphire of Aku'Mai
16785|1|12|Rexxar's Testament
16786|1|12|Black Dragonspawn Eye
16787|1|12|Amulet of Draconic Subversion
16788|2|4|Captain Rackmore's Wheel
16789|2|2|Captain Rackmore's Tiller
16790|1|15|Damp Note
16791|2|4|Silkstream Cuffs
16792|2|2|Giant Club
16793|2|4|Arcmetal Shoulders
16794|2|4|Gripsteel Wristguards
16795|4|4|Arcanist Crown
16796|4|4|Arcanist Leggings
16797|4|4|Arcanist Mantle
16798|4|4|Arcanist Robes
16799|4|4|Arcanist Bindings
16800|4|4|Arcanist Boots
16801|4|4|Arcanist Gloves
16802|4|4|Arcanist Belt
16803|4|4|Felheart Slippers
16804|4|4|Felheart Bracers
16805|4|4|Felheart Gloves
16806|4|4|Felheart Belt
16807|4|4|Felheart Shoulder Pads
16808|4|4|Felheart Horns
16809|4|4|Felheart Robes
16810|4|4|Felheart Pants
16811|4|4|Boots of Prophecy
16812|4|4|Gloves of Prophecy
16813|4|4|Circlet of Prophecy
16814|4|4|Pants of Prophecy
16815|4|4|Robes of Prophecy
16816|4|4|Mantle of Prophecy
16817|4|4|Girdle of Prophecy
16818|4|4|Netherwind Belt
16819|4|4|Vambraces of Prophecy
16820|4|4|Nightslayer Chestpiece
16821|4|4|Nightslayer Cover
16822|4|4|Nightslayer Pants
16823|4|4|Nightslayer Shoulder Pads
16824|4|4|Nightslayer Boots
16825|4|4|Nightslayer Bracelets
16826|4|4|Nightslayer Gloves
16827|4|4|Nightslayer Belt
16828|4|4|Cenarion Belt
16829|4|4|Cenarion Boots
16830|4|4|Cenarion Bracers
16831|4|4|Cenarion Gloves
16832|4|4|Bloodfang Spaulders
16833|4|4|Cenarion Vestments
16834|4|4|Cenarion Helm
16835|4|4|Cenarion Leggings
16836|4|4|Cenarion Spaulders
16837|4|4|Earthfury Boots
16838|4|4|Earthfury Belt
16839|4|4|Earthfury Gauntlets
16840|4|4|Earthfury Bracers
16841|4|4|Earthfury Vestments
16842|4|4|Earthfury Helmet
16843|4|4|Earthfury Legguards
16844|4|4|Earthfury Epaulets
16845|4|4|Giantstalker's Breastplate
16846|4|4|Giantstalker's Helmet
16847|4|4|Giantstalker's Leggings
16848|4|4|Giantstalker's Epaulets
16849|4|4|Giantstalker's Boots
16850|4|4|Giantstalker's Bracers
16851|4|4|Giantstalker's Belt
16852|4|4|Giantstalker's Gloves
16853|4|4|Lawbringer Chestguard
16854|4|4|Lawbringer Helm
16855|4|4|Lawbringer Legplates
16856|4|4|Lawbringer Spaulders
16857|4|4|Lawbringer Bracers
16858|4|4|Lawbringer Belt
16859|4|4|Lawbringer Boots
16860|4|4|Lawbringer Gauntlets
16861|4|4|Bracers of Might
16862|4|4|Sabatons of Might
16863|4|4|Gauntlets of Might
16864|4|4|Belt of Might
16865|4|4|Breastplate of Might
16866|4|4|Helm of Might
16867|4|4|Legplates of Might
16868|4|4|Pauldrons of Might
16869|1|12|The Skull of Scryer
16870|1|12|The Skull of Somnus
16871|1|12|The Skull of Chronalis
16872|1|12|The Skull of Axtroz
16873|2|4|Braidfur Gloves
16882|1|15|Battered Junkbox
16883|1|15|Worn Junkbox
16884|1|15|Sturdy Junkbox
16885|1|15|Heavy Junkbox
16886|3|2|Outlaw Sabre
16887|3|4|Witch's Finger
16888|1|12|Dull Drakefire Amulet
16889|2|2|Polished Walking Staff
16890|2|2|Slatemetal Cutlass
16891|2|2|Claystone Shortsword
16892|1|0|Lesser Soulstone
16893|1|0|Soulstone
16894|2|2|Clear Crystal Rod
16895|1|0|Greater Soulstone
16896|1|0|Major Soulstone
16897|4|4|Stormrage Chestguard
16898|4|4|Stormrage Boots
16899|4|4|Stormrage Handguards
16900|4|4|Stormrage Cover
16901|4|4|Stormrage Legguards
16902|4|4|Stormrage Pauldrons
16903|4|4|Stormrage Belt
16904|4|4|Stormrage Bracers
16905|4|4|Bloodfang Chestpiece
16906|4|4|Bloodfang Boots
16907|4|4|Bloodfang Gloves
16908|4|4|Bloodfang Hood
16909|4|4|Bloodfang Pants
16910|4|4|Bloodfang Belt
16911|4|4|Bloodfang Bracers
16912|4|4|Netherwind Boots
16913|4|4|Netherwind Gloves
16914|4|4|Netherwind Crown
16915|4|4|Netherwind Pants
16916|4|4|Netherwind Robes
16917|4|4|Netherwind Mantle
16918|4|4|Netherwind Bindings
16919|4|4|Boots of Transcendence
16920|4|4|Handguards of Transcendence
16921|4|4|Halo of Transcendence
16922|4|4|Leggings of Transcendence
16923|4|4|Robes of Transcendence
16924|4|4|Pauldrons of Transcendence
16925|4|4|Belt of Transcendence
16926|4|4|Bindings of Transcendence
16927|4|4|Nemesis Boots
16928|4|4|Nemesis Gloves
16929|4|4|Nemesis Skullcap
16930|4|4|Nemesis Leggings
16931|4|4|Nemesis Robes
16932|4|4|Nemesis Spaulders
16933|4|4|Nemesis Belt
16934|4|4|Nemesis Bracers
16935|4|4|Dragonstalker's Bracers
16936|4|4|Dragonstalker's Belt
16937|4|4|Dragonstalker's Spaulders
16938|4|4|Dragonstalker's Legguards
16939|4|4|Dragonstalker's Helm
16940|4|4|Dragonstalker's Gauntlets
16941|4|4|Dragonstalker's Greaves
16942|4|4|Dragonstalker's Breastplate
16943|4|4|Bracers of Ten Storms
16944|4|4|Belt of Ten Storms
16945|4|4|Epaulets of Ten Storms
16946|4|4|Legplates of Ten Storms
16947|4|4|Helmet of Ten Storms
16948|4|4|Gauntlets of Ten Storms
16949|4|4|Greaves of Ten Storms
16950|4|4|Breastplate of Ten Storms
16951|4|4|Judgement Bindings
16952|4|4|Judgement Belt
16953|4|4|Judgement Spaulders
16954|4|4|Judgement Legplates
16955|4|4|Judgement Crown
16956|4|4|Judgement Gauntlets
16957|4|4|Judgement Sabatons
16958|4|4|Judgement Breastplate
16959|4|4|Bracelets of Wrath
16960|4|4|Waistband of Wrath
16961|4|4|Pauldrons of Wrath
16962|4|4|Legplates of Wrath
16963|4|4|Helm of Wrath
16964|4|4|Gauntlets of Wrath
16965|4|4|Sabatons of Wrath
16966|4|4|Breastplate of Wrath
16967|1|15|Feralas Ahi
16968|1|12|Sar'theris Striker
16969|1|12|Savage Coast Blue Sailfin
16970|1|12|Misty Reed Mahi Mahi
16971|1|0|Clamlette Surprise
16972|1|12|Karang's Banner
16973|1|12|Vial of Dire Water
16974|1|12|Empty Water Vial
16975|3|4|Warsong Sash
16976|1|12|Murgut's Totem
16977|3|4|Warsong Boots
16978|3|4|Warsong Gauntlets
16979|4|4|Flarecore Gloves
16980|4|4|Flarecore Mantle
16981|2|4|Owlbeard Bracers
16982|4|4|Corehound Boots
16983|4|4|Molten Helm
16984|4|4|Black Dragonscale Boots
16985|2|4|Windseeker Boots
16986|2|4|Sandspire Gloves
16987|2|4|Screecher Belt
16988|4|4|Fiery Chain Shoulders
16989|4|4|Fiery Chain Girdle
16990|2|4|Spritekin Cloak
16991|1|12|Triage Bandage
16992|2|2|Smokey's Explosive Launcher
16993|2|2|Smokey's Fireshooter
16994|2|4|Duskwing Gloves
16995|2|4|Duskwing Mantle
16996|3|2|Gorewood Bow
16997|3|2|Stormrager
16998|3|4|Sacred Protector
16999|3|4|Royal Seal of Alexis
17000|2|4|Band of the Wraith
17001|2|4|Elemental Circle
17002|2|2|Ichor Spitter
17003|2|2|Skullstone Hammer
17004|2|2|Sarah's Guide
17005|2|4|Boorguard Tunic
17006|2|4|Cobalt Legguards
17007|4|4|Stonerender Gauntlets
17008|1|15|Small Scroll
17009|1|12|Ambassador Malcin's Head
17010|3|7|Fiery Core
17011|3|7|Lava Core
17012|1|7|Core Leather
17013|4|4|Dark Iron Leggings
17014|4|4|Dark Iron Bracers
17015|3|2|Dark Iron Reaver
17016|3|2|Dark Iron Destroyer
17017|1|9|Pattern: Flarecore Mantle
17018|1|9|Pattern: Flarecore Gloves
17019|1|15|Arcane Dust
17020|1|15|Arcane Powder
17021|1|15|Wild Berries
17022|1|9|Pattern: Corehound Boots
17023|1|9|Pattern: Molten Helm
17024|1|15|Wild Root
17025|1|9|Pattern: Black Dragonscale Boots
17026|1|15|Wild Thornroot
17027|1|15|Scented Candle
17028|1|15|Holy Candle
17029|1|15|Sacred Candle
17030|1|5|Ankh
17031|1|15|Rune of Teleportation
17032|1|15|Rune of Portals
17033|1|15|Symbol of Divinity
17034|1|15|Maple Seed
17035|1|15|Stranglethorn Seed
17036|1|15|Ashwood Seed
17037|1|15|Hornbeam Seed
17038|1|15|Ironwood Seed
17039|2|2|Skullbreaker
17042|2|2|Nail Spitter
17043|2|4|Zealot's Robe
17044|3|4|Will of the Martyr
17045|3|4|Blood of the Martyr
17046|2|2|Gutterblade
17047|2|4|Luminescent Amice
17048|1|0|Rumsey Rum
17049|3|9|Plans: Fiery Chain Girdle
17050|3|4|Chan's Imperial Robes
17051|3|9|Plans: Dark Iron Bracers
17052|3|9|Plans: Dark Iron Leggings
17053|3|9|Plans: Fiery Chain Shoulders
17054|3|2|Joonho's Mercy
17055|3|2|Changuk Smasher
17056|1|15|Light Feather
17057|1|15|Shiny Fish Scales
17058|1|15|Fish Oil
17059|3|9|Plans: Dark Iron Reaver
17060|3|9|Plans: Dark Iron Destroyer
17061|3|4|Juno's Shadow
17062|1|9|Recipe: Mithril Head Trout
17063|4|4|Band of Accuria
17064|4|4|Shard of the Scale
17065|4|4|Medallion of Steadfast Might
17066|4|4|Drillborer Disk
17067|4|4|Ancient Cornerstone Grimoire
17068|4|2|Deathbringer
17069|4|2|Striker's Mark
17070|4|2|Fang of the Mystics
17071|4|2|Gutgore Ripper
17072|4|2|Blastershot Launcher
17073|4|2|Earthshaker
17074|4|2|Shadowstrike
17075|4|2|Vis'kag the Bloodletter
17076|4|2|Bonereaver's Edge
17077|4|2|Crimson Shocker
17078|4|4|Sapphiron Drape
17082|4|4|Shard of the Flame
17102|4|4|Cloak of the Shrouded Mists
17103|4|2|Azuresong Mageblade
17104|4|2|Spinal Reaper
17105|4|2|Aurastone Hammer
17106|4|4|Malistar's Defender
17107|4|4|Dragon's Blood Cape
17108|4|4|Mark of Deflection
17109|4|4|Choker of Enlightenment
17110|4|4|Seal of the Archmagus
17111|4|4|Blazefury Medallion
17112|4|2|Empyrean Demolisher
17113|4|2|Amberseal Keeper
17114|1|12|Araj's Phylactery Shard
17115|1|12|Squirrel Token
17116|1|12|Squirrel Token
17117|1|12|Rat Catcher's Flute
17118|1|12|Carton of Mystery Meat
17119|1|0|Deeprun Rat Kabob
17124|1|12|Syndicate Emblem
17125|1|12|Seal of Ravenholdt
17126|1|12|Elegant Letter
17142|5|2|Shard of the Defiler
17182|5|2|Sulfuras, Hand of Ragnaros
17183|1|4|Dented Buckler
17184|1|4|Small Shield
17185|1|4|Round Buckler
17186|1|4|Small Targe
17187|1|4|Banded Buckler
17188|1|4|Ringed Buckler
17189|1|4|Metal Buckler
17190|1|4|Ornate Buckler
17191|3|12|Scepter of Celebras
17192|1|4|Reinforced Targe
17193|4|2|Sulfuron Hammer
17194|1|15|Holiday Spices
17195|1|15|UNUSED ITEM
17196|1|0|Holiday Spirits
17197|1|0|Gingerbread Cookie
17198|1|0|Egg Nog
17199|1|0|Bad Egg Nog
17200|1|9|Recipe: Gingerbread Cookie
17201|1|9|Recipe: Egg Nog
17202|1|15|Snowball
17203|4|7|Sulfuron Ingot
17204|5|7|Eye of Sulfuras
17222|1|0|Spider Sausage
17223|4|2|Thunderstrike
17224|2|12|Scrying Scope
17242|1|13|Key to Salem's Chest
17262|1|13|James' Key
17302|1|0|Blue Ribboned Holiday Gift
17303|1|0|Blue Ribboned Wrapping Paper
17304|1|0|Green Ribboned Wrapping Paper
17305|1|0|Green Ribboned Holiday Gift
17306|1|12|Stormpike Soldier's Blood
17307|1|0|Purple Ribboned Wrapping Paper
17308|1|0|Purple Ribboned Holiday Gift
17309|1|12|Discordant Bracers
17310|1|12|Aspect of Neptulon
17322|1|12|Eye of the Emberseer
17323|1|12|Mulverick's Beacon
17324|1|12|Guse's Beacon
17325|1|12|Jeztor's Beacon
17326|1|12|Stormpike Soldier's Flesh
17327|1|12|Stormpike Lieutenant's Flesh
17328|1|12|Stormpike Commander's Flesh
17329|1|12|Hand of Lucifron
17330|1|12|Hand of Sulfuron
17331|1|12|Hand of Gehennas
17332|1|12|Hand of Shazzrah
17333|1|12|Aqual Quintessence
17344|1|0|Candy Cane
17345|1|12|Silithid Goo
17346|1|12|Encrusted Silithid Object
17347|2|12|Syndicate Man Tracker (MURP)
17348|1|0|Major Healing Draught
17349|1|0|Superior Healing Draught
17351|1|0|Major Mana Draught
17352|1|0|Superior Mana Draught
17353|1|12|Stormpike Assault Orders
17354|1|12|Master Ryson's All Seeing Eye
17355|1|12|Rabine's Letter
17362|1|12|Ryson's Beacon
17363|1|12|Ryson's Beacon
17364|2|12|Scrying Scope
17384|3|12|Zinfizzlex's Portable Shredder Unit
17402|1|0|Greatfather's Winter Ale
17403|1|0|Steamwheedle Fizzy Spirits
17404|1|0|Blended Bean Brew
17405|1|15|Green Garden Tea
17406|1|0|Holiday Cheesewheel
17407|1|0|Graccu's Homemade Meat Pie
17408|1|0|Spicy Beefstick
17409|2|12|Encrusted Crystal Fragment
17410|3|12|Zinfizzlex's Portable Shredder Unit
17411|1|12|Steamsaw
]==],
[==[
17413|3|9|Codex: Prayer of Fortitude
17414|3|9|Codex: Prayer of Fortitude II
17422|1|12|Armor Scraps
17423|1|12|Storm Crystal
17442|1|12|Frostwolf Assault Orders
17502|1|12|Frostwolf Soldier's Medal
17503|1|12|Frostwolf Lieutenant's Medal
17504|1|12|Frostwolf Commander's Medal
17505|1|12|Ichman's Beacon
17506|1|12|Vipore's Beacon
17507|1|12|Slidore's Beacon
17508|2|4|Forcestone Buckler
17522|1|12|Irondeep Supplies
17523|2|4|Smokey's Drape
17542|1|12|Coldtooth Supplies
17562|3|4|Knight-Lieutenant's Dreadweave Boots
17563|3|4|Knight-Captain's Dreadweave Bracers
17564|3|4|Knight-Lieutenant's Dreadweave Gloves
17565|3|4|Knight-Captain's Dreadweave Belt
17566|3|4|Lieutenant Commander's Headguard
17567|3|4|Knight-Captain's Dreadweave Leggings
17568|3|4|Knight-Captain's Dreadweave Robe
17569|3|4|Lieutenant Commander's Dreadweave Mantle
17570|3|4|Champion's Dreadweave Hood
17571|3|4|Legionnaire's Dreadweave Leggings
17572|3|4|Legionnaire's Dreadweave Robe
17573|3|4|Champion's Dreadweave Shoulders
17574|3|4|Legionnaire's Dreadweave Belt
17575|3|4|Legionnaire's Dreadweave Bracers
17576|3|4|Blood Guard's Dreadweave Boots
17577|3|4|Blood Guard's Dreadweave Gloves
17578|4|4|Field Marshal's Coronal
17579|4|4|Marshal's Dreadweave Leggings
17580|4|4|Field Marshal's Dreadweave Shoulders
17581|4|4|Field Marshal's Dreadweave Robe
17582|4|4|Marshal's Dreadweave Cuffs
17583|4|4|Marshal's Dreadweave Boots
17584|4|4|Marshal's Dreadweave Gloves
17585|4|4|Marshal's Dreadweave Sash
17586|4|4|General's Dreadweave Boots
17587|4|4|General's Dreadweave Bracers
17588|4|4|General's Dreadweave Gloves
17589|4|4|General's Dreadweave Belt
17590|4|4|Warlord's Dreadweave Mantle
17591|4|4|Warlord's Dreadweave Hood
17592|4|4|Warlord's Dreadweave Robe
17593|4|4|General's Dreadweave Pants
17594|3|4|Knight-Lieutenant's Satin Boots
17595|3|4|Knight-Captain's Satin Cuffs
17596|3|4|Knight-Lieutenant's Satin Gloves
17597|3|4|Knight-Captain's Satin Cord
17598|3|4|Lieutenant Commander's Diadem
17599|3|4|Knight-Captain's Satin Leggings
17600|3|4|Knight-Captain's Satin Robes
17601|3|4|Lieutenant Commander's Satin Amice
17602|4|4|Field Marshal's Headdress
17603|4|4|Marshal's Satin Pants
17604|4|4|Field Marshal's Satin Mantle
17605|4|4|Field Marshal's Satin Vestments
17606|4|4|Marshal's Satin Bracers
17607|4|4|Marshal's Satin Sandals
17608|4|4|Marshal's Satin Gloves
17609|4|4|Marshal's Satin Sash
17610|3|4|Champion's Satin Cowl
17611|3|4|Legionnaire's Satin Trousers
17612|3|4|Legionnaire's Satin Vestments
17613|3|4|Champion's Satin Shoulderpads
17614|3|4|Legionnaire's Satin Sash
17615|3|4|Legionnaire's Satin Cuffs
17616|3|4|Blood Guard's Satin Boots
17617|3|4|Blood Guard's Satin Gloves
17618|4|4|General's Satin Boots
17619|4|4|General's Satin Bracers
17620|4|4|General's Satin Gloves
17621|4|4|General's Satin Cinch
17622|4|4|Warlord's Satin Mantle
17623|4|4|Warlord's Satin Cowl
17624|4|4|Warlord's Satin Robes
17625|4|4|General's Satin Leggings
17626|1|12|Frostwolf Muzzle
17642|1|12|Alterac Ram Hide
17643|1|12|Frostwolf Hide
17662|1|12|Stolen Treats
17682|3|9|Book: Gift of the Wild
17683|3|9|Book: Gift of the Wild II
17684|1|12|Theradric Crystal Carving
17685|1|15|Smokywood Pastures Sampler
17686|2|2|Master Hunter's Bow
17687|2|2|Master Hunter's Rifle
17688|2|4|Jungle Boots
17689|1|12|Stormpike Training Collar
17690|2|4|Frostwolf Insignia Rank 1
17691|2|4|Stormpike Insignia Rank 1
17692|2|4|Horn Ring
17693|1|12|Coated Cerulean Vial
17694|2|4|Band of the Fist
17695|2|4|Chestnut Mantle
17696|1|12|Filled Cerulean Vial
17702|1|12|Celebrian Rod
17703|1|12|Celebrian Diamond
17704|2|2|Edge of Winter
17705|3|2|Thrash Blade
17706|2|9|Plans: Edge of Winter
17707|3|4|Gemshard Heart
17708|1|0|Elixir of Frost Power
17709|1|9|Recipe: Elixir of Frost Power
17710|3|2|Charstone Dirk
17711|3|4|Elemental Rockridge Leggings
17712|1|15|Winter Veil Disguise Kit
17713|3|4|Blackstone Ring
17714|3|4|Bracers of the Stone Princess
17715|3|4|Eye of Theradras
17716|1|0|Snowmaster 9000
17717|3|2|Megashot Rifle
17718|3|4|Gizlock's Hypertech Buckler
17719|3|2|Inventor's Focal Sword
17720|2|9|Schematic: Snowmaster 9000
17721|2|4|Gloves of the Greatfather
17722|2|9|Pattern: Gloves of the Greatfather
17723|1|4|Green Holiday Shirt
17724|1|9|Pattern: Green Holiday Shirt
17725|2|9|Formula: Enchant Weapon - Winter's Might
17726|1|15|Smokywood Pastures Special Gift
17727|1|15|Smokywood Pastures Gift Pack
17728|3|4|Albino Crocscale Boots
17730|3|2|Gatorbite Axe
17731|1|12|Scroll of Celebras
17732|3|4|Rotgrip Mantle
17733|3|2|Fist of Stone
17734|3|4|Helm of the Mountain
17735|1|15|The Feast of Winter Veil
17736|3|4|Rockgrip Gauntlets
17737|3|4|Cloud Stone
17738|3|2|Claw of Celebras
17739|3|4|Grovekeeper's Drape
17740|3|4|Soothsayer's Headdress
17741|3|4|Nature's Embrace
17742|3|4|Fungus Shroud Armor
17743|3|2|Resurgence Rod
17744|3|4|Heart of Noxxion
17745|3|2|Noxious Shooter
17746|3|4|Noxxion's Shackles
17747|1|0|Razorlash Root
17748|3|4|Vinerot Sandals
17749|3|4|Phytoskin Spaulders
17750|2|4|Chloromesh Girdle
17751|2|4|Brusslehide Leggings
17752|3|2|Satyr's Lash
17753|3|2|Verdant Keeper's Aim
17754|3|4|Infernal Trickster Leggings
17755|3|4|Satyrmane Sash
17756|1|12|Shadowshard Fragment
17757|1|12|Amulet of Spirits
17758|1|12|Amulet of Union
17759|2|4|Mark of Resolution
17760|1|12|Seed of Life
17761|1|12|Gem of the First Khan
17762|1|12|Gem of the Second Khan
17763|1|12|Gem of the Third Khan
17764|1|12|Gem of the Fourth Khan
17765|1|12|Gem of the Fifth Khan
17766|3|2|Princess Theradras' Scepter
17767|3|4|Bloomsprout Headpiece
17768|2|4|Woodseed Hoop
17769|2|4|Sagebrush Spaulders
17770|2|4|Branchclaw Gauntlets
17771|5|7|Elementium Bar
17772|2|4|Zealous Shadowshard Pendant
17773|2|4|Prodigious Shadowshard Pendant
17774|2|4|Mark of the Chosen
17775|2|4|Acumen Robes
17776|2|4|Sprightring Helm
17777|2|4|Relentless Chain
17778|2|4|Sagebrush Girdle
17779|2|4|Hulkstone Pauldrons
17780|4|2|Blade of Eternal Darkness
17781|1|12|The Pariah's Instructions
17782|5|4|Talisman of Binding Shard
17783|5|4|Talisman of Binding Fragment
17822|1|12|Frostwolf Maps
17823|1|12|Stormpike Battle Plans
17849|1|12|Stormpike Banner
17850|1|12|Frostwolf Banner
17900|2|4|Stormpike Insignia Rank 2
17901|2|4|Stormpike Insignia Rank 3
17902|3|4|Stormpike Insignia Rank 4
17903|3|4|Stormpike Insignia Rank 5
17904|4|4|Stormpike Insignia Rank 6
17905|2|4|Frostwolf Insignia Rank 2
17906|2|4|Frostwolf Insignia Rank 3
17907|3|4|Frostwolf Insignia Rank 4
17908|3|4|Frostwolf Insignia Rank 5
17909|4|4|Frostwolf Insignia Rank 6
17922|2|4|Lionfur Armor
17943|3|2|Fist of Stone
17962|2|15|Blue Sack of Gems
17963|2|15|Green Sack of Gems
17964|2|15|Gray Sack of Gems
17965|2|15|Yellow Sack of Gems
17966|2|1|Onyxia Hide Backpack
17967|3|7|Refined Scale of Onyxia
17968|3|7|Charged Scale of Onyxia
17969|2|15|Red Sack of Gems
17982|3|4|Ragnaros Core
18022|3|4|Royal Seal of Alexis
18023|3|4|Blood Ruby Pendant
18042|2|6|Thorium Headed Arrow
18043|3|4|Coal Miner Boots
18044|3|2|Hurley's Tankard
18045|1|0|Tender Wolf Steak
18046|1|9|Recipe: Tender Wolf Steak
18047|3|4|Flame Walkers
18048|3|2|Mastersmith's Hammer
18082|3|2|Zum'rah's Vexing Cane
18083|3|4|Jumanza Grips
18102|3|4|Dragonrider Boots
18103|3|4|Band of Rumination
18104|3|4|Feralsurge Girdle
18105|1|0|PVP TEST Alliance Ear
18106|1|0|PVP TEST Horde Ear
18142|1|12|Severed Night Elf Head
18143|1|12|Tuft of Gnome Hair
18144|1|12|Human Bone Chip
18145|1|12|Tauren Hoof
18146|1|12|Darkspear Troll Mojo
18147|1|12|Forsaken Heart
18148|1|12|Skull of Korrak
18149|2|12|Rune of Recall
18150|2|12|Rune of Recall
18151|1|12|Filled Amethyst Phial
18152|1|12|Amethyst Phial
18153|2|12|Red Moro'gai Gem
18154|1|0|Blizzard Stationery
18155|2|12|Blue Moro'gai Gem
18156|2|12|Green Moro'gai Gem
18157|2|12|Black Moro'gai Gem
18158|2|12|Gold Moro'gai Gem
18159|2|12|White Moro'gai Gem
18160|2|9|Recipe: Thistle Tea
18168|4|4|Force Reactive Disk
18169|2|12|Flame Mantle of the Dawn
18170|2|12|Frost Mantle of the Dawn
18171|2|12|Arcane Mantle of the Dawn
18172|2|12|Nature Mantle of the Dawn
18173|2|12|Shadow Mantle of the Dawn
18182|2|12|Chromatic Mantle of the Dawn
18202|4|2|Eskhandar's Left Claw
18203|4|2|Eskhandar's Right Claw
18204|4|4|Eskhandar's Pelt
18205|4|4|Eskhandar's Collar
18206|1|12|Dwarf Spine
18207|1|12|Orc Tooth
18208|4|4|Drape of Benediction
18209|1|0|Energized Sparkplug
18222|0|15|Thorny Vine
18223|0|15|Serrated Petal
18224|0|15|Lasher Root
18225|0|15|Worn Running Shoes
18226|0|15|A Sealed Pact
18227|0|15|Nubless Pacifier
18228|0|15|Autographed Picture of Tigule
18229|0|15|Nat Pagle's Guide to Extreme Anglin'
18230|0|15|Broken I.W.I.N. Button
18231|0|15|Sleeveless T-Shirt
18232|1|0|Field Repair Bot 74A
18233|0|15|Tear Stained Handkerchief
18234|0|15|Document from Boomstick Imports
18235|1|9|Schematic: Field Repair Bot 74A
18236|0|15|Gordok Chew Toy
18237|0|15|Mastiff Jawbone
18238|3|4|Shadowskin Gloves
18239|1|9|Pattern: Shadowskin Gloves
18240|2|7|Ogre Tannin
18241|4|15|Black War Steed Bridle
18242|4|15|Reins of the Black War Tiger
18243|4|15|Black Battlestrider
18244|4|15|Black War Ram
18245|4|15|Horn of the Black War Wolf
18246|4|15|Whistle of the Black War Raptor
18247|4|15|Black War Kodo
18248|4|15|Red Skeletal Warhorse
18249|1|13|Crescent Key
18250|2|15|Gordok Shackle Key
18251|3|0|Core Armor Kit
18252|3|9|Pattern: Core Armor Kit
18253|1|0|Major Rejuvenation Potion
18254|1|0|Runn Tum Tuber Surprise
18255|1|0|Runn Tum Tuber
18256|1|7|Imbued Vial
18257|3|9|Recipe: Major Rejuvenation Potion
18258|2|12|Gordok Ogre Suit
18259|3|9|Formula: Enchant Weapon - Spell Power
18260|3|9|Formula: Enchant Weapon - Healing Power
18261|1|12|Book of Incantations
18262|2|0|Elemental Sharpening Stone
18263|4|4|Flarecore Wraps
18264|3|9|Plans: Elemental Sharpening Stone
18265|3|9|Pattern: Flarecore Wraps
18266|1|13|Gordok Courtyard Key
18267|2|9|Recipe: Runn Tum Tuber Surprise
18268|1|13|Gordok Inner Door Key
18269|2|0|Gordok Green Grog
18282|4|2|Core Marksman Rifle
18283|3|0|Biznicks 247x128 Accurascope
18284|2|0|Kreeg's Stout Beatdown
18285|0|15|Crystallized Mana Shard
18286|0|15|Condensed Mana Fragment
18287|1|0|Evermurky
18288|1|0|Molasses Firewater
18289|3|4|Barbed Thorn Necklace
18290|3|9|Schematic: Biznicks 247x128 Accurascope
18291|3|9|Schematic: Force Reactive Disk
18292|3|9|Schematic: Core Marksman Rifle
18294|1|0|Draught of Greater Water Breathing
18295|3|4|Phasing Boots
18296|3|4|Marksman Bands
18297|1|0|Thornling Seed
18298|3|4|Unbridled Leggings
18299|1|12|Hydrospawn Essence
18300|1|0|Hyjal Nectar
18301|2|2|Lethtendris's Wand
18302|2|4|Band of Vigor
18303|2|4|Nimble Buckler
18304|2|4|Greenroot Mail
18305|2|4|Breakwater Legguards
18306|2|4|Gloves of Shadowy Mist
18307|2|4|Riptide Shoes
18308|2|4|Clever Hat
18309|3|4|Gloves of Restoration
18310|3|2|Fiendish Machete
18311|3|2|Quel'dorai Channeling Rod
18312|3|4|Energized Chestplate
18313|3|4|Helm of Awareness
18314|3|4|Ring of Demonic Guile
18315|3|4|Ring of Demonic Potency
18316|3|4|Obsidian Bauble
18317|3|4|Tempest Talisman
18318|3|4|Merciful Greaves
18319|3|4|Fervent Helm
18320|3|4|Demonheart Spaulders
18321|3|2|Energetic Rod
18322|3|4|Waterspout Boots
18323|3|2|Satyr's Bow
18324|3|2|Waveslicer
18325|3|4|Felhide Cap
18326|3|4|Razor Gauntlets
18327|3|4|Whipvine Cord
18328|3|4|Shadewood Cloak
18329|2|12|Arcanum of Rapidity
18330|2|12|Arcanum of Focus
18331|2|12|Arcanum of Protection
18332|2|9|Libram of Rapidity
18333|2|9|Libram of Focus
18334|2|9|Libram of Protection
18335|3|12|Pristine Black Diamond
18336|1|12|Gauntlet of Gordok Might
18337|2|4|Orphic Bracers
18338|3|2|Wand of Arcane Potency
18339|2|4|Eidolon Cloak
18340|3|4|Eidolon Talisman
18341|2|4|Quel'dorai Sash
18342|3|4|Quel'dorai Guard
18343|2|4|Petrified Band
18344|3|4|Stonebark Gauntlets
18345|2|4|Murmuring Ring
18346|2|4|Threadbare Trousers
18347|2|2|Well Balanced Axe
18348|4|2|Quel'Serrar
18349|2|4|Gauntlets of Accuracy
18350|2|4|Amplifying Cloak
18351|2|4|Magically Sealed Bracers
18352|2|4|Petrified Bark Shield
18353|2|2|Stoneflower Staff
18354|3|4|Pimgib's Collar
18355|3|4|Ferra's Collar
18356|3|12|Garona: A Study on Stealth and Treachery
18357|3|12|Codex of Defense
18358|3|12|The Arcanist's Cookbook
18359|3|12|The Light and How to Swing It
18360|3|12|Harnessing Shadows
18361|3|12|The Greatest Race of Hunters
18362|3|12|Holy Bologna: What the Light Won't Tell You
18363|3|12|Frost Shock and You
18364|3|12|The Emerald Dream
18365|0|15|A Thoroughly Read Copy of "Nat Pagle's Extreme' Anglin."
18366|3|4|Gordok's Handguards
18367|3|4|Gordok's Gauntlets
18368|3|4|Gordok's Gloves
18369|3|4|Gordok's Handwraps
18370|3|4|Vigilance Charm
18371|3|4|Mindtap Talisman
18372|3|2|Blade of the New Moon
18373|3|4|Chestplate of Tranquility
18374|3|4|Flamescarred Shoulders
18375|3|4|Bracers of the Eclipse
18376|3|2|Timeworn Mace
18377|3|4|Quickdraw Gloves
18378|3|4|Silvermoon Leggings
18379|3|4|Odious Greaves
18380|3|4|Eldritch Reinforced Legplates
18381|3|4|Evil Eye Pendant
18382|3|4|Fluctuating Cloak
18383|3|4|Force Imbued Gauntlets
18384|3|4|Bile-etched Spaulders
18385|3|4|Robe of Everlasting Night
18386|3|4|Padre's Trousers
18387|3|4|Brightspark Gloves
18388|3|2|Stoneshatter
18389|3|4|Cloak of the Cosmos
18390|3|4|Tanglemoss Leggings
18391|3|4|Eyestalk Cord
18392|3|2|Distracting Dagger
18393|3|4|Warpwood Binding
18394|3|4|Demon Howl Wristguards
18395|3|4|Emerald Flame Ring
18396|3|2|Mind Carver
18397|3|4|Elder Magus Pendant
18398|3|4|Tidal Loop
18399|3|4|Ocean's Breeze
18400|2|4|Ring of Living Stone
18401|4|12|Nostro's Compendium of Dragon Slaying
18402|2|4|Glowing Crystal Ring
18403|4|4|Dragonslayer's Signet
18404|4|4|Onyxia Tooth Pendant
18405|4|4|Belt of the Archmage
18406|4|4|Onyxia Blood Talisman
18407|3|4|Felcloth Gloves
18408|3|4|Inferno Gloves
18409|3|4|Mooncloth Gloves
18410|2|2|Sprinter's Sword
18411|2|4|Spry Boots
18412|1|12|Core Fragment
18413|3|4|Cloak of Warding
18414|4|9|Pattern: Belt of the Archmage
18415|3|9|Pattern: Felcloth Gloves
18416|3|9|Pattern: Inferno Gloves
18417|3|9|Pattern: Mooncloth Gloves
18418|3|9|Pattern: Cloak of Warding
18420|3|2|Bonecrusher
18421|3|4|Backwood Helm
18422|4|12|Head of Onyxia
18423|4|12|Head of Onyxia
18424|3|4|Sedge Boots
18425|2|4|Kreeg's Mug
18426|1|12|Lethtendris's Web
18427|3|4|Sergeant's Cloak
18428|3|4|Senior Sergeant's Insignia
18429|3|4|First Sergeant's Plate Bracers
18430|3|4|First Sergeant's Plate Bracers
18432|3|4|First Sergeant's Mail Wristguards
18434|3|4|First Sergeant's Dragonhide Armguards
18435|3|4|First Sergeant's Leather Armguards
18436|3|4|First Sergeant's Dragonhide Armguards
18437|3|4|First Sergeant's Silk Cuffs
18438|3|4|Sergeant's Mark
18440|3|4|Sergeant's Cape
18441|3|4|Sergeant's Cape
18442|3|4|Master Sergeant's Insignia
18443|3|4|Master Sergeant's Insignia
18444|3|4|Master Sergeant's Insignia
18445|3|4|Sergeant Major's Plate Wristguards
18447|3|4|Sergeant Major's Plate Wristguards
18448|3|4|Sergeant Major's Chain Armguards
18449|3|4|Sergeant Major's Chain Armguards
18450|2|4|Robe of Combustion
18451|2|4|Hyena Hide Belt
18452|3|4|Sergeant Major's Leather Armsplints
18453|3|4|Sergeant Major's Leather Armsplints
18454|3|4|Sergeant Major's Dragonhide Armsplints
18455|3|4|Sergeant Major's Dragonhide Armsplints
18456|3|4|Sergeant Major's Silk Cuffs
18457|3|4|Sergeant Major's Silk Cuffs
18458|2|4|Modest Armguards
18459|2|4|Gallant's Wristguards
18460|2|2|Unsophisticated Hand Cannon
18461|3|4|Sergeant's Cloak
18462|2|2|Jagged Bone Fist
18463|2|2|Ogre Pocket Knife
18464|2|4|Gordok Nose Ring
18465|3|4|Royal Seal of Eldre'Thalas
18466|3|4|Royal Seal of Eldre'Thalas
18467|3|4|Royal Seal of Eldre'Thalas
18468|3|4|Royal Seal of Eldre'Thalas
18469|3|4|Royal Seal of Eldre'Thalas
18470|3|4|Royal Seal of Eldre'Thalas
18471|3|4|Royal Seal of Eldre'Thalas
18472|3|4|Royal Seal of Eldre'Thalas
18473|3|4|Royal Seal of Eldre'Thalas
18475|2|4|Oddly Magical Belt
18476|2|4|Mud Stained Boots
18477|2|4|Shaggy Leggings
18478|2|4|Hyena Hide Jerkin
18479|2|4|Carrion Scorpid Helm
18480|2|4|Scarab Plate Helm
18481|2|2|Skullcracking Mace
18482|2|2|Ogre Toothpick Shooter
18483|3|2|Mana Channeling Wand
18484|3|2|Cho'Rush's Blade
18485|3|4|Observer's Shield
18486|3|4|Mooncloth Robe
18487|1|9|Pattern: Mooncloth Robe
18488|4|12|Heated Ancient Blade
18489|4|12|Unfired Ancient Blade
18490|3|4|Insightful Hood
18491|3|2|Lorespinner
18492|4|12|Treated Ancient Blade
18493|3|4|Bulky Iron Spaulders
18494|3|4|Denwatcher's Shoulders
18495|3|4|Redoubt Cloak
18496|3|4|Heliotrope Cloak
18497|3|4|Sublime Wristguards
18498|3|2|Hedgecutter
18499|3|4|Barrier Shield
18500|3|4|Tarnished Elven Ring
18501|1|12|Felvine Shard
18502|3|2|Monstrous Glaive
18503|3|4|Kromcrush's Chestplate
18504|3|4|Girdle of Insight
18505|3|4|Mugger's Belt
18506|3|4|Mongoose Boots
18507|3|4|Boots of the Full Moon
18508|3|4|Swift Flight Bracers
18509|4|4|Chromatic Cloak
18510|4|4|Hide of the Wild
18511|4|4|Shifting Cloak
18512|1|7|Larval Acid
18513|4|12|A Dull and Flat Elven Blade
18514|3|9|Pattern: Girdle of Insight
18515|3|9|Pattern: Mongoose Boots
18516|3|9|Pattern: Swift Flight Bracers
18517|4|9|Pattern: Chromatic Cloak
18518|4|9|Pattern: Hide of the Wild
18519|4|9|Pattern: Shifting Cloak
18520|3|2|Barbarous Blade
18521|3|4|Grimy Metal Boots
18522|3|4|Band of the Ogre King
18523|3|4|Brightly Glowing Stone
18524|3|4|Leggings of Destruction
18525|3|4|Bracers of Prosperity
18526|3|4|Crown of the Ogre King
18527|3|4|Harmonious Gauntlets
18528|3|4|Cyclone Spaulders
18529|3|4|Elemental Plate Girdle
18530|3|4|Ogre Forged Hauberk
18531|3|2|Unyielding Maul
18532|3|4|Mindsurge Robe
18533|3|4|Gordok Bracers of Power
18534|3|2|Rod of the Ogre Magi
18535|3|4|Milli's Shield
18536|3|4|Milli's Lexicon
18537|3|4|Counterattack Lodestone
18538|4|2|Treant's Bane
18539|1|12|Reliquary of Purity
18540|1|12|Sealed Reliquary of Purity
18541|4|4|Puissant Cape
18542|4|2|Typhoon
18543|4|4|Ring of Entropy
18544|4|4|Doomhide Gauntlets
18545|4|4|Leggings of Arcane Supremacy
18546|4|4|Infernal Headcage
18547|4|4|Unmelting Ice Girdle
18562|4|7|Elementium Ore
18563|5|15|Bindings of the Windseeker
18564|5|15|Bindings of the Windseeker
18567|1|7|Elemental Flux
18582|6|2|The Twin Blades of Azzinoth
18583|6|2|Warglaive of Azzinoth (Right)
18584|6|2|Warglaive of Azzinoth (Left)
18585|3|4|Band of Allegiance
18586|3|4|Lonetree's Circle
18587|1|4|Goblin Jumper Cables XL
18588|1|0|Ez-Thro Dynamite II
18590|1|12|Raging Beast's Blood
18591|1|12|Case of Blood
18592|4|9|Plans: Sulfuron Hammer
18594|1|0|Powerful Seaforium Charge
18595|2|0|Blood Opal
18597|1|15|Orcish Orphan Whistle
18598|1|15|Human Orphan Whistle
18600|3|9|Tome of Arcane Brilliance
18601|1|12|Glowing Crystal Prison
18602|3|4|Tome of Sacrifice
18603|1|12|Satyr Blood
18604|1|12|Tears of the Hederine
18605|1|12|Imprisoned Doomguard
18606|1|0|Alliance Battle Standard
18607|1|0|Horde Battle Standard
18608|4|2|Benediction
18609|4|2|Anathema
18610|1|2|Keen Machete
18611|1|4|Gnarlpine Leggings
18612|1|4|Bloody Chain Boots
18622|1|12|Flawless Fel Essence (Jaedenar)
18623|1|12|Flawless Fel Essence (Dark Portal)
18624|1|12|Flawless Fel Essence (Azshara)
18625|1|12|Kroshius' Infernal Core
18626|1|12|Fel Fire
18627|1|12|Gong of Dethmoora
18628|4|12|Thorium Brotherhood Contract
18629|1|12|Black Lodestone
18630|1|12|Doomsday Flare
18631|1|7|Truesilver Transformer
18632|1|0|Moonbrook Riot Taffy
18633|1|0|Styleen's Sour Suckerpop
18634|3|4|Gyrofreeze Ice Reflector
18635|1|0|Bellara's Nutterbar
18636|1|0|Ruined Jumper Cables XL
18637|2|4|Major Recombobulator
18638|3|4|Hyper-Radiant Flame Reflector
18639|3|4|Ultra-Flash Shadow Reflector
18640|1|0|Happy Fun Rock
18641|1|0|Dense Dynamite
18642|1|12|Jaina's Autograph
18643|1|12|Cairne's Hoofprint
18645|1|0|Gnomish Alarm-O-Bot
18646|4|4|The Eye of Divinity
18647|1|9|Schematic: Red Firework
18648|1|9|Schematic: Green Firework
18649|1|9|Schematic: Blue Firework
18650|1|9|Schematic: EZ-Thro Dynamite II
18651|1|9|Schematic: Truesilver Transformer
18652|1|9|Schematic: Gyrofreeze Ice Reflector
18653|2|9|Schematic: Goblin Jumper Cables XL
18654|2|9|Schematic: Gnomish Alarm-O-Bot
18655|2|9|Schematic: Major Recombobulator
18656|1|9|Schematic: Powerful Seaforium Charge
18657|2|9|Schematic: Hyper-Radiant Flame Reflector
18658|2|9|Schematic: Ultra-Flash Shadow Reflector
18659|4|12|Splinter of Nordrassil
18660|2|0|World Enlarger
18661|2|9|Schematic: World Enlarger
18662|1|0|Heavy Leather Ball
18663|1|12|J'eevee's Jar
18664|1|15|A Treatise on Military Ranks
18665|4|4|The Eye of Shadow
18670|1|12|Xorothian Glyphs
18671|3|2|Baron Charr's Sceptre
18672|2|4|Elemental Ember
18673|3|4|Avalanchion's Stony Hide
18674|2|4|Hardened Stone Band
18675|1|15|Military Ranks of the Horde & Alliance
18676|3|4|Sash of the Windreaver
18677|2|4|Zephyr Cloak
18678|3|4|Tempestria's Frozen Necklace
18679|2|4|Frigid Ring
18680|3|2|Ancient Bone Bow
18681|3|4|Burial Shawl
18682|3|4|Ghoul Skin Leggings
18683|3|2|Hammer of the Vesper
18684|3|4|Dimly Opalescent Ring
18685|1|12|Shadowy Potion OLD
18686|3|4|Bone Golem Shoulders
18687|1|12|Xorothian Stardust
18688|1|12|Imp in a Jar
18689|3|4|Phantasmal Cloak
18690|3|4|Wraithplate Leggings
18691|3|4|Dark Advisor's Pendant
18692|3|4|Death Knight Sabatons
18693|3|4|Shivery Handwraps
18694|3|4|Shadowy Mail Greaves
18695|3|4|Spellbound Tome
18696|3|4|Intricately Runed Shield
18697|3|4|Coldstone Slippers
18698|3|4|Tattered Leather Hood
18699|3|4|Icy Tomb Spaulders
18700|3|4|Malefic Bracers
18701|3|4|Innervating Band
18702|3|4|Belt of the Ordained
18703|4|12|Ancient Petrified Leaf
18704|4|12|Mature Blue Dragon Sinew
18705|4|12|Mature Black Dragon Sinew
18706|2|4|Arena Master
18707|4|12|Ancient Rune Etched Stave
18708|1|12|Petrified Bark
18709|3|4|Arena Wristguards
18710|3|4|Arena Bracers
18711|3|4|Arena Bands
18712|3|4|Arena Vambraces
18713|4|2|Rhok'delar, Longbow of the Ancient Keepers
18714|4|11|Ancient Sinew Wrapped Lamina
18715|4|2|Lok'delar, Stave of the Ancient Keepers
18716|3|4|Ash Covered Boots
18717|3|2|Hammer of the Grand Crusader
18718|3|4|Grand Crusader's Helm
18719|1|12|The Traitor's Heart
18720|3|4|Shroud of the Nathrezim
18721|3|4|Barrage Girdle
18722|3|4|Death Grips
18723|3|4|Animated Chain Necklace
18724|4|12|Enchanted Black Dragon Sinew
18725|3|2|Peacemaker
18726|3|4|Magistrate's Cuffs
18727|3|4|Crimson Felt Hat
18728|3|4|Anastari Heirloom
18729|3|2|Screeching Bow
18730|3|4|Shadowy Laced Handwraps
18731|1|9|Pattern: Heavy Leather Ball
18734|3|4|Pale Moon Cloak
18735|3|4|Maleki's Footwraps
18736|3|4|Plaguehound Leggings
18737|3|2|Bone Slicing Hatchet
18738|3|2|Carapace Spine Crossbow
18739|3|4|Chitinous Plate Legguards
18740|3|4|Thuzadin Sash
18741|3|4|Morlune's Bracer
18742|3|4|Stratholme Militia Shoulderguard
18743|3|4|Gracious Cape
18744|3|4|Plaguebat Fur Gloves
18745|3|4|Sacred Cloth Leggings
18746|1|12|Divination Scryer
18749|1|12|Charger's Lost Soul
18752|1|12|Exorcism Censer
18753|1|12|Arcanite Barding
18754|3|4|Fel Hardened Bracers
18755|3|2|Xorothian Firestick
18756|3|4|Dreadguard's Protector
18757|3|4|Diabolic Mantle
18758|3|2|Specter's Blade
18759|3|2|Malicious Axe
18760|3|4|Necromantic Band
18761|3|2|Oblivion's Touch
18762|3|4|Shard of the Green Flame
18766|4|15|Reins of the Swift Frostsaber
18767|4|15|Reins of the Swift Mistsaber
18768|4|15|Reins of the Swift Dawnsaber
18769|3|12|Enchanted Thorium Platemail
18770|3|12|Enchanted Thorium Platemail
18771|3|12|Enchanted Thorium Platemail
18772|4|15|Swift Green Mechanostrider
18773|4|15|Swift White Mechanostrider
18774|4|15|Swift Yellow Mechanostrider
18775|1|12|Manna-Enriched Horse Feed
18776|4|15|Swift Palomino
18777|4|15|Swift Brown Steed
18778|4|15|Swift White Steed
18779|3|12|Bottom Half of Advanced Armorsmithing: Volume I
18780|3|12|Top Half of Advanced Armorsmithing: Volume I
18781|3|12|Bottom Half of Advanced Armorsmithing: Volume II
18782|3|12|Top Half of Advanced Armorsmithing: Volume II
18783|3|12|Bottom Half of Advanced Armorsmithing: Volume III
18784|3|12|Top Half of Advanced Armorsmithing: Volume III
18785|4|15|Swift White Ram
18786|4|15|Swift Brown Ram
18787|4|15|Swift Gray Ram
18788|4|15|Swift Blue Raptor
18789|4|15|Swift Olive Raptor
18790|4|15|Swift Orange Raptor
18791|4|15|Purple Skeletal Warhorse
18792|1|12|Blessed Arcanite Barding
18793|4|15|Great White Kodo
18794|4|15|Great Brown Kodo
18795|4|15|Great Gray Kodo
18796|4|15|Horn of the Swift Brown Wolf
18797|4|15|Horn of the Swift Timber Wolf
18798|4|15|Horn of the Swift Gray Wolf
18799|1|12|Charger's Redeemed Soul
18802|1|12|Shadowy Potion
18803|4|2|Hyperthermically Insulated Lava Dredger
18804|1|12|Lord Grayson's Satchel
18805|4|2|Core Hound Tooth
18806|4|4|Core Forged Greaves
18807|3|4|Helm of Latent Power
18808|4|4|Gloves of the Hypnotic Flame
18809|4|4|Sash of Whispered Secrets
18810|4|4|Wild Growth Spaulders
18811|4|4|Fireproof Cloak
18812|4|4|Wristguards of True Flight
18813|4|4|Ring of Binding
18814|4|4|Choker of the Fire Lord
18815|4|4|Essence of the Pure Flame
18816|4|2|Perdition's Blade
18817|4|4|Crown of Destruction
18818|1|12|Mor'zul's Instructions
18819|1|12|Rohan's Exorcism Censer
18820|4|4|Talisman of Ephemeral Power
18821|4|4|Quick Strike Ring
18822|4|2|Obsidian Edged Blade
18823|4|4|Aged Core Leather Gloves
18824|4|4|Magma Tempered Boots
18825|4|4|Grand Marshal's Aegis
18826|4|4|High Warlord's Shield Wall
18827|4|2|Grand Marshal's Handaxe
18828|4|2|High Warlord's Cleaver
18829|4|4|Deep Earth Spaulders
18830|4|2|Grand Marshal's Sunderer
18831|4|2|High Warlord's Battle Axe
18832|4|2|Brutality Blade
18833|4|2|Grand Marshal's Bullseye
18834|3|4|Insignia of the Horde
18835|4|2|High Warlord's Recurve
18836|4|2|Grand Marshal's Repeater
18837|4|2|High Warlord's Crossbow
18838|4|2|Grand Marshal's Dirk
18839|1|0|Combat Healing Potion
18840|4|2|High Warlord's Razor
18841|1|0|Combat Mana Potion
18842|4|2|Staff of Dominance
18843|4|2|Grand Marshal's Right Hand Blade
18844|4|2|High Warlord's Right Claw
18845|3|4|Insignia of the Horde
18846|3|4|Insignia of the Horde
18847|4|2|Grand Marshal's Left Hand Blade
18848|4|2|High Warlord's Left Claw
18849|3|4|Insignia of the Horde
18850|3|4|Insignia of the Horde
18851|3|4|Insignia of the Horde
18852|3|4|Insignia of the Horde
18853|3|4|Insignia of the Horde
18854|3|4|Insignia of the Alliance
18855|4|2|Grand Marshal's Hand Cannon
18856|3|4|Insignia of the Alliance
18857|3|4|Insignia of the Alliance
18858|3|4|Insignia of the Alliance
18859|3|4|Insignia of the Alliance
18860|4|2|High Warlord's Street Sweeper
18861|4|4|Flamewaker Legplates
18862|3|4|Insignia of the Alliance
18863|3|4|Insignia of the Alliance
18864|3|4|Insignia of the Alliance
18865|4|2|Grand Marshal's Punisher
18866|4|2|High Warlord's Bludgeon
18867|4|2|Grand Marshal's Battle Hammer
18868|4|2|High Warlord's Pulverizer
18869|4|2|Grand Marshal's Glaive
18870|4|4|Helm of the Lifegiver
18871|4|2|High Warlord's Pig Sticker
18872|4|4|Manastorm Leggings
18873|4|2|Grand Marshal's Stave
18874|4|2|High Warlord's War Staff
18875|4|4|Salamander Scale Pants
18876|4|2|Grand Marshal's Claymore
18877|4|2|High Warlord's Greatsword
18878|4|2|Sorcerous Dagger
18879|4|4|Heavy Dark Iron Ring
18880|1|12|Darkreaver's Head
18902|4|15|Reins of the Swift Stormsaber
18904|1|12|Zorbin's Ultra-Shrinker
18922|1|12|Secret Plans: Fiery Flux
18942|1|12|Fiery Flux
18943|1|12|Dark Iron Pillow
18944|1|12|Incendosaur Scale
18945|1|12|Dark Iron Residue
18946|1|12|Head of Overseer Maltorius
18947|1|12|Rage Scar Yeti Hide
18948|3|4|Barbaric Bracers
18949|1|9|Pattern: Barbaric Bracers
18950|1|12|Chambermaid Pillaclencher's Pillow
18951|2|4|Evonice's Landin' Pilla
18952|1|12|Simone's Head
18953|1|12|Klinfran's Head
18954|1|12|Solenor's Head
18955|1|12|Artorius's Head
18956|1|12|Miniaturization Residue
18957|2|2|Brushwood Blade
18958|1|12|Water Elemental Core
18959|1|12|Smithing Tuyere
18960|1|12|Lookout's Spyglass
18961|1|12|Zukk'ash Carapace
18962|1|12|Stinglasher's Glands
18963|1|15|Turtle Egg (Albino)
18964|1|15|Turtle Egg (Loggerhead)
18965|1|15|Turtle Egg (Hawksbill)
18966|1|15|Turtle Egg (Leatherback)
18967|1|15|Turtle Egg (Olive)
18968|4|4|Ring of Critical Testing
18969|1|12|Pristine Yeti Hide
18970|4|4|Ring of Critical Testing 2
18971|4|4|Ring of Critical Testing 3
18972|1|12|Perfect Yeti Hide
18982|4|4|Ring of Critical Testing 4
18984|2|15|Dimensional Ripper - Everlook
18986|2|15|Ultrasafe Transporter: Gadgetzan
18987|1|12|Blackhand's Command
19002|4|12|Head of Nefarian
19003|4|12|Head of Nefarian
19004|1|0|Minor Healthstone
19005|1|0|Minor Healthstone
19006|1|0|Lesser Healthstone
19007|1|0|Lesser Healthstone
19008|1|0|Healthstone
19009|1|0|Healthstone
19010|1|0|Greater Healthstone
19011|1|0|Greater Healthstone
19012|1|0|Major Healthstone
19013|1|0|Major Healthstone
19016|5|12|Vessel of Rebirth
19017|5|12|Essence of the Firelord
19018|5|12|Dormant Wind Kissed Blade
19019|5|2|Thunderfury, Blessed Blade of the Windseeker
19020|1|12|Camp Mojache Zukk'ash Report
19022|2|2|Nat Pagle's Extreme Angler FC-5000
19023|1|12|Katoom's Best Lure
19024|3|4|Arena Grand Master
19025|1|12|Skylord Plume
19026|1|0|Snake Burst Firework
19027|1|9|Schematic: Snake Burst Firework
19028|1|4|Elegant Dress
19029|4|15|Horn of the Frostwolf Howler
19030|4|15|Stormpike Battle Charger
19031|1|4|Frostwolf Battle Tabard
19032|1|4|Stormpike Battle Tabard
19033|1|12|Slagtree's Lost Tools
19034|1|12|Lard's Lunch
19035|2|15|Lard's Special Picnic Basket
19036|1|12|Final Message to the Wildhammer
19037|2|4|Emerald Peak Spaulders
19038|2|4|Ring of Subtlety
19039|2|4|Zorbin's Water Resistant Hat
19040|2|2|Zorbin's Mega-Slicer
19041|2|4|Pratt's Handcrafted Tunic
19042|2|4|Jangdor's Handcrafted Tunic
19043|3|4|Heavy Timbermaw Belt
19044|3|4|Might of the Timbermaw
19045|3|0|Stormpike Battle Standard
19046|3|0|Frostwolf Battle Standard
19047|3|4|Wisdom of the Timbermaw
19048|3|4|Heavy Timbermaw Boots
19049|3|4|Timbermaw Brawlers
19050|3|4|Mantle of the Timbermaw
19051|3|4|Girdle of the Dawn
19052|3|4|Dawn Treaders
19054|1|15|Red Dragon Orb
19055|1|15|Green Dragon Orb
19056|3|4|Argent Boots
19057|3|4|Gloves of the Dawn
19058|3|4|Golden Mantle of the Dawn
19059|3|4|Argent Shoulders
19060|1|0|Warsong Gulch Enriched Ration
19061|1|0|Warsong Gulch Iron Ration
19062|1|0|Warsong Gulch Field Ration
19064|1|12|Shackle Key
19065|3|4|Emerald Circle
19066|1|0|Warsong Gulch Runecloth Bandage
19067|1|0|Warsong Gulch Mageweave Bandage
19068|1|0|Warsong Gulch Silk Bandage
19069|1|12|Huntsman Malkhor's Skull
19070|1|12|Huntsman Malkhor's Bones
19071|1|12|Vessel of Tainted Blood
19083|3|4|Frostwolf Legionnaire's Cloak
19084|3|4|Stormpike Soldier's Cloak
19085|3|4|Frostwolf Advisor's Cloak
19086|3|4|Stormpike Sage's Cloak
19087|3|4|Frostwolf Plate Belt
19088|3|4|Frostwolf Mail Belt
19089|3|4|Frostwolf Leather Belt
19090|3|4|Frostwolf Cloth Belt
19091|3|4|Stormpike Plate Girdle
19092|3|4|Stormpike Mail Girdle
19093|3|4|Stormpike Leather Girdle
19094|3|4|Stormpike Cloth Girdle
19095|3|4|Frostwolf Legionnaire's Pendant
19096|3|4|Frostwolf Advisor's Pendant
19097|3|4|Stormpike Soldier's Pendant
19098|3|4|Stormpike Sage's Pendant
19099|3|2|Glacial Blade
19100|3|2|Electrified Dagger
19101|3|2|Whiteout Staff
19102|3|2|Crackling Staff
19103|3|2|Frostbite
19104|3|2|Stormstrike Hammer
19105|3|4|Frost Runed Headdress
19106|3|2|Ice Barbed Spear
19107|3|2|Bloodseeker
19108|3|2|Wand of Biting Cold
19109|3|4|Deep Rooted Ring
19110|3|2|Cold Forged Blade
19111|3|4|Winteraxe Epaulets
19112|3|4|Frozen Steel Vambraces
19113|3|4|Yeti Hide Bracers
19114|2|2|Highland Bow
19115|2|4|Flask of Forest Mojo
19116|2|4|Greenleaf Handwraps
19117|2|4|Laquered Wooden Plate Legplates
19118|2|2|Nature's Breath
19119|2|4|Owlbeast Hide Gloves
19120|2|4|Rune of the Guard Captain
19121|3|4|Deep Woodlands Cloak
19123|2|4|Everwarm Handwraps
19124|2|4|Slagplate Leggings
19125|2|4|Seared Mail Girdle
19126|2|4|Slagplate Gauntlets
19127|2|4|Charred Leather Tunic
19128|2|4|Seared Mail Vest
19129|2|4|Everglowing Robe
19130|4|2|Cold Snap
19131|4|4|Snowblind Shoes
19132|4|4|Crystal Adorned Crown
19133|4|4|Fel Infused Leggings
19134|4|4|Flayed Doomguard Belt
19135|4|4|Blacklight Bracer
19136|4|4|Mana Igniting Cord
19137|4|4|Onslaught Girdle
19138|4|4|Band of Sulfuras
19139|4|4|Fireguard Shoulders
19140|4|4|Cauterizing Band
19141|2|4|Luffa
19142|4|4|Fire Runed Grimoire
19143|4|4|Flameguard Gauntlets
19144|4|4|Sabatons of the Flamewalker
19145|4|4|Robe of Volatile Power
19146|4|4|Wristguards of Stability
19147|4|4|Ring of Spell Power
19148|4|4|Dark Iron Helm
19149|4|4|Lava Belt
19150|1|0|Sentinel Basic Care Package
19151|1|0|Sentinel Standard Care Package
19152|1|0|Sentinel Advanced Care Package
19153|1|0|Outrider Advanced Care Package
19154|1|0|Outrider Basic Care Package
19155|1|0|Outrider Standard Care Package
19156|4|4|Flarecore Robe
19157|4|4|Chromatic Gauntlets
19159|3|4|Woven Ivy Necklace
19160|1|4|Contest Winner's Tabard
19162|4|4|Corehound Belt
19163|4|4|Molten Belt
19164|4|4|Dark Iron Gauntlets
19165|4|4|Flarecore Leggings
19166|4|2|Black Amnesty
19167|4|2|Blackfury
19168|4|2|Blackguard
19169|4|2|Nightfall
19170|4|2|Ebon Hand
19182|1|0|Darkmoon Faire Prize Ticket
19183|1|0|Hourglass Sand
19202|1|9|Pattern: Heavy Timbermaw Belt
19203|1|9|Plans: Girdle of the Dawn
19204|1|9|Pattern: Heavy Timbermaw Boots
19205|1|9|Plans: Gloves of the Dawn
19206|1|9|Plans: Dark Iron Helm
19207|1|9|Plans: Dark Iron Gauntlets
19208|1|9|Plans: Black Amnesty
19209|1|9|Plans: Blackfury
19210|1|9|Plans: Ebon Hand
19211|1|9|Plans: Blackguard
19212|1|9|Plans: Nightfall
19213|2|12|Silverwing Talisman of Merit
19215|1|9|Pattern: Wisdom of the Timbermaw
19216|1|9|Pattern: Argent Boots
19217|1|9|Pattern: Argent Shoulders
19218|3|9|Pattern: Mantle of the Timbermaw
19219|1|9|Pattern: Flarecore Robe
19220|1|9|Pattern: Flarecore Leggings
19221|1|0|Darkmoon Special Reserve
19222|1|0|Cheap Beer
19223|1|0|Darkmoon Dog
19224|1|0|Red Hot Wings
19225|1|0|Deep Fried Candybar
19227|3|12|Ace of Beasts
19228|4|12|Beasts Deck
19229|1|15|Sayge's Fortune #1
19230|3|12|Two of Beasts
19231|3|12|Three of Beasts
19232|3|12|Four of Beasts
19233|3|12|Five of Beasts
19234|3|12|Six of Beasts
19235|3|12|Seven of Beasts
19236|3|12|Eight of Beasts
19237|1|15|Sayge's Fortune #19
19238|1|15|Sayge's Fortune #3
19239|1|15|Sayge's Fortune #4
19240|1|15|Sayge's Fortune #5
19241|1|15|Sayge's Fortune #6
19242|1|15|Sayge's Fortune #7
19243|1|15|Sayge's Fortune #8
19244|1|15|Sayge's Fortune #9
19245|1|15|Sayge's Fortune #10
19246|1|15|Sayge's Fortune #11
19247|1|15|Sayge's Fortune #12
19248|1|15|Sayge's Fortune #13
19249|1|15|Sayge's Fortune #14
19250|1|15|Sayge's Fortune #15
19251|1|15|Sayge's Fortune #16
19252|1|15|Sayge's Fortune #18
19253|1|15|Sayge's Fortune #17
19254|1|15|Sayge's Fortune #21
19255|1|15|Sayge's Fortune #22
19256|1|15|Sayge's Fortune #2
19257|4|12|Warlords Deck
19258|3|12|Ace of Warlords
19259|3|12|Two of Warlords
19260|3|12|Three of Warlords
19261|3|12|Four of Warlords
19262|3|12|Five of Warlords
19263|3|12|Six of Warlords
19264|3|12|Seven of Warlords
19265|3|12|Eight of Warlords
19266|1|15|Sayge's Fortune #20
19267|4|12|Elementals Deck
19268|3|12|Ace of Elementals
19269|3|12|Two of Elementals
19270|3|12|Three of Elementals
19271|3|12|Four of Elementals
19272|3|12|Five of Elementals
19273|3|12|Six of Elementals
19274|3|12|Seven of Elementals
19275|3|12|Eight of Elementals
19276|3|12|Ace of Portals
19277|4|12|Portals Deck
19278|3|12|Two of Portals
19279|3|12|Three of Portals
19280|3|12|Four of Portals
19281|3|12|Five of Portals
19282|3|12|Six of Portals
19283|3|12|Seven of Portals
19284|3|12|Eight of Portals
19287|4|4|Darkmoon Card: Heroism
19288|4|4|Darkmoon Card: Blue Dragon
19289|4|4|Darkmoon Card: Maelstrom
19290|4|4|Darkmoon Card: Twisting Nether
19291|1|1|Darkmoon Storage Box
19292|1|2|Last Month's Mutton
19293|1|2|Last Year's Mutton
19295|1|4|Darkmoon Flower
19296|2|0|Greater Darkmoon Prize
19297|2|0|Lesser Darkmoon Prize
19298|2|0|Minor Darkmoon Prize
19299|1|0|Fizzy Faire Drink
19300|1|0|Bottled Winterspring Water
19301|1|0|Alterac Manna Biscuit
19302|3|4|Darkmoon Ring
19303|3|4|Darkmoon Necklace
19304|1|0|Spiced Beef Jerky
19305|1|0|Pickled Kodo Foot
19306|1|0|Crunchy Frog
19307|1|0|Alterac Heavy Runecloth Bandage
19308|4|4|Tome of Arcane Domination
19309|4|4|Tome of Shadow Force
19310|4|4|Tome of the Ice Lord
19311|4|4|Tome of Fiery Arcana
19312|4|4|Lei of the Lifegiver
19315|4|4|Therazane's Touch
19316|2|6|Ice Threaded Arrow
19317|2|6|Ice Threaded Bullet
19318|1|0|Bottled Alterac Spring Water
19319|3|11|Harpy Hide Quiver
19320|3|11|Gnoll Skin Bandolier
19321|4|4|The Immovable Object
19322|2|12|Warsong Mark of Honor
19323|4|2|The Unstoppable Force
19324|4|2|The Lobotomizer
19325|4|4|Don Julio's Band
19326|1|9|Pattern: Might of the Timbermaw
19327|1|9|Pattern: Timbermaw Brawlers
19328|1|9|Pattern: Dawn Treaders
19329|1|9|Pattern: Golden Mantle of the Dawn
19330|1|9|Pattern: Lava Belt
19331|1|9|Pattern: Chromatic Gauntlets
19332|1|9|Pattern: Corehound Belt
19333|1|9|Pattern: Molten Belt
19334|4|2|The Untamed Blade
19335|4|2|Spineshatter
19336|4|4|Arcane Infused Gem
19337|4|4|The Black Book
19338|1|12|Free Ticket Voucher
19339|4|4|Mind Quickening Gem
19340|4|4|Rune of Metamorphosis
19341|4|4|Lifegiving Gem
19342|4|4|Venomous Totem
19343|4|4|Scrolls of Blinding Light
19344|4|4|Natural Alignment Crystal
19345|4|4|Aegis of Preservation
19346|4|2|Dragonfang Blade
19347|4|2|Claw of Chromaggus
19348|4|4|Red Dragonscale Protector
19349|4|4|Elementium Reinforced Bulwark
19350|4|2|Heartstriker
19351|4|2|Maladath, Runed Blade of the Black Flight
19352|4|2|Chromatically Tempered Sword
19353|4|2|Drake Talon Cleaver
19354|4|2|Draconic Avenger
19355|4|2|Shadow Wing Focus Staff
19356|4|2|Staff of the Shadow Flame
19357|4|2|Herald of Woe
19358|4|2|Draconic Maul
19360|4|2|Lok'amir il Romathis
19361|4|2|Ashjre'thul, Crossbow of Smiting
19362|4|2|Doom's Edge
19363|4|2|Crul'shorukh, Edge of Chaos
19364|4|2|Ashkandi, Greatsword of the Brotherhood
19365|4|2|Claw of the Black Drake
19366|4|4|Master Dragonslayer's Orb
19367|4|2|Dragon's Touch
19368|4|2|Dragonbreath Hand Cannon
19369|4|4|Gloves of Rapid Evolution
19370|4|4|Mantle of the Blackwing Cabal
19371|4|4|Pendant of the Fallen Dragon
19372|4|4|Helm of Endless Rage
19373|4|4|Black Brood Pauldrons
19374|4|4|Bracers of Arcane Accuracy
19375|4|4|Mish'undare, Circlet of the Mind Flayer
19376|4|4|Archimtiros' Ring of Reckoning
19377|4|4|Prestor's Talisman of Connivery
19378|4|4|Cloak of the Brood Lord
19379|4|4|Neltharion's Tear
19380|4|4|Therazane's Link
19381|4|4|Boots of the Shadow Flame
19382|4|4|Pure Elementium Band
19383|4|4|Master Dragonslayer's Medallion
19384|4|4|Master Dragonslayer's Ring
19385|4|4|Empowered Leggings
19386|4|4|Elementium Threaded Cloak
19387|4|4|Chromatic Boots
19388|4|4|Angelista's Grasp
19389|4|4|Taut Dragonhide Shoulderpads
19390|4|4|Taut Dragonhide Gloves
19391|4|4|Shimmering Geta
19392|4|4|Girdle of the Fallen Crusader
19393|4|4|Primalist's Linked Waistguard
19394|4|4|Drake Talon Pauldrons
19395|4|4|Rejuvenating Gem
19396|4|4|Taut Dragonhide Belt
19397|4|4|Ring of Blackrock
19398|4|4|Cloak of Firemaw
19399|4|4|Black Ash Robe
19400|4|4|Firemaw's Clutch
19401|4|4|Primalist's Linked Legguards
19402|4|4|Legguards of the Fallen Crusader
19403|4|4|Band of Forced Concentration
19405|4|4|Malfurion's Blessed Bulwark
19406|4|4|Drake Fang Talisman
19407|4|4|Ebony Flame Gloves
19422|1|12|Darkmoon Faire Fortune
19423|1|15|Sayge's Fortune #23
19424|1|15|Sayge's Fortune #24
19425|2|0|Mysterious Lockbox
19426|4|4|Orb of the Darkmoon
19430|4|4|Shroud of Pure Thought
19431|4|4|Styleen's Impeding Scarab
19432|4|4|Circle of Applied Force
19433|4|4|Emberweave Leggings
19434|4|4|Band of Dark Dominion
19435|4|2|Essence Gatherer
19436|4|4|Cloak of Draconic Might
19437|4|4|Boots of Pure Thought
19438|4|4|Ringo's Blizzard Boots
19439|4|4|Interlaced Shadow Jerkin
19440|1|0|Powerful Anti-Venom
19441|1|7|Huge Venom Sac
19442|1|9|Formula: Powerful Anti-Venom
19443|1|15|Sayge's Fortune #25
19444|1|9|Formula: Enchant Weapon - Strength
19445|1|9|Formula: Enchant Weapon - Agility
19446|1|9|Formula: Enchant Bracer - Mana Regeneration
19447|1|9|Formula: Enchant Bracer - Healing
19448|1|9|Formula: Enchant Weapon - Mighty Spirit
19449|1|9|Formula: Enchant Weapon - Mighty Intellect
19450|1|15|A Jubling's Tiny Home
19451|1|15|Sayge's Fortune #26
19452|1|15|Sayge's Fortune #27
19453|1|15|Sayge's Fortune #28
19454|1|15|Sayge's Fortune #29
19462|1|15|Unhatched Jubling Egg
19482|1|12|LeCraft Rabbit Pelt
19483|1|15|Peeling the Onion
19484|1|15|The Frostwolf Artichoke
19491|4|4|Amulet of the Darkmoon
19505|1|4|Warsong Battle Tabard
19506|1|4|Silverwing Battle Tabard
19507|2|4|Inquisitor's Shawl
19508|2|4|Branded Leather Bracers
19509|2|4|Dusty Mail Boots
19510|3|4|Legionnaire's Band
19511|3|4|Legionnaire's Band
19512|3|4|Legionnaire's Band
19513|3|4|Legionnaire's Band
19514|3|4|Protector's Band
19515|3|4|Protector's Band
19516|3|4|Protector's Band
19517|3|4|Protector's Band
19518|3|4|Advisor's Ring
19519|3|4|Advisor's Ring
19520|3|4|Advisor's Ring
19521|3|4|Advisor's Ring
19522|3|4|Lorekeeper's Ring
19523|3|4|Lorekeeper's Ring
19524|3|4|Lorekeeper's Ring
19525|3|4|Lorekeeper's Ring
19526|3|4|Battle Healer's Cloak
19527|3|4|Battle Healer's Cloak
19528|3|4|Battle Healer's Cloak
19529|3|4|Battle Healer's Cloak
19530|3|4|Caretaker's Cape
19531|3|4|Caretaker's Cape
19532|3|4|Caretaker's Cape
19533|3|4|Caretaker's Cape
19534|3|4|Scout's Medallion
19535|3|4|Scout's Medallion
19536|3|4|Scout's Medallion
19537|3|4|Scout's Medallion
19538|3|4|Sentinel's Medallion
19539|3|4|Sentinel's Medallion
19540|3|4|Sentinel's Medallion
19541|3|4|Sentinel's Medallion
19542|3|2|Scout's Blade
19543|3|2|Scout's Blade
19544|3|2|Scout's Blade
19545|3|2|Scout's Blade
19546|3|2|Sentinel's Blade
19547|3|2|Sentinel's Blade
19548|3|2|Sentinel's Blade
19549|3|2|Sentinel's Blade
19550|3|2|Legionnaire's Sword
19551|3|2|Legionnaire's Sword
19552|3|2|Legionnaire's Sword
19553|3|2|Legionnaire's Sword
19554|3|2|Protector's Sword
19555|3|2|Protector's Sword
19556|3|2|Protector's Sword
19557|3|2|Protector's Sword
19558|3|2|Outrider's Bow
19559|3|2|Outrider's Bow
19560|3|2|Outrider's Bow
19561|3|2|Outrider's Bow
19562|3|2|Outrunner's Bow
19563|3|2|Outrunner's Bow
19564|3|2|Outrunner's Bow
19565|3|2|Outrunner's Bow
19566|3|2|Advisor's Gnarled Staff
19567|3|2|Advisor's Gnarled Staff
19568|3|2|Advisor's Gnarled Staff
19569|3|2|Advisor's Gnarled Staff
19570|3|2|Lorekeeper's Staff
19571|3|2|Lorekeeper's Staff
19572|3|2|Lorekeeper's Staff
19573|3|2|Lorekeeper's Staff
19574|2|4|Strength of Mugamba
19575|3|4|Strength of Mugamba
19576|3|4|Strength of Mugamba
19577|4|4|Rage of Mugamba
19578|4|4|Berserker Bracers
19579|2|4|Heathen's Brand
19580|4|4|Berserker Bracers
19581|4|4|Berserker Bracers
19582|4|4|Windtalker's Wristguards
19583|4|4|Windtalker's Wristguards
19584|4|4|Windtalker's Wristguards
19585|3|4|Heathen's Brand
19586|3|4|Heathen's Brand
19587|4|4|Forest Stalker's Bracers
19588|4|4|Hero's Brand
19589|4|4|Forest Stalker's Bracers
19590|4|4|Forest Stalker's Bracers
19591|2|4|The Eye of Zuldazar
19592|3|4|The Eye of Zuldazar
19593|3|4|The Eye of Zuldazar
19594|4|4|The All-Seeing Eye of Zuldazar
19595|4|4|Dryad's Wrist Bindings
19596|4|4|Dryad's Wrist Bindings
19597|4|4|Dryad's Wrist Bindings
19598|2|4|Pebble of Kajaro
19599|3|4|Pebble of Kajaro
19600|3|4|Pebble of Kajaro
19601|4|4|Jewel of Kajaro
19602|2|4|Kezan's Taint
19603|3|4|Kezan's Taint
19604|3|4|Kezan's Taint
19605|4|4|Kezan's Unstoppable Taint
19606|2|4|Vision of Voodress
19607|3|4|Vision of Voodress
19608|3|4|Vision of Voodress
19609|4|4|Unmarred Vision of Voodress
19610|2|4|Enchanted South Seas Kelp
19611|3|4|Enchanted South Seas Kelp
19612|3|4|Enchanted South Seas Kelp
19613|4|4|Pristine Enchanted South Seas Kelp
19614|2|4|Zandalarian Shadow Talisman
19615|3|4|Zandalarian Shadow Talisman
19616|3|4|Zandalarian Shadow Talisman
19617|4|4|Zandalarian Shadow Mastery Talisman
19618|2|4|Maelstrom's Tendril
19619|3|4|Maelstrom's Tendril
19620|3|4|Maelstrom's Tendril
19621|4|4|Maelstrom's Wrath
19642|1|12|iCoke Prize Voucher
19682|3|4|Bloodvine Vest
19683|3|4|Bloodvine Leggings
19684|3|4|Bloodvine Boots
19685|3|4|Primal Batskin Jerkin
19686|3|4|Primal Batskin Gloves
19687|3|4|Primal Batskin Bracers
19688|3|4|Blood Tiger Breastplate
19689|3|4|Blood Tiger Shoulders
19690|3|4|Bloodsoul Breastplate
19691|3|4|Bloodsoul Shoulders
19692|3|4|Bloodsoul Gauntlets
19693|3|4|Darksoul Breastplate
19694|3|4|Darksoul Leggings
19695|3|4|Darksoul Shoulders
19696|1|0|Harvest Bread
19697|1|4|Bounty of the Harvest
19698|2|12|Zulian Coin
19699|2|12|Razzashi Coin
19700|2|12|Hakkari Coin
19701|2|12|Gurubashi Coin
19702|2|12|Vilebranch Coin
19703|2|12|Witherbark Coin
19704|2|12|Sandfury Coin
19705|2|12|Skullsplitter Coin
19706|2|12|Bloodscalp Coin
19707|3|12|Red Hakkari Bijou
19708|3|12|Blue Hakkari Bijou
19709|3|12|Yellow Hakkari Bijou
19710|3|12|Orange Hakkari Bijou
19711|3|12|Green Hakkari Bijou
19712|3|12|Purple Hakkari Bijou
19713|3|12|Bronze Hakkari Bijou
19714|3|12|Silver Hakkari Bijou
19715|3|12|Gold Hakkari Bijou
19716|4|12|Primal Hakkari Bindings
19717|4|12|Primal Hakkari Armsplint
19718|4|12|Primal Hakkari Stanchion
19719|4|12|Primal Hakkari Girdle
19720|4|12|Primal Hakkari Sash
19721|4|12|Primal Hakkari Shawl
19722|4|12|Primal Hakkari Tabard
19723|4|12|Primal Hakkari Kossack
19724|4|12|Primal Hakkari Aegis
19725|1|12|Arathi Resource Crate
19726|2|7|Bloodvine
19727|3|7|Blood Scythe
19742|3|4|Earthborn Kilt TEST
19743|2|4|Cloaked Hood TEST
19764|1|9|Pattern: Bloodvine Vest
19765|1|9|Pattern: Bloodvine Leggings
19766|1|9|Pattern: Bloodvine Boots
19767|1|7|Primal Bat Leather
19768|1|7|Primal Tiger Leather
19769|1|9|Pattern: Primal Batskin Jerkin
19770|1|9|Pattern: Primal Batskin Gloves
19771|1|9|Pattern: Primal Batskin Bracers
19772|1|9|Pattern: Blood Tiger Breastplate
19773|1|9|Pattern: Blood Tiger Shoulders
19774|2|7|Souldarite
19775|1|15|Sealed Azure Bag
19776|1|9|Plans: Bloodsoul Breastplate
19777|1|9|Plans: Bloodsoul Shoulders
19778|1|9|Plans: Bloodsoul Gauntlets
19779|1|9|Plans: Darksoul Breastplate
19780|1|9|Plans: Darksoul Leggings
19781|1|9|Plans: Darksoul Shoulders
19782|3|15|Presence of Might
19783|3|15|Syncretist's Sigil
19784|3|15|Death's Embrace
19785|3|15|Falcon's Call
19786|3|15|Vodouisant's Vigilant Embrace
19787|3|15|Presence of Sight
19788|3|15|Hoodoo Hex
19789|3|15|Prophetic Aura
19790|3|15|Animist's Caress
19802|4|12|Heart of Hakkar
19803|2|15|Brownell's Blue Striped Racer
19804|2|15|Pale Ghoulfish
19805|2|15|Keefer's Angelfish
19806|2|15|Dezian Queenfish
19807|1|15|Speckled Tastyfish
19808|2|2|Rockhide Strongfish
19812|3|4|Rune of the Dawn
19813|2|12|Punctured Voodoo Doll
19814|2|12|Punctured Voodoo Doll
19815|2|12|Punctured Voodoo Doll
19816|2|12|Punctured Voodoo Doll
19817|2|12|Punctured Voodoo Doll
19818|2|12|Punctured Voodoo Doll
19819|2|12|Punctured Voodoo Doll
19820|2|12|Punctured Voodoo Doll
19821|2|12|Punctured Voodoo Doll
19822|4|4|Zandalar Vindicator's Breastplate
19823|4|4|Zandalar Vindicator's Belt
19824|4|4|Zandalar Vindicator's Armguards
19825|4|4|Zandalar Freethinker's Breastplate
19826|4|4|Zandalar Freethinker's Belt
19827|4|4|Zandalar Freethinker's Armguards
19828|4|4|Zandalar Augur's Hauberk
19829|4|4|Zandalar Augur's Belt
19830|4|4|Zandalar Augur's Bracers
19831|4|4|Zandalar Predator's Mantle
19832|4|4|Zandalar Predator's Belt
19833|4|4|Zandalar Predator's Bracers
19834|4|4|Zandalar Madcap's Tunic
19835|4|4|Zandalar Madcap's Mantle
19836|4|4|Zandalar Madcap's Bracers
19838|4|4|Zandalar Haruspex's Tunic
19839|4|4|Zandalar Haruspex's Belt
19840|4|4|Zandalar Haruspex's Bracers
19841|4|4|Zandalar Confessor's Mantle
19842|4|4|Zandalar Confessor's Bindings
19843|4|4|Zandalar Confessor's Wraps
19845|4|4|Zandalar Illusionist's Mantle
19846|4|4|Zandalar Illusionist's Wraps
19848|4|4|Zandalar Demoniac's Wraps
19849|4|4|Zandalar Demoniac's Mantle
19850|1|12|Uther's Tribute
19851|1|12|Grom's Tribute
19852|4|2|Ancient Hakkari Manslayer
19853|4|2|Gurubashi Dwarf Destroyer
19854|4|2|Zin'rokh, Destroyer of Worlds
19855|4|4|Bloodsoaked Legplates
19856|4|4|The Eye of Hakkar
19857|4|4|Cloak of Consumption
]==],
[==[
19858|2|12|Zandalar Honor Token
19859|4|2|Fang of the Faceless
19861|4|2|Touch of Chaos
19862|4|4|Aegis of the Blood God
19863|3|4|Primalist's Seal
19864|4|2|Bloodcaller
19865|4|2|Warblade of the Hakkari
19866|4|2|Warblade of the Hakkari
19867|4|2|Bloodlord's Defender
19869|3|4|Blooddrenched Grips
19870|3|4|Hakkari Loa Cloak
19871|3|4|Talisman of Protection
19872|4|15|Swift Razzashi Raptor
19873|3|4|Overlord's Crimson Band
19874|4|2|Halberd of Smiting
19875|3|4|Bloodstained Coif
19876|4|4|Soul Corrupter's Necklace
19877|3|4|Animist's Leggings
19878|3|4|Bloodsoaked Pauldrons
19880|1|12|Gurubashi Head Collection
19881|1|12|Channeler's Head
19882|1|12|The Hexxer's Head
19883|1|12|Sacred Cord
19884|4|2|Jin'do's Judgement
19885|4|4|Jin'do's Evil Eye
19886|3|4|The Hexxer's Cover
19887|3|4|Bloodstained Legplates
19888|3|4|Overlord's Embrace
19889|3|4|Blooddrenched Leggings
19890|4|2|Jin'do's Hexxer
19891|4|4|Jin'do's Bag of Whammies
19892|3|4|Animist's Boots
19893|3|4|Zanzil's Seal
19894|3|4|Bloodsoaked Gauntlets
19895|3|4|Bloodtinged Kilt
19896|4|2|Thekal's Grasp
19897|4|4|Betrayer's Boots
19898|3|4|Seal of Jin
19899|3|4|Ritualistic Legguards
19900|3|2|Zulian Stone Axe
19901|3|2|Zulian Slicer
19902|4|15|Swift Zulian Tiger
19903|4|2|Fang of Venoxis
19904|4|4|Runed Bloodstained Hauberk
19905|3|4|Zanzil's Band
19906|3|4|Blooddrenched Footpads
19907|3|4|Zulian Tigerhide Cloak
19908|3|2|Sceptre of Smiting
19909|4|2|Will of Arlokk
19910|4|2|Arlokk's Grasp
19911|1|15|Whipweed Heart
19912|3|4|Overlord's Onyx Band
19913|3|4|Bloodsoaked Greaves
19914|3|1|Panther Hide Sack
19915|3|4|Zulian Defender
19918|4|2|Jeklik's Crusher
19919|3|4|Bloodstained Greaves
19920|3|4|Primalist's Band
19921|3|2|Zulian Hacker
19922|3|4|Arlokk's Hoodoo Stick
19923|3|4|Jeklik's Opaline Talisman
19925|3|4|Band of Jin
19927|4|2|Mar'li's Touch
19928|3|4|Animist's Spaulders
19929|3|4|Bloodtinged Gloves
19930|3|4|Mar'li's Eye
19931|3|12|Gurubashi Mojo Madness
19932|1|12|UNUSED Empowered Mojo Bundle
19933|1|15|Glowing Scorpid Blood
19934|0|15|Large Scorpid Claw
19935|0|15|Empty Venom Sac
19936|0|15|Dried Scorpid Carapace
19937|0|15|Small Scorpid Claw
19938|0|15|Heavy Scorpid Leg
19939|2|12|Gri'lek's Blood
19940|2|12|Renataki's Tooth
19941|2|12|Wushoolay's Mane
19942|2|12|Hazza'rah's Dream Thread
19943|1|7|Massive Mojo
19944|4|2|Nat Pagle's Fish Terminator
19945|4|4|Lizardscale Eyepatch
19946|3|2|Tigule's Harpoon
19947|3|4|Nat Pagle's Broken Reel
19948|4|4|Zandalarian Hero Badge
19949|4|4|Zandalarian Hero Medallion
19950|4|4|Zandalarian Hero Charm
19951|4|4|Gri'lek's Charm of Might
19952|4|4|Gri'lek's Charm of Valor
19953|4|4|Renataki's Charm of Beasts
19954|4|4|Renataki's Charm of Trickery
19955|4|4|Wushoolay's Charm of Nature
19956|4|4|Wushoolay's Charm of Spirits
19957|4|4|Hazza'rah's Charm of Destruction
19958|4|4|Hazza'rah's Charm of Healing
19959|4|4|Hazza'rah's Charm of Magic
19960|1|12|Crystalized Honey
19961|3|2|Gri'lek's Grinder
19962|3|2|Gri'lek's Carver
19963|3|2|Pitchfork of Madness
19964|3|2|Renataki's Soul Conduit
19965|3|2|Wushoolay's Poker
19967|3|2|Thoughtblighter
19968|3|2|Fiery Retributer
19969|2|4|Nat Pagle's Extreme Anglin' Boots
19970|3|2|Arcanite Fishing Pole
19972|2|4|Lucky Fishing Hat
19973|1|12|Nat's Measuring Tape
19974|1|12|Mudskunk Lure
19975|1|12|Zulian Mudskunk
19978|1|15|Fishing Tournament!
19979|3|4|Hook of the Master Angler
19982|3|4|Duskbat Drape
19984|3|4|Ebon Mask
19986|3|4|Pirate's Eye Patch
19989|3|4|Tome of Devouring Shadows
19990|3|4|Blessed Prayer Beads
19991|3|4|Devilsaur Eye
19992|3|4|Devilsaur Tooth
19993|3|2|Hoodoo Hunting Bow
19994|1|0|Harvest Fruit
19995|1|0|Harvest Boar
19996|1|0|Harvest Fish
19997|1|0|Harvest Nectar
19998|3|4|Bloodvine Lens
19999|3|4|Bloodvine Goggles
20000|1|9|Schematic: Bloodvine Goggles
20001|1|9|Schematic: Bloodvine Lens
20002|1|0|Greater Dreamless Sleep Potion
20003|3|2|Devilsaur Claws
20004|1|0|Major Troll's Blood Elixir
20005|3|2|Devilsaur Claws
20006|3|4|Circle of Hope
20007|1|0|Mageblood Elixir
20008|1|0|Living Action Potion
20009|1|12|For the Light!
20010|1|12|The Horde's Hellscream
20011|1|9|Recipe: Mageblood Elixir
20012|1|9|Recipe: Greater Dreamless Sleep
20013|1|9|Recipe: Living Action Potion
20014|1|9|Recipe: Major Troll's Blood Elixir
20015|0|15|Elder Raptor Feathers
20016|0|15|Trophy Raptor Skull
20017|1|15|Perfect Courser Antler
20018|1|12|Angerclaw Grizzly Hide
20019|1|15|Tooth of Morphaz
20020|1|12|Bundle of Goods
20021|1|12|Gold Pirate Earring
20022|1|15|Azure Key
20023|1|12|Encoded Fragment
20024|1|12|Putrid Bile Duct
20025|1|12|Blood of Morphaz
20026|1|12|Rotting Flesh
20027|1|12|Healthy Courser Gland
20028|1|12|Glittering Dust
20029|1|12|Enchanted Coral
20030|0|15|Pet Rock
20031|1|0|Essence Mango
20032|4|4|Flowing Ritual Robes
20033|4|4|Zandalar Demoniac's Robe
20034|4|4|Zandalar Illusionist's Robe
20035|3|2|Glacial Spike
20036|3|4|Fire Ruby
20037|3|4|Arcane Crystal Pendant
20038|4|2|Mandokir's Sting
20039|4|4|Dark Iron Boots
20040|1|9|Plans: Dark Iron Boots
20041|3|4|Highlander's Plate Girdle
20042|3|4|Highlander's Lamellar Girdle
20043|3|4|Highlander's Chain Girdle
20044|3|4|Highlander's Mail Girdle
20045|3|4|Highlander's Leather Girdle
20046|3|4|Highlander's Lizardhide Girdle
20047|3|4|Highlander's Cloth Girdle
20048|3|4|Highlander's Plate Greaves
20049|3|4|Highlander's Lamellar Greaves
20050|3|4|Highlander's Chain Greaves
20051|3|4|Highlander's Mail Greaves
20052|3|4|Highlander's Leather Boots
20053|3|4|Highlander's Lizardhide Boots
20054|3|4|Highlander's Cloth Boots
20055|4|4|Highlander's Chain Pauldrons
20056|4|4|Highlander's Mail Pauldrons
20057|4|4|Highlander's Plate Spaulders
20058|4|4|Highlander's Lamellar Spaulders
20059|4|4|Highlander's Leather Shoulders
20060|4|4|Highlander's Lizardhide Shoulders
20061|4|4|Highlander's Epaulets
20062|1|0|Arathi Basin Enriched Ration
20063|1|0|Arathi Basin Field Ration
20064|1|0|Arathi Basin Iron Ration
20065|1|0|Arathi Basin Mageweave Bandage
20066|1|0|Arathi Basin Runecloth Bandage
20067|1|0|Arathi Basin Silk Bandage
20068|4|4|Deathguard's Cloak
20069|4|2|Ironbark Staff
20070|4|2|Sageclaw
20071|3|4|Talisman of Arathor
20072|3|4|Defiler's Talisman
20073|4|4|Cloak of the Honor Guard
20074|1|0|Heavy Crocolisk Stew
20075|1|9|Recipe: Heavy Crocolisk Stew
20076|3|12|Zandalar Signet of Mojo
20077|3|12|Zandalar Signet of Might
20078|3|12|Zandalar Signet of Serenity
20079|2|0|Spirit of Zanza
20080|2|0|Sheen of Zanza
20081|2|0|Swiftness of Zanza
20082|3|2|Woestave
20083|3|2|Hunting Spear
20084|3|15|Hunting Net
20085|1|15|Arcane Shard
20086|2|2|Dusksteel Throwing Knife
20087|1|15|Wavethrasher Scales
20088|3|4|Highlander's Chain Girdle
20089|3|4|Highlander's Chain Girdle
20090|3|4|Highlander's Chain Girdle
20091|3|4|Highlander's Chain Greaves
20092|3|4|Highlander's Chain Greaves
20093|3|4|Highlander's Chain Greaves
20094|3|4|Highlander's Cloth Boots
20095|3|4|Highlander's Cloth Boots
20096|3|4|Highlander's Cloth Boots
20097|3|4|Highlander's Cloth Girdle
20098|3|4|Highlander's Cloth Girdle
20099|3|4|Highlander's Cloth Girdle
20100|3|4|Highlander's Lizardhide Boots
20101|3|4|Highlander's Lizardhide Boots
20102|3|4|Highlander's Lizardhide Boots
20103|3|4|Highlander's Lizardhide Girdle
20104|3|4|Highlander's Lizardhide Girdle
20105|3|4|Highlander's Lizardhide Girdle
20106|3|4|Highlander's Lamellar Girdle
20107|3|4|Highlander's Lamellar Girdle
20108|3|4|Highlander's Lamellar Girdle
20109|3|4|Highlander's Lamellar Greaves
20110|3|4|Highlander's Lamellar Greaves
20111|3|4|Highlander's Lamellar Greaves
20112|3|4|Highlander's Leather Boots
20113|3|4|Highlander's Leather Boots
20114|3|4|Highlander's Leather Boots
20115|3|4|Highlander's Leather Girdle
20116|3|4|Highlander's Leather Girdle
20117|3|4|Highlander's Leather Girdle
20118|3|4|Highlander's Mail Girdle
20119|3|4|Highlander's Mail Girdle
20120|3|4|Highlander's Mail Girdle
20121|3|4|Highlander's Mail Greaves
20122|3|4|Highlander's Mail Greaves
20123|3|4|Highlander's Mail Greaves
20124|3|4|Highlander's Plate Girdle
20125|3|4|Highlander's Plate Girdle
20126|3|4|Highlander's Plate Girdle
20127|3|4|Highlander's Plate Greaves
20128|3|4|Highlander's Plate Greaves
20129|3|4|Highlander's Plate Greaves
20130|3|4|Diamond Flask
20131|1|4|Battle Tabard of the Defilers
20132|1|4|Arathor Battle Tabard
20134|4|4|Skyfury Helm
20135|4|4|90 Epic Warrior Bracelets
20136|4|4|90 Epic Warrior Breastplate
20137|4|4|90 Epic Warrior Gauntlets
20138|4|4|90 Epic Warrior Helm
20139|4|4|90 Epic Warrior Legplates
20140|4|4|90 Epic Warrior Pauldrons
20141|4|4|90 Epic Warrior Sabatons
20142|4|4|90 Epic Warrior Waistband
20143|4|4|90 Epic Warrior Neck
20144|4|4|90 Epic Warrior Ring
20145|4|4|90 Epic Warrior Cloak
20146|4|2|90 Epic Warrior Gun
20149|4|2|90 Epic Warrior Axe
20150|3|4|Defiler's Chain Girdle
20151|3|4|Defiler's Chain Girdle
20152|3|4|Defiler's Chain Girdle
20153|3|4|Defiler's Chain Girdle
20154|3|4|Defiler's Chain Greaves
20155|3|4|Defiler's Chain Greaves
20156|3|4|Defiler's Chain Greaves
20157|3|4|Defiler's Chain Greaves
20158|4|4|Defiler's Chain Pauldrons
20159|3|4|Defiler's Cloth Boots
20160|3|4|Defiler's Cloth Boots
20161|3|4|Defiler's Cloth Boots
20162|3|4|Defiler's Cloth Boots
20163|3|4|Defiler's Cloth Girdle
20164|3|4|Defiler's Cloth Girdle
20165|3|4|Defiler's Cloth Girdle
20166|3|4|Defiler's Cloth Girdle
20167|3|4|Defiler's Lizardhide Boots
20168|3|4|Defiler's Lizardhide Boots
20169|3|4|Defiler's Lizardhide Boots
20170|3|4|Defiler's Lizardhide Boots
20171|3|4|Defiler's Lizardhide Girdle
20172|3|4|Defiler's Lizardhide Girdle
20173|3|4|Defiler's Lizardhide Girdle
20174|3|4|Defiler's Lizardhide Girdle
20175|4|4|Defiler's Lizardhide Shoulders
20176|4|4|Defiler's Epaulets
20177|3|4|Defiler's Lamellar Girdle
20178|3|4|Defiler's Lamellar Girdle
20179|3|4|Defiler's Lamellar Girdle
20180|3|4|Defiler's Lamellar Girdle
20181|3|4|Defiler's Lamellar Greaves
20182|3|4|Defiler's Lamellar Greaves
20183|3|4|Defiler's Lamellar Greaves
20184|4|4|Defiler's Lamellar Spaulders
20185|3|4|Defiler's Lamellar Greaves
20186|3|4|Defiler's Leather Boots
20187|3|4|Defiler's Leather Boots
20188|3|4|Defiler's Leather Boots
20189|3|4|Defiler's Leather Boots
20190|3|4|Defiler's Leather Girdle
20191|3|4|Defiler's Leather Girdle
20192|3|4|Defiler's Leather Girdle
20193|3|4|Defiler's Leather Girdle
20194|4|4|Defiler's Leather Shoulders
20195|3|4|Defiler's Mail Girdle
20196|3|4|Defiler's Mail Girdle
20197|3|4|Defiler's Mail Girdle
20198|3|4|Defiler's Mail Girdle
20199|3|4|Defiler's Mail Greaves
20200|3|4|Defiler's Mail Greaves
20201|3|4|Defiler's Mail Greaves
20202|3|4|Defiler's Mail Greaves
20203|4|4|Defiler's Mail Pauldrons
20204|3|4|Defiler's Plate Girdle
20205|3|4|Defiler's Plate Girdle
20206|3|4|Defiler's Plate Girdle
20207|3|4|Defiler's Plate Girdle
20208|3|4|Defiler's Plate Greaves
20209|3|4|Defiler's Plate Greaves
20210|3|4|Defiler's Plate Greaves
20211|3|4|Defiler's Plate Greaves
20212|4|4|Defiler's Plate Spaulders
20213|3|4|Belt of Shrunken Heads
20214|4|2|Mindfang
20215|3|4|Belt of Shriveled Heads
20216|3|4|Belt of Preserved Heads
20217|3|4|Belt of Tiny Heads
20218|3|4|Faded Hakkari Cloak
20219|3|4|Tattered Hakkari Cape
20220|4|2|Ironbark Staff
20221|5|15|Fabled Steed
20222|1|0|Defiler's Enriched Ration
20223|1|0|Defiler's Field Ration
20224|1|0|Defiler's Iron Ration
20225|1|0|Highlander's Enriched Ration
20226|1|0|Highlander's Field Ration
20227|1|0|Highlander's Iron Ration
20228|1|0|Defiler's Advanced Care Package
20229|1|0|Defiler's Basic Care Package
20230|1|0|Defiler's Standard Care Package
20231|1|0|Arathor Advanced Care Package
20232|1|0|Defiler's Mageweave Bandage
20233|1|0|Arathor Basic Care Package
20234|1|0|Defiler's Runecloth Bandage
20235|1|0|Defiler's Silk Bandage
20236|1|0|Arathor Standard Care Package
20237|1|0|Highlander's Mageweave Bandage
20238|2|2|90 Green Warrior Axe
20239|2|4|90 Green Warrior Bracelets
20240|2|4|90 Green Warrior Breastplate
20241|2|4|90 Green Warrior Cloak
20242|2|4|90 Green Warrior Gauntlets
20243|1|0|Highlander's Runecloth Bandage
20244|1|0|Highlander's Silk Bandage
20245|2|2|90 Green Warrior Gun
20246|2|4|90 Green Warrior Helm
20247|2|4|90 Green Warrior Legplates
20248|2|4|90 Green Warrior Neck
20249|2|4|90 Green Warrior Pauldrons
20250|2|4|90 Green Warrior Ring
20251|2|4|90 Green Warrior Sabatons
20252|2|4|90 Green Warrior Waistband
20253|1|9|Pattern: Warbear Harness
20254|1|9|Pattern: Warbear Woolies
20255|3|4|Whisperwalk Boots
20256|2|12|Warsong Gulch Ribbon of Sacrifice
20257|4|4|Seafury Gauntlets
20258|3|2|Zulian Ceremonial Staff
20259|3|4|Shadow Panther Hide Gloves
20260|3|4|Seafury Leggings
20261|3|4|Shadow Panther Hide Belt
20262|3|4|Seafury Boots
20263|3|4|Gurubashi Helm
20264|4|4|Peacekeeper Gauntlets
20265|3|4|Peacekeeper Boots
20266|3|4|Peacekeeper Leggings
20267|4|4|90 Epic Rogue Belt
20268|4|4|90 Epic Rogue Boots
20269|4|4|90 Epic Rogue Bracers
20270|4|4|90 Epic Rogue Cap
20271|4|4|90 Epic Rogue Gloves
20272|4|4|90 Epic Rogue Pants
20273|4|4|90 Epic Rogue Spaulders
20274|4|4|90 Epic Rogue Tunic
20275|4|4|90 Epic Rogue Neck
20276|4|4|90 Epic Rogue Cloak
20277|4|4|90 Epic Rogue Ring
20278|4|2|90 Epic Rogue Bow
20279|4|2|90 Epic Rogue Dagger
20280|2|2|63 Green Warrior Axe
20281|2|4|63 Green Warrior Bracelets
20282|2|4|63 Green Warrior Breastplate
20283|2|4|63 Green Warrior Cloak
20284|2|4|63 Green Warrior Gauntlets
20285|2|2|63 Green Warrior Gun
20286|2|4|63 Green Warrior Helm
20287|2|4|63 Green Warrior Legplates
20288|2|4|63 Green Warrior Neck
20289|2|4|63 Green Warrior Pauldrons
20290|2|4|63 Green Warrior Ring
20291|2|4|63 Green Warrior Sabatons
20292|2|4|63 Green Warrior Waistband
20295|3|4|Blue Dragonscale Leggings
20296|3|4|Green Dragonscale Gauntlets
20297|2|4|90 Green Rogue Belt
20298|2|4|90 Green Rogue Boots
20299|2|2|90 Green Rogue Bow
20300|2|4|90 Green Rogue Bracers
20301|2|4|90 Green Rogue Cap
20302|2|4|90 Green Rogue Cloak
20303|2|2|90 Green Rogue Dagger
20304|2|4|90 Green Rogue Gloves
20305|2|4|90 Green Rogue Neck
20306|2|4|90 Green Rogue Pants
20307|2|4|90 Green Rogue Ring
20308|2|4|90 Green Rogue Spaulders
20309|2|4|90 Green Rogue Tunic
20310|1|12|Flayed Demon Skin
20311|2|4|63 Green Rogue Belt
20312|2|4|63 Green Rogue Boots
20313|2|2|63 Green Rogue Bow
20314|2|4|63 Green Rogue Bracers
20315|2|4|63 Green Rogue Cap
20316|2|4|63 Green Rogue Cloak
20317|2|2|63 Green Rogue Dagger
20318|2|4|63 Green Rogue Gloves
20319|2|4|63 Green Rogue Neck
20320|2|4|63 Green Rogue Pants
20321|2|4|63 Green Rogue Ring
20322|2|4|63 Green Rogue Spaulders
20323|2|4|63 Green Rogue Tunic
20324|4|4|90 Epic Frost Belt
20325|4|4|90 Epic Frost Bindings
20326|4|4|90 Epic Frost Boots
20327|4|4|90 Epic Frost Crown
20328|4|4|90 Epic Frost Gloves
20329|4|4|90 Epic Frost Leggings
20330|4|4|90 Epic Frost Mantle
20331|4|4|90 Epic Frost Robes
20332|4|4|90 Epic Frost Neck
20333|4|4|90 Epic Frost Ring
20334|4|2|90 Epic Frost Staff
20335|4|2|90 Epic Frost Wand
20336|4|4|90 Epic Frost Shroud
20337|1|0|Gnome Head on a Stick
20338|2|4|90 Green Frost Belt
20339|2|4|90 Green Frost Bindings
20340|2|4|90 Green Frost Boots
20341|2|4|90 Green Frost Crown
20342|2|4|90 Green Frost Gloves
20343|2|4|90 Green Frost Leggings
20344|2|4|90 Green Frost Mantle
20345|2|4|90 Green Frost Neck
20346|2|4|90 Green Frost Ring
20347|2|4|90 Green Frost Robes
20348|2|4|90 Green Frost Shroud
20349|2|2|90 Green Frost Staff
20350|2|2|90 Green Frost Wand
20351|2|4|63 Green Frost Belt
20352|2|4|63 Green Frost Bindings
20353|2|4|63 Green Frost Boots
20354|2|4|63 Green Frost Crown
20355|2|4|63 Green Frost Gloves
20356|2|4|63 Green Frost Leggings
20357|2|4|63 Green Frost Mantle
20358|2|4|63 Green Frost Neck
20359|2|4|63 Green Frost Ring
20360|2|4|63 Green Frost Robes
20361|2|4|63 Green Frost Shroud
20362|2|2|63 Green Frost Staff
20363|2|2|63 Green Frost Wand
20367|3|15|Hunting Gear
20368|3|2|Bland Bow of Steadiness
20369|3|4|Azurite Fists
20371|1|15|Blue Murloc Egg
20373|1|12|Stonelash Scorpid Stinger
20374|1|12|Stonelash Pincer Stinger
20375|1|12|Stonelash Flayer Stinger
20376|1|12|Sand Skitterer Fang
20377|1|12|Rock Stalker Fang
20378|1|12|Twilight Tablet Fragment
20379|1|12|Noggle's Satchel
20380|4|4|Dreamscale Breastplate
20381|2|7|Dreamscale
20382|1|9|Pattern: Dreamscale Breastplate
20383|4|12|Head of the Broodlord Lashlayer
20384|1|12|Silithid Carapace Fragment
20385|1|12|Deathclasp's Pincer
20387|1|12|Forsaken Stink Bomb Cluster
20388|1|0|Lollipop
20389|1|0|Candy Corn
20390|1|0|Candy Bar
20391|1|4|Flimsy Male Gnome Mask
20392|1|4|Flimsy Female Gnome Mask
20393|1|15|Treat Bag
20394|1|12|Twilight Lexicon - Chapter 1
20395|1|12|Twilight Lexicon - Chapter 2
20396|1|12|Twilight Lexicon - Chapter 3
20397|1|0|Hallowed Wand - Pirate
20398|1|0|Hallowed Wand - Ninja
20399|1|0|Hallowed Wand - Leper Gnome
20400|2|1|Pumpkin Bag
20401|1|12|Restored Twilight Tablet
20402|2|15|Agent of Nozdormu
20403|2|15|Proxy of Nozdormu
20404|1|12|Encrypted Twilight Text
20405|1|12|Decoded Tablet Transcription
20406|2|4|Twilight Cultist Mantle
20407|2|4|Twilight Cultist Robe
20408|2|4|Twilight Cultist Cowl
20409|1|0|Hallowed Wand - Ghost
20410|1|0|Hallowed Wand - Bat
20411|1|0|Hallowed Wand - Skeleton
20413|1|0|Hallowed Wand - Random
20414|1|0|Hallowed Wand - Wisp
20415|1|15|The War of the Shifting Sands
20416|1|12|Crest of Beckoning: Fire
20418|1|12|Crest of Beckoning: Thunder
20419|1|12|Crest of Beckoning: Stone
20420|1|12|Crest of Beckoning: Water
20422|1|12|Twilight Cultist Medallion of Station
20423|1|7|Sandy Scorpid Claw
20424|1|7|Sandworm Meat
20425|3|2|Advisor's Gnarled Staff
20426|3|4|Advisor's Ring
20427|3|4|Battle Healer's Cloak
20428|3|4|Caretaker's Cape
20429|3|4|Legionnaire's Band
20430|3|2|Legionnaire's Sword
20431|3|4|Lorekeeper's Ring
20432|1|12|Signet of Beckoning: Fire
20433|1|12|Signet of Beckoning: Thunder
20434|3|2|Lorekeeper's Staff
20435|1|12|Signet of Beckoning: Stone
20436|1|12|Signet of Beckoning: Water
20437|3|2|Outrider's Bow
20438|3|2|Outrunner's Bow
20439|3|4|Protector's Band
20440|3|2|Protector's Sword
20441|3|2|Scout's Blade
20442|3|4|Scout's Medallion
20443|3|2|Sentinel's Blade
20444|3|4|Sentinel's Medallion
20447|1|12|Scepter of Beckoning: Fire
20448|1|12|Scepter of Beckoning: Thunder
20449|1|12|Scepter of Beckoning: Stone
20450|1|12|Scepter of Beckoning: Water
20451|1|12|Twilight Cultist Ring of Lordship
20452|1|0|Smoked Desert Dumplings
20453|1|12|Geologist's Transcription Kit
20454|1|12|Hive'Zora Rubbing
20455|1|12|Hive'Ashi Rubbing
20456|1|12|Hive'Regal Rubbing
20457|1|12|Hive'Ashi Silithid Brain
20458|1|12|Hive'Zora Silithid Brain
20459|1|12|Hive'Regal Silithid Brain
20460|1|15|Brann Bronzebeard's Lost Letter
20461|1|15|Brann Bronzebeard's Lost Letter
20462|1|12|Hallow's End Medallion
20463|1|12|Glyphed Crystal Prism
20464|1|15|Glyphs of Calling
20465|1|12|Crystal Unlocking Mechanism
20466|1|12|Vyral's Signet Ring
20467|1|12|Torn Recipe Page
20469|1|15|Decoded True Believer Clippings
20475|1|0|Soul Gem
20476|3|4|Sandstalker Bracers
20477|3|4|Sandstalker Gauntlets
20478|3|4|Sandstalker Breastplate
20479|3|4|Spitfire Breastplate
20480|3|4|Spitfire Gauntlets
20481|3|4|Spitfire Bracers
20485|1|12|Duke's Seal
20489|1|12|Crown of the Council
20490|1|12|Ironforge Mint
20491|1|12|Undercity Mint
20492|1|12|Stormwind Nougat
20493|1|12|Orgrimmar Nougat
20494|1|12|Gnomeregan Gumdrop
20495|1|12|Darkspear Gumdrop
20496|1|12|Darnassus Marzipan
20497|1|12|Thunder Bluff Marzipan
20498|1|7|Silithid Chitin
20499|0|15|Broken Silithid Chitin
20500|1|7|Light Silithid Carapace
20501|1|7|Heavy Silithid Carapace
20502|3|4|Ironbark Shield
20503|3|4|Enamored Water Spirit
20504|3|2|Lightforged Blade
20505|3|4|Chivalrous Signet
20506|1|9|Pattern: Spitfire Bracers
20507|1|9|Pattern: Spitfire Gauntlets
20508|1|9|Pattern: Spitfire Breastplate
20509|1|9|Pattern: Sandstalker Bracers
20510|1|9|Pattern: Sandstalker Gauntlets
20511|1|9|Pattern: Sandstalker Breastplate
20512|3|4|Sanctified Orb
20513|2|12|Abyssal Crest
20514|3|12|Abyssal Signet
20515|4|12|Abyssal Scepter
20516|1|0|Bobbing Apple
20517|3|4|Razorsteel Shoulders
20518|1|12|Scroll: Create Crest of Beckoning
20519|1|12|Southsea Pirate Hat
20520|2|7|Dark Rune
20521|3|4|Fury Visor
20522|3|2|Feral Staff
20524|3|4|Shadowhide Leggings
20525|3|4|Earthen Sigil
20526|1|12|Scroll: Create Crest of Beckoning
20527|1|12|Scroll: Create Crest of Beckoning
20528|1|12|Scroll: Create Crest of Beckoning
20530|3|4|Robes of Servitude
20531|1|12|Scroll: Create Signet of Beckoning
20532|1|12|Scroll: Create Signet of Beckoning
20533|1|12|Scroll: Create Signet of Beckoning
20534|3|4|Abyss Shard
20535|1|12|Scroll: Create Signet of Beckoning
20536|3|2|Soul Harvester
20537|3|4|Runed Stygian Boots
20538|3|4|Runed Stygian Leggings
20539|3|4|Runed Stygian Belt
20540|1|12|Scroll: Create Scepter of Beckoning
20541|1|12|Decoded Twilight Text
20542|1|12|Scroll: Create Scepter of Beckoning
20543|1|12|Scroll: Create Scepter of Beckoning
20544|1|12|Scroll: Create Scepter of Beckoning
20545|1|12|Decoded Twilight Text
20546|3|9|Pattern: Runed Stygian Leggings
20547|3|9|Pattern: Runed Stygian Boots
20548|3|9|Pattern: Runed Stygian Belt
20549|3|4|Darkrune Gauntlets
20550|3|4|Darkrune Breastplate
20551|3|4|Darkrune Helm
20552|1|12|Decoded Twilight Text
20553|3|9|Plans: Darkrune Gauntlets
20554|3|9|Plans: Darkrune Breastplate
20555|3|9|Plans: Darkrune Helm
20556|3|2|Wildstaff
20557|1|0|Hallow's End Pumpkin Treat
20558|2|0|Warsong Gulch Mark of Honor
20559|2|0|Arathi Basin Mark of Honor
20560|2|0|Alterac Valley Mark of Honor
20561|1|4|Flimsy Male Dwarf Mask
20562|1|4|Flimsy Female Dwarf Mask
20563|1|4|Flimsy Female Night Elf Mask
20564|1|4|Flimsy Male Night Elf Mask
20565|1|4|Flimsy Female Human Mask
20566|1|4|Flimsy Male Human Mask
20567|1|4|Flimsy Female Troll Mask
20568|1|4|Flimsy Male Troll Mask
20569|1|4|Flimsy Female Orc Mask
20570|1|4|Flimsy Male Orc Mask
20571|1|4|Flimsy Female Tauren Mask
20572|1|4|Flimsy Male Tauren Mask
20573|1|4|Flimsy Male Undead Mask
20574|1|4|Flimsy Female Undead Mask
20575|2|4|Black Whelp Tunic
20576|1|9|Pattern: Black Whelp Tunic
20577|4|2|Nightmare Blade
20578|4|2|Emerald Dragonfang
20579|4|4|Green Dragonskin Cloak
20580|4|2|Hammer of Bestial Fury
20581|4|2|Staff of Rampant Growth
20582|4|4|Trance Stone
20583|2|4|Sturdy Female Dwarf Mask
20584|2|4|Sturdy Female Gnome Mask
20585|2|4|Sturdy Female Human Mask
20586|2|4|Sturdy Female Night Elf Mask
20587|2|4|Sturdy Female Orc Mask
20588|2|4|Sturdy Female Tauren Mask
20589|2|4|Sturdy Female Troll Mask
20590|2|4|Sturdy Female Undead Mask
20591|2|4|Sturdy Male Dwarf Mask
20592|2|4|Sturdy Male Gnome Mask
20593|2|4|Sturdy Male Human Mask
20594|2|4|Sturdy Male Night Elf Mask
20595|2|4|Sturdy Male Orc Mask
20596|2|4|Sturdy Male Tauren Mask
20597|2|4|Sturdy Male Troll Mask
20598|2|4|Sturdy Male Undead Mask
20599|4|2|Polished Ironwood Crossbow
20600|4|4|Malfurion's Signet Ring
20601|1|15|Sack of Spoils
20602|1|15|Chest of Spoils
20603|1|15|Bag of Spoils
20604|1|12|Stink Bomb Cleaner
20605|1|12|Rotten Eggs
20606|1|15|Amber Voodoo Feather
20607|1|15|Blue Voodoo Feather
20608|1|15|Green Voodoo Feather
20609|1|15|Voodoo Feathers
20610|1|15|Bloodshot Spider Eye
20611|1|15|Thick Black Claw
20612|1|15|Inert Scourgestone
20613|1|15|Rotting Wood
20614|1|15|Bloodvenom Essence
20615|4|4|Dragonspur Wraps
20616|4|4|Dragonbone Wristguards
20617|4|4|Ancient Corroded Leggings
20618|4|4|Gloves of Delusional Power
20619|4|4|Acid Inscribed Greaves
20620|1|15|Holy Mightstone
20621|4|4|Boots of the Endless Moor
20622|4|4|Dragonheart Necklace
20623|4|4|Circlet of Restless Dreams
20624|4|4|Ring of the Unliving
20625|4|4|Belt of the Dark Bog
20626|4|4|Black Bark Wristbands
20627|4|4|Dark Heart Pants
20628|4|4|Deviate Growth Cap
20629|4|4|Malignant Footguards
20630|4|4|Gauntlets of the Shining Light
20631|4|4|Mendicant's Slippers
20632|4|4|Mindtear Band
20633|4|4|Unnatural Leather Spaulders
20634|4|4|Boots of Fright
20635|4|4|Jade Inlaid Vestments
20636|4|4|Hibernation Crystal
20637|4|4|Acid Inscribed Pauldrons
20638|4|4|Leggings of the Demented Mind
20639|4|4|Strangely Glyphed Legplates
20640|2|4|Southsea Head Bucket
20641|2|4|Southsea Mojo Boots
20642|2|4|Antiquated Nobleman's Tunic
20643|2|4|Undercity Reservist's Cap
20644|4|12|Nightmare Engulfed Object
20645|2|4|Nature's Whisper
20646|2|2|Sandstrider's Mark
20647|2|2|Black Crystal Dagger
20648|3|2|Cold Forged Hammer
20649|2|4|Sunprism Pendant
20650|2|4|Desert Wind Gauntlets
20651|1|15|Orange Murloc Egg
20652|2|4|Abyssal Cloth Slippers
20653|2|4|Abyssal Plate Gauntlets
20654|3|2|Amethyst War Staff
20655|2|4|Abyssal Cloth Handwraps
20656|2|4|Abyssal Mail Sabatons
20657|3|2|Crystal Tipped Stiletto
20658|2|4|Abyssal Leather Boots
20659|2|4|Abyssal Mail Handguards
20660|3|2|Stonecutting Glaive
20661|2|4|Abyssal Leather Gloves
20662|2|4|Abyssal Plate Greaves
20663|3|2|Deep Strike Bow
20664|2|4|Abyssal Cloth Sash
20665|3|4|Abyssal Leather Leggings
20666|3|2|Hardened Steel Warhammer
20667|2|4|Abyssal Leather Belt
20668|3|4|Abyssal Mail Legguards
20669|3|2|Darkstone Claymore
20670|2|4|Abyssal Mail Clutch
20671|3|4|Abyssal Plate Legplates
20672|3|2|Sparkling Crystal Wand
20673|2|4|Abyssal Plate Girdle
20674|3|4|Abyssal Cloth Pants
20675|3|2|Soulrender
20676|1|12|Decoded Twilight Text
20677|1|12|Decoded Twilight Text
20678|1|12|Decoded Twilight Text
20679|1|12|Decoded Twilight Text
20680|3|4|Abyssal Mail Pauldrons
20681|3|4|Abyssal Leather Bracers
20682|4|4|Elemental Focus Band
20683|3|4|Abyssal Plate Epaulets
20684|3|4|Abyssal Mail Armguards
20685|4|4|Wavefront Necklace
20686|3|4|Abyssal Cloth Amice
20687|3|4|Abyssal Plate Vambraces
20688|4|4|Earthen Guard
20689|3|4|Abyssal Leather Shoulders
20690|3|4|Abyssal Cloth Wristbands
20691|4|4|Windshear Cape
20692|2|4|Multicolored Band
20693|2|4|Weighted Cloak
20694|2|4|Glowing Black Orb
20695|3|4|Abyssal War Beads
20696|3|2|Crystal Spiked Maul
20697|3|4|Crystalline Threaded Cape
20698|4|2|Elemental Attuned Blade
20699|3|4|Cenarion Reservist's Legplates
20700|3|4|Cenarion Reservist's Legplates
20701|3|4|Cenarion Reservist's Legguards
20702|3|4|Cenarion Reservist's Legguards
20703|3|4|Cenarion Reservist's Leggings
20704|3|4|Cenarion Reservist's Leggings
20705|3|4|Cenarion Reservist's Pants
20706|3|4|Cenarion Reservist's Pants
20707|3|4|Cenarion Reservist's Pants
20708|1|15|Tightly Sealed Trunk
20709|1|0|Rumsey Rum Light
20710|3|4|Crystal Encrusted Greaves
20711|3|4|Crystal Lined Greaves
20712|3|4|Wastewalker's Gauntlets
20713|3|4|Desertstalkers's Gauntlets
20714|3|4|Sandstorm Boots
20715|3|4|Dunestalker's Boots
20716|3|4|Sandworm Skin Gloves
20717|3|4|Desert Bloom Gloves
20720|3|2|Dark Whisper Blade
20721|3|4|Band of the Cultist
20722|3|2|Crystal Slugthrower
20723|2|2|Brann's Trusty Pick
20724|2|2|Corrupted Blackwood Staff
20725|4|7|Nexus Crystal
20726|3|9|Formula: Enchant Gloves - Threat
20727|3|9|Formula: Enchant Gloves - Shadow Power
20728|3|9|Formula: Enchant Gloves - Frost Power
20729|3|9|Formula: Enchant Gloves - Fire Power
20730|3|9|Formula: Enchant Gloves - Healing Power
20731|3|9|Formula: Enchant Gloves - Superior Agility
20732|1|9|Formula: Enchant Cloak - Greater Fire Resistance
20733|1|9|Formula: Enchant Cloak - Greater Nature Resistance
20734|3|9|Formula: Enchant Cloak - Stealth
20735|3|9|Formula: Enchant Cloak - Subtlety
20736|3|9|Formula: Enchant Cloak - Dodge
20737|1|15|Singed Corestone
20741|1|15|Deadwood Ritual Totem
20742|1|15|Winterfall Ritual Totem
20744|1|0|Minor Wizard Oil
20745|1|0|Minor Mana Oil
20746|1|7|Lesser Wizard Oil
20747|1|7|Lesser Mana Oil
20748|1|0|Brilliant Mana Oil
20749|1|0|Brilliant Wizard Oil
20750|1|0|Wizard Oil
20752|1|9|Formula: Minor Mana Oil
20753|1|9|Formula: Lesser Wizard Oil
20754|1|9|Formula: Lesser Mana Oil
20755|1|9|Formula: Wizard Oil
20756|1|9|Formula: Brilliant Wizard Oil
20757|1|9|Formula: Brilliant Mana Oil
20758|1|9|Formula: Minor Wizard Oil
20761|1|9|Recipe: Transmute Elemental Fire
20763|0|15|Broken Weapon
20766|1|15|Slimy Bag
20767|1|15|Scum Covered Bag
20768|1|15|Oozing Bag
20769|1|15|Disgusting Oozeling
20770|0|15|Bubbling Green Ichor
20800|2|12|Cenarion Logistics Badge
20801|2|12|Cenarion Tactical Badge
20802|2|12|Cenarion Combat Badge
20803|1|12|Twilight Battle Orders
20805|1|15|Followup Logistics Assignment
20806|2|12|Logistics Task Briefing X
20807|2|12|Logistics Task Briefing I
20808|1|15|Combat Assignment
20809|1|15|Tactical Assignment
20810|1|12|Signed Field Duty Papers
20814|1|2|Master's Throwing Dagger
20834|2|0|Ornate Spyglass XT
20844|1|0|Deadly Poison V
20858|2|12|Stone Scarab
20859|2|12|Gold Scarab
20860|2|12|Silver Scarab
20861|2|12|Bronze Scarab
20862|2|12|Crystal Scarab
20863|2|12|Clay Scarab
20864|2|12|Bone Scarab
20865|2|12|Ivory Scarab
20866|3|12|Azure Idol
20867|3|12|Onyx Idol
20868|3|12|Lambent Idol
20869|3|12|Amber Idol
20870|3|12|Jasper Idol
20871|3|12|Obsidian Idol
20872|3|12|Vermillion Idol
20873|3|12|Alabaster Idol
20874|3|12|Idol of the Sun
20875|3|12|Idol of Night
20876|3|12|Idol of Death
20877|3|12|Idol of the Sage
20878|3|12|Idol of Rebirth
20879|3|12|Idol of Life
20881|3|12|Idol of Strife
20882|3|12|Idol of War
20883|4|12|Qiraji Glyphed Jewel
20884|3|12|Qiraji Magisterial Ring
20885|3|12|Qiraji Martial Drape
20886|4|12|Qiraji Spiked Hilt
20887|4|12|Qiraji Engraved Jewel
20888|3|12|Qiraji Ceremonial Ring
20889|3|12|Qiraji Regal Drape
20890|4|12|Qiraji Ornate Hilt
20908|1|15|Festival of Nian Firework
20926|4|12|Vek'nilash's Circlet
20927|4|12|Ouro's Intact Hide
20928|4|12|Qiraji Bindings of Command
20929|4|12|Carapace of the Old God
20930|4|12|Vek'lor's Diadem
20931|4|12|Skin of the Great Sandworm
20932|4|12|Qiraji Bindings of Dominance
20933|4|12|Husk of the Old God
20936|4|12|Qiraji Blessed Jewel
20937|4|12|Qiraji Encased Jewel
20939|2|12|Logistics Task Briefing II
20940|2|12|Logistics Task Briefing III
20941|2|12|Combat Task Briefing XII
20942|2|12|Combat Task Briefing III
20943|2|12|Tactical Task Briefing X
20944|2|12|Tactical Task Briefing IX
20945|2|12|Tactical Task Briefing II
20946|2|12|Tactical Task Briefing III
20947|2|12|Tactical Task Briefing IV
20948|2|12|Tactical Task Briefing V
20949|1|12|Magical Ledger
20951|1|12|Narain's Scrying Goggles
21023|1|0|Dirge's Kickin' Chimaerok Chops
21024|1|7|Chimaerok Tenderloin
21025|4|9|Recipe: Dirge's Kickin' Chimaerok Chops
21027|1|12|Lakmaeran's Carcass
21028|1|12|500 Pound Chicken
21029|1|12|Ransom Letter
21030|1|0|Darnassus Kimchi Pie
21031|1|0|Cabbage Kimchi
21032|1|12|Meridith's Love Letter
21033|1|0|Radish Kimchi
21037|1|15|Crude Map
21038|1|0|Hardpacked Snowball
21039|1|4|Narain's Turban
21040|1|4|Narain's Robe
21041|1|12|Bag of Gold
21042|1|15|Narain's Special Kit
21043|1|12|Mysterious Envelope
21071|1|7|Raw Sagefish
21072|1|0|Smoked Sagefish
21099|1|9|Recipe: Smoked Sagefish
21100|1|12|Coin of Ancestry
21101|3|2|Staff of Spell Penetration - Fire (TEST)
21102|3|2|Staff of Spell Penetration - Frost (TEST)
21103|4|15|Draconic for Dummies
21104|4|15|Draconic for Dummies
21105|4|15|Draconic for Dummies
21106|4|15|Draconic for Dummies
21107|4|15|Draconic for Dummies
21108|4|15|Draconic for Dummies
21109|4|15|Draconic for Dummies
21110|4|15|Draconic for Dummies
21111|1|12|Draconic For Dummies: Volume II
21112|1|12|Magical Book Binding
21113|1|15|Watertight Trunk
21114|1|0|Rumsey Rum Dark
21115|3|4|Defiler's Talisman
21116|3|4|Defiler's Talisman
21117|3|4|Talisman of Arathor
21118|3|4|Talisman of Arathor
21119|3|4|Talisman of Arathor
21120|3|4|Defiler's Talisman
21124|4|2|Ahn'Qiraj Wand [PH]
21125|4|2|Ahn'Qiraj Staff [PH]
21126|4|2|Death's Sting
21127|4|2|Ahn'Qiraj Mace [PH]
21128|4|2|Staff of the Qiraji Prophets
21130|1|15|Diary of Weavil
21131|1|15|Followup Combat Assignment
21132|1|15|Logistics Assignment
21133|1|15|Followup Tactical Assignment
21134|4|2|Dark Edge of Insanity
21135|3|2|Assassin's Throwing Axe
21136|1|12|Arcanite Buoy
21137|4|12|Blue Scepter Shard
21138|4|12|Red Scepter Shard
21139|4|12|Green Scepter Shard
21140|1|0|Auction Stationery
21141|0|12|Destroyed Red Scepter Shard
21142|1|15|From the Desk of Lord Victor Nefarius
21143|1|12|Unsigned Field Duty Papers
21144|1|12|Demon Summoning Torch
21145|1|12|Essence of Xandivious
21146|1|12|Fragment of the Nightmare's Corruption
21147|1|12|Fragment of the Nightmare's Corruption
21148|1|12|Fragment of the Nightmare's Corruption
21149|1|12|Fragment of the Nightmare's Corruption
21150|1|15|Iron Bound Trunk
21151|1|0|Rumsey Rum Black Label
21152|1|12|The Nightmare's Corruption
21153|1|7|Raw Greater Sagefish
21154|1|4|Festival Dress
21155|1|12|Timbermaw Offering of Peace
21156|1|15|Scarab Bag
21157|1|4|Festive Green Dress
21158|1|12|Hive'Zora Scout Report
21159|1|12|Hive'Zora Scout Orders
21160|1|12|Hive'Regal Scout Report
21161|1|12|Hive'Ashi Scout Report
21162|2|15|Bloated Oily Blackmouth
21163|2|15|Bloated Firefin Snapper
21164|2|15|Bloated Rockscale Cod
21165|2|12|Tactical Task Briefing VI
21166|2|12|Tactical Task Briefing VII
21167|2|12|Tactical Task Briefing VIII
21168|1|15|Baby Shark
21171|1|15|Filled Festive Mug
21173|1|15|Empty Festive Mug
21174|1|15|Empty Festive Mug
21175|1|15|The Scepter of the Shifting Sands
21176|5|15|Black Qiraji Resonating Crystal
21177|1|15|Symbol of Kings
21178|3|4|Gloves of Earthen Power
21179|3|4|Band of Earthen Wrath
21180|4|4|Earthstrike
21181|3|4|Grace of Earth
21182|3|4|Band of Earthen Might
21183|3|4|Earthpower Vest
21184|4|4|Deeprock Bracers
21185|4|4|Earthcalm Orb
21186|4|4|Rockfury Bracers
21187|3|4|Earthweave Cloak
21188|4|2|Fist of Cenarius
21189|4|4|Might of Cenarius
21190|4|4|Wrath of Cenarius
21191|1|15|Carefully Wrapped Present
21193|3|1|D'Sak's Sack
21194|3|1|D'Sak's Big Sack
21195|3|1|D'Sak's Sacktastic
21196|4|4|Signet Ring of the Bronze Dragonflight
21197|4|4|Signet Ring of the Bronze Dragonflight
21198|4|4|Signet Ring of the Bronze Dragonflight
21199|4|4|Signet Ring of the Bronze Dragonflight
21200|4|4|Signet Ring of the Bronze Dragonflight
21201|4|4|Signet Ring of the Bronze Dragonflight
21202|4|4|Signet Ring of the Bronze Dragonflight
21203|4|4|Signet Ring of the Bronze Dragonflight
21204|4|4|Signet Ring of the Bronze Dragonflight
21205|4|4|Signet Ring of the Bronze Dragonflight
21206|4|4|Signet Ring of the Bronze Dragonflight
21207|4|4|Signet Ring of the Bronze Dragonflight
21208|4|4|Signet Ring of the Bronze Dragonflight
21209|4|4|Signet Ring of the Bronze Dragonflight
21210|4|4|Signet Ring of the Bronze Dragonflight
21211|1|12|Pouch of Reindeer Dust
21212|1|0|Fresh Holly
21213|2|15|Preserved Holly
21214|3|9|Tome of Frostbolt XI
21215|1|0|Graccu's Mince Meat Fruitcake
21216|1|15|Smokywood Pastures Extra-Special Gift
21217|1|0|Sagefish Delight
21218|3|15|Blue Qiraji Resonating Crystal
21219|1|9|Recipe: Sagefish Delight
21220|4|12|Head of Ossirian the Unscarred
21221|4|12|Eye of C'Thun
21222|0|15|Armored Chitin
21223|0|15|Black Stone
21224|0|15|Ancient Armor Fragment
21225|0|15|Heavy Silithid Husk
21226|0|15|Runic Stone
21227|0|15|Ancient Hero's Skull
21228|1|15|Mithril Bound Trunk
21229|1|15|Qiraji Lord's Insignia
21230|1|15|Ancient Qiraji Artifact
21232|4|15|Imperial Qiraji Armaments
21235|1|0|Winter Veil Roast
21236|1|0|UNUSED ITEM
21237|4|15|Imperial Qiraji Regalia
21238|1|0|UNUSED ITEM
21240|1|0|UNUSED ITEM
21241|1|0|Winter Veil Eggnog
21242|4|2|Blessed Qiraji War Axe
21243|2|15|Bloated Glossy Mightfish
21244|4|2|Blessed Qiraji Pugio
21245|2|12|Tactical Task Briefing I
21246|2|12|Combat Task Briefing I
21247|2|12|Combat Task Briefing II
21248|2|12|Combat Task Briefing IV
21249|2|12|Combat Task Briefing V
21250|2|12|Combat Task Briefing VI
21251|2|12|Combat Task Briefing VII
21252|2|12|Combat Task Briefing VIII
21253|2|12|Combat Task Briefing IX
21254|1|0|Winter Veil Cookie
21255|2|12|Combat Task Briefing X
21256|2|12|Combat Task Briefing XI
21257|2|12|Logistics Task Briefing IV
21258|2|12|Logistics Task Briefing IV
21259|2|12|Logistics Task Briefing V
21260|2|12|Logistics Task Briefing VI
21261|2|12|Logistics Task Briefing VI
21262|2|12|Logistics Task Briefing VIII
21263|2|12|Logistics Task Briefing VII
21264|2|12|Logistics Task Briefing VII
21265|2|12|Logistics Task Briefing IX
21266|1|15|Logistics Assignment
21267|1|15|Toasting Goblet
21268|4|2|Blessed Qiraji War Hammer
21269|4|4|Blessed Qiraji Bulwark
21270|1|15|Gently Shaken Gift
21272|4|2|Blessed Qiraji Musket
21273|4|2|Blessed Qiraji Acolyte Staff
21275|4|2|Blessed Qiraji Augur Staff
21276|4|2|Blessed Qiraji Naturalist Staff UNUSED
21277|1|15|Tranquil Mechanical Yeti
21278|3|4|Stormshroud Gloves
21279|3|9|Tome of Fireball XII
21280|3|9|Tome of Arcane Missiles VIII
21281|3|9|Grimoire of Shadow Bolt X
21282|3|9|Grimoire of Immolate VIII
21283|3|9|Grimoire of Corruption VII
21284|3|9|Codex of Greater Heal V
21285|3|9|Codex of Renew X
21287|3|9|Codex of Prayer of Healing V
21288|3|9|Libram: Blessing of Wisdom VI
21289|3|9|Libram: Blessing of Might VII
21290|3|9|Libram: Holy Light IX
21291|3|9|Tablet of Healing Wave X
21292|3|9|Tablet of Strength of Earth Totem V
21293|3|9|Tablet of Grace of Air Totem III
21294|3|9|Book of Healing Touch XI
21295|3|9|Book of Starfire VII
21296|3|9|Book of Rejuvenation XI
21297|3|9|Manual of Heroic Strike IX
21298|3|9|Manual of Battle Shout VII
21299|3|9|Manual of Revenge VI
21300|3|9|Handbook of Backstab IX
21301|1|15|Green Helper Box
21302|3|9|Handbook of Deadly Poison V
21303|3|9|Handbook of Feint V
21304|3|9|Guide: Multi-Shot V
21305|1|15|Red Helper Box
21306|3|9|Guide: Serpent Sting IX
21307|3|9|Guide: Aspect of the Hawk VII
21308|1|15|Jingling Bell
21309|1|15|Snowman Kit
21310|1|15|Gaily Wrapped Present
21311|2|4|Earth Warder's Vest
21312|2|4|Belt of the Den Watcher
21313|3|1|D'Sak's Small bag
21314|1|15|Metzen's Letters and Notes
21315|1|15|Smokywood Satchel
21316|2|4|Leggings of the Ursa
21317|2|4|Helm of the Pathfinder
21318|2|4|Earth Warder's Gloves
21319|2|4|Gloves of the Pathfinder
21320|2|4|Vest of the Den Watcher
21321|3|15|Red Qiraji Resonating Crystal
21322|2|4|Ursa's Embrace
21323|3|15|Green Qiraji Resonating Crystal
21324|3|15|Yellow Qiraji Resonating Crystal
21325|2|0|Mechanical Greench
21326|4|4|Defender of the Timbermaw
21327|1|15|Ticking Present
21328|1|15|Wand of Holiday Cheer
21329|4|4|Conqueror's Crown
21330|4|4|Conqueror's Spaulders
21331|4|4|Conqueror's Breastplate
21332|4|4|Conqueror's Legguards
21333|4|4|Conqueror's Greaves
21334|4|4|Doomcaller's Robes
21335|4|4|Doomcaller's Mantle
21336|4|4|Doomcaller's Trousers
21337|4|4|Doomcaller's Circlet
21338|4|4|Doomcaller's Footwraps
21339|4|4|Doomcaller's Handwraps [PH]
21340|2|1|Soul Pouch
21341|3|1|Felcloth Bag
21342|4|1|Core Felcloth Bag
21343|4|4|Enigma Robes
21344|4|4|Enigma Boots
21345|4|4|Enigma Shoulderpads
21346|4|4|Enigma Leggings
21347|4|4|Enigma Circlet
21348|4|4|Tiara of the Oracle
21349|4|4|Footwraps of the Oracle
21350|4|4|Mantle of the Oracle
21351|4|4|Vestments of the Oracle
21352|4|4|Trousers of the Oracle
21353|4|4|Genesis Helm
21354|4|4|Genesis Shoulderpads
21355|4|4|Genesis Boots
21356|4|4|Genesis Trousers
21357|4|4|Genesis Vest
21358|1|9|Pattern: Soul Pouch
21359|4|4|Deathdealer's Boots
21360|4|4|Deathdealer's Helm
21361|4|4|Deathdealer's Spaulders
21362|4|4|Deathdealer's Leggings
21363|1|15|Festive Gift
21364|4|4|Deathdealer's Vest
21365|4|4|Striker's Footguards
21366|4|4|Striker's Diadem
21367|4|4|Striker's Pauldrons
21368|4|4|Striker's Leggings
21369|1|9|Pattern: Felcloth Bag
21370|4|4|Striker's Hauberk
21371|3|9|Pattern: Core Felcloth Bag
21372|4|4|Stormcaller's Diadem
21373|4|4|Stormcaller's Footguards
21374|4|4|Stormcaller's Hauberk
21375|4|4|Stormcaller's Leggings
21376|4|4|Stormcaller's Pauldrons
21377|1|12|Deadwood Headdress Feather
21378|2|12|Logistics Task Briefing I
21379|2|12|Logistics Task Briefing II
21380|2|12|Logistics Task Briefing III
21381|2|12|Logistics Task Briefing IX
21382|2|12|Logistics Task Briefing V
21383|1|12|Winterfall Spirit Beads
21384|2|12|Logistics Task Briefing VIII
21385|2|12|Logistics Task Briefing X
21386|1|15|Followup Logistics Assignment
21387|4|4|Avenger's Crown
21388|4|4|Avenger's Greaves
21389|4|4|Avenger's Breastplate
21390|4|4|Avenger's Legguards
21391|4|4|Avenger's Pauldrons
21392|4|2|Sickle of Unyielding Strength
21393|4|4|Signet of Unyielding Strength
21394|4|4|Drape of Unyielding Strength
21395|4|2|Blade of Eternal Justice
21396|4|4|Ring of Eternal Justice
21397|4|4|Cape of Eternal Justice
21398|4|2|Hammer of the Gathering Storm
21399|4|4|Ring of the Gathering Storm
21400|4|4|Cloak of the Gathering Storm
21401|4|2|Scythe of the Unseen Path
21402|4|4|Signet of the Unseen Path
21403|4|4|Cloak of the Unseen Path
21404|4|2|Dagger of Veiled Shadows
21405|4|4|Band of Veiled Shadows
21406|4|4|Cloak of Veiled Shadows
21407|4|2|Mace of Unending Life
21408|4|4|Band of Unending Life
21409|4|4|Cloak of Unending Life
21410|4|2|Gavel of Infinite Wisdom
21411|4|4|Ring of Infinite Wisdom
21412|4|4|Shroud of Infinite Wisdom
21413|4|2|Blade of Vaulted Secrets
21414|4|4|Band of Vaulted Secrets
21415|4|4|Drape of Vaulted Secrets
21416|4|2|Kris of Unspoken Names
21417|4|4|Ring of Unspoken Names
21418|4|4|Shroud of Unspoken Names
21436|1|15|Alliance Commendation Signet
21438|1|15|Horde Commendation Signet
21452|4|2|Staff of the Ruins
21453|4|4|Mantle of the Horusath
21454|4|4|Runic Stone Shoulders
21455|3|4|Southwind Helm
21456|4|4|Sandstorm Cloak
21457|4|4|Bracers of Brutality
21458|4|4|Gauntlets of New Life
21459|4|2|Crossbow of Imminent Doom
21460|4|4|Helm of Domination
21461|4|4|Leggings of the Black Blizzard
21462|4|4|Gloves of Dark Wisdom
21463|4|4|Ossirian's Binding
21464|4|4|Shackles of the Unscarred
21466|4|2|Stinger of Ayamiss
21467|4|4|Thick Silithid Chestguard
21468|3|4|Mantle of Maz'Nadir
21469|3|4|Gauntlets of Southwind
21470|3|4|Cloak of the Savior
21471|4|4|Talon of Furious Concentration
21472|4|4|Dustwind Turban
21473|3|4|Eye of Moam
21474|3|4|Chitinous Shoulderguards
21475|3|4|Legplates of the Destroyer
21476|3|4|Obsidian Scaled Leggings
21477|3|4|Ring of Fury
21478|4|2|Bow of Taut Sinew
21479|4|4|Gauntlets of the Immovable
21480|3|4|Scaled Silithid Gauntlets
21481|3|4|Boots of the Desert Protector
21482|3|4|Boots of the Fiery Sands
21483|3|4|Ring of the Desert Winds
21484|3|4|Helm of Regrowth
21485|4|4|Buru's Skull Fragment
21486|4|4|Gloves of the Swarm
21487|4|4|Slimy Scaled Gauntlets
21488|3|4|Fetish of Chitinous Spikes
21489|3|4|Quicksand Waders
21490|3|4|Slime Kickers
21491|3|4|Scaled Bracers of the Gorger
21492|4|2|Manslayer of the Qiraji
21493|4|4|Boots of the Vanguard
21494|3|4|Southwind's Grasp
21495|3|4|Legplates of the Qiraji Command
21496|3|4|Bracers of Qiraji Command
21497|3|4|Boots of the Qiraji General
21498|4|2|Qiraji Sacrificial Dagger
21499|4|4|Vestments of the Shifting Sands
21500|3|4|Belt of the Inquisition
21501|3|4|Toughened Silithid Hide Gloves
21502|3|4|Sand Reaver Wristguards
21503|3|4|Belt of the Sand Reaver
21504|4|4|Charm of the Shifting Sands
21505|4|4|Choker of the Shifting Sands
21506|4|4|Pendant of the Shifting Sands
21507|4|4|Amulet of the Shifting Sands
21508|2|12|Mark of Cenarius
21509|1|15|Ahn'Qiraj War Effort Supplies
21510|1|15|Ahn'Qiraj War Effort Supplies
21511|1|15|Ahn'Qiraj War Effort Supplies
21512|1|15|Ahn'Qiraj War Effort Supplies
21513|1|15|Ahn'Qiraj War Effort Supplies
21514|2|12|Logistics Task Briefing XI
21515|2|12|Mark of Remulos
21516|3|2|Dagger of Spell Penetration - Fire 150 Resist (TEST)
21517|4|4|Gnomish Turban of Psychic Might
21518|3|2|Dagger of Spell Penetration - Frost 150 Resist (TEST)
21519|1|15|Mistletoe
21520|4|2|Ravencrest's Legacy
21521|4|2|Runesword of the Red
21522|4|2|Shadowsong's Sorrow
21523|4|2|Fang of Korialstrasz
21524|2|4|Red Winter Hat
21525|2|4|Green Winter Hat
21526|4|4|Band of Icy Depths
21527|4|4|Darkwater Robes
21528|2|15|Colossal Bag of Loot
21529|4|4|Amulet of Shadow Shielding
21530|4|4|Onyx Embedded Leggings
21531|4|4|Drake Tooth Necklace
21532|4|4|Drudge Boots
21533|1|12|Colossus of Zora's Husk
21534|1|12|Colossus of Ashi's Husk
21535|1|12|Colossus of Regal's Husk
21536|1|15|Elune Stone
21537|1|0|Festival Dumplings
21538|1|4|Festive Pink Dress
21539|1|4|Festive Purple Dress
21540|2|15|Elune's Lantern
21541|1|4|Festive Black Pant Suit
21542|1|4|Festival Suit
21543|1|4|Festive Teal Pant Suit
21544|1|4|Festive Blue Pant Suit
21545|1|12|Smokywood Supplies
21546|1|0|Elixir of Holy Power
21547|2|9|Recipe: Elixir of Holy Power
21548|3|9|Pattern: Stormshroud Gloves
21552|1|0|Striped Yellowtail
21557|1|15|Small Red Rocket
21558|1|15|Small Blue Rocket
21559|1|15|Small Green Rocket
21560|1|15|Small Purple Rocket
21561|1|15|Small White Rocket
21562|1|15|Small Yellow Rocket
21563|4|4|Don Rodrigo's Band
21565|3|4|Rune of Perfection
21566|3|4|Rune of Perfection
21567|3|4|Rune of Duty
21568|3|4|Rune of Duty
21569|1|15|Firework Launcher
21570|1|15|Cluster Launcher
21571|1|15|Blue Rocket Cluster
21574|1|15|Green Rocket Cluster
21575|1|15|Purple Rocket Cluster
21576|1|15|Red Rocket Cluster
21577|1|15|White Rocket Cluster
21578|1|15|Yellow Rocket Cluster
21579|4|4|Vanquished Tentacle of C'Thun
21581|4|4|Gauntlets of Annihilation
21582|4|4|Grasp of the Old God
21583|4|4|Cloak of Clarity
21584|4|4|Bracers of Eternal Reckoning
21585|4|4|Dark Storm Gauntlets
21586|4|4|Belt of Never-ending Agony
21587|4|4|Wristguards of Castigation
21588|4|4|Wristguards of Elemental Fury
21589|1|15|Large Blue Rocket
21590|1|15|Large Green Rocket
21591|1|15|Large Purple Rocket
21592|1|15|Large Red Rocket
21593|1|15|Large White Rocket
21594|4|4|Bracers of the Fallen Son
21595|1|15|Large Yellow Rocket
21596|4|4|Ring of the Godslayer
21597|4|4|Royal Scepter of Vek'lor
21598|4|4|Royal Qiraji Belt
21599|4|4|Vek'lor's Gloves of Devastation
21600|4|4|Boots of Epiphany
21601|4|4|Ring of Emperor Vek'lor
21602|4|4|Qiraji Execution Bracers
21603|4|2|Wand of Qiraji Nobility
21604|4|4|Bracelets of Royal Redemption
21605|4|4|Gloves of the Hidden Temple
21606|4|4|Belt of the Fallen Emperor
21607|4|4|Grasp of the Fallen Emperor
21608|4|4|Amulet of Vek'nilash
21609|4|4|Regenerating Belt of Vek'nilash
21610|4|4|Wormscale Blocker
21611|4|4|Burrower Bracers
21612|4|4|Wormscale Stompers
21613|4|4|Wormhide Boots
21614|4|4|Wormhide Protector
21615|4|4|Don Rigoberto's Lost Hat
21616|4|2|Huhuran's Stinger
21617|4|4|Wasphide Gauntlets
21618|4|4|Hive Defiler Wristguards
21619|4|4|Gloves of the Messiah
21620|4|4|Ring of the Martyr
21621|4|4|Cloak of the Golden Hive
21622|4|2|Sharpened Silithid Femur
21623|4|4|Gauntlets of the Righteous Champion
21624|4|4|Gauntlets of Kalimdor
21625|4|4|Scarab Brooch
21626|4|4|Slime-coated Leggings
21627|4|4|Cloak of Untold Secrets
21635|4|2|Barb of the Sand Reaver
21639|4|4|Pauldrons of the Unrelenting
21640|1|15|Lunar Festival Fireworks Pack
21645|4|4|Hive Tunneler's Boots
21647|4|4|Fetish of the Sand Reaver
21648|4|4|Recomposed Boots
21650|4|2|Ancient Qiraji Ripper
21651|4|4|Scaled Sand Reaver Leggings
21652|4|4|Silithid Carapace Chestguard
21663|4|4|Robes of the Guardian Saint
21664|4|4|Barbed Choker
21665|4|4|Mantle of Wicked Revenge
21666|4|4|Sartura's Might
21667|4|4|Legplates of Blazing Light
21668|4|4|Scaled Leggings of Qiraji Fury
21669|4|4|Creeping Vine Helm
21670|4|4|Badge of the Swarmguard
21671|4|4|Robes of the Battleguard
21672|4|4|Gloves of Enforcement
21673|4|2|Silithid Claw
21674|4|4|Gauntlets of Steadfast Determination
21675|4|4|Thick Qirajihide Belt
21676|4|4|Leggings of the Festering Swarm
21677|4|4|Ring of the Qiraji Fury
21678|4|4|Necklace of Purity
21679|4|2|Kalimdor's Revenge
21680|4|4|Vest of Swift Execution
21681|4|4|Ring of the Devoured
21682|4|4|Bile-Covered Gauntlets
21683|4|4|Mantle of the Desert Crusade
21684|4|4|Mantle of the Desert's Fury
21685|4|4|Petrified Scarab
21686|4|4|Mantle of Phrenic Power
21687|4|4|Ukko's Ring of Darkness
21688|4|4|Boots of the Fallen Hero
21689|4|4|Gloves of Ebru
21690|4|4|Angelista's Charm
21691|4|4|Ooze-ridden Gauntlets
21692|4|4|Triad Girdle
21693|4|4|Guise of the Devourer
21694|4|4|Ternary Mantle
21695|4|4|Angelista's Touch
21696|4|4|Robes of the Triumvirate
21697|4|4|Cape of the Trinity
21698|4|4|Leggings of Immersion
21699|4|4|Barrage Shoulders
21700|4|4|Pendant of the Qiraji Guardian
21701|4|4|Cloak of Concentrated Hatred
21702|4|4|Amulet of Foul Warding
21703|4|2|Hammer of Ji'zhi
21704|4|4|Boots of the Redeemed Prophecy
21705|4|4|Boots of the Fallen Prophet
21706|4|4|Boots of the Unwavering Will
21707|4|4|Ring of Swarming Thought
21708|4|4|Beetle Scaled Wristguards
21709|4|4|Ring of the Fallen God
21710|4|4|Cloak of the Fallen God
21711|1|0|Lunar Festival Invitation
21712|4|4|Amulet of the Fallen God
21713|1|0|Elune's Candle
21714|1|15|Large Blue Rocket Cluster
21715|4|2|Sand Polished Hammer
21716|1|15|Large Green Rocket Cluster
21717|1|15|Large Purple Rocket Cluster
21718|1|15|Large Red Rocket Cluster
21719|1|15|Large White Rocket Cluster
21720|1|15|Large Yellow Rocket Cluster
21721|1|0|Moonglow
21722|2|9|Pattern: Festival Dress
21723|2|9|Pattern: Festival Suit
21724|2|9|Schematic: Small Blue Rocket
21725|2|9|Schematic: Small Green Rocket
21726|2|9|Schematic: Small Red Rocket
21727|2|9|Schematic: Large Blue Rocket
21728|2|9|Schematic: Large Green Rocket
21729|2|9|Schematic: Large Red Rocket
21730|2|9|Schematic: Blue Rocket Cluster
21731|2|9|Schematic: Green Rocket Cluster
21732|2|9|Schematic: Red Rocket Cluster
21733|2|9|Schematic: Large Blue Rocket Cluster
21734|2|9|Schematic: Large Green Rocket Cluster
21735|2|9|Schematic: Large Red Rocket Cluster
21736|3|15|Riding Gryphon Reins
21737|2|9|Schematic: Cluster Launcher
21738|2|9|Schematic: Firework Launcher
21740|1|0|Small Rocket Recipes
21741|1|0|Cluster Rocket Recipes
21742|1|0|Large Rocket Recipes
]==],
[==[
21743|1|0|Large Cluster Rocket Recipes
21744|1|0|Lucky Rocket Cluster
21745|1|0|Elder's Moonstone
21746|1|0|Lucky Red Envelope
21747|1|15|Festival Firecracker
21749|2|12|Combat Task Briefing I
21750|2|12|Combat Task Briefing II
21751|2|12|Tactical Task Briefing III
21761|1|13|Scarab Coffer Key
21762|1|13|Greater Scarab Coffer Key
21800|3|2|Silithid Husked Launcher
21801|3|2|Antenna of Invigoration
21802|3|2|The Lost Kris of Zedd
21803|3|4|Helm of the Holy Avenger
21804|3|4|Coif of Elemental Fury
21805|3|4|Polished Obsidian Pauldrons
21806|3|2|Gavel of Qiraji Authority
21809|3|4|Fury of the Forgotten Swarm
21810|3|4|Treads of the Wandering Nomad
21812|1|15|Box of Chocolates
21813|1|15|Bag of Candies
21814|4|4|Breastplate of Annihilation
21815|1|0|Love Token
21816|1|15|Heart Candy
21817|1|15|Heart Candy
21818|1|15|Heart Candy
21819|1|15|Heart Candy
21820|1|15|Heart Candy
21821|1|15|Heart Candy
21822|1|15|Heart Candy
21823|1|15|Heart Candy
21829|1|15|Perfume Bottle
21830|1|15|Empty Wrapper
21831|1|15|Wrappered Gift
21833|1|15|Cologne Bottle
21836|4|4|Ritssyn's Ring of Chaos
21837|4|2|Anubisath Warhammer
21838|4|4|Garb of Royal Ascension
21839|4|2|Scepter of the False Prophet
21856|4|2|Neretzek, The Blood Drinker
21888|4|4|Gloves of the Immortal
21889|4|4|Gloves of the Redeemed Prophecy
21890|4|4|Gloves of the Fallen Prophet
21891|4|4|Shard of the Fallen Star
21920|1|15|Creased Letter
21921|1|15|Carefully Penned Note
21925|1|15|Immaculate Letter
21926|1|15|Slightly Creased Note
21928|1|12|Winterspring Blood Sample
21935|1|12|Stable Ectoplasm
21936|1|12|Frozen Ectoplasm
21937|1|12|Scorched Ectoplasm
21938|1|12|Magma Core
21939|1|12|Fel Elemental Rod
21946|1|12|Ectoplasmic Distiller
21960|1|15|Handmade Woodcraft
21975|1|15|Pledge of Adoration: Stormwind
21979|1|15|Gift of Adoration: Darnassus
21980|1|15|Gift of Adoration: Ironforge
21981|1|15|Gift of Adoration: Stormwind
21982|1|12|Ogre Warbeads
21983|1|12|Incomplete Banner of Provocation
21984|1|12|Left Piece of Lord Valthalak's Amulet
21985|1|12|Sealed Blood Container
21986|1|12|Banner of Provocation
21987|1|12|Incendicite of Incendius
21988|1|12|Ember of Emberseer
21989|1|12|Cinder of Cynders
21994|3|4|Belt of Heroism
21995|4|4|Boots of Heroism
21996|3|4|Bracers of Heroism
21997|4|4|Breastplate of Heroism
21998|4|4|Gauntlets of Heroism
21999|4|4|Helm of Heroism
22000|3|4|Legplates of Heroism
22001|3|4|Spaulders of Heroism
22002|3|4|Darkmantle Belt
22003|4|4|Darkmantle Boots
22004|3|4|Darkmantle Bracers
22005|4|4|Darkmantle Cap
22006|4|4|Darkmantle Gloves
22007|3|4|Darkmantle Pants
22008|3|4|Darkmantle Spaulders
22009|4|4|Darkmantle Tunic
22010|3|4|Beastmaster's Belt
22011|3|4|Beastmaster's Bindings
22013|4|4|Beastmaster's Cap
22014|1|12|Hallowed Brazier
22015|4|4|Beastmaster's Gloves
22016|3|4|Beastmaster's Mantle
22017|3|4|Beastmaster's Pants
22046|1|12|Right Piece of Lord Valthalak's Amulet
22047|1|12|Top Piece of Lord Valthalak's Amulet
22048|1|12|Lord Valthalak's Amulet
22049|1|12|Brazier of Beckoning
22050|1|12|Brazier of Beckoning
22051|1|12|Brazier of Beckoning
22052|1|12|Brazier of Beckoning
22056|1|12|Brazier of Beckoning
22057|1|12|Brazier of Invocation
22058|1|15|Valentine's Day Stationery
22059|1|15|Valentine's Day Card
22060|4|4|Beastmaster's Tunic
22061|4|4|Beastmaster's Boots
22062|3|4|Sorcerer's Belt
22063|3|4|Sorcerer's Bindings
22064|4|4|Sorcerer's Boots
22065|4|4|Sorcerer's Crown
22066|4|4|Sorcerer's Gloves
22067|3|4|Sorcerer's Leggings
22068|3|4|Sorcerer's Mantle
22069|4|4|Sorcerer's Robes
22070|3|4|Deathmist Belt
22071|3|4|Deathmist Bracers
22072|3|4|Deathmist Leggings
22073|3|4|Deathmist Mantle
22074|4|4|Deathmist Mask
22075|4|4|Deathmist Robe
22076|4|4|Deathmist Sandals
22077|4|4|Deathmist Wraps
22078|3|4|Virtuous Belt
22079|3|4|Virtuous Bracers
22080|4|4|Virtuous Crown
22081|4|4|Virtuous Gloves
22082|3|4|Virtuous Mantle
22083|4|4|Virtuous Robe
22084|4|4|Virtuous Sandals
22085|3|4|Virtuous Skirt
22086|3|4|Soulforge Belt
22087|4|4|Soulforge Boots
22088|3|4|Soulforge Bracers
22089|4|4|Soulforge Breastplate
22090|4|4|Soulforge Gauntlets
22091|4|4|Soulforge Helm
22092|3|4|Soulforge Legplates
22093|3|4|Soulforge Spaulders
22094|1|12|Bloodkelp
22095|3|4|Bindings of The Five Thunders
22096|4|4|Boots of The Five Thunders
22097|4|4|Coif of The Five Thunders
22098|3|4|Cord of The Five Thunders
22099|4|4|Gauntlets of The Five Thunders
22100|3|4|Kilt of The Five Thunders
22101|3|4|Pauldrons of The Five Thunders
22102|4|4|Vest of The Five Thunders
22106|3|4|Feralheart Belt
22107|4|4|Feralheart Boots
22108|3|4|Feralheart Bracers
22109|4|4|Feralheart Cowl
22110|4|4|Feralheart Gloves
22111|3|4|Feralheart Kilt
22112|3|4|Feralheart Spaulders
22113|4|4|Feralheart Vest
22114|1|15|Pink Murloc Egg
22115|1|12|Extra-Dimensional Ghost Revealer
22117|1|15|Pledge of Loyalty: Stormwind
22119|1|15|Pledge of Loyalty: Ironforge
22120|1|15|Pledge of Loyalty: Darnassus
22121|1|15|Pledge of Loyalty: Undercity
22122|1|15|Pledge of Loyalty: Thunder Bluff
22123|1|15|Pledge of Loyalty: Orgrimmar
22130|1|15|Symbol of Love
22131|1|15|Stormwind Gift Collection
22132|1|15|Ironforge Gift Collection
22133|1|15|Darnassus Gift Collection
22134|1|15|Undercity Gift Collection
22135|1|15|Thunder Bluff Gift Collection
22136|1|15|Orgrimmar Gift Collection
22137|1|15|Ysida's Satchel
22138|1|12|Blackrock Bracer
22139|1|12|Ysida's Locket
22140|1|15|Sentinel's Card
22141|1|15|Ironforge Guard's Card
22142|1|15|Grunt's Card
22143|1|15|Stormwind Guard's Card
22144|1|15|Bluffwatcher's Card
22145|1|15|Guardian's Moldy Card
22149|3|4|Beads of Ogre Mojo
22150|3|4|Beads of Ogre Might
22151|1|12|Anthion's Holy Water
22152|1|15|Anthion's Pouch
22154|1|15|Pledge of Adoration: Ironforge
22155|1|15|Pledge of Adoration: Darnassus
22156|1|15|Pledge of Adoration: Orgrimmar
22157|1|15|Pledge of Adoration: Undercity
22158|1|15|Pledge of Adoration: Thunder Bluff
22159|1|15|Pledge of Friendship: Darnassus
22160|1|15|Pledge of Friendship: Ironforge
22161|1|15|Pledge of Friendship: Orgrimmar
22162|1|15|Pledge of Friendship: Thunder Bluff
22163|1|15|Pledge of Friendship: Undercity
22164|1|15|Gift of Adoration: Orgrimmar
22165|1|15|Gift of Adoration: Thunder Bluff
22166|1|15|Gift of Adoration: Undercity
22167|1|15|Gift of Friendship: Darnassus
22168|1|15|Gift of Friendship: Ironforge
22169|1|15|Gift of Friendship: Orgrimmar
22170|1|15|Gift of Friendship: Stormwind
22171|1|15|Gift of Friendship: Thunder Bluff
22172|1|15|Gift of Friendship: Undercity
22173|1|15|Dwarven Homebrew
22174|1|15|Romantic Poem
22175|1|15|Freshly Baked Pie
22176|1|15|Homemade Bread
22177|1|15|Freshly Picked Flowers
22178|1|15|Pledge of Friendship: Stormwind
22191|4|4|Obsidian Mail Tunic
22192|1|0|Bloodkelp Elixir of Dodging
22193|1|0|Bloodkelp Elixir of Resistance
22194|4|4|Black Grasp of the Destroyer
22195|3|4|Light Obsidian Belt
22196|4|4|Thick Obsidian Breastplate
22197|3|4|Heavy Obsidian Belt
22198|4|4|Jagged Obsidian Shield
22200|1|15|Silver Shafted Arrow
22201|1|12|Reliquary of Purity
22202|1|7|Small Obsidian Shard
22203|1|7|Large Obsidian Shard
22204|3|4|Wristguards of Renown
22205|3|4|Black Steel Bindings
22206|2|4|Bouquet of Red Roses
22207|3|4|Sash of the Grand Hunt
22208|3|2|Lavastone Hammer
22209|1|9|Plans: Heavy Obsidian Belt
22212|3|4|Golem Fitted Pauldrons
22214|1|9|Plans: Light Obsidian Belt
22216|1|12|Venoxis's Venom Sac
22217|1|12|Kurinnaxx's Venom Sac
22218|1|15|Handful of Rose Petals
22219|1|9|Plans: Jagged Obsidian Shield
22220|3|9|Plans: Black Grasp of the Destroyer
22221|1|9|Plans: Obsidian Mail Tunic
22222|3|9|Plans: Thick Obsidian Breastplate
22223|3|4|Foreman's Head Protector
22224|1|12|Jeering Spectre's Essence
22225|3|4|Dragonskin Cowl
22226|1|12|Druidical Remains
22227|1|12|Starbreeze Village Relic
22228|1|12|Brilliant Sword of Zealotry
22229|1|12|Soul Ashes of the Banished
22230|3|4|Frightmaw Hide
22231|3|4|Kayser's Boots of Precision
22232|3|4|Marksman's Girdle
22233|2|1|Zigris' Footlocker
22234|3|4|Mantle of Lost Hope
22235|1|15|Truesilver Shafted Arrow
22236|1|0|Buttermilk Delight
22237|1|0|Dark Desire
22238|1|0|Very Berry Cream
22239|1|0|Sweet Surprise
22240|3|4|Greaves of Withering Despair
22241|3|4|Dark Warder's Pauldrons
22242|3|4|Verek's Leash
22243|2|1|Small Soul Pouch
22244|2|1|Box of Souls
22245|3|4|Soot Encrusted Footwear
22246|2|1|Enchanted Mageweave Pouch
22247|3|4|Faith Healer's Boots
22248|2|1|Enchanted Runecloth Bag
22249|2|1|Big Bag of Enchantment
22250|2|1|Herb Pouch
22251|2|1|Cenarion Herb Bag
22252|2|1|Satchel of Cenarius
22253|3|4|Tome of the Lost
22254|3|2|Wand of Eternal Light
22255|3|4|Magma Forged Band
22256|3|4|Mana Shaping Handwraps
22257|3|4|Bloodclot Band
22258|1|15|Love Potion
22259|1|0|Unbestowed Friendship Bracelet
22260|1|0|Friendship Bracelet
22261|1|15|Love Fool
22262|1|15|Alliance Gift Collection
22263|1|15|Horde Gift Collection
22264|1|15|Carefully Written Letter
22265|1|15|Lovingly Composed Letter
22266|3|2|Flarethorn
22267|3|4|Spellweaver's Turban
22268|3|4|Draconic Infused Emblem
22269|3|4|Shadow Prowler's Cloak
22270|3|4|Entrenching Boots
22271|3|4|Leggings of Frenzied Magic
22272|3|4|Forest's Embrace
22273|3|4|Moonshadow Hood
22274|3|4|Grizzled Pelt
22275|3|4|Firemoss Boots
22276|1|4|Lovely Red Dress
22277|1|4|Red Dinner Suit
22278|1|4|Lovely Blue Dress
22279|1|4|Lovely Black Dress
22280|1|4|Lovely Purple Dress
22281|1|4|Blue Dinner Suit
22282|1|4|Purple Dinner Suit
22283|1|15|Sack of Homemade Bread
22284|1|15|Bundle of Cards
22285|1|15|Stormwind Pledge Collection
22286|1|15|Ironforge Pledge Collection
22287|1|15|Parcel of Cards
22288|1|15|Case of Homebrew
22289|1|15|Stack of Cards
22290|1|15|Darnassus Pledge Collection
22291|1|15|Box of Woodcrafts
22292|1|15|Box of Fresh Pies
22293|1|15|Package of Cards
22294|1|15|Orgrimmar Pledge Collection
22295|1|15|Satchel of Cards
22296|1|15|Basket of Flowers
22297|1|15|Thunder Bluff Pledge Collection
22298|1|15|Book of Romantic Poems
22299|1|15|Sheaf of Cards
22300|1|15|Undercity Pledge Collection
22301|3|4|Ironweave Robe
22302|3|4|Ironweave Cowl
22303|3|4|Ironweave Pants
22304|3|4|Ironweave Gloves
22305|3|4|Ironweave Mantle
22306|3|4|Ironweave Belt
22307|1|9|Pattern: Enchanted Mageweave Pouch
22308|1|9|Pattern: Enchanted Runecloth Bag
22309|2|9|Pattern: Big Bag of Enchantment
22310|1|9|Pattern: Cenarion Herb Bag
22311|3|4|Ironweave Boots
22312|1|9|Pattern: Satchel of Cenarius
22313|3|4|Ironweave Bracers
22314|3|2|Huntsman's Harpoon
22315|3|2|Hammer of Revitalization
22317|3|2|Lefty's Brass Knuckle
22318|3|2|Malgen's Long Bow
22319|3|4|Tome of Divine Right
22320|1|15|Mux's Quality Goods
22321|3|4|Heart of Wyrmthalak
22322|3|2|The Jaw Breaker
22324|1|0|Winter Kimchi
22325|3|4|Belt of the Trickster
22326|3|4|Amalgam's Band
22327|3|4|Amulet of the Redeemed
22328|3|4|Legplates of Vigilance
22329|3|4|Scepter of Interminable Focus
22330|3|4|Shroud of Arcane Mastery
22331|3|4|Band of the Steadfast Hero
22332|3|2|Blade of Necromancy
22333|3|2|Hammer of Divine Might
22334|3|4|Band of Mending
22335|3|2|Lord Valthalak's Staff of Command
22336|3|4|Draconian Aegis of the Legion
22337|3|4|Shroud of Domination
22338|1|12|Volcanic Ash
22339|3|4|Rune Band of Wizardry
22340|3|4|Pendant of Celerity
22342|3|4|Leggings of Torment
22343|3|4|Handguards of Savagery
22344|1|15|Brazier of Invocation: User's Manual
22345|3|4|Totem of Rebirth
22347|3|2|Fahrad's Reloading Repeater
22348|3|2|Doomulus Prime
22349|4|15|Desecrated Breastplate
22350|4|15|Desecrated Tunic
22351|4|15|Desecrated Robe
22352|4|15|Desecrated Legplates
22353|4|15|Desecrated Helmet
22354|4|15|Desecrated Pauldrons
22355|4|15|Desecrated Bracers
22356|4|15|Desecrated Waistguard
22357|4|15|Desecrated Gauntlets
22358|4|15|Desecrated Sabatons
22359|4|15|Desecrated Legguards
22360|4|15|Desecrated Headpiece
22361|4|15|Desecrated Spaulders
22362|4|15|Desecrated Wristguards
22363|4|15|Desecrated Girdle
22364|4|15|Desecrated Handguards
22365|4|15|Desecrated Boots
22366|4|15|Desecrated Leggings
22367|4|15|Desecrated Circlet
22368|4|15|Desecrated Shoulderpads
22369|4|15|Desecrated Bindings
22370|4|15|Desecrated Belt
22371|4|15|Desecrated Gloves
22372|4|15|Desecrated Sandals
22373|3|12|Wartorn Leather Scrap
22374|3|12|Wartorn Chain Scrap
22375|3|12|Wartorn Plate Scrap
22376|3|12|Wartorn Cloth Scrap
22377|3|2|The Thunderwood Poker
22378|3|2|Ravenholdt Slicer
22379|3|2|Shivsprocket's Shiv
22380|3|2|Simone's Cultivating Hammer
22381|1|12|Silithus Venom Sample
22382|1|12|Sealed Venom Container
22383|4|2|Sageblade
22384|4|2|Persuader
22385|4|4|Titanic Leggings
22387|1|12|Heart of Anub'Rekhan
22388|4|9|Plans: Titanic Leggings
22389|4|9|Plans: Sageblade
22390|4|9|Plans: Persuader
22392|1|9|Formula: Enchant 2H Weapon - Agility
22393|3|9|Codex: Prayer of Shadow Protection
22394|3|2|Staff of Metanoia
22395|3|4|Totem of Rage
22396|4|4|Totem of Life
22397|3|4|Idol of Ferocity
22398|3|4|Idol of Rejuvenation
22399|4|4|Idol of Health
22400|3|4|Libram of Truth
22401|3|4|Libram of Hope
22402|4|4|Libram of Grace
22403|3|4|Nacreous Shell Necklace
22404|3|2|Willey's Back Scratcher
22405|3|4|Mantle of the Scarlet Crusade
22406|3|2|Redemption
22407|3|4|Helm of the New Moon
22408|3|2|Ritssyn's Wand of Bad Mojo
22409|3|4|Tunic of the Crescent Moon
22410|3|4|Gauntlets of Deftness
22411|3|4|Helm of the Executioner
22412|3|4|Thuzadin Mantle
22416|4|4|Dreadnaught Breastplate
22417|4|4|Dreadnaught Legplates
22418|4|4|Dreadnaught Helmet
22419|4|4|Dreadnaught Pauldrons
22420|4|4|Dreadnaught Sabatons
22421|4|4|Dreadnaught Gauntlets
22422|4|4|Dreadnaught Waistguard
22423|4|4|Dreadnaught Bracers
22424|4|4|Redemption Wristguards
22425|4|4|Redemption Tunic
22426|4|4|Redemption Handguards
22427|4|4|Redemption Legguards
22428|4|4|Redemption Headpiece
22429|4|4|Redemption Spaulders
22430|4|4|Redemption Boots
22431|4|4|Redemption Girdle
22432|1|12|Devilsaur Barb
22433|3|4|Don Mauricio's Band of Domination
22434|1|15|Bloodcap
22435|1|15|Gorishi Sting
22436|4|4|Cryptstalker Tunic
22437|4|4|Cryptstalker Legguards
22438|4|4|Cryptstalker Headpiece
22439|4|4|Cryptstalker Spaulders
22440|4|4|Cryptstalker Boots
22441|4|4|Cryptstalker Handguards
22442|4|4|Cryptstalker Girdle
22443|4|4|Cryptstalker Wristguards
22444|1|15|Putrid Vine
22458|3|2|Moonshadow Stave
22464|4|4|Earthshatter Tunic
22465|4|4|Earthshatter Legguards
22466|4|4|Earthshatter Headpiece
22467|4|4|Earthshatter Spaulders
22468|4|4|Earthshatter Boots
22469|4|4|Earthshatter Handguards
22470|4|4|Earthshatter Girdle
22471|4|4|Earthshatter Wristguards
22472|3|4|Boots of Ferocity
22476|4|4|Bonescythe Breastplate
22477|4|4|Bonescythe Legplates
22478|4|4|Bonescythe Helmet
22479|4|4|Bonescythe Pauldrons
22480|4|4|Bonescythe Sabatons
22481|4|4|Bonescythe Gauntlets
22482|4|4|Bonescythe Waistguard
22483|4|4|Bonescythe Bracers
22484|2|15|Necrotic Rune
22485|1|15|[UNUSED] Scourge Invasion Focus Object
22486|1|13|[UNUSED] Scourge Invasion Boss Summoner
22488|4|4|Dreamwalker Tunic
22489|4|4|Dreamwalker Legguards
22490|4|4|Dreamwalker Headpiece
22491|4|4|Dreamwalker Spaulders
22492|4|4|Dreamwalker Boots
22493|4|4|Dreamwalker Handguards
22494|4|4|Dreamwalker Girdle
22495|4|4|Dreamwalker Wristguards
22496|4|4|Frostfire Robe
22497|4|4|Frostfire Leggings
22498|4|4|Frostfire Circlet
22499|4|4|Frostfire Shoulderpads
22500|4|4|Frostfire Sandals
22501|4|4|Frostfire Gloves
22502|4|4|Frostfire Belt
22503|4|4|Frostfire Bindings
22504|4|4|Plagueheart Robe
22505|4|4|Plagueheart Leggings
22506|4|4|Plagueheart Circlet
22507|4|4|Plagueheart Shoulderpads
22508|4|4|Plagueheart Sandals
22509|4|4|Plagueheart Gloves
22510|4|4|Plagueheart Belt
22511|4|4|Plagueheart Bindings
22512|4|4|Robe of Faith
22513|4|4|Leggings of Faith
22514|4|4|Circlet of Faith
22515|4|4|Shoulderpads of Faith
22516|4|4|Sandals of Faith
22517|4|4|Gloves of Faith
22518|4|4|Belt of Faith
22519|4|4|Bindings of Faith
22520|4|15|The Phylactery of Kel'Thuzad
22523|2|15|Insignia of the Dawn
22524|2|15|Insignia of the Crusade
22525|1|12|Crypt Fiend Parts
22526|1|12|Bone Fragments
22527|1|12|Core of Elements
22528|1|12|Dark Iron Scraps
22529|1|12|Savage Frond
22568|1|15|Sealed Craftsman's Writ
22589|5|2|Atiesh, Greatstaff of the Guardian
22593|1|15|Writ of Safe Passage
22595|1|15|Call to Arms Announcement
22600|1|12|Craftsman's Writ - Dense Weightstone
22601|1|12|Craftsman's Writ - Imperial Plate Chest
22602|1|12|Craftsman's Writ - Volcanic Hammer
22603|1|12|Craftsman's Writ - Huge Thorium Battleaxe
22604|1|12|Craftsman's Writ - Radiant Circlet
22605|1|12|Craftsman's Writ - Wicked Leather Headband
22606|1|12|Craftsman's Writ - Rugged Armor Kit
22607|1|12|Craftsman's Writ - Wicked Leather Belt
22608|1|12|Craftsman's Writ - Runic Leather Pants
22609|1|12|Craftsman's Writ - Brightcloth Pants
22610|1|12|Craftsman's Writ - Runecloth Boots
22611|1|12|Craftsman's Writ - Runecloth Bag
22612|1|12|Craftsman's Writ - Runecloth Robe
22613|1|12|Craftsman's Writ - Goblin Sapper Charge
22614|1|12|Craftsman's Writ - Thorium Grenade
22615|1|12|Craftsman's Writ - Gnomish Battle Chicken
22616|1|12|Craftsman's Writ - Thorium Tube
22617|1|12|Craftsman's Writ - Major Mana Potion
22618|1|12|Craftsman's Writ - Major Healing Potion
22619|1|12|Craftsman's Writ - Greater Frost Protection Potion
22620|1|12|Craftsman's Writ - Greater Arcane Protection Potion
22621|1|12|Craftsman's Writ - Flask of Petrification
22622|1|12|Craftsman's Writ - Stonescale Eel
22623|1|12|Craftsman's Writ - Plated Armorfish
22624|1|12|Craftsman's Writ - Lightning Eel
22625|1|12|Craftsman's Writ - Baked Salmon
22626|1|12|Craftsman's Writ - Runn Tum Tuber Surprise
22630|5|2|Atiesh, Greatstaff of the Guardian
22631|5|2|Atiesh, Greatstaff of the Guardian
22632|5|2|Atiesh, Greatstaff of the Guardian
22635|3|15|Savage Guard
22636|3|15|Ice Guard
22637|3|15|Primal Hakkari Idol
22638|3|15|Shadow Guard
22648|1|15|Hive'Ashi Dossier
22649|1|15|Hive'Regal Dossier
22650|1|15|Hive'Zora Dossier
22651|4|4|Outrider's Plate Legguards
22652|4|4|Glacial Vest
22654|4|4|Glacial Gloves
22655|4|4|Glacial Wrists
22656|4|2|The Purifier
22657|4|4|Amulet of the Dawn
22658|4|4|Glacial Cloak
22659|4|4|Medallion of the Dawn
22660|3|4|Gaea's Embrace
22661|4|4|Polar Tunic
22662|4|4|Polar Gloves
22663|4|4|Polar Bracers
22664|4|4|Icy Scale Breastplate
22665|4|4|Icy Scale Bracers
22666|4|4|Icy Scale Gauntlets
22667|4|4|Bracers of Hope
22668|4|4|Bracers of Subterfuge
22669|4|4|Icebane Breastplate
22670|4|4|Icebane Gauntlets
22671|4|4|Icebane Bracers
22672|4|4|Sentinel's Plate Legguards
22673|4|4|Outrider's Chain Leggings
22676|4|4|Outrider's Mail Leggings
22678|4|4|Talisman of Ascendance
22679|3|1|Supply Bag
22680|3|4|Band of Resolution
22681|3|4|Band of Piety
22682|3|7|Frozen Rune
22683|1|9|Pattern: Gaea's Embrace
22684|1|9|Pattern: Glacial Gloves
22685|1|9|Pattern: Glacial Cloak
22686|1|9|Pattern: Glacial Vest
22687|1|9|Pattern: Glacial Wrists
22688|3|2|Verimonde's Last Resort
22689|3|4|Sanctified Leather Helm
22690|3|4|Leggings of the Plague Hunter
22691|4|2|Corrupted Ashbringer
22692|1|9|Pattern: Polar Tunic
22694|1|9|Pattern: Polar Gloves
22695|1|9|Pattern: Polar Bracers
22696|1|9|Pattern: Icy Scale Breastplate
22697|1|9|Pattern: Icy Scale Gauntlets
22698|1|9|Pattern: Icy Scale Bracers
22699|4|4|Icebane Leggings
22700|4|4|Glacial Leggings
22701|4|4|Polar Leggings
22702|4|4|Icy Scale Leggings
22703|1|9|Plans: Icebane Breastplate
22704|1|9|Plans: Icebane Gauntlets
22705|1|9|Plans: Icebane Bracers
22707|4|4|Ramaladni's Icy Grasp
22708|1|12|Fate of Ramaladni
22711|3|4|Cloak of the Hakkari Worshipers
22712|3|4|Might of the Tribe
22713|3|2|Zulian Scepter of Rites
22714|3|4|Sacrificial Gauntlets
22715|3|4|Gloves of the Tormented
22716|3|4|Belt of Untapped Power
22718|3|4|Blooddrenched Mask
22719|1|15|Omarion's Handbook
22720|3|4|Zulian Headdress
22721|4|4|Band of Servitude
22722|4|4|Seal of the Gurubashi Berserker
22723|1|12|A Letter from the Keeper of the Rolls
22725|3|4|Band of Cenarius
22726|5|15|Splinter of Atiesh
22727|5|15|Frame of Atiesh
22728|2|15|Steam Tonk Controller
22729|1|9|Schematic: Steam Tonk Controller
22730|4|4|Eyestalk Waist Cord
22731|4|4|Cloak of the Devoured
22732|4|4|Mark of C'Thun
22733|5|12|Staff Head of Atiesh
22734|5|12|Base of Atiesh
22736|5|2|Andonisus, Reaper of Souls
22737|5|15|Atiesh, Greatstaff of the Guardian
22739|3|9|Tome of Polymorph: Turtle
22740|4|4|Outrider's Leather Pants
22741|4|4|Outrider's Lizardhide Pants
22742|2|4|Bloodsail Shirt
22743|2|4|Bloodsail Sash
22744|2|4|Bloodsail Boots
22745|2|4|Bloodsail Pants
22746|2|15|Buccaneer's Uniform
22747|4|4|Outrider's Silk Leggings
22748|4|4|Sentinel's Chain Leggings
22749|4|4|Sentinel's Leather Pants
22750|4|4|Sentinel's Lizardhide Pants
22752|4|4|Sentinel's Silk Leggings
22753|4|4|Sentinel's Lamellar Legguards
22754|1|12|Eternal Quintessence
22756|3|4|Sylvan Vest
22757|3|4|Sylvan Crown
22758|3|4|Sylvan Shoulders
22759|3|4|Bramblewood Helm
22760|3|4|Bramblewood Boots
22761|3|4|Bramblewood Belt
22762|3|4|Ironvine Breastplate
22763|3|4|Ironvine Gloves
22764|3|4|Ironvine Belt
22765|1|15|Mildewed Letter
22766|1|9|Plans: Ironvine Breastplate
22767|1|9|Plans: Ironvine Gloves
22768|1|9|Plans: Ironvine Belt
22769|1|9|Pattern: Bramblewood Belt
22770|1|9|Pattern: Bramblewood Boots
22771|1|9|Pattern: Bramblewood Helm
22772|1|9|Pattern: Sylvan Shoulders
22773|1|9|Pattern: Sylvan Crown
22774|1|9|Pattern: Sylvan Vest
22780|1|15|White Murloc Egg
22781|1|15|Polar Bear Collar
22798|4|2|Might of Menethil
22799|4|2|Soulseeker
22800|4|2|Brimstone Staff
22801|4|2|Spire of Twilight
22802|4|2|Kingsfall
22803|4|2|Midnight Haze
22804|4|2|Maexxna's Fang
22805|4|2|Naxxramas Sword 1H 1 [PH]
22806|4|2|Widow's Remorse
22807|4|2|Wraith Blade
22808|4|2|The Castigator
22809|4|2|Maul of the Redeemed Crusader
22810|4|2|Toxin Injector
22811|4|2|Soulstring
22812|4|2|Nerubian Slavemaker
22813|4|2|Claymore of Unholy Might
22814|4|2|Naxxramas Sword 2H 2 [PH]
22815|4|2|Severance
22816|4|2|Hatchet of Sundered Bone
22817|4|2|Naxxramas Polearm [PH]
22818|4|4|The Plague Bearer
22819|4|4|Shield of Condemnation
22820|4|2|Wand of Fates
22821|4|2|Doomfinger
22822|1|12|iCoke Prize Voucher
22843|3|4|Blood Guard's Chain Greaves
22852|3|4|Blood Guard's Dragonhide Treads
22855|3|4|Blood Guard's Dreadweave Walkers
22856|3|4|Blood Guard's Leather Walkers
22857|3|4|Blood Guard's Mail Greaves
22858|3|4|Blood Guard's Plate Greaves
22859|3|4|Blood Guard's Satin Walkers
22860|3|4|Blood Guard's Silk Walkers
22862|3|4|Blood Guard's Chain Vices
22863|3|4|Blood Guard's Dragonhide Grips
22864|3|4|Blood Guard's Leather Grips
22865|3|4|Blood Guard's Dreadweave Handwraps
22867|3|4|Blood Guard's Mail Vices
22868|3|4|Blood Guard's Plate Gauntlets
22869|3|4|Blood Guard's Satin Handwraps
22870|3|4|Blood Guard's Silk Handwraps
22872|3|4|Legionnaire's Plate Hauberk
22873|3|4|Legionnaire's Plate Leggings
22874|3|4|Legionnaire's Chain Hauberk
22875|3|4|Legionnaire's Chain Legguards
22876|3|4|Legionnaire's Mail Hauberk
22877|3|4|Legionnaire's Dragonhide Chestpiece
22878|3|4|Legionnaire's Dragonhide Leggings
22879|3|4|Legionnaire's Leather Chestpiece
22880|3|4|Legionnaire's Leather Legguards
22881|3|4|Legionnaire's Dreadweave Legguards
22882|3|4|Legionnaire's Satin Legguards
22883|3|4|Legionnaire's Silk Legguards
22884|3|4|Legionnaire's Dreadweave Tunic
22885|3|4|Legionnaire's Satin Tunic
22886|3|4|Legionnaire's Silk Tunic
22887|3|4|Legionnaire's Mail Legguards
22890|3|9|Tome of Frost Ward V
22891|3|9|Grimoire of Shadow Ward IV
22892|1|12|Dim Necrotic Stone
22895|1|0|Conjured Cinnamon Roll
22897|3|9|Tome of Conjure Food VII
22930|1|12|A Bloodstained Envelope
22932|1|12|A Torn Letter
22933|1|12|[UNUSED] Abom Stoone
22935|4|4|Touch of Frost
22936|4|4|Wristguards of Vengeance
22937|4|4|Gem of Nerubis
22938|4|4|Cryptfiend Silk Cloak
22939|4|4|Band of Unanswered Prayers
22940|4|4|Icebane Pauldrons
22941|4|4|Polar Shoulder Pads
22942|4|2|The Widow's Embrace
22943|4|4|Malice Stone Pendant
22944|1|12|A Crumpled Missive
22945|1|12|A Careworn Note
22946|1|12|A Ragged Page
22947|4|4|Pendant of Forgotten Names
22948|1|12|A Smudged Document
22949|1|12|Cracked Necrotic Crystal
22950|1|12|Faint Necrotic Crystal
22954|4|4|Kiss of the Spider
22960|4|4|Cloak of Suturing
22961|4|4|Band of Reanimation
22967|4|4|Icy Scale Spaulders
22968|4|4|Glacial Mantle
22970|1|12|A Bloodstained Envelope
22972|1|12|A Careworn Note
22973|1|12|A Crumpled Missive
22974|1|12|A Ragged Page
22975|1|12|A Smudged Document
22977|1|12|A Torn Letter
22981|4|4|Gluth's Missing Collar
22983|4|4|Rime Covered Mantle
22988|4|2|The End of Dreams
22994|4|4|Digested Hand of Power
22999|1|4|Tabard of the Argent Dawn
23000|4|4|Plated Abomination Ribcage
23001|4|4|Eye of Diminution
23002|1|15|Turtle Box
23004|4|4|Idol of Longevity
23005|4|4|Totem of Flowing Water
23006|4|4|Libram of Light
23007|1|15|Piglet's Collar
23008|1|12|Sealed Research Report
23009|4|2|Wand of the Whispering Dead
23010|1|12|Sealed Research Report
23011|1|12|Sealed Research Report
23012|1|12|Sealed Research Report
23013|1|12|Sealed Research Report
23014|4|2|Iblis, Blade of the Fallen Seraph
23015|1|15|Rat Cage
23016|1|12|Sealed Research Report
23017|4|4|Veil of Eclipse
23018|4|4|Signet of the Fallen Defender
23019|4|4|Icebane Helmet
23020|4|4|Polar Helmet
23021|4|4|The Soul Harvester's Bindings
23022|1|15|Curmudgeon's Payoff
23023|4|4|Sadist's Collar
23024|1|12|Prepared Field Duty Papers
23025|4|4|Seal of the Damned
23027|4|4|Warmth of Forgiveness
23028|4|4|Hailstone Band
23029|4|4|Noth's Frigid Heart
23030|4|4|Cloak of the Scourge
23031|4|4|Band of the Inevitable
23032|4|4|Glacial Headdress
23033|4|4|Icy Scale Coif
23034|4|4|Nax PH Crit Plate Shoulders
23035|4|4|Preceptor's Hat
23036|4|4|Necklace of Necropsy
23037|4|4|Ring of Spiritual Fervor
23038|4|4|Band of Unnatural Forces
23039|4|2|The Eye of Nerub
23040|4|4|Glyph of Deflection
23041|4|4|Slayer's Crest
23042|4|4|Loatheb's Reflection
23043|4|4|The Face of Death
23044|4|2|Harbinger of Doom
23045|4|4|Shroud of Dominion
23046|4|4|The Restrained Essence of Sapphiron
23047|4|4|Eye of the Dead
23048|4|4|Sapphiron's Right Eye
23049|4|4|Sapphiron's Left Eye
23050|4|4|Cloak of the Necropolis
23053|4|4|Stormrage's Talisman of Seething
23054|4|2|Gressil, Dawn of Ruin
23055|1|7|Word of Thawing
23056|4|2|Hammer of the Twisting Nether
23057|4|4|Gem of Trapped Innocents
23058|4|4|Life Channeling Necklace
23059|4|4|Ring of the Dreadnaught
23060|4|4|Bonescythe Ring
23061|4|4|Ring of Faith
23062|4|4|Frostfire Ring
23063|4|4|Plagueheart Ring
23064|4|4|Ring of the Dreamwalker
23065|4|4|Ring of the Earthshatterer
23066|4|4|Ring of Redemption
23067|4|4|Ring of the Cryptstalker
23068|4|4|Legplates of Carnage
23069|4|4|Necro-Knight's Garb
23070|4|4|Leggings of Polarity
23071|4|4|Leggings of Apocalypse
23072|4|4|Fists of the Unrelenting
23073|4|4|Boots of Displacement
23075|4|4|Death's Bargain
23078|3|4|Gauntlets of Undead Slaying
23081|3|4|Handwraps of Undead Slaying
23082|3|4|Handguards of Undead Slaying
23083|1|15|Captured Flame
23084|3|4|Gloves of Undead Cleansing
23085|3|4|Robe of Undead Cleansing
23086|1|15|[UNUSED] Letter Cookie
23087|3|4|Breastplate of Undead Slaying
23088|3|4|Chestguard of Undead Slaying
23089|3|4|Tunic of Undead Slaying
23090|3|4|Bracers of Undead Slaying
23091|3|4|Bracers of Undead Cleansing
23092|3|4|Wristguards of Undead Slaying
23093|3|4|Wristwraps of Undead Slaying
23122|2|0|Consecrated Sharpening Stone
23123|2|0|Blessed Wizard Oil
23124|3|2|Staff of Balzaphon
23125|3|4|Chains of the Lich
23126|3|4|Waistband of Balzaphon
23127|3|4|Cloak of Revanchion
23128|3|4|The Shadow's Grasp
23129|3|4|Bracers of Mending
23132|3|2|Lord Blackwood's Blade
23139|3|4|Lord Blackwood's Buckler
23156|3|4|Blackwood's Thigh
23160|1|0|Friendship Bread
23161|1|0|Freshly-Squeezed Lemonade
23162|1|1|A Very Large Bag
23163|1|0|Performer's Wand
23164|1|0|Bubbly Beverage
23168|3|2|Scorn's Focal Dagger
23169|3|4|Scorn's Icy Choker
23170|3|4|The Frozen Clutch
23171|3|2|The Axe of Severing
23172|1|0|Refreshing Red Apple
23173|3|4|Abomination Skin Leggings
23175|1|0|Tasty Summer Treat
23176|1|0|Fizzy Energy Drink
23177|3|2|Lady Falther'ess' Finger
23178|3|4|Mantle of Lady Falther'ess
23179|1|12|Flame of Orgrimmar
23180|1|12|Flame of Thunder Bluff
23181|1|12|Flame of the Undercity
23182|1|12|Flame of Stormwind
23183|1|12|Flame of Ironforge
23184|1|12|Flame of Darnassus
23192|1|4|Tabard of the Scarlet Crusade
23193|4|15|Skeletal Steed Reins
23194|1|0|Lesser Mark of the Dawn
23195|1|0|Mark of the Dawn
23196|1|0|Greater Mark of the Dawn
23197|3|4|Idol of the Moon
23198|3|4|Idol of Brutality
23199|3|4|Totem of the Storm
23200|3|4|Totem of Sustaining
23201|3|4|Libram of Divinity
23203|3|4|Libram of Fervor
23206|4|4|Mark of the Champion
23207|4|4|Mark of the Champion
23211|1|0|Toasted Smorc
23215|1|0|Bag of Smorc Ingredients
23219|4|4|Girdle of the Mentor
23220|4|4|Crystal Webbed Robe
23221|4|2|Misplaced Servo Arm
23224|1|0|Summer Gift Package
23226|4|4|Ghoul Skin Tunic
23227|1|12|iCoke Gift Box Voucher
23237|4|4|Ring of the Eternal Flame
23238|4|4|Stygian Buckler
23242|4|2|Claw of the Frost Wyrm
23243|3|4|Champion's Plate Shoulders
23244|3|4|Champion's Plate Helm
23246|1|0|Fiery Festival Brew
23247|1|15|Burning Blossom
23250|1|15|Prismatic Shell
23251|3|4|Champion's Chain Helm
23252|3|4|Champion's Chain Shoulders
23253|3|4|Champion's Dragonhide Headguard
23254|3|4|Champion's Dragonhide Shoulders
23255|3|4|Champion's Dreadweave Cowl
23256|3|4|Champion's Dreadweave Spaulders
23257|3|4|Champion's Leather Helm
23258|3|4|Champion's Leather Shoulders
23259|3|4|Champion's Mail Headguard
23260|3|4|Champion's Mail Pauldrons
23261|3|4|Champion's Satin Hood
23262|3|4|Champion's Satin Mantle
23263|3|4|Champion's Silk Cowl
23264|3|4|Champion's Silk Mantle
23272|3|4|Knight-Captain's Lamellar Breastplate
23273|3|4|Knight-Captain's Lamellar Leggings
23274|3|4|Knight-Lieutenant's Lamellar Gauntlets
23275|3|4|Knight-Lieutenant's Lamellar Sabatons
23276|3|4|Lieutenant Commander's Lamellar Headguard
23277|3|4|Lieutenant Commander's Lamellar Shoulders
23278|3|4|Knight-Lieutenant's Chain Greaves
23279|3|4|Knight-Lieutenant's Chain Vices
23280|3|4|Knight-Lieutenant's Dragonhide Grips
23281|3|4|Knight-Lieutenant's Dragonhide Treads
23282|3|4|Knight-Lieutenant's Dreadweave Handwraps
23283|3|4|Knight-Lieutenant's Dreadweave Walkers
23284|3|4|Knight-Lieutenant's Leather Grips
23285|3|4|Knight-Lieutenant's Leather Walkers
23286|3|4|Knight-Lieutenant's Plate Gauntlets
23287|3|4|Knight-Lieutenant's Plate Greaves
23288|3|4|Knight-Lieutenant's Satin Handwraps
23289|3|4|Knight-Lieutenant's Satin Walkers
23290|3|4|Knight-Lieutenant's Silk Handwraps
23291|3|4|Knight-Lieutenant's Silk Walkers
23292|3|4|Knight-Captain's Chain Hauberk
23293|3|4|Knight-Captain's Chain Legguards
23294|3|4|Knight-Captain's Dragonhide Chestpiece
23295|3|4|Knight-Captain's Dragonhide Leggings
23296|3|4|Knight-Captain's Dreadweave Legguards
23297|3|4|Knight-Captain's Dreadweave Tunic
23298|3|4|Knight-Captain's Leather Chestpiece
23299|3|4|Knight-Captain's Leather Legguards
23300|3|4|Knight-Captain's Plate Hauberk
23301|3|4|Knight-Captain's Plate Leggings
23302|3|4|Knight-Captain's Satin Legguards
23303|3|4|Knight-Captain's Satin Tunic
23304|3|4|Knight-Captain's Silk Legguards
23305|3|4|Knight-Captain's Silk Tunic
23306|3|4|Lieutenant Commander's Chain Helm
23307|3|4|Lieutenant Commander's Chain Shoulders
23308|3|4|Lieutenant Commander's Dragonhide Headguard
23309|3|4|Lieutenant Commander's Dragonhide Shoulders
23310|3|4|Lieutenant Commander's Dreadweave Cowl
23311|3|4|Lieutenant Commander's Dreadweave Spaulders
23312|3|4|Lieutenant Commander's Leather Helm
23313|3|4|Lieutenant Commander's Leather Shoulders
23314|3|4|Lieutenant Commander's Plate Helm
23315|3|4|Lieutenant Commander's Plate Shoulders
23316|3|4|Lieutenant Commander's Satin Hood
23317|3|4|Lieutenant Commander's Satin Mantle
23318|3|4|Lieutenant Commander's Silk Cowl
23319|3|4|Lieutenant Commander's Silk Mantle
23320|3|9|Tablet of Flame Shock VI
23323|1|4|Crown of the Fire Festival
23324|1|4|Mantle of the Fire Festival
23326|1|0|Midsummer Sausage
23327|1|0|Fire-toasted Bun
23360|1|12|Head of Instructor Razuvious
23379|2|0|Cinder Bracers
23435|1|0|Elderberry Pie
23451|4|2|Grand Marshal's Mageblade
23452|4|4|Grand Marshal's Tome of Power
23453|4|4|Grand Marshal's Tome of Restoration
23454|4|2|Grand Marshal's Warhammer
23455|4|2|Grand Marshal's Demolisher
23456|4|2|Grand Marshal's Swiftblade
23464|4|2|High Warlord's Battle Mace
23465|4|2|High Warlord's Destroyer
23466|4|2|High Warlord's Spellblade
23467|4|2|High Warlord's Quickblade
23468|4|4|High Warlord's Tome of Destruction
23469|4|4|High Warlord's Tome of Mending
23545|4|12|Power of the Scourge
23547|4|12|Resilience of the Scourge
23548|4|12|Might of the Scourge
23549|4|12|Fortitude of the Scourge
23557|4|2|Larvae of the Great Worm
23558|4|4|The Burrower's Shell
23570|4|4|Jom Gabbar
23577|4|2|The Hungering Cold
23578|1|0|Diet McWeaksauce
23579|1|0|The McWeaksauce Classic
23663|4|4|Girdle of Elemental Fury
23664|4|4|Pauldrons of Elemental Fury
23665|4|4|Leggings of Elemental Fury
23666|4|4|Belt of the Grand Crusader
23667|4|4|Spaulders of the Grand Crusader
23668|4|4|Leggings of the Grand Crusader
23683|1|0|Crystal Flake Throat Lozenge
23684|1|0|Crystal Infused Bandage
23689|1|9|Manual: Crystal Infused Bandage
23690|1|9|Recipe: Crystal Flake Throat Lozenge
23705|4|4|Tabard of Flame
23709|1|4|Tabard of Frost
23710|1|4|Upperdeck Tabard #3
23712|1|15|White Tiger Cub
23713|1|15|Hippogryph Hatchling
23714|1|4|Perpetual Purple Firework
23715|1|0|Permanent Lung Juice Cocktail
23716|1|4|Carved Ogre Idol
23718|1|0|Permanent Ground Scorpok Assay
23719|1|0|Permanent Cerebral Cortex Compound
23720|1|15|Riding Turtle
23721|1|0|Permanent Gizzard Gum
23722|1|0|Permanent R.O.I.D.S.
23794|2|0|Permanent Sheen of Zanza
23795|2|0|Permanent Spirit of Zanza
23796|2|0|Permanent Swiftness of Zanza
24071|3|2|Bland Dagger
24101|3|9|Book of Ferocious Bite V
24102|3|9|Manual of Eviscerate IX
24222|3|2|The Shadowfoot Stabber
24231|0|15|Coarse Snuff
24232|0|15|Shabby Knot
24281|0|15|Carved Ivory Bone
24282|0|15|Rogue's Diary
24283|0|15|An Antique Gun
33154|2|15|Sinister Squashling
34085|1|4|Red Winter Clothes
34086|1|4|Winter Boots
34087|1|4|Green Winter Clothes
34261|2|9|Pattern: Green Winter Clothes
34262|2|9|Pattern: Winter Boots
34319|2|9|Pattern: Red Winter Clothes
44803|2|4|Spring Circlet
46102|4|15|Whistle of the Venomhide Ravasaur
46362|1|12|Venomhide Hatchling
49715|2|4|Forever-Lovely Rose
74610|2|15|Lunar Lantern
74611|2|15|Festival Lantern
98550|3|15|Blossoming Ancient
122270|1|18|WoW Token
122284|1|18|WoW Token
134110|2|4|Hidden Helm
134111|2|4|Hidden Cloak
134112|2|4|Hidden Shoulder
135510|1|4|Transmog UI Trim Head Item
135522|1|4|Transmog UI Chest Item
135548|1|4|Transmog UI Legs Item
135549|1|4|Transmog UI Hand Item
135550|1|4|Transmog UI Feet Item
142503|2|4|Hidden Shirt
142504|2|4|Hidden Tabard
143539|2|4|Hidden Belt
158329|2|4|Hidden Gloves
168659|2|4|Hidden Chestpiece
168664|2|4|Hidden Boots
168665|2|4|Hidden Bracers
172070|1|15|Customer Service Package
180089|1|15|Panda Collar
184937|1|0|Chronoboon Displacer
184938|2|0|Supercharged Chronoboon Displacer
189419|1|15|Fire Resist Plate Gear
189420|1|15|Fire Resist Plate Gear
189421|1|15|Fire Resist Leather Gear
189426|1|15|Raid Consumables
189427|1|15|More Raid Consumables
190179|1|12|Avelina's Heart
190180|1|12|Isaac's Heart
190181|1|12|Lovers' Hearts
190186|1|12|Wooden Figurine
190187|1|12|Withered Scarf
190232|1|12|Withered Scarf
190307|1|12|Unlit Torch
190308|1|12|Burning Torch
190309|1|12|Wooden Figurine
191204|2|0|Lesser Deathstone
191249|2|0|Greater Deathstone
191267|2|0|Rune of Teleportation: Antechamber
191268|2|0|Orb of Corruption
191272|3|0|Rod of Necromancy
191280|3|0|Fungal Spore Cluster
191288|4|0|Rune of Teleportation: Frostwyrm's Lair
191292|3|0|Ritual Dagger
191312|4|4|Failsafe Phylactery
191313|1|0|Mask of Death
191414|3|0|Skeletal Artifact
191458|0|4|Shattered Phylactery
191459|4|0|Rune of Fortune
191477|4|15|Skeletal Hitching Post
191480|4|15|Skeletal Steed
191481|4|4|Tabard of Mastery
191550|1|12|Book of Deathstones: Mask of Death
191605|2|12|Book of Deathstones: Rune of Teleportation I
191606|2|12|Book of Deathstones: Orb of Corruption
191607|3|12|Book of Deathstones: Skeletal Artifact
191608|3|12|Book of Deathstones: Rod of Necromancy
191609|3|12|Book of Deathstones: Fungal Spore Cluster
191610|3|12|Book of Deathstones: Ritual Dagger
191611|4|12|Book of Deathstones: Failsafe Phylactery
191612|4|12|Book of Deathstones: Rune of Teleportation II
191613|4|12|Book of Deathstones: Rune of Fortune
191614|4|12|Book of Deathstones: Skeletal Hitching Post
191656|4|0|Death's Essence
191660|3|0|Thaddius' Lightning Bolts
191661|3|0|Monstrous Spider Fang
191664|3|12|Book of Deathstones: Thaddius' Lightning Bolts
191666|3|12|Book of Deathstones: Monstrous Spider Fang
202251|1|0|Bag of Pet Treats
202254|3|4|Bracers of Redirection
202256|2|2|Privateer's Ornate Pistol
202641|1|15|Mud-covered notebook
203723|1|15|Cutty's Note
203726|2|0|Cutty's Rune
203745|2|9|Spell Notes: Ice Lance
203746|2|9|Spell Notes: Living Flame
203747|2|9|Spell Notes: Fingers of Frost
203748|2|9|Spell Notes: Burnout
203749|2|9|Spell Notes: Enlightenment
203750|1|0|Elwynn Treasure Map
203751|2|15|Spell Notes: CALE ENCI
203752|2|15|Spell Notes: MILEGIN VALF
203753|2|15|Spell Notes: RING SEFF OSTROF
203754|1|5|Archmage Antonidas: The Unabridged Autobiography
203755|1|5|Archmage Theocritus' Research Journal
203756|2|15|Azora Apprentice Notes: Page 1
203784|1|0|Top-Right Map Piece
203785|1|0|Top-Left Map Piece
203786|1|0|Bottom-Right Map Piece
203787|1|0|Bottom-Left Map Piece
203960|2|15|Azora Apprentice Notes: Page 2
203961|2|15|Azora Apprentice Notes: Page 3
203962|2|15|Azora Apprentice Notes: Page 4
203990|2|0|Rune of Mutilation
203991|2|0|Rune of Quick Draw
203992|2|0|Rune of Trickery
203993|2|0|Rune of Slaughter
203994|2|0|Rune of Deadly Brew
204174|2|0|Rune of Precision
204270|1|12|Fathom Core
204441|2|0|Rune of Blood Frenzy
204476|1|15|Severed Kobold Head
204477|1|15|Severed Murloc Head
204478|1|15|Severed Gnoll Head
204688|1|0|Monster Hunter's First Rune Fragment
204689|1|0|Monster Hunter's Second Rune Fragment
204690|1|0|Monster Hunter's Third Rune Fragment
204703|2|0|Rune of Devastate
204716|2|0|Rune of Frenzied Assault
204795|2|0|Rune of Shadowstrike
204804|3|4|Hydraxian Bangles
204806|2|0|Rune of Victory Rush
204807|3|2|Fathomblade
204809|2|0|Rune of Furious Thunder
204864|2|15|Azora Apprentice Notes
204905|1|15|Ominous Tome
204906|1|15|Gnoll Blood
204907|1|15|Wolf Jawbone
204912|2|0|Rune of Grace
205019|1|15|Tainted Soul Shard
205020|1|15|Pure Soul Shard
205022|2|0|Rune of Soul Siphon
205181|1|15|Unidentified Artifact
205182|1|15|Powerless Artifact
205183|1|15|Fel-Powered Artifact
205184|1|15|Acolyte's Note
205215|2|0|Rune of Tactics
205218|2|4|Libram of Discovery
205228|2|0|Rune of Chaos Bolt
205230|2|0|Rune of Haunting
205364|1|15|Acolyte's Knapsack
205420|2|4|Libram of Judgement
205683|2|0|Rune of Rebuke
205685|2|0|Rune of Aegis
205863|1|15|Corrupted Libram
205864|1|15|Charred Note
205897|2|0|Rune of Divine Light
205905|2|0|Memory of a Devout Champion
205932|2|0|Prophecy of a King's Demise
205940|2|0|Memory of a Dark Purpose
205942|1|0|Chimaeric Epiphany
205943|1|0|Prophecy of a Desecrated Citadel
205944|2|0|Reciprocal Epiphany
205945|2|0|Memory of an Imprisoned Savior
205946|2|0|Memory of a Leader's Betrayal
205947|2|0|Prophecy of a Desecrated Citadel
205948|1|0|Anodyne Epiphany
205949|1|0|Manifold Epiphany
205950|2|0|Tenebrous Epiphany
205951|2|0|Memory of a Troubled Acolyte
205952|1|0|Memory of a Shattered World
205953|2|0|Prophecy of a Broken Vow
205961|1|15|Mulgore Bird Meat
205979|2|0|Rune of Flanking
205995|1|0|Prairie Dog Musk
206032|2|0|Rune of Carve
206155|2|0|Rune of Marksmanship
206157|1|12|Seaforium Mining Charge
206159|1|12|Venture Co Disguise
206168|2|0|Rune of the Chimera
206169|2|0|Rune of Explosive Shot
206170|1|12|Windfury Cone
206175|1|12|Pine Salve
206176|1|12|Mortar and Pestle
206177|1|0|Pine Nut Butter
206264|2|0|Rune of Inspiration
206344|1|12|Knife Set
206345|1|12|Fish Chunks
206376|2|4|Bulwark Icon
206381|2|4|Dyadic Icon
206382|2|4|Tempest Icon
206383|2|4|Lithic Icon
206384|2|4|Astral Icon
206385|2|4|Clastic Icon
206386|2|4|Galvanic Icon
206387|2|4|Kajaric Icon
206388|2|4|Sulfurous Icon
206389|2|4|Brimstone Icon
206390|2|4|Ichthyan Icon
206391|2|4|Syzygic Icon
206466|1|0|Prairie Crown
206469|1|0|Prairie Flower
206954|2|4|Idol of Ursine Rage
206963|2|0|Rune of Natural Potential
206966|1|13|Satyrweed Bulb
206970|2|0|Rune of Life
206975|1|13|Artifact Storage Key
206985|2|0|Echo of the Alpha
206989|2|0|Rune of the Sun
206992|2|0|Rune of Skull Bash
206994|1|15|Severed Quilboar Head
206995|1|15|Severed Harpy Head
207062|1|15|Severed Centaur Head
207098|1|15|Note from Ba'so
207106|1|0|Bottom-Left Map Piece
207107|1|0|Bottom-Right Map Piece
207108|1|0|Top-Left Map Piece
207109|1|0|Top-Right Map Piece
207110|1|0|Durotar Treasure Map
207590|1|15|Durotar Pig Meat
207631|1|0|Adder Pheromone
207731|1|15|Ominous Tome
207732|1|15|Makrura Leg
207733|1|15|Kul Tiran Skull
207972|1|5|The Lessons of Ta'zo
207973|1|15|Hound Jawbone
207974|1|15|Ominous Tome
207975|1|15|Severed Bat Head
208005|1|13|Agamand Relic Coffer Key
208007|1|13|Shipwreck Cache Key
208034|1|0|Tirisfal Treasure Map
208035|1|0|Top-Right Map Piece
208036|1|0|Top-Left Map Piece
208037|1|0|Bottom-Right Map Piece
208038|1|0|Bottom-Left Map Piece
208085|1|15|Scarlet Lieutenant Signet Ring
208086|1|15|Forged Scarlet Memorandum
208139|1|15|Ominous Tome
208140|1|15|Wendigo Blood
208158|1|15|Pristine Trogg Heart
208159|1|15|Severed Troll Head
208160|1|15|Severed Wendigo Paw
208180|1|0|Rabbit Musk
208183|2|15|Apothecary Notes
208185|1|5|The Apothecary's Metaphysical Primer
208192|1|15|Dun Morogh Pig Meat
208196|3|4|Moa'kin Band
208205|1|15|Blackrat's Note
208213|1|0|Top-Right Map Piece
208215|1|0|Top-Left Map Piece
208218|1|0|Bottom-Right Map Piece
208219|1|0|Bottom-Left Map Piece
208220|1|0|Dun Morogh Treasure Map
208222|2|2|Old Guard Retaliator
208223|1|15|Acolyte's Knapsack
208224|1|15|Acolyte's Note
208414|2|4|Lunar Idol
208425|7|4|Shiny Archaic Vestige
208484|3|2|Sunlight
208601|1|0|Top-Right Map Piece
208602|1|0|Top-Left Map Piece
208603|1|0|Bottom-Right Map Piece
208604|1|0|Bottom-Left Map Piece
208605|1|0|Teldrassil Treasure Map
208607|1|0|Deer Musk
208608|1|15|Teldrassil Bird Meat
208609|1|0|Glade Flower
208610|1|15|Severed Owl Head
208611|1|15|Severed Tiger Head
208612|1|15|Severed Spider Head
208682|1|15|Abandoned Snapjaw Egg
208687|2|0|Rune of Lacerate
208689|2|4|Ferocious Idol
208701|2|0|Rune of Beast Mastery
208739|1|15|Horde Warbanner
208741|2|0|Rune of Endless Rage
208743|1|15|Soul of Greed
208744|2|0|Rune of Shadowbolts
208749|1|13|Gnarlpine Stash Key
208750|2|0|Rune of Channeling
208753|2|9|Spell Notes: Regeneration
208754|2|15|Spell Notes: TENGI RONEERA
208758|2|0|Earthen Rune
208760|1|0|Glade Crown
208764|2|0|Rune of the Mind
208765|2|15|Helping Hand
208766|2|15|Helping Hand
208767|2|0|Rune of Mending
208768|1|15|Buccaneer's Matchbox
208771|2|0|Rune of Blade Dance
208772|2|0|Rune of Saber Slash
208773|1|0|Fishing Harpoon
208777|2|0|Rune of the Sniper
208778|2|0|Rune of Quick Strike
208799|2|0|Spell Notes: Living Bomb
208800|1|5|Baxtan: On Destructive Magics
208823|1|0|Offering Coin
208828|1|0|Memory of a Broken Vow
208833|1|0|Malevolent Pie
208838|2|15|Dark Iron Lockbox
208843|1|0|Battle Totem
208847|1|15|Skull-Shaped Geode
208848|1|15|Cracked Skull-Shaped Geode
208849|2|4|Libram of Blessings
208851|2|4|Libram of Justice
208853|2|9|Spell Notes: Brain Freeze
208854|2|15|Chewed Spell Notes
208855|1|0|Rainbow Fin Albacore Chum
208860|1|5|Rumi of Gnomeregan: The Collected Works
209027|1|0|Crab Treats
209028|2|15|Spell Notes: BIVOLG NIMB
209029|1|15|Message from Emily
209030|1|13|Equipment Stash Key
209031|1|15|Discreet Envelope
209041|1|15|Magic Pumpkin Seeds
209042|1|15|Fishy Bonemeal
209043|1|15|Fertile Soil Sample
209045|1|15|Soul of the Sea
209047|1|0|Gnarled Harpoon
209056|1|15|Spare Reaper Parts
209057|1|0|Prototype Engine
209058|1|15|Elemental Core
209059|1|15|Goretusk Haunch
209418|3|4|Adamantine Tortoise Armor
209420|2|2|Gillsbane
209421|3|4|Cord of Aquanis
209422|3|4|High Tide Choker
209423|3|4|Flowing Scarf
209424|3|4|Shell Plate Barrier
209432|3|4|Ghamoo-ra's Cinch
209436|3|2|Chipped Bite of Serra'kis
209523|3|4|Shimmering Thresher Cape
209524|3|4|Bindings of Serra'kis
209525|3|2|Honed Darkwater Talwar
209527|3|4|Naga Battle Gauntlets
209534|4|2|Azshari Arbalest
209559|3|2|Twilight Sage's Walking Stick
209560|3|2|Hammer of Righteous Judgement
209561|4|2|Rod of the Ancient Sleepwalker
209562|4|2|Deadly Strike of the Hydra
209563|3|2|Naga Heartrender
209564|3|2|Guardian's Trident
209565|3|4|Band of Deep Places
209566|3|4|Leggings of the Faithful
209567|3|2|Coral Reef Axe
209568|3|4|Algae Gauntlets
209569|3|4|Murloc Hide Kneeboots
209570|3|4|Tome of Cavern Lore
209571|3|2|Deadlight
209572|3|4|Black Boiled Leathers
209573|3|2|Wrathful Spire
209574|3|4|Discarded Tenets of the Silver Hand
209575|3|4|Carved Driftwood Icon
209576|3|4|Mind-Expanding Mushroom
209577|3|2|Fist of the Wild
209578|3|4|Glowing Leather Bands
209579|3|2|Crashing Thunder
209580|3|2|Gusting Wind
209581|3|4|Silver Hand Sabatons
209590|3|4|Cracked Water Globe
209608|1|13|Captain's Skeleton Key
209611|3|4|Insignia of the Alliance
209612|3|4|Insignia of the Alliance
209613|3|4|Insignia of the Alliance
209614|3|4|Insignia of the Alliance
209615|3|4|Insignia of the Alliance
209616|3|4|Insignia of the Alliance
209617|3|4|Insignia of the Alliance
209618|3|4|Insignia of the Alliance
209619|3|4|Insignia of the Horde
209620|3|4|Insignia of the Horde
209621|3|4|Insignia of the Horde
209622|3|4|Insignia of the Horde
209623|3|4|Insignia of the Horde
209624|3|4|Insignia of the Horde
209625|3|4|Insignia of the Horde
209626|3|4|Insignia of the Horde
209667|3|4|Gaze Dreamer Leggings
209668|3|4|Signet of the Twilight Lord
209669|3|4|Twilight Invoker's Shoes
209670|3|4|Skinwalkers
209671|3|4|Twilight Invoker's Robes
209672|3|4|Black Fingerless Gloves
209673|3|4|Glowing Fetish Amulet
209674|3|2|Phoenix Ignition
209675|3|4|Clamweave Tunic
209676|3|4|Shoulderguards of Crushing Depths
209677|3|4|Loop of Swift Currents
209678|3|4|Mantle of the Thresher Slayer
209679|3|4|Azshari Novice's Shoulderpads
209680|3|4|Waterproof Scarf
209681|3|4|Black Murloc Egg
209682|3|4|Sturdy Hood
209683|3|4|Twilight Invoker's Shawl
209684|3|4|Soul Leech Pants
209685|3|4|Ancient Moss Cinch
209686|3|4|Jagged Bone Necklace
209687|3|4|Hydra Hide Cuirass
209688|3|2|Bael Modan Blunderbuss
209689|3|4|Crabshell Waders
209690|3|4|Shadowscale Coif
209691|3|2|Vampiric Boot Knife
209692|3|4|Sentinel Pauldrons
209693|3|12|Perfect Blackfathom Pearl
209694|3|2|Blackfathom Ritual Dagger
209748|1|12|Althalaxx Orb
209778|1|12|Summoner's Salt
209779|1|12|Mote of Mannoroth
209800|1|12|Orb Fragments
209816|3|4|Fetish of Mischief
209817|3|4|Voidwalker Brooch
209818|3|2|Sun-Touched Crescent
209819|1|15|Wyvern Taming Wand
209820|3|4|Black Shroud Choker
209821|3|4|Ring of Shadowsight
209822|3|2|Strength of Purpose
209823|3|4|Signet of Beasts
209824|3|4|Shimmering Shoulderpads
209825|3|4|Droplet Choker
209828|3|4|Sub-Zero Pauldrons
209830|3|2|Ironhide Arbalest
209836|1|12|Althalaxx Orb
209838|1|15|Hypnotic Crystal
209840|1|15|Gnarled Wand of Wild Magic
209841|1|15|Wild Magic Essence
209843|1|5|Nar'thalas Almanac, Vol. 74
209844|1|5|The Dalaran Digest, Vol. 23
209845|1|5|Bewitchments and Glamours
209846|1|5|Secrets of the Dreamers
209847|1|5|Arcanic Systems Manual
209848|1|5|Goaz Scrolls
209849|1|5|Crimes Against Anatomy
209850|1|5|Runes of the Sorcerer-Kings
209851|1|5|Fury of the Land
209852|2|0|Rune of Kill Command
209872|1|15|Dragonslayer's Helm
209873|1|15|Dragonslayer's Shield
209874|1|15|Dragonslayer's Lance
210015|2|0|Rune of Raging Blow
210026|1|12|Symbol of the Third Owl
210043|1|12|Symbol of the Second Owl
210044|1|12|Symbol of the First Owl
210045|1|12|Shadeleaf
210053|1|12|Dire Wolf Paw
210055|1|12|Hillsbrad Human Bones
210056|1|12|Tincture of Waking Death
210080|1|12|Voodoo Offering
210137|2|0|Rune of Wild Growth
210138|1|0|Dark Iron Ordinance
210146|1|0|Shredder Turbocharger
210147|1|0|Shredder Autosalvage Unit
210177|1|5|Ataeric: On Arcane Curiosities
210178|2|9|Schematic: Shredder Autosalvage Unit
210179|2|15|Spell Notes: ILMEGAI SARRBES
210183|1|12|Horn of Xelthos
210186|1|15|Breaching Charge
210187|1|15|Venture Co. Work Order
210188|0|15|Shredded Work Order
210195|2|4|Unbalanced Idol
210209|1|13|Twin Key
210210|0|15|Grizzwerks Defense Industries Founder's Certificate
210212|1|13|Brother's Half-Key
210213|1|13|Sister's Half-Key
210229|2|0|Rune of Mutilation
210250|1|4|Engraved Gold Ring
210251|1|4|Engraved Silver Ring
210252|2|0|Rune of Shiving
210253|2|0|Rot Totem
210322|2|0|Rune of Venom
210323|1|15|Safe Combination
210329|1|15|Hillsbrad Treasure Map
210330|1|15|Hot Tip
210410|1|15|Freshwater Snapper Bait
210499|1|0|Marshroom
210500|2|0|Rune of the Stars
210534|2|4|Idol of the Wild
210568|1|15|Decrepit Phylactery
]==],
[==[
210569|2|0|Rune of Flagellation
210573|2|0|Rune of Consuming Rage
210589|2|0|Echo of the Ancestors
210596|2|0|Rune of Cobra Strikes
210653|2|0|Rune of Main Gauche
210654|2|9|Spell Notes: Rewind Time
210655|2|15|Spell Notes: TERWEM DINI
210665|1|12|Mote of Torrential Rage
210667|1|12|Mote of Infernal Rage
210668|1|12|Mote of Seismic Rage
210696|2|2|Rot Bane
210708|1|0|Elixir of Coalesced Regret
210709|2|9|Recipe: Elixir of Coalesced Regret
210712|1|0|Elixir of Insight
210713|1|12|Tortured Soul
210724|1|12|Hirzek's Staff
210741|3|2|Automatic Crowd Pummeler
210746|2|0|Rune of Earth Shield
210763|1|12|Bough of Altek
210765|1|12|Orb of Des
210771|2|7|Waylaid Supplies: Copper Bars
210772|2|7|Supply Shipment: Copper Bars
210773|3|4|Mantle of the Second War
210779|2|9|Plans: Mantle of the Second War
210781|3|4|Phoenix Bindings
210794|4|4|Shifting Silver Breastplate
210795|4|4|Extraplanar Spidersilk Boots
210811|2|0|Rune of Primordial Fury
210817|2|0|Rune of Survival
210818|2|0|Rune of Lone Wolf
210820|2|0|Rune of Sacrifice
210822|2|0|Harmonious Epiphany
210823|2|0|Rune of Dual Wield Specialization
210824|2|0|Rune of the Pact
210825|2|0|Rune of the Warbringer
210953|1|12|Eye of Bhossca
210955|1|15|Scarlet Initiate's Uniform
210963|1|13|Scryer's Key
210966|1|12|Blood of the Legion
210967|1|15|Confidential Message
210968|1|13|Reliquary Key
210979|2|0|Rune of Shadowstep
210980|2|0|Rune of Metamorphosis
211205|2|0|Rune of Cobra Slayer
211247|2|9|Pattern: Phoenix Bindings
211263|4|4|Judgement Chestguard
211269|1|12|Primitive Drawing
211301|2|0|Rune of Expose Weakness
211315|2|7|Waylaid Supplies: Light Leather
211316|2|7|Waylaid Supplies: Peacebloom
211317|2|7|Waylaid Supplies: Silverleaf
211318|2|7|Waylaid Supplies: Minor Healing Potions
211319|2|7|Waylaid Supplies: Copper Shortswords
211320|2|7|Waylaid Supplies: Runed Copper Pants
211321|2|7|Waylaid Supplies: Lesser Magic Wands
211322|2|7|Waylaid Supplies: Minor Wizard Oil
211323|2|7|Waylaid Supplies: Rough Copper Bombs
211324|2|7|Waylaid Supplies: Rough Boomsticks
211325|2|7|Waylaid Supplies: Handstitched Leather Belts
211326|2|7|Waylaid Supplies: Embossed Leather Vests
211327|2|7|Waylaid Supplies: Brown Linen Pants
211328|2|7|Waylaid Supplies: Brown Linen Robes
211329|2|7|Waylaid Supplies: Herb Baked Eggs
211330|2|7|Waylaid Supplies: Spiced Wolf Meat
211331|2|7|Waylaid Supplies: Brilliant Smallfish
211332|2|7|Waylaid Supplies: Heavy Linen Bandages
211365|2|7|Supply Shipment
211367|2|7|Supply Shipment
211368|2|7|Supply Shipment
211382|1|1|Small Courier Satchel
211384|2|1|Sturdy Courier Bag
211385|2|0|Rune of Serpent Spread
211386|2|9|Spell Notes: Arcane Surge
211387|2|0|Rune of Beckoning Light
211390|2|0|Rune of Teasing
211391|2|0|Rune of Healing Rain
211392|2|0|Rune of Everlasting Affliction
211393|2|0|Rune of Single-Minded Fury
211419|2|15|Handful of Shifting Scales
211420|3|4|Shifting Scale Talisman
211421|1|15|The Box
211422|4|5|Shard of the Void
211423|4|4|Void-Touched Leather Gloves
211427|3|12|Soul Vessel
211443|2|2|Blade of Rage
211444|2|4|Summoner's Cloak
211445|2|2|Barbaric Recurve
211447|1|12|Arms Shipment
211448|1|12|Signed Procurement Contract
211449|3|4|Avenger's Void Pearl
211450|3|4|Invoker's Void Pearl
211451|3|4|Acolyte's Void Pearl
211452|3|12|Perfect Blackfathom Pearl
211454|1|12|Strange Water Globe
211455|3|4|Slick Fingerless Gloves
211456|3|2|Dagger of Willing Sacrifice
211457|3|4|Twilight Defender's Girdle
211458|3|4|Tome of Shadow Warding
211460|3|4|Ancient Arctic Buckler
211461|3|2|Inscribed Gravestone Scepter
211462|3|4|Ever-Sustaining Ring
211463|3|4|Chittering Beetle Clasps
211464|3|4|Worn Prelacy Cape
211465|3|4|Nimbus Boots of Insight
211466|3|4|Tender's Heartwood Girdle
211467|3|4|Band of the Iron Fist
211468|3|4|Frayed Chestnut Mantle
211471|1|13|Cliffspring Key
211472|2|4|Libram of Banishment
211476|2|0|Rune of Fires Wake
211477|2|0|Rune of Incinerate
211482|1|13|Shatterspear Offering
211487|2|0|Demolition Explosives
211488|2|0|Rune of the Avenger
211490|2|0|Prophecy of a Thousand Lights
211491|4|1|Bottomless Murloc Skin Bag
211492|4|1|Kelris's Satchel
211498|3|15|Trainee's Sentinel Nightsaber
211499|3|15|Trainee's Outrider Wolf
211500|3|4|Resilient Cloth Headband
211501|4|4|Chestguard of Might
211502|4|4|Void-Touched Leather Gauntlets
211504|3|4|Twilight Avenger's Chain
211505|3|4|Twilight Avenger's Helm
211506|3|4|Twilight Avenger's Boots
211507|3|4|Twilight Elementalist's Cowl
211508|3|4|Twilight Elementalist's Footpads
211509|3|4|Twilight Elementalist's Robe
211510|3|4|Twilight Slayer's Cowl
211511|3|4|Twilight Slayer's Footpads
211512|3|4|Twilight Slayer's Tunic
211514|2|0|Spell Notes: Mass Regeneration
211527|3|15|Cozy Sleeping Bag
211528|1|0|Dark Insight
211530|2|0|Prophecy of a City Enthralled
211531|2|0|Prophecy of Seven Visitors
211534|1|0|Primal Insight
211691|2|0|Spell Notes: Arcane Blast
211777|1|15|Naga Manuscript
211779|1|5|Comprehension Charm
211780|1|0|Scroll: KWYJIBO
211784|1|0|Scroll: WUBBA WUBBA
211785|1|0|Scroll: CWAL
211786|1|0|Scroll: CHAP BALK WELLES
211787|1|0|Scroll: LOWER PING WHOMEVER
211789|3|4|Artemis Cowl
211799|1|15|Sack of Stolen Goods
211800|1|0|Scroll of Reintegration
211809|1|12|Comprehension Primer
211813|2|12|Silverwing Sentinel Charm
211814|2|12|Warsong Outrider Mark
211815|1|0|Silverwing Battle Hymn
211816|1|0|Warsong Battle Drum
211818|1|12|Strange Water Globe
211819|2|7|Waylaid Supplies: Bronze Bars
211820|2|7|Waylaid Supplies: Silver Bars
211821|2|7|Waylaid Supplies: Medium Leather
211822|2|7|Waylaid Supplies: Bruiseweed
211823|2|7|Waylaid Supplies: Swiftthistle
211824|2|7|Waylaid Supplies: Lesser Mana Potions
211825|2|7|Waylaid Supplies: Rough Bronze Boots
211826|2|7|Waylaid Supplies: Silver Skeleton Keys
211827|2|7|Waylaid Supplies: Runed Silver Rods
211828|2|7|Waylaid Supplies: Minor Mana Oil
211829|2|7|Waylaid Supplies: Small Bronze Bombs
211830|2|7|Waylaid Supplies: Ornate Spyglasses
211831|2|7|Waylaid Supplies: Dark Leather Cloaks
211832|2|7|Waylaid Supplies: Hillman's Shoulders
211833|2|7|Waylaid Supplies: Gray Woolen Shirts
211834|2|7|Waylaid Supplies: Pearl-clasped Cloaks
211835|2|7|Waylaid Supplies: Smoked Sagefish
211836|2|7|Waylaid Supplies: Smoked Bear Meat
211837|2|7|Waylaid Supplies: Goblin Deviled Clams
211838|2|7|Waylaid Supplies: Heavy Wool Bandages
211839|2|7|Supply Shipment
211840|2|7|Supply Shipment
211841|2|7|Supply Shipment
211842|3|4|Rakkamar's Tattered Thinking Cap
211843|3|4|Mask of Scorn
211845|2|7|Blackfathom Sharpening Stone
211846|3|9|Plans: Blackfathom Sharpening Stone
211848|2|7|Blackfathom Mana Oil
211849|3|9|Formula: Blackfathom Mana Oil
211852|3|4|Handwraps of Befouled Water
211853|1|0|Scroll: VOCE WELL
211854|1|0|Scroll: OMIT KESA
211855|1|0|Scroll: STHENIC LUNATE
211856|3|4|Resilient Mail Coif
211857|3|4|Resilient Leather Mask
211933|2|7|Waylaid Supplies: Rough Stone
211934|2|7|Waylaid Supplies: Healing Potions
211935|2|7|Waylaid Supplies: Elixir of Firepower
211940|3|2|Ecks'av's Tribal Guardian
211941|3|2|Windwalker's Yari
211944|3|2|Tojara's Karma
211953|2|0|Scroll of Arcane Recovery I
211954|2|0|Scroll of Arcane Accuracy I
211955|2|0|Scroll of Arcane Protection - Fire I
211956|2|0|Scroll of Arcane Protection - Frost I
211957|2|0|Scroll of Arcane Power I
212160|1|0|Chronoboon Displacer
212225|3|12|Neverending Soul Vessel
212230|3|9|Schematic: Soul Vessel
212548|2|0|Rune of Eclipse
212549|2|0|Rune of the Trapper
212551|2|0|Rune of Warfare
212552|2|0|Psychosophic Epiphany
212559|2|0|Rune of the Poisoned Blade
212560|2|0|Rune of Ancestral Awakening
212561|2|0|Rune of Burning Darkness
212562|2|0|Rune of Healing Rage
212568|3|0|Wolfshead Trophy
212580|3|2|Lorekeeper's Staff
212581|3|2|Outrunner's Bow
212582|3|2|Protector's Sword
212583|3|2|Sentinel's Blade
212584|3|2|Advisor's Gnarled Staff
212585|3|2|Outrider's Bow
212586|3|2|Legionnaire's Sword
212587|3|2|Scout's Blade
212588|2|4|Provisioner's Gloves
212589|2|4|Courier Treads
212590|2|4|Hoist Strap
212748|2|15|Tattered Note
212792|1|12|Eye of the Tempest
212994|3|4|Stormchaser's Bindings
212996|3|4|Lightningcaller's Bindings
212997|3|4|Tidecaller's Bindings
213074|2|0|Rune of Nourishing
213086|2|0|Rune of the Storm
213087|3|4|Sergeant's Cloak
213088|3|4|Sergeant's Cloak
213090|2|0|Rune of Synergy
213093|2|0|Rune of Power
213094|2|0|Rune of Fire Nova
213096|2|0|Rune of Decoys
213098|2|0|Rune of Invocation
213100|2|0|Rune of Forbidden Knowledge
213101|2|0|Rune of Shadowflames
213102|2|0|Rune of Wickedness
213103|2|0|Rune of Blood Surge
213104|2|0|Rune of Ruthless Precision
213105|2|2|Shawarmageddon
213109|2|0|Rune of Focused Rage
213110|2|0|Rune of the Commander
213111|2|0|Rune of Intervention
213112|2|0|Spell Notes: Missile Barrage
213117|2|0|Rune of Berserk
213118|2|0|Rune of the Jungle King
213119|2|0|Rune of Instinct
213120|2|0|Rune of the Dreamer
213122|2|0|Rune of Steady Shot
213123|2|0|Rune of Exposure
213124|2|0|Rune of Close Combat
213125|2|0|Rune of Invigoration
213126|2|0|Rune of the Scrapper
213127|1|15|Partial Mystical Notes
213128|2|0|Rune of Piety
213129|2|0|Rune of Light's Embrace
213130|2|0|Rune of Infusions
213131|2|0|Rune of Sacred Shields
213132|2|0|Rune of the Guardian
213136|2|0|Rune of Subtlety
213137|2|0|Rune of the Assailant
213138|2|0|Rune of the Southpaw
213139|2|0|Rune of the Assassin
213140|2|0|Prophecy of the Quickened Path
213141|2|0|Rune of Hope
213142|2|0|Prophecy of Imprisoned Malice
213143|2|0|Apocryphal Epiphany
213144|2|0|Luminous Epiphany
213165|1|5|Basilisks: Should Petrification be Feared?
213168|2|12|Copper Blood Coin
213169|3|12|Silver Blood Coin
213170|4|12|Gold Blood Coin
213278|3|4|Bonk-Maestro's Handguards
213279|3|4|Reflective Skullcap
213280|3|4|Marksman's Scopevisor
213281|3|4|Electromagnetic Hyperflux Reactivator
213282|4|4|Hypercharged Gear of Innovation
213283|4|4|Hypercharged Gear of Conflagration
213284|4|4|Hypercharged Gear of Devastation
213285|3|4|Lev's Oil-Stained Bindings
213286|4|2|Electrocutioner's Needle
213287|3|4|Electrocutioner Hexnut
213288|3|4|Grubbis Grubby Gauntlets
213289|3|2|Hydrostaff
213290|3|4|Acidic Waders
213291|4|2|Toxic Revenger II
213292|3|2|Gizmotron Gigachopper
213293|3|2|Hi-tech Supergun Mk.VII
213294|3|4|Caverndeep Sabatons
213295|3|2|Ultrasonic Vibroblade
213296|3|2|Supercharged Headchopper
213297|3|2|Oscillating Blasthammer
213298|3|4|Mechbuilder's Overalls
213299|3|4|Petrolspill Pants
213300|3|4|Fighter Ace Gloves
213301|3|4|Synthetic Mantle
213302|3|4|Mantle of the Cunning Negotiator
213303|3|4|Lightning Rod Spaulders
213304|3|4|Troggslayer Pauldrons
213305|3|4|Machined Alloy Shoulderplates
213306|3|4|Ingenuity's Cover
213307|3|4|Drape of Dismantling
213308|3|4|Prototype Parachute Cloak
213309|3|4|Cloak of Invention
213310|3|4|Hyperconductive Shimmershirt
213311|3|4|Hyperconductive Robe
213312|3|4|Insulated Apron
213313|3|4|Insulated Chestguard
213314|3|4|Electromantic Chainmail
213315|3|4|Electromantic Chainshirt
213316|3|4|H.A.Z.A.R.D. Breastplate
213317|3|4|Experimental Aim Stabilizers
213318|3|4|Ornate Dark Iron Bangles
213319|3|4|Machinist's Gloves
213320|3|4|Fingers of Arcane Accuracy
213321|3|4|Volatile Concoction Belt
213322|3|4|Skullduggery Waistband
213323|3|4|Cord of Deep Earth
213324|3|4|Electromagnetic Waistcord
213325|3|4|Darkvision Girdle
213326|3|4|Girdle of Reclamation
213327|3|4|Belt of the Trogg Berserker
213328|3|4|Hyperconductive Pantaloons
213329|3|4|Hyperconductive Skirt
213330|3|4|H.A.Z.A.R.D. Legplates
213331|3|4|Insulated Leggings
213332|3|4|Insulated Legguards
213333|3|4|Electromantic Chausses
213334|3|4|Electromantic Gambeson
213335|3|4|H.A.Z.A.R.D. Boots
213336|3|4|Hyperconductive Walkers
213337|3|4|Hyperconductive Sandals
213338|3|4|Electromantic Grounding Boots
213339|3|4|Electromantic Grounding Sabatons
213340|3|4|Gnomebot Operators Boots
213341|3|4|Insulated Workboots
213342|3|4|Insulated Galoshes
213343|4|4|Justice Badge
213344|4|4|Gnomeregan Peace Officer's Torque
213345|4|4|Piston Pendant
213346|4|4|Pendant of Homecoming
213347|3|4|Miniaturized Combustion Chamber
213348|3|4|Gyromatic Experiment 420b
213349|3|4|Gniodine Pill Bottle
213350|3|4|Wirdal's Hardened Core
213351|3|4|Irradiated Tower Shield
213352|3|2|Gear-Mender's Grace
213353|4|2|Defibrillating Staff
213354|3|2|Staff of the Evil Genius
213355|3|2|Falco's Sting
213356|4|2|Thermaplugg's Custom Blaster
213369|3|7|Faintly Glowing Leather
213370|2|7|Irradiated Leather Scraps
213371|2|7|Crate of Tainted Gniodine Solution
213372|3|7|Insulating Gniodine
213373|2|7|Reflective Scrapmetal
213376|3|7|Low-Background Truesilver Plates
213378|2|7|Unstable Microfilament
213379|3|7|Hyperconductive Arcano-Filament
213381|2|7|Pile of Tarnished Gears
213383|3|7|Polished Truesilver Gears
213390|4|4|Whirling Truesilver Gearwall
213391|4|4|UNUSED Electrified Mithril Gauntlets
213407|1|0|Catnip
213408|3|2|Gyromatic Macro-Adjustor
213409|4|2|Mekkatorque's Arcano-Shredder
213410|4|2|Glimmering Gizmoblade
213411|3|2|Izzleflick's Inextinguishable Igniter
213412|4|4|Dielectric Safety Shield
213413|3|4|Generously Padded Shoulderpads
213414|3|4|Mech-Mender's Sash
213415|3|4|Tinker's Wrist Wraps
213416|4|2|Thermaplugg's Rocket Cleaver
213417|3|4|Truesilver Filament Coif
213418|3|4|Welded Truesilver Ringlets
213419|3|4|9-60 Repair Manual
213421|1|15|Singed Note
213426|1|0|Ogre Lightning Rod
213427|2|15|Grime-Encrusted Salvage
213442|3|2|Cogmaster's Claw
213452|2|15|Dormant Holy Rune
213513|2|4|Libram of Deliverance
213526|1|12|Hybrid Haunch
213527|1|12|Smuggler's Spice Blend
213528|1|15|Balmy Brew
213529|1|15|Viscous Venom
213542|3|4|The Necro-Gnomicon
213543|1|0|Scroll: UPDOG
213544|1|0|Scroll: TOPAZ YORAK
213545|1|0|Scroll: PEATCHY ATTAX
213546|1|0|Scroll: SHOOBEEDOOP
213547|1|0|Scroll: THAW WORDS
213548|1|0|Scroll of Liminal Passage
213549|1|0|Scroll of Arcane Angling
213550|1|0|Scroll of Polymorph: Odd Melon
213551|1|0|Scroll of Controlled Displacement
213552|1|5|Tear of Theradras
213553|1|5|Tear of Theradras
213554|1|12|Vial of Crystal Water
213558|1|12|Elemental Salve
213559|3|2|Mechanostrider Gear Shifter
213560|3|2|Mechanostrider Muffler
213563|1|15|Field Guide
213564|1|0|Scroll of Minor Evocation
213565|1|15|Entomology Starter Kit
213583|2|12|Brimstone Carving
213594|2|4|Idol of the Heckler
213599|2|0|Unsettling Vision
213632|2|15|Partial Spell Notes
213633|2|15|Partial Spell Notes
213634|2|15|Partial Spell Notes
213641|3|15|Box of Gnomeregan Salvage
213701|1|15|Strong Harpy Feather
213709|1|15|Cloud Serpent Fang
213735|3|12|Pristine G-7 C.O.R.E. Processor
213736|2|12|Corroded G-7 C.O.R.E. Processor
213737|1|12|Offering to the Wind Spirit
214435|1|13|Cougar Cage Key
215111|4|4|Gneuro-Linked Arcano-Filament Monocle
215112|3|4|UNUSED - Cloak of Arcane Insulation
215113|2|4|UNUSED - Razor-Lined Shoulderpads
215114|4|4|Glowing Hyperconductive Scale Coif
215115|4|4|Hyperconductive Goldwrap
215116|2|4|UNUSED - Hyperconductive Speed Belt
215126|1|0|UNUSED Flask of Merciless Pursuit
215129|4|9|Formula: Enchant Weapon - Dismantle
215138|4|9|Formula: Enchant Chest - Retricutioner
215141|4|9|Enchanted Sigil: Innovation
215149|4|9|Pattern: Gneuro-Linked Arcano-Filament Monocle
215152|4|9|Pattern: Glowing Gneuro-Linked Cowl
215153|4|9|Schematic: Whirling Truesilver Gearwall
215155|4|9|Plans: Tempered Interference-Negating Helmet
215156|4|9|Schematic: Hyperconductive Goldwrap
215162|1|0|Mildly Irradiated Rejuvenation Potion
215163|4|9|Recipe: Mildly-Irradiated Rejuvenation Potion
215166|4|4|Glowing Gneuro-Linked Cowl
215235|3|2|2hander Animation as 1hander test copy
215257|1|0|Scroll of Comprehension
215365|2|4|Invoker's Mantle
215366|2|4|Invoker's Cord
215367|3|9|Pattern: Faintly Glowing Leather
215368|3|9|Pattern: Hyperconductive Arcano-Filament
215369|2|9|Pattern: Invoker's Cord
215370|2|9|Pattern: Invoker's Mantle
215371|2|4|Jani's Charm
215373|1|2|Silver Hand Training Hammer
215374|1|2|Ancestral Sword
215375|1|2|Tactician's Staff
215376|1|2|Crusader's Mace
215377|3|4|Irradiated Robe
215378|3|4|Irradiated Boots
215379|3|4|Irradiated Trousers
215380|4|4|Power-Assisted Lifting Belt
215381|4|4|Gneuro-Conductive Channeler's Hood
215382|4|4|Rad-Resistant Scale Hood
215383|4|9|Plans: Reflective Truesilver Braincage
215384|3|9|Plans: Low-Background Truesilver Plates
215385|2|7|Waylaid Supplies: Gold Bars
215386|2|7|Waylaid Supplies: Mithril Bars
215387|2|7|Waylaid Supplies: Heavy Hide
215388|2|7|Waylaid Supplies: Thick Leather
215389|2|7|Waylaid Supplies: Fadeleaf
215390|2|7|Waylaid Supplies: Khadgar's Whisker
215391|2|7|Waylaid Supplies: Wintersbite
215392|2|7|Waylaid Supplies: Purple Lotus
215393|2|7|Waylaid Supplies: Greater Healing Potions
215394|2|7|Waylaid Supplies: Lesser Stoneshield Potions
215395|2|7|Waylaid Supplies: Elixirs of Agility
215396|2|7|Waylaid Supplies: Elixirs of Greater Defense
215397|2|7|Waylaid Supplies: Massive Iron Axes
215398|2|7|Waylaid Supplies: Green Iron Bracers
215399|2|7|Waylaid Supplies: Heavy Mithril Gauntlets
215400|2|7|Waylaid Supplies: Solid Grinding Stones
215401|2|7|Waylaid Supplies: Compact Harvest Reaper Kits
215402|2|7|Waylaid Supplies: Big Iron Bombs
215403|2|7|Waylaid Supplies: Deadly Scopes
215404|2|7|Waylaid Supplies: Mithril Blunderbuss
215405|2|7|Waylaid Supplies: Gnomish Rocket Boots
215406|2|7|Waylaid Supplies: Goblin Mortars
215407|2|7|Waylaid Supplies: Barbaric Shoulders
215408|2|7|Waylaid Supplies: Guardian Gloves
215409|2|7|Waylaid Supplies: Turtle Scale Bracers
215410|2|7|Waylaid Supplies: Dusky Belts
215411|2|7|Waylaid Supplies: Frost Leather Cloaks
215412|2|7|Waylaid Supplies: Shadowskin Gloves
215413|2|7|Waylaid Supplies: Formal White Shirts
215414|2|7|Waylaid Supplies: Crimson Silk Pantaloons
215415|2|7|Waylaid Supplies: Rich Purple Silk Shirts
215416|2|7|Waylaid Supplies: White Bandit Masks
215417|2|7|Waylaid Supplies: Soothing Turtle Bisque
215418|2|7|Waylaid Supplies: Spider Sausages
215419|2|7|Waylaid Supplies: Heavy Silk Bandages
215420|2|7|Waylaid Supplies: Rockscale Cod
215421|2|7|Waylaid Supplies: Fire Oil
215422|4|9|Pattern: Glowing Hyperconductive Scale Coif
215423|4|9|Pattern: Gneuro-Conductive Channeler's Hood
215424|4|9|Pattern: Rad-Resistant Scale Hood
215425|1|15|Swamp Echo
215426|1|15|Graveyard Echo
215427|1|15|Arathi Echo
215428|1|15|Theramore Echo
215429|3|9|Schematic: Polished Truesilver Gears
215430|1|7|Gnomeregan Fallout
215431|4|9|Schematic: High-Yield Radiation Bomb
215432|4|9|Schematic: Ez-Thro Radiation Bomb
215433|3|9|Recipe: Insulating Gniodine
215434|4|9|UNUSED
215435|3|4|Libram of Benediction
215436|3|4|Totem of Invigorating Flame
215437|3|13|Trogg Transfigurator 3000
215441|2|12|Broken Hammer
215443|1|12|Shattered Orb Fragment
215449|2|13|World Shrinker
215450|1|4|Tabard Project (Aidan)
215456|1|15|Singed Message
215458|1|15|Enclosed Message
215459|1|15|Enclosed Message
215460|1|15|Enclosed Message
215461|3|4|Domesticated Attack Chicken
215468|1|12|Orders from the Grand Crusader
215683|1|5|Geomancy: The Stone-Cold Truth
215815|1|5|Defensive Magics 101
215816|1|5|A Web of Lies: Debunking Myths and Legends
215817|1|5|Demons and You
215820|1|5|Mummies: A Guide to the Unsavory Undead
215822|1|5|RwlRwlRwlRwl!
215824|1|5|A Luddite's Guide to Caring for Your Demonic Pet
216484|3|4|Shockforged Battleboots
216485|3|4|Shockforged Breastplate
216486|3|4|Shockforged Legplates
216490|3|4|Idol of Wrath
216491|1|0|Shipment of Stranglethorn Lumber
216492|3|15|Whistle of the Mottled Raptor
216494|3|13|Aragriar's Whimsical World Warper
216495|4|2|Sanguine Crusher
216496|4|2|Sanguine Skullcrusher
216497|4|2|Exsanguinar
216498|4|4|Enchanted Sanguine Grimoire
216499|4|2|Bloodbark Crusher
216500|4|4|Bloodbonded Grove Talisman
216501|4|4|Bloodstorm Barrier
216502|4|2|Bloodstorm War Totem
216503|4|4|Bloodstorm Jewel
216504|4|2|Eclipsed Bloodlight Saber
216505|4|4|Bloodlight Crusader's Radiance
216506|4|2|Bloodlight Avenger's Edge
216507|4|4|Umbral Bloodseal
216508|4|4|Infernal Bloodcoil Band
216509|4|4|Infernal Pact Essence
216510|4|4|Blood Resonance Circle
216511|4|4|Emberblood Seal
216512|4|4|Loop of Chilled Veins
216513|4|4|Tigerblood Talisman
216514|4|11|Sanguine Quiver
216515|4|11|Sanguine Ammo Pouch
216516|4|2|Bloodlash Bow
216517|4|4|Sanguine Sanctuary
216518|4|4|Blood Covenant Seal
216519|4|4|Sanguine Shadow Band
216520|4|2|Bloodharvest Blade
216521|4|2|Swift Sanguine Strikers
216522|4|2|Blood Spattered Stiletto
216523|1|13|Rusted Cage Key
216570|3|15|Reins of the Golden Sabercat
216606|2|0|Rune of Two-Handed Mastery
216607|4|4|Bloodlight Offering
216608|4|4|Radiant Ray Reflectors
216610|1|12|Orders from the Grand Crusader
216615|4|4|Ancestral Bloodstorm Beacon
216616|1|12|Compound Cage Key
216617|1|12|Kurzen Fighter's Uniform
216618|1|15|Captain Aransas' Reward
216619|2|0|Student Fodder
216620|3|4|Bloodrot Cloak
216621|3|4|Blooddrenched Drape
216622|3|4|Coagulated Cloak
216623|3|4|Cape of Hemostasis
216633|1|12|Hydraulic Truesilver Strut
216634|1|12|GG12-082 Cartridge Fuse
216635|2|12|Spent Voidcore
216636|1|12|Charged Voidcore
216637|1|15|A Pile of Random Parts
216645|2|5|Mote of Darkness
216646|2|15|Ziri's Mystery Crate
216661|1|12|Grime-Encrusted Ring
216662|2|4|Brilliant Gold Ring
216673|3|4|Talvash's Brilliant Gold Ring
216674|3|4|Nogg's Brilliant Gold Ring
216675|3|4|Pristine Civinad Robes
216676|3|4|Nimble Triprunner Dungarees
216678|3|4|Triple Reinforced Leggings
216679|3|2|Shoni's Dismantling Tool
216680|3|4|Shilly Mittens
216696|2|4|Hidden Pants
216698|3|4|Sergeant Major's Dragonhide Armsplints
216699|3|4|Sergeant Major's Chain Armguards
216700|3|4|Sergeant Major's Leather Armsplints
216701|3|4|Sergeant Major's Plate Wristguards
216702|3|4|Sergeant Major's Silk Cuffs
216703|3|4|First Sergeant's Mail Wristguards
216704|3|4|First Sergeant's Dragonhide Armguards
216705|3|4|First Sergeant's Plate Bracers
216706|3|4|First Sergeant's Leather Armguards
216707|3|4|First Sergeant's Silk Cuffs
216738|2|0|Manual of Redirect
216740|2|0|Tome of Expanded Intellect
216744|2|0|Scroll of Increased Fortitude
216745|2|0|Scroll of Shadowfiend
216746|2|0|Handbook of Commanding Shout
216747|2|0|Grimoire of Soul Harvesting
216748|2|0|Grimoire of Portal of Summoning
216764|2|0|Leaflet of Deeper Wilds
216767|2|0|Leaflet of Revive
216768|2|0|Testament of Enhanced Blessings
216769|2|0|Revelation of Totemic Projection
216770|2|0|Treatise on Aspect of the Viper
216771|2|0|Leaflet of Enhanced Restoration
216879|1|0|Mysterious Troll Scroll
216880|1|0|Deciphered Troll Scroll
216884|4|2|Bloodthirst Blade
216914|0|12|Tarnished Commendation
216918|4|4|Felheart Boots
216919|4|4|Felheart Sash
216920|4|4|Felheart Bindings
216921|4|4|Felheart Grips
216922|4|4|Felheart Crown
216923|4|4|Felheart Leggings
216924|4|4|Felheart Embrace
216925|4|4|Felheart Mantle
216938|3|4|Greater Insignia of the Alliance
216939|3|4|Greater Insignia of the Horde
216941|2|4|Ariden's Sigil
216945|1|12|Curious Dalaran Relic
216946|1|12|Glittering Dalaran Relic
216947|1|12|Whirring Dalaran Relic
216948|1|12|Odd Dalaran Relic
216949|1|12|Heavy Dalaran Relic
216950|1|12|Creepy Dalaran Relic
216951|1|12|Slippery Dalaran Relic
216956|1|12|Torn Letter
216971|1|15|Satchel of Copper Blood Coins
216972|1|15|Satchel of Silver Blood Coins
217005|3|4|Repairman's Cape
217006|3|2|Mechanic's Pipehammer
217007|3|15|Power Depleted Boots
217008|3|15|Power Depleted Chest
217009|3|15|Power Depleted Legs
217014|2|0|Supply Bag
217017|1|15|Fishing Tournament!
217161|1|15|Torn Mystical Scroll
217244|1|9|Pattern: Crimson Silk Robe
217245|2|4|Crimson Silk Robe
217246|2|4|Black Mageweave Vest
217247|2|4|Black Mageweave Leggings
217248|2|4|Earthen Silk Belt
217249|2|9|Pattern: Earthen Silk Belt
217250|2|4|Crimson Silk Shoulders
217251|2|9|Pattern: Crimson Silk Shoulders
217252|2|4|Long Silken Cloak
217253|2|4|Boots of the Enchanter
217254|2|9|Pattern: Boots of the Enchanter
217255|2|4|Crimson Silk Belt
217256|2|4|Earthen Vest
217257|2|4|Enchanter's Cowl
217258|1|9|Pattern: Enchanter's Cowl
217259|2|4|Big Voodoo Mask
217260|2|9|Pattern: Big Voodoo Mask
217261|2|4|Big Voodoo Robe
217262|2|9|Pattern: Big Voodoo Robe
217263|2|4|Guardian Leather Bracers
217264|2|9|Pattern: Guardian Leather Bracers
217265|2|4|Guardian Belt
217266|3|9|Pattern: Guardian Belt
217267|2|4|Guardian Pants
217268|2|4|Turtle Scale Breastplate
217270|2|4|Turtle Scale Gloves
217271|1|9|Pattern: Turtle Scale Gloves
217273|2|4|Golden Scale Gauntlets
217274|2|9|Plans: Golden Scale Gauntlets
217275|2|4|Golden Scale Boots
217276|3|9|Plans: Golden Scale Boots
217277|2|4|Golden Scale Cuirass
217278|2|9|Plans: Golden Scale Cuirass
217279|2|4|Golden Scale Coif
217280|1|9|Plans: Golden Scale Coif
217281|2|2|Moonsteel Broadsword
217282|1|9|Plans: Moonsteel Broadsword
217283|2|4|Golden Scale Shoulders
217284|3|9|Plans: Golden Scale Shoulders
217285|2|4|Golden Scale Leggings
217286|2|9|Plans: Golden Scale Leggings
217287|2|2|Greater Mystic Wand
217288|3|4|Robes of the Lich
217289|3|4|Deathchill Armor
217290|3|4|Glowing Eye of Mordresh
217291|3|4|Mordresh's Lifeless Skull
217292|3|4|Deathmage Sash
217293|3|4|Silky Spider Cape
217294|3|4|Embalmed Shroud
217295|3|2|Necrotic Wand
217296|3|4|Ghostshard Talisman
217297|2|4|Robe of Doan
217298|2|4|Mantle of Doan
217299|3|2|Illusionary Rod
217300|3|4|Whitemane's Chapeau
217301|3|4|Triune Amulet
217302|3|2|Mograine's Might
217303|3|4|Stoneweaver Leggings
217304|3|4|Revelosh's Gloves
217305|3|4|Revelosh's Armguards
217306|3|4|Revelosh's Boots
217307|3|4|Revelosh's Spaulders
217308|2|0|Enchanted Sigil: Innovation
217314|2|2|Moonsight Rifle
217315|2|2|Precision Bow
217337|2|7|Supply Shipment
217338|2|7|Supply Shipment
217339|2|7|Supply Shipment
217345|1|0|Sebacious Poison
217346|1|0|Numbing Poison
217347|1|0|Atrophic Poison
217350|4|12|Thermaplugg's Engineering Notes
217351|4|12|Thermaplugg's Engineering Notes
217398|1|0|Lesser Arcane Elixir
217399|2|9|Recipe: Lesser Arcane Elixir
217495|1|0|Scroll of Cryoblast
217496|3|0|Scroll of the Blade
217497|3|2|Narpas Sword
217609|1|12|Talisman of Kazdor
217693|1|0|Invisibility Potion
217704|3|2|Ironshod Bludgeon
217717|1|15|Hollow Emblem
217718|1|15|Emblem of Blood Magic
217719|1|15|Blood Magic Essence
217720|1|15|Offering of Flesh
217721|1|15|Offering of Bone
217727|1|4|Ward of the Dead
217736|2|0|Rune of the Coterie
217737|1|12|Modified Talisman
219021|3|1|Hefty Courier Pack
219022|2|4|Hauler's Ring
219023|2|4|Clerk's Ring
219024|2|4|Messenger's Ring
219135|3|4|Curiosity Pendant
219136|3|4|Tenacity Pendant
219137|3|4|Initiative Pendant
219147|2|0|Rune of Grace
219223|3|2|Blademaster's Fury
219326|3|4|Seed of Renewal
219343|3|4|Filcher's Cowl
219345|3|4|Infernal Lasso
219399|1|15|Nightmare Moss
219401|1|15|Cold Iron Ore
219402|1|15|Dream-Touched Dragonscale
219404|1|12|Shadowscythe
219405|1|12|Ogre Magi Text
219406|1|12|Unhatched Green Dragon Egg
219414|1|15|Shattered Eggshells
219444|1|15|Dreamroot
219445|2|15|Fool's Gold Dust
219446|1|15|Dream-Infused Dragonscale
219447|1|12|Dream-Touched Dragon Egg
219448|1|12|Dreamengine
219449|1|12|Azsharan Prophecy
219454|1|15|Star Lotus
219486|2|15|Starsilver Ore
219487|1|15|Starshell
219488|1|12|Star-Touched Dragonegg
219490|1|12|Elunar Relic
219491|1|12|Dreampearl
219514|1|15|Moonroot
219515|2|15|Greater Moonstone
219517|1|15|Moondragon Scale
219518|1|12|Harpy Screed
219519|1|12|Mad Keeper's Notes
219520|1|12|Moonglow Dragonegg
219526|1|15|Mission Brief: Duskwood
219759|1|12|Charla's Field Report
219770|1|12|Gemeron's Field Report
219771|1|12|Thandros' Field Report
219772|1|12|Fallia's Field Report
219773|1|15|Mission Brief: Ashenvale
219774|1|15|Mission Brief: Hinterlands
219775|1|15|Mission Brief: Feralas
219776|1|12|Intelligence Report: Vul'gol Ogre Mound
219778|1|12|Intelligence Report: Rotting Orchard
219803|1|12|Intelligence Report: Yorgen Farmstead
219918|1|12|Bloody Missive
219924|1|12|Intelligence Report: Forest Song
219925|1|12|Intelligence Report: Satyrnaar
219926|1|12|Intelligence Report: Warsong Lumber Camp
219927|2|12|Emerald Chip
219928|1|12|Intelligence Report: Agol'watha
219929|1|12|Bloody Missive
219930|1|12|Bloody Missive
219935|1|12|Kajind's Blade
219937|1|12|Intelligence Report: Shaol'watha
219938|1|12|Intelligence Report: Skulk Rock
219957|1|12|Intelligence Report: Oneiros
219958|1|12|Intelligence Report: Twin Colossals
219959|1|12|Intelligence Report: Ruins of Ravenwind
219962|2|12|Nightmare Incursions: Duskwood Mission I
219963|2|12|Deputization Authorization: Duskwood Mission I
219965|2|12|Deputization Authorization: Duskwood Mission II
219966|2|12|Nightmare Incursions: Duskwood Mission II
219967|2|12|Nightmare Incursions: Duskwood Mission III
219968|2|12|Nightmare Incursions: Duskwood Mission IV
219969|2|12|Nightmare Incursions: Duskwood Mission V
219970|2|12|Nightmare Incursions: Duskwood Mission VI
219971|2|12|Nightmare Incursions: Duskwood Mission VII
219972|2|12|Nightmare Incursions: Duskwood Mission VIII
219973|2|12|Nightmare Incursions: Duskwood Mission IX
219974|2|12|Nightmare Incursions: Duskwood Mission X
219975|2|12|Nightmare Incursions: Duskwood Mission XI
219976|2|12|Nightmare Incursions: Duskwood Mission XII
219977|2|12|Nightmare Incursions: Duskwood Mission XIII
219978|2|12|Nightmare Incursions: Duskwood Mission XIV
219979|2|12|Nightmare Incursions: Duskwood Mission XV
219980|2|12|Nightmare Incursions: Duskwood Mission XVI
219981|2|12|Nightmare Incursions: Duskwood Mission XVII
219982|2|12|Nightmare Incursions: Duskwood Mission XVIII
219983|2|12|Deputization Authorization: Duskwood Mission III
219984|2|12|Deputization Authorization: Duskwood Mission IV
219985|2|12|Deputization Authorization: Duskwood Mission V
219986|2|12|Deputization Authorization: Duskwood Mission VI
219987|2|12|Deputization Authorization: Duskwood Mission VII
219988|2|12|Deputization Authorization: Duskwood Mission VIII
219989|2|12|Deputization Authorization: Duskwood Mission IX
219990|2|12|Deputization Authorization: Duskwood Mission X
219991|2|12|Deputization Authorization: Duskwood Mission XI
219992|2|12|Deputization Authorization: Duskwood Mission XII
219993|2|12|Deputization Authorization: Duskwood Mission XIII
219994|2|12|Deputization Authorization: Duskwood Mission XIV
219995|2|12|Deputization Authorization: Duskwood Mission XV
219996|2|12|Deputization Authorization: Duskwood Mission XVI
219997|2|12|Deputization Authorization: Duskwood Mission XVII
219998|2|12|Deputization Authorization: Duskwood Mission XVIII
219999|2|12|Nightmare Incursions: Ashenvale Mission I
220000|2|12|Nightmare Incursions: Ashenvale Mission II
220001|2|12|Nightmare Incursions: Ashenvale Mission III
220002|2|12|Nightmare Incursions: Ashenvale Mission IV
220003|2|12|Nightmare Incursions: Ashenvale Mission V
220004|2|12|Nightmare Incursions: Ashenvale Mission VI
220005|2|12|Nightmare Incursions: Ashenvale Mission VII
220006|2|12|Nightmare Incursions: Ashenvale Mission VIII
220007|2|12|Nightmare Incursions: Ashenvale Mission IX
220008|2|12|Nightmare Incursions: Ashenvale Mission X
220009|2|12|Nightmare Incursions: Ashenvale Mission XI
220010|2|12|Nightmare Incursions: Ashenvale Mission XII
220011|2|12|Nightmare Incursions: Ashenvale Mission XIII
220012|2|12|Nightmare Incursions: Ashenvale Mission XIV
220013|2|12|Nightmare Incursions: Ashenvale Mission XV
220014|2|12|Nightmare Incursions: Ashenvale Mission XVI
220015|2|12|Nightmare Incursions: Ashenvale Mission XVII
220016|2|12|Nightmare Incursions: Ashenvale Mission XVIII
220017|2|12|Nightmare Incursions: Hinterlands Mission I
220018|2|12|Nightmare Incursions: Hinterlands Mission II
220019|2|12|Nightmare Incursions: Hinterlands Mission III
220020|2|12|Nightmare Incursions: Hinterlands Mission IV
220021|2|12|Nightmare Incursions: Hinterlands Mission V
220022|2|12|Nightmare Incursions: Hinterlands Mission VI
220023|2|12|Nightmare Incursions: Hinterlands Mission VII
220024|2|12|Nightmare Incursions: Hinterlands Mission VIII
220025|2|12|Nightmare Incursions: Hinterlands Mission IX
220026|2|12|Nightmare Incursions: Hinterlands Mission X
220027|2|12|Nightmare Incursions: Hinterlands Mission XI
220028|2|12|Nightmare Incursions: Hinterlands Mission XII
220029|2|12|Nightmare Incursions: Hinterlands Mission XIII
220030|2|12|Nightmare Incursions: Hinterlands Mission XIV
220031|2|12|Nightmare Incursions: Hinterlands Mission XV
220032|2|12|Nightmare Incursions: Hinterlands Mission XVI
220033|2|12|Nightmare Incursions: Hinterlands Mission XVII
220034|2|12|Nightmare Incursions: Hinterlands Mission XVIII
220035|2|12|Nightmare Incursions: Feralas Mission I
220036|2|12|Nightmare Incursions: Feralas Mission II
220037|2|12|Nightmare Incursions: Feralas Mission III
220038|2|12|Nightmare Incursions: Feralas Mission IV
220039|2|12|Nightmare Incursions: Feralas Mission V
220040|2|12|Nightmare Incursions: Feralas Mission VI
220041|2|12|Nightmare Incursions: Feralas Mission VII
220042|2|12|Nightmare Incursions: Feralas Mission VIII
220043|2|12|Nightmare Incursions: Feralas Mission IX
220044|2|12|Nightmare Incursions: Feralas Mission X
220045|2|12|Nightmare Incursions: Feralas Mission XI
220046|2|12|Nightmare Incursions: Feralas Mission XII
220047|2|12|Nightmare Incursions: Feralas Mission XIII
220048|2|12|Nightmare Incursions: Feralas Mission XIV
220049|2|12|Nightmare Incursions: Feralas Mission XV
220050|2|12|Nightmare Incursions: Feralas Mission XVI
220051|2|12|Nightmare Incursions: Feralas Mission XVII
220052|2|12|Nightmare Incursions: Feralas Mission XVIII
220053|2|12|Deputization Authorization: Ashenvale Mission I
220054|2|12|Deputization Authorization: Ashenvale Mission II
220055|2|12|Deputization Authorization: Ashenvale Mission III
220056|2|12|Deputization Authorization: Ashenvale Mission IV
220057|2|12|Deputization Authorization: Ashenvale Mission V
220058|2|12|Deputization Authorization: Ashenvale Mission VI
220059|2|12|Deputization Authorization: Ashenvale Mission VII
220060|2|12|Deputization Authorization: Ashenvale Mission VIII
220061|2|12|Deputization Authorization: Ashenvale Mission IX
220062|2|12|Deputization Authorization: Ashenvale Mission X
220063|2|12|Deputization Authorization: Ashenvale Mission XI
220064|2|12|Deputization Authorization: Ashenvale Mission XII
220065|2|12|Deputization Authorization: Ashenvale Mission XIII
220066|2|12|Deputization Authorization: Ashenvale Mission XIV
220067|2|12|Deputization Authorization: Ashenvale Mission XV
220068|2|12|Deputization Authorization: Ashenvale Mission XVI
220069|2|12|Deputization Authorization: Ashenvale Mission XVII
220070|2|12|Deputization Authorization: Ashenvale Mission XVIII
220071|2|12|Deputization Authorization: Hinterlands Mission I
220072|2|12|Deputization Authorization: Hinterlands Mission II
220073|2|12|Deputization Authorization: Hinterlands Mission III
220074|2|12|Deputization Authorization: Hinterlands Mission IV
220075|2|12|Deputization Authorization: Hinterlands Mission V
220076|2|12|Deputization Authorization: Hinterlands Mission VI
220077|2|12|Deputization Authorization: Hinterlands Mission VII
220078|2|12|Deputization Authorization: Hinterlands Mission VIII
220079|2|12|Deputization Authorization: Hinterlands Mission IX
220080|2|12|Deputization Authorization: Hinterlands Mission X
220081|2|12|Deputization Authorization: Hinterlands Mission XI
220082|2|12|Deputization Authorization: Hinterlands Mission XII
220083|2|12|Deputization Authorization: Hinterlands Mission XIII
220084|2|12|Deputization Authorization: Hinterlands Mission XIV
220085|2|12|Deputization Authorization: Hinterlands Mission XV
220086|2|12|Deputization Authorization: Hinterlands Mission XVI
220087|2|12|Deputization Authorization: Hinterlands Mission XVII
220088|2|12|Deputization Authorization: Hinterlands Mission XVIII
220089|2|12|Deputization Authorization: Feralas Mission I
220090|2|12|Deputization Authorization: Feralas Mission II
220091|2|12|Deputization Authorization: Feralas Mission III
220092|2|12|Deputization Authorization: Feralas Mission IV
220093|2|12|Deputization Authorization: Feralas Mission V
220094|2|12|Deputization Authorization: Feralas Mission VI
220095|2|12|Deputization Authorization: Feralas Mission VII
220096|2|12|Deputization Authorization: Feralas Mission VIII
220097|2|12|Deputization Authorization: Feralas Mission IX
220098|2|12|Deputization Authorization: Feralas Mission X
220099|2|12|Deputization Authorization: Feralas Mission XI
220100|2|12|Deputization Authorization: Feralas Mission XII
220101|2|12|Deputization Authorization: Feralas Mission XIII
220102|2|12|Deputization Authorization: Feralas Mission XIV
220103|2|12|Deputization Authorization: Feralas Mission XV
220104|2|12|Deputization Authorization: Feralas Mission XVI
220105|2|12|Deputization Authorization: Feralas Mission XVII
220106|2|12|Deputization Authorization: Feralas Mission XVIII
220164|2|0|Rune of the Gladiator
220165|2|0|Rune of Wrath
220166|1|12|Fiery Infernal Core
220167|1|12|Shimmering Grave Dust
220168|1|12|Triple-Brewed Molten Lager
220169|1|12|Symbol of Faith
220173|4|2|Parasomnia
220213|1|12|Fel Lifeblood
220214|1|12|Infernal Chain Link
220216|1|12|Infernal Lasso
220217|2|0|Rune of the Ravenous
220345|1|5|Sanguine Sorcery
220346|1|5|Legends of the Tidesages
220347|1|5|The Liminal and the Arcane
220348|1|5|Everyday Etiquette
220349|1|5|Stonewrought Design
220350|1|5|Venomous Journeys
220351|1|12|Murky Air Sapta
220352|1|5|A Mind of Metal
220353|1|5|Conjurer's Codex
220360|2|0|Rune of Efflorescence
220375|1|12|Fragment of Air
220446|2|0|Otherworldly Treasure
220510|1|12|Elemental Essence
220511|3|4|Greathelm of the Nightmare
220512|3|4|Immaculate Goldsteel Helmet
220514|3|4|Visor of Verdant Feathers
220515|3|4|Enchanted Emerald Helmet
220516|3|4|Gasher's Forgotten Visor
220518|3|4|Ba'ham's Dusty Hat
220519|3|4|Voodoo Feathered Headdress
220521|3|4|Hakkari Ritualist's Headdress
220522|3|4|Soulcatcher Crown
220523|4|4|Visage of the Exiled
220525|1|12|Glowing Fragment of Air
220526|2|12|Sludge-Covered G-7 C.O.R.E. Processor
220527|3|4|Atal'ai Berserker's Mantle
220528|3|4|Atal'ai Huntsman's Shoulders
220529|3|4|Spaulders of Fanaticism
220530|4|4|Will of the Atal'ai Warrior
220531|1|12|Undulating Purple Flower
220532|3|4|Reinforced Atal'ai Spaulders
220533|3|4|Reforged Atal'ai Breastplate
220534|4|4|Eternal Embrace of the Wind Serpent
220535|4|4|Garments of the Atal'ai Prophet
220536|3|4|Atal'ai Medicine Man's Wrists
220537|3|4|Dreamer's Darkwater Bracers
220538|4|4|Cursed Slimescale Bracers
220539|3|4|Warbands of Sacrifice
220540|3|4|Corruption Laden Handguards
220541|3|4|Disease-Ridden Plate Fists
220542|3|4|Polluted Murkwater Gauntlets
220543|3|4|Emerald Scalemail Gloves
220544|3|4|Bloodflare Talons
220545|3|4|Foul Smelling Fighter's Gloves
220546|3|4|Hands of the Tormented
220547|3|4|Gloves of the Fallen Atal'ai Prophet
220548|3|4|Atal'ai Hexxer's Gloves
220549|3|4|Dawnspire Strap
220550|3|4|Temple Looter's Waistband
220551|3|4|Devotee's Sash of the Emerald Dream
220552|3|4|Waistguard of Pain
220553|4|4|Belt of the Forsaken Worshipper
220554|3|4|Atal'alarion's Tusk Band
220555|3|4|Atal'ai Serpentscale Girdle
220556|3|4|Kilt of the Fallen Atal'ai Prophet
220557|4|4|Cursed Windscale Sarong
220558|3|4|Atal'ai Assassin's Leggings
220559|3|4|Revitalized Drake Scale Leggings
220560|3|4|Silvershell Legplates
220561|3|4|Tenacious Troll Kickers
220562|4|4|Bloodshot Battle Greaves
220563|3|4|Boots of the Atal'ai Blood Shaman
220564|4|4|Restored Slitherscale Boots
220565|3|4|Ethereal Mistwalker Boots
220566|4|2|Smolder Claw
220567|4|2|Bloodied Headspike
220568|4|2|Temple Explorer's Gun Axe
220569|4|2|Blistering Ragehammer
220570|4|12|Mantle of Nightmares
220571|4|2|Stinging Longbow
220572|3|2|Rinzo's Rapid Repeater
220573|4|2|Dreadstalker's Hunting Bow
220574|4|2|Sharpened Tooth of Eranikus
220575|3|2|Eater of the Damned
220576|3|2|Axe of the Atal'ai Executioner
220577|4|2|Might of the Blood Loa
220578|4|2|Fist of the Forsaken
220579|4|2|Witch Doctor's Stick of Mojo
220580|4|2|Madness of the Avatar
220581|4|2|Snake Clobberer
220582|4|2|Dragon's Cry
220583|3|2|Vile Blade of the Wretched
220584|3|2|Flamebreath Blade
220585|4|2|Degraded Dire Nail
220586|4|2|Hubris, the Bandit Brander
220587|4|2|Sacrificial Dream Dagger
220588|4|2|Cobra Fang Claw
220589|4|2|Serpent's Striker
220590|4|2|Spire of Hakkari Worship
220591|4|2|Mijan's Restorative Rod
220594|4|2|Scythe of the Dream
220595|4|2|Nightmare Focus Staff
220596|4|2|Ancient Divining Rod
220597|4|4|Drakestone of the Dream Harbinger
220598|4|4|Drakestone of the Nightmare Harbinger
220599|4|4|Drakestone of the Blood Prophet
220600|4|4|Crest of Preeminence
220601|4|4|Hakkari Witch Doctor's Guard
220602|4|4|Sewer Turtle Half-Shell
220603|4|2|Rod of Irreversible Corrosion
220604|4|2|Nightmare Trophy
220605|3|4|Libram of Sacrilege
220606|3|4|Idol of the Dream
220607|3|4|Totem of Tormented Ancestry
220608|4|4|Featherskin Drape
220609|3|4|Drape of Nightfall
220610|2|0|Rune of Mental Dexterity
220611|3|4|Hukku's Hex Cape
220612|2|0|Rune of Tidal Waves
220613|2|0|Rune of Rolling Thunder
220614|2|0|Rune of Static Shock
220615|3|4|Panther Fur Cloak
220616|2|0|Rune of Overcharged
220617|2|0|Rune of Pandemic
220618|2|0|Rune of Immolation Aura
220619|4|13|Atal'ai Blood Ceremony
220620|4|15|Wind Serpent Skull
220621|4|4|Nightmare Resonance Crystal
220622|4|4|Perfectly Preserved Dragon's Eye
220623|4|4|Jin'do's Lost Locket
220624|3|4|Bloodstained Charm of Valor
220625|3|4|Resilience of the Exiled
220626|4|4|Drakeclaw Band of the Berserker
220627|4|4|Drakeclaw Band of the Stalker
220628|4|4|Drakeclaw Band of the Harbinger
220629|4|4|Drakeclaw Band of the Blood Prophet
220630|4|4|Drakeclaw Band of the Juggernaut
220632|4|4|Atal'ai Blood Ritual Medallion
220633|4|4|Atal'ai Blood Ritual Badge
220634|4|4|Atal'ai Blood Ritual Charm
220635|4|13|Atal'alarion's Enchanted Boulder
220636|3|12|Atal'ai Blood Icon
220637|3|12|Atal'ai Ritual Token
220638|4|13|Unorthodox Hex Stick
220639|4|13|Lledra's Inanimator
220642|3|4|Banished Martyr's Plate Armor
220643|3|4|Banished Martyr's Plate Legguards
220648|3|4|Banished Martyr's Plate Boots
220649|3|4|Merithra's Inheritence
220650|3|4|Obsessed Prophet's Chestplate
220651|3|4|Obsessed Prophet's Legguards
220652|3|4|Obsessed Prophet's Ornate Boots
220653|3|4|Wailing Berserker's Chestplate
220654|3|4|Wailing Berserker's Legplates
220656|3|4|Wailing Berserker's Battleboots
220657|3|4|Ostracized Berserker's Hauberk
220658|3|4|Ostracized Berserker's Legplates
220659|3|4|Ostracized Berserker's Chain Greaves
220660|3|4|Shunned Devotee's Chainshirt
220661|3|4|Shunned Devotee's Legguards
220662|3|4|Shunned Devotee's Scale Boots
220663|3|4|Corrupted Spiritweaver's Leggings
220664|3|4|Corrupted Spiritweaver's Sabatons
220665|3|4|Corrupted Spiritweaver's Breastplate
220666|3|4|Dread Hunter's Chainmail
220667|3|4|Dread Hunter's Chausses
220668|3|4|Dread Hunter's Greaves
220669|3|4|Exiled Prophet's Jerkin
220670|3|4|Exiled Prophet's Slippers
220671|3|4|Exiled Prophet's Leather Pants
220672|3|4|Lost Worshipper's Harness
220673|3|4|Lost Worshipper's Leggings
220674|4|2|Debased Stealthblade
220675|3|4|Lost Worshipper's Treads
220676|3|4|Blood Corrupted Tunic
220677|3|4|Blood Corrupted Boots
220678|3|4|Blood Corrupted Pants
220679|3|4|Malevolent Prophet's Leggings
220680|3|4|Malevolent Prophet's Vest
220681|3|4|Malevolent Prophet's Sandals
220682|2|0|Rune of the Unbridled
220683|3|4|Benevolent Prophet's Vest
220684|3|4|Benevolent Prophet's Leggings
220685|3|4|Benevolent Prophet's Sandals
220686|4|2|Chieftain's Bane
220687|2|0|Rune of the Raptor
220688|4|5|Inert Mantle of Nightmares
220689|3|4|Void-Powered Vambraces
220738|4|4|Shoulderplates of Dread
220739|4|4|Baleful Pauldrons
220740|4|4|Fearmonger's Shoulderguards
220741|4|4|Screaming Chain Pauldrons
220742|4|4|Shrieking Spaulders
220743|4|4|Cacophonous Chain Shoulderguards
220744|4|4|Wailing Chain Mantle
220745|4|4|Membrane of Dark Neurosis
220747|4|4|Paranoia Mantle
220748|4|4|Shoulderpads of Obsession
220749|4|4|Mantle of Insanity
220750|4|4|Fractured Mind Pauldrons
220751|4|4|Shoulderpads of the Deranged
220754|2|0|Rune of the Windstorm
220775|2|12|Engineering Exchange Ticket
220778|3|4|Coagulated Bloodguard Pants
220779|3|4|Coagulated Bloodguard Tunic
220780|3|4|Coagulated Bloodguard Boots
220781|3|4|Nightmare Prophet's Leggings
220783|3|4|Nightmare Prophet's Vestments
220784|3|4|Nightmare Prophet's Sandals
220791|2|0|Rune of the Jungle Cat
220792|2|0|Scroll of Spatial Mending
220794|3|4|Knight's Plate Hauberk
220795|3|4|Knight-Lieutenant's Plate Pauldrons
220796|3|4|Blood Guard's Plate Pauldrons
220797|3|4|Knight's Plate Leggings
220798|3|4|Stone Guard's Plate Leggings
220799|3|4|Sergeant Major's Plate Greaves
220800|3|4|First Sergeant's Plate Greaves
220801|3|4|Stone Guard's Plate Armor
220803|3|4|Blood Guard's Plate Helm
220804|3|4|Knight-Lieutenant's Plate Helm
220806|3|4|Sergeant Major's Plate Gauntlets
220807|3|4|First Sergeant's Plate Gauntlets
220808|3|4|Knight-Lieutenant's Imbued Pauldrons
220809|3|4|Knight's Imbued Leggings
220810|3|4|Knight-Lieutenant's Imbued Helmet
220811|3|4|Sergeant Major's Imbued Greaves
220812|3|4|Sergeant Major's Imbued Gauntlets
220813|3|4|Knight's Imbued Armor
220814|3|4|Sergeant Major's Lamellar Boots
220815|3|4|Knight's Lamellar Chestplate
220816|3|4|Knight's Lamellar Legplates
220817|3|4|Sergeant Major's Lamellar Gauntlets
220818|3|4|Knight-Lieutenant's Lamellar Pauldrons
220819|3|4|Knight-Lieutenant's Lamellar Helm
220820|3|4|Blood Guard's Mail Helmet
220821|3|4|Blood Guard's Chain Helmet
220822|3|4|Knight-Lieutenant's Chain Helmet
220823|3|4|Blood Guard's Mail Epaulets
220824|3|4|Blood Guard's Chain Epaulets
220825|3|4|Knight-Lieutenant's Chain Epaulets
220826|3|4|Stone Guard's Mail Armor
220827|3|4|Stone Guard's Chain Armor
220828|3|4|Knight's Chain Armor
220829|3|4|Sergeant Major's Chain Gauntlets
220830|3|4|First Sergeant's Chain Gauntlets
220831|3|4|First Sergeant's Mail Gauntlets
220832|3|4|Knight's Chain Legplates
220833|3|4|Stone Guard's Chain Legplates
220834|3|4|Stone Guard's Mail Legplates
220835|3|4|First Sergeant's Mail Sabatons
220836|3|4|First Sergeant's Chain Sabatons
220837|3|4|Sergeant Major's Chain Sabatons
220838|3|4|Stone Guard's Inscribed Chestpiece
220839|3|4|Stone Guard's Inscribed Legplates
220840|3|4|First Sergeant's Inscribed Sabatons
220841|3|4|Blood Guard's Inscribed Shoulder Pads
220842|3|4|Blood Guard's Inscribed Skullcap
220843|3|4|First Sergeant's Inscribed Gauntlets
220844|3|4|Stone Guard's Pulsing Breastplate
220845|3|4|First Sergeant's Pulsing Gauntlets
220846|3|4|First Sergeant's Pulsing Greaves
220847|3|4|Stone Guard's Pulsing Legplates
220848|3|4|Blood Guard's Pulsing Helmet
220849|3|4|Blood Guard's Pulsing Shoulders
220850|3|4|Knight-Lieutenant's Leather Headband
220851|3|4|Blood Guard's Leather Headband
220852|3|4|Knight-Lieutenant's Leather Shoulders
220853|3|4|Blood Guard's Leather Shoulders
220854|3|4|Knight's Leather Armor
220855|3|4|Stone Guard's Leather Armor
220856|3|4|Sergeant Major's Leather Gauntlets
220857|3|4|First Sergeant's Leather Gauntlets
220858|3|4|Knight's Leather Pants
220859|3|4|Stone Guard's Leather Pants
220860|3|4|Sergeant Major's Leather Boots
220861|3|4|First Sergeant's Leather Boots
220862|3|4|Sergeant Major's Crackling Leather Boots
220863|3|4|First Sergeant's Crackling Leather Boots
220864|3|4|Knight's Crackling Leather Leggings
220865|3|4|Stone Guard's Crackling Leather Leggings
220866|3|4|Sergeant Major's Crackling Leather Gauntlets
220867|3|4|First Sergeant's Crackling Leather Gauntlets
220868|3|4|Knight's Crackling Leather Tunic
220869|3|4|Stone Guard's Crackling Leather Tunic
220870|3|4|Knight-Lieutenant's Crackling Leather Spaulders
220871|3|4|Blood Guard's Crackling Leather Spaulders
220872|3|4|Knight-Lieutenant's Crackling Leather Helmet
220873|3|4|Blood Guard's Crackling Leather Helmet
220874|3|4|Knight-Lieutenant's Restored Leather Helm
220875|3|4|Blood Guard's Restored Leather Helm
220876|3|4|Knight-Lieutenant's Restored Leather Spaulders
220877|3|4|Blood Guard's Restored Leather Spaulders
220878|3|4|Knight's Restored Leather Jerkin
220879|3|4|Stone Guard's Restored Leather Jerkin
220880|3|4|Sergeant Major's Restored Leather Gloves
220881|3|4|First Sergeant's Restored Leather Gloves
220882|3|4|Knight's Restored Leather Leggings
220883|3|4|Stone Guard's Restored Leather Leggings
220884|3|4|Sergeant Major's Restored Leather Boots
220885|3|4|First Sergeant's Restored Leather Boots
220886|3|4|Knight's Dreadweave Vest
220887|3|4|Knight-Lieutenant's Dreadweave Mantle
220888|3|4|Knight's Dreadweave Leggings
220889|3|4|Knight-Lieutenant's Dreadweave Hat
220890|3|4|Sergeant Major's Dreadweave Gloves
220891|3|4|Sergeant Major's Dreadweave Boots
220892|3|4|Knight's Satin Armor
220893|3|4|Knight's Satin Leggings
220894|3|4|Knight-Lieutenant's Satin Pads
220895|3|4|Sergeant Major's Satin Boots
220896|3|4|Knight-Lieutenant's Satin Cover
220897|3|4|Sergeant Major's Satin Gloves
220898|3|4|First Sergeant's Satin Gloves
220899|3|4|Blood Guard's Satin Cover
220900|3|4|First Sergeant's Satin Boots
220901|3|4|Blood Guard's Satin Pads
220902|3|4|Stone Guard's Satin Leggings
220903|3|4|Stone Guard's Satin Armor
220904|3|4|Stone Guard's Dreadweave Vest
220905|3|4|Blood Guard's Dreadweave Mantle
220906|3|4|Stone Guard's Dreadweave Leggings
220907|3|4|Blood Guard's Dreadweave Hat
220908|3|4|First Sergeant's Dreadweave Gloves
220909|3|4|First Sergeant's Dreadweave Boots
220912|1|2|Geode Hammer
220913|2|0|Rune of Demolition
220914|0|15|Broken Geode Hammer
220915|2|4|Idol of the Raging Shambler
220916|1|12|Thunderstomp Stegodon Horn
220917|1|12|Box of Scarlet Dye
220918|2|7|Waylaid Supplies: Undermine Clam Chowder
220919|2|7|Waylaid Supplies: Nightfin Soup
220920|2|7|Waylaid Supplies: Tender Wolf Steaks
220921|2|7|Waylaid Supplies: Heavy Mageweave Bandages
220922|2|7|Waylaid Supplies: Sungrass
220923|2|7|Waylaid Supplies: Dreamfoil
220924|2|7|Waylaid Supplies: Truesilver Bars
220925|2|7|Waylaid Supplies: Thorium Bars
220926|2|7|Waylaid Supplies: Rugged Leather
220927|2|7|Waylaid Supplies: Thick Hide
220928|2|7|Waylaid Supplies: Enchanted Thorium Bars
220929|2|7|Waylaid Supplies: Superior Mana Potions
220930|2|7|Waylaid Supplies: Major Healing Potions
220931|2|7|Waylaid Supplies: Hi-Explosive Bombs
220932|2|7|Waylaid Supplies: Thorium Grenades
220933|2|7|Waylaid Supplies: Thorium Rifles
220934|2|7|Waylaid Supplies: Mithril Coifs
220935|2|7|Waylaid Supplies: Thorium Belts
220936|2|7|Waylaid Supplies: Truesilver Gauntlets
220937|2|7|Waylaid Supplies: Rugged Armor Kits
220938|2|7|Waylaid Supplies: Wicked Leather Bracers
220939|2|7|Waylaid Supplies: Runic Leather Bracers
220940|2|7|Waylaid Supplies: Black Mageweave Headbands
220941|2|7|Waylaid Supplies: Runecloth Belts
220942|2|7|Waylaid Supplies: Tuxedo Shirts
220964|3|4|Decharged Void-Powered Vambraces
220965|4|2|Scalebane Greataxe
221008|2|7|Supply Shipment
221009|2|7|Supply Shipment
221010|2|7|Supply Shipment
221017|1|15|Keldara's Log
221018|1|15|Field Medicine Kit
221019|1|15|Satyrweed Sample
221020|2|0|Rune of the Moon Goddess
221021|2|7|Nightmare Seed
221024|4|0|Flask of Everlasting Nightmares
221025|4|4|Void-Powered Invoker's Vambraces
221026|4|4|Void-Powered Slayer's Vambraces
221027|4|4|Void-Powered Protector's Vambraces
221028|2|0|Enchanted Sigil: Living Dreams
221030|2|0|Atal'ai Mojo of Forbidden Magic
221191|3|13|Dreamstone
221192|2|15|Dream Journal
221193|3|4|Emerald Ring
221196|2|0|Atal'ai Mojo of War
221199|1|0|Satyrweed Tincture
221256|1|15|Right Arm of the Obliterator
221257|1|15|Left Arm of the Obliterator
221258|1|15|Right Foot of the Obliterator
221259|1|15|Left Foot of the Obliterator
221260|1|15|Head of the Obliterator
221261|2|15|Wildwhisper Draught
221262|2|15|Wild Offering
221267|2|0|Rune of the Bloodthirsty
221271|3|15|Ace of Wilds
221272|4|15|Wilds Deck
221273|3|15|Two of Wilds
221274|3|15|Three of Wilds
221275|3|15|Four of Wilds
221276|3|15|Five of Wilds
221277|3|15|Six of Wilds
221278|3|15|Seven of Wilds
221279|3|15|Eight of Wilds
221280|4|15|Plagues Deck
221281|3|15|Ace of Plagues
221282|3|15|Two of Plagues
221283|3|15|Three of Plagues
221284|3|15|Four of Plagues
221285|3|15|Five of Plagues
221286|3|15|Six of Plagues
221287|3|15|Seven of Plagues
221288|3|15|Eight of Plagues
221289|4|15|Dunes Deck
221290|3|15|Ace of Dunes
221291|3|15|Two of Dunes
221292|3|15|Three of Dunes
221293|3|15|Four of Dunes
221294|3|15|Five of Dunes
221295|3|15|Six of Dunes
221296|3|15|Seven of Dunes
221297|3|15|Eight of Dunes
221298|3|15|Ace of Nightmares
221299|4|15|Nightmares Deck
221300|3|15|Two of Nightmares
221301|3|15|Three of Nightmares
221302|3|15|Four of Nightmares
221303|3|15|Five of Nightmares
221304|3|15|Six of Nightmares
221305|3|15|Seven of Nightmares
221306|3|15|Eight of Nightmares
221307|4|4|Darkmoon Card: Decay
221308|4|4|Darkmoon Card: Overgrowth
221309|4|4|Darkmoon Card: Sandstorm
221310|4|4|Darkmoon Card: Torment
221311|2|0|Atal'ai Mojo of Life
221312|2|12|Flask of Atal'ai Mojo
221313|3|7|Flask of Nightmarish Mojo
221314|1|12|Wanted Notice
221315|3|4|Traveler's Symbols
221316|1|4|Premo's Poise-Demanding Uniform
221317|1|0|Feralas Leycryst
221318|1|0|Azshara Leycryst
221319|1|0|Blackrock Leycryst
221320|1|0|Hinterlands Leycryst
221321|3|12|Atal'ai Signet of Might
221322|3|12|Atal'ai Signet of Mojo
221323|3|12|Atal'ai Signet of Serenity
221324|1|13|Brittle Key
221325|1|7|EZ-Splode Blasting Charge
221326|1|15|Sacred Stag Heart
221327|2|9|Schematic: Gnomish Shrink Ray
221328|2|9|Schematic: Gnomish Goggles
221329|2|9|Schematic: Gnomish Net-o-matic Projector
221330|2|9|Schematic: Gnomish Harm Prevention Belt
221331|2|9|Schematic: Gnomish Rocket Boots
221332|2|9|Schematic: Gnomish Battle Chicken
221333|2|9|Schematic: Gnomish Mind Control Cap
221334|2|9|Schematic: Gnomish Death Ray
221335|2|9|Schematic: Goblin Construction Helmet
221336|2|9|Schematic: Goblin Mining Helmet
221337|2|9|Schematic: Goblin Mortar
221338|2|9|Schematic: Goblin Sapper Charge
221339|2|9|Schematic: Goblin Rocket Boots
221340|2|9|Schematic: Goblin Bomb Dispenser
221341|2|9|Schematic: The Big One
221342|2|9|Schematic: Goblin Dragon Gun
221343|2|9|Schematic: Goblin Rocket Helmet
221344|3|4|Personal Spellbook
221345|3|12|Corrupted Blood of Eranikus
221346|4|12|Scapula of the Fallen Avatar
221347|1|12|Murky Fire Sapta
221348|1|12|Murky Water Sapta
221349|1|12|Murky Earth Sapta
221353|1|12|Fragment of Fire
221354|1|12|Fragment of Water
221355|1|12|Fragment of Earth
221356|1|12|Glowing Fragment of Fire
221357|1|12|Glowing Fragment of Water
221358|1|12|Glowing Fragment of Earth
221359|1|12|Pristine Owlbeast Quill
221360|1|12|Farraki Papyrus
221361|1|12|Zukk'ash Resin
221362|1|7|Weapon Cleaning Cloth
221363|4|12|Scapula of the Fallen Avatar
221364|2|12|Copper Massacre Coin
221365|3|12|Silver Massacre Coin
221366|4|12|Gold Massacre Coin
221367|1|15|Satchel of Copper Massacre Coins
221368|1|15|Satchel of Silver Massacre Coins
221369|3|4|Nightmare Siphon
221370|1|15|Precious Medallion
221371|1|15|Kidnapper's Coin Purse
221372|0|15|Mangled Coin Purse
221374|3|4|Anguish of the Dream
221376|3|4|Emerald Dream Helm
221377|3|4|Emerald Dream Legplates
221378|3|4|Emerald Dream Gauntlets
221379|3|4|Emerald Dream Sabatons
221380|3|4|Emerald Dream Breastplate
221381|3|4|Emerald Dream Pauldrons
221382|3|4|Emerald Encrusted Battleplate
221383|3|4|Emerald Encrusted Handguards
221384|3|4|Emerald Encrusted Helmet
221385|3|4|Emerald Encrusted Legplates
221386|3|4|Emerald Encrusted Spaulders
221387|3|4|Emerald Encrusted Plate Boots
221388|3|4|Emerald Scalemail Leggings
221389|3|4|Emerald Scalemail Gauntlets
221390|3|4|Emerald Scalemail Breastplate
221391|3|4|Emerald Scalemail Helmet
221392|3|4|Emerald Scalemail Shoulders
221393|3|4|Emerald Scalemail Boots
221394|3|4|Emerald Laden Boots
221395|3|4|Emerald Laden Breastplate
221396|3|4|Emerald Laden Gauntlets
221397|3|4|Emerald Laden Helmet
221398|3|4|Emerald Laden Leggings
221399|3|4|Emerald Laden Shoudlers
221400|3|4|Emerald Chain Shoudlers
221401|3|4|Emerald ChainLeggings
221402|3|4|Emerald Chain Helmet
221403|3|4|Emerald Chain Gauntlets
221404|3|4|Emerald Chain Breastplate
221405|3|4|Emerald Chain Boots
221406|3|4|Emerald Leather Vest
221407|3|4|Emerald Leather Gloves
221408|3|4|Emerald Leather Helm
221409|3|4|Emerald Leather Sabatons
221410|3|4|Emerald Leather Pants
221411|3|4|Emerald Leather Shoulders
221412|3|4|Emerald Dreamkeeper Gloves
221413|3|4|Emerald Dreamkeeper Helm
221414|3|4|Emerald Dreamkeeper Pants
221415|3|4|Emerald Dreamkeeper Boots
221416|3|4|Emerald Dreamkeeper Shoulders
221417|3|4|Emerald Dreamkeeper Chest
221418|1|0|Agamaggan's Roar
221419|3|4|Emerald Watcher Vest
221420|3|4|Emerald Watcher Boots
221421|3|4|Emerald Watcher Gloves
221422|3|4|Emerald Watcher Helm
221423|3|4|Emerald Watcher Leggings
221424|3|4|Emerald Watcher Shoulders
221425|3|4|Emerald Enchanted Circlet
221426|3|4|Emerald Enchanted Boots
221427|3|4|Emerald Enchanted Gloves
221428|2|0|Rune of Foul Play
221429|3|4|Emerald Enchanted Pants
221430|3|4|Emerald Enchanted Robes
221431|3|4|Emerald Enchanted Shoulders
221432|3|4|Emerald Woven Mantle
221433|2|0|Rune of Focus
221434|3|4|Emerald Woven Robes
221435|3|4|Emerald Woven Pants
221436|3|4|Emerald Woven Gloves
221437|3|4|Emerald Woven Circlet
221438|3|4|Emerald Woven Boots
221439|3|4|Armor of the Emerald Slumber
221440|4|4|Roar of the Dream
221441|3|2|Warden of the Dream
]==],
[==[
221442|4|4|Roar of the Guardian
221443|4|4|Roar of the Grove
221444|1|0|Jungle Durian
221445|2|0|Rune of Focused Fire
221446|4|2|Ritualist's Hammer
221447|4|4|Ritualist's Bloodmoon Grimoire
221448|4|4|Talisman of the Corrupted Grove
221450|4|2|Gurubashi Pit Fighter's Bow
221451|4|2|Bloodthirst Crossbow
221452|4|4|Bloodfocused Arcane Band
221453|4|4|Band of Boiling Blood
221454|4|4|Glacial Blood Band
221455|4|4|Bloodlight Reverence
221456|4|2|Eclipsed Sanguine Saber
221457|4|4|Libram of Draconic Destruction
221458|4|4|Shadowy Band of Victory
221459|4|4|Seal of the Sacrificed
221460|4|2|Gurubashi Backstabber
221461|2|0|Rune of Carnage
221462|4|2|Bloodied Sword of Speed
221463|4|4|Ancestral Voodoo Doll
221464|4|4|Totem of Fiery Precision
221465|4|2|Corrupted Smashbringer
221466|4|4|Loop of Burning Blood
221467|4|4|Eye of the Bloodmoon
221468|4|4|Wall of Whispers
221469|4|2|Headhunter's Barbed Spear
221470|3|12|Dream Emerald
221471|2|15|Emerald Wardens Chest
221473|2|0|Rune of the Watchman
221474|3|4|Chained Essence of Eranikus
221475|2|12|Essence of Eranikus
221480|2|0|Spell Notes: Molten Armor
221481|2|0|Nihilist Epiphany
221482|2|0|Rune of Affliction
221483|2|0|Rune of Burn
221484|4|13|Witch Doctor's Hex Stick
221487|2|0|Spell Notes: Advanced Warding
221488|2|0|Resolute Epiphany
221489|2|0|Rune of Vengeance
221490|2|0|Rune of Riptide
221491|2|0|Shadowtooth Bag
221497|1|13|Old Key
221498|1|1|Old Toolbox
221499|2|0|Rune of the Felguard
221510|2|0|Rune of the Knight
221511|2|0|Rune of the Protector
221512|2|0|Rune of Alacrity
221513|2|0|Rune of Potency
221514|2|0|Rune of Firepower
221515|2|0|Rune of Detonation
221516|2|0|Rune of Primal Energy
221517|2|0|Rune of Bloodshed
221518|3|2|Whisper
221519|3|12|Mannoroc Orb
221544|1|15|Stormcrow Egg
221545|1|12|Deciphered Warlock Notes
221547|1|12|Coded Warlock Notes
221549|1|12|Wastewander Cipher
221780|3|2|Princess Theradras' Scepter
221781|3|4|Avenguard Helm
221782|3|4|Helm of Exile
221783|4|4|Lawbringer Spaulders
221785|4|4|Cenarion Vestments
221971|2|15|Dreamsworn Horn
221972|2|15|Dreampyre Fire
221973|2|15|Dreamhunter Fang
221974|2|15|Grimtotem Necklace
221975|2|15|Broken Woodpaw Staff
221976|2|15|Diseased Nature Staff
221978|1|15|Explorer's Soul
221979|2|0|Prophecy of Verdant Winter
221980|2|0|Prophecy of Awakened Chaos
221981|2|0|Prophecy of the Lost Tribe
222952|4|0|Flask of Restless Dreams
222962|1|0|Hyjal's Wisdom
223073|3|4|Knight-Lieutenant's Mail Epaulets
223074|3|4|Knight's Mail Legplates
223075|3|4|Knight-Lieutenant's Mail Helmet
223076|3|4|Sergeant Major's Mail Gauntlets
223077|3|4|Sergeant Major's Mail Sabatons
223078|3|4|Knight's Mail Armor
223147|2|0|Spell Notes: Balefire Bolt
223148|2|0|Otherworldly Treasure
223149|2|0|Otherworldly Treasure
223150|2|0|Otherworldly Treasure
223151|2|0|Otherworldly Treasure
223160|2|13|Bargain Bush
223161|3|13|Empty Supply Crate
223162|3|1|Handy Courier Haversack
223163|2|9|Formula: Scroll of Spatial Mending
223164|3|4|Curiosity Cowl
223167|3|4|Initiative Cap
223168|2|0|Worldcore Fragment
223169|3|4|Tenacity Cap
223171|2|0|Scroll of Geomancy
223172|3|4|Tenacity Chain
223186|3|4|Supply Expediter
223192|3|4|Cord of the Untamed
223193|3|4|Crown of the Dreamweaver
223194|3|4|Band of the Wilds
223195|3|4|Breadth of the Beast
223196|3|4|Godslayer's Greaves
223197|3|4|Defender of the Wilds
223198|4|2|Modas Karkun
223214|3|4|Zila Gular
223215|3|2|Orah Raka
223216|3|4|Rakkan Archim
223217|3|4|Rakkas Lek
223218|3|4|Tor Kieldaz
223219|3|4|Fel Cloth Wristbands
223221|3|4|Fel Leather Wristbands
223222|3|4|Fel Mail Wristbands
223237|3|4|Fel Cloth Shoulder Pads
223238|3|4|Fel Leather Shoulder Pads
223239|3|4|Fel Mail Shoulders
223240|3|4|Fel Cloth Hood
223241|3|4|Fel Leather Hat
223242|3|4|Fel Mail Coif
223248|3|4|Fel Cloth Legs
223249|3|4|Fel Leather Legs
223250|3|4|Fel Mail Legs
223251|3|4|Fel Plate Legs
223256|3|4|Fel Cloth Robes
223261|3|4|Fel Leather Chest
223262|3|4|Fel Mail Chest
223263|3|4|Fel Plate Chest
223283|2|12|Bloodstained Commendation
223288|2|0|Rune of the Hammer
223323|1|4|Shirt
223324|3|4|Rainstrider Leggings
223325|3|4|Hakkari Breastplate
223326|3|4|Hakkari Shroud
223327|3|4|Mark of Hakkar
223328|3|4|Gemburst Circlet
223329|3|2|Lifeforce Dirk
223330|2|12|Pulsating Eye
223331|2|12|Pulsating Eye
223332|2|12|Vibrating Eye
223333|2|12|Baleful Eye
223334|2|12|Glowing Eye
223335|2|12|Oozing Eye
223336|2|12|Piercing Eye
223337|2|12|Burning Eye
223518|3|2|Charstone Dirk
223519|3|4|Eye of Theradras
223520|3|2|Inventor's Focal Sword
223521|3|4|Rotgrip Mantle
223522|3|4|Helm of the Mountain
223523|3|4|Cloud Stone
223524|3|2|Fist of Stone
223525|3|4|Soothsayer's Headdress
223526|4|2|Sul'thraze the Lasher
223527|3|2|Gahz'rilla Fang
223528|3|4|Gahz'rilla Scale Armor
223529|3|4|Jinxed Hoodoo Skin
223530|3|4|Jinxed Hoodoo Kilt
223531|3|4|Big Bad Pauldrons
223532|3|4|Lifeblood Amulet
223533|3|4|Desertwalker Cane
223534|3|4|Jumanza Grips
223535|3|4|Grimlok's Tribal Vestments
223536|3|2|Grimlok's Charge
223537|3|4|Skullplate Bracers
223538|3|2|Kindling Stave
223539|3|4|Enthralled Sphere
223540|3|2|Houndmaster's Bow
223541|3|4|Gemshard Heart
223542|3|2|Megashot Rifle
223543|3|4|Vinerot Sandals
223544|3|4|Dregmetal Spaulders
223545|3|4|Gizlock's Hypertech Buckler
223648|2|6|Dream Imbued Arrow
223912|2|0|Purification Potion
223913|2|0|Major Healing Potion
223914|2|0|Greater Healing Potion
223962|3|4|Sandstalker Ankleguards
223963|3|4|Embrace of the Lycan
223964|4|2|Blade of Eternal Darkness
223980|3|4|Searingscale Leggings
223981|3|4|Flamestrider Robes
223982|3|2|Houndmaster's Rifle
223983|3|2|Arbiter's Blade
223984|3|4|Silkweb Gloves
223985|3|4|Cyclopean Band
223986|3|4|Graverot Cape
223987|3|4|Splinthide Shoulders
224004|2|4|Emerald Ring
224005|2|4|Emerald Ring
224006|3|4|Emerald Ring
224122|4|2|Dream Eater
224279|4|4|Terrestris
224280|4|4|Suzerain, Defender of the Dragonflights
224281|4|2|Gla'sir
224282|4|2|Rae'lar
224409|4|2|Serpent's Striker
224806|2|0|Legion Portal Tuner
224836|2|0|Otherworldly Treasure
224848|2|0|Otherworldly Treasure
224849|2|0|Otherworldly Treasure
224850|2|0|Otherworldly Treasure
224851|2|0|Otherworldly Treasure
224893|2|0|Overcharged Portal Tuner
224912|2|0|Portal Tuner Tuner
225675|1|15|Sooty Obsidian Core
225676|1|15|Molten Obsidian Core
225686|2|0|Rune of Decimation
225687|2|0|Rune of Infernal Armor
225688|2|0|Rune of Mark of Chaos
225689|2|0|Spell Notes: Arcane Barrage
225690|2|0|Spell Notes: Frozen Orb
225691|2|0|Spell Notes: Overheat
225740|2|0|Rune of Composure
225838|2|4|Voltaic Icon
225893|4|2|Epoch's End
225914|2|0|Rune of the Bound Spirit
225929|1|15|Plagued Soul Shard
225938|2|15|Torn Spell Notes
225939|2|15|Torn Spell Notes
225940|2|15|Torn Spell Notes
225941|2|15|Torn Spell Notes
225942|1|15|Tainted Boar Meat
225943|1|15|Rancid Hunk of Flesh
225954|2|15|Charred Spell Notes
225955|2|0|Rune of the Resourceful
226122|3|15|Dalton's Horn
226201|1|12|Squire Cuthbert's Blade
226207|1|15|Echo of Anastari
226208|1|15|Echo of Barthilas
226209|1|15|Echo of Dathrohan
226210|1|15|Echo of Maleki
226211|1|15|Echo of Nerub'enkan
226212|1|15|Echo of Ramstein
226213|1|15|Echo of Rivendare
226214|1|15|Echo of Willey
226252|2|0|Rune of the Guerrilla
226374|1|0|Occult Poison I
226394|2|0|Manual of Atrophic Poison
226395|2|0|Manual of Numbing Poison
226396|2|0|Manual of Occult Poison
226397|2|0|Manual of Sebacious Poison
226398|2|0|Testament of Martyrdom
226399|2|0|Testament of Avenging Wrath
226400|2|0|Testament of the Exorcist
226401|2|0|Treatise on the Heart of the Lion
226402|2|0|Revelation of Shamanistic Rage
226403|2|0|Handbook of Meathook
226404|2|12|Tarnished Undermine Real
226405|2|15|Damaged Undermine Supply Crate
226406|2|0|Rune of Sword Specialization
226407|2|0|Rune of Axe Specialization
226408|2|0|Rune of Mace Specialization
226409|2|0|Rune of Dagger Specialization
226410|2|0|Rune of Ranged Weapon Specialization
226411|2|0|Rune of Fist Weapon Specialization
226412|2|0|Rune of Pole Weapon Specialization
226413|2|0|Rune of Arcane Specialization
226414|2|0|Rune of Fire Specialization
226415|2|0|Rune of Frost Specialization
226416|2|0|Rune of Nature Specialization
226417|2|0|Rune of Shadow Specialization
226418|2|0|Rune of Holy Specialization
226419|2|0|Rune of Feral Combat Specialization
226420|0|15|Finely Crafted Bust
226421|0|15|PLACEHOLDER_ASHBRINGER_QUESTITEM_01
226440|4|4|Nightslayer Belt
226441|4|4|Nightslayer Gloves
226442|4|4|Nightslayer Bracelets
226443|4|4|Nightslayer Boots
226444|4|4|Nightslayer Shoulder Pads
226445|4|4|Nightslayer Pants
226446|4|4|Nightslayer Cover
226447|4|4|Nightslayer Chestpiece
226472|1|15|Stratholme Shadow Jar
226473|4|4|Nightslayer Cuirass
226474|4|4|Nightslayer Waistguard
226475|4|4|Nightslayer Handguards
226476|4|4|Nightslayer Bracers
226477|4|4|Nightslayer Tabi
226478|4|4|Nightslayer Pauldrons
226479|4|4|Nightslayer Legguards
226480|4|4|Nightslayer Hood
226484|4|4|Bracers of Might
226485|4|4|Belt of Might
226486|4|4|Gauntlets of Might
226487|4|4|Sabatons of Might
226488|4|4|Helm of Might
226489|4|4|Breastplate of Might
226490|4|4|Legplates of Might
226491|4|4|Shoulderplates of Might
226492|4|4|Pauldrons of Might
226493|4|4|Leggings of Might
226494|4|4|Hauberk of Might
226495|4|4|Jaws of Might
226496|4|4|Treads of Might
226497|4|4|Hands of Might
226498|4|4|Sash of Might
226499|4|4|Armguards of Might
226500|7|4|Chipped Drakefire Amulet
226523|3|15|Dalton's Horn
226526|1|12|Busted Gizmo
226527|4|4|Giantstalker's Epaulets
226528|4|4|Giantstalker's Gloves
226529|4|4|Giantstalker's Belt
226530|4|4|Giantstalker's Bracers
226531|4|4|Giantstalker's Boots
226532|4|4|Giantstalker's Leggings
226533|4|4|Giantstalker's Helmet
226534|4|4|Giantstalker's Breastplate
226535|4|4|Giantstalker's Chainmail
226536|4|4|Giantstalker's Guise
226537|4|4|Giantstalker's Chain Leggings
226538|4|4|Giantstalker's Sabatons
226540|4|4|Giantstalker's Handguards
226541|4|4|Giantstalker's Wristguards
226542|4|4|Giantstalker's Girdle
226543|4|4|Giantstalker's Spauldrons
226545|4|15|Dalton's Horn
226546|1|4|Desert Sonar
226547|4|4|Felheart Pants
226548|4|4|Felheart Robes
226549|4|4|Felheart Horns
226550|4|4|Felheart Shoulder Pads
226551|4|4|Felheart Belt
226552|4|4|Felheart Gloves
226553|4|4|Felheart Bracers
226554|4|4|Felheart Slippers
226555|4|4|Arcanist Belt
226556|4|4|Arcanist Gloves
226557|4|4|Arcanist Boots
226558|4|4|Arcanist Bindings
226559|4|4|Arcanist Robes
226560|4|4|Arcanist Mantle
226561|4|4|Arcanist Leggings
226562|4|4|Arcanist Crown
226563|4|4|Arcanist Garments
226564|4|4|Arcanist Headdress
226565|4|4|Arcanist Pants
226566|4|4|Arcanist Shoulders
226567|4|4|Arcanist Wristwraps
226568|4|4|Arcanist Sandals
226569|4|4|Arcanist Handguards
226570|4|4|Arcanist Cord
226571|4|4|Boots of Prophecy
226572|4|4|Gloves of Prophecy
226573|4|4|Circlet of Prophecy
226574|4|4|Pants of Prophecy
226575|4|4|Robes of Prophecy
226576|4|4|Mantle of Prophecy
226577|4|4|Girdle of Prophecy
226578|4|4|Vambraces of Prophecy
226579|4|4|Wristwraps of Prophecy
226580|4|4|Belt of Prophecy
226581|4|4|Shoulderpads of Prophecy
226582|4|4|Garments of Prophecy
226583|4|4|Leggings of Prophecy
226584|4|4|Crown of Prophecy
226585|4|4|Hands of Prophecy
226586|4|4|Sandals of Prophecy
226587|2|0|Rune of Shelling
226588|4|4|Lawbringer Spaulders
226589|4|4|Lawbringer Bracers
226590|4|4|Lawbringer Helm
226591|4|4|Lawbringer Gauntlets
226592|4|4|Lawbringer Belt
226593|4|4|Lawbringer Boots
226594|4|4|Lawbringer Legplates
226595|4|4|Lawbringer Chestguard
226596|4|4|Lawbringer Warbands
226597|4|4|Lawbringer Girdle
226598|4|4|Lawbringer Leggings
226599|4|4|Lawbringer Crown
226600|4|4|Lawbringer Grips
226601|4|4|Lawbringer Battleboots
226602|4|4|Lawbringer Breastplate
226603|4|4|Lawbringer Vambraces
226604|4|4|Lawbringer Battlebelt
226605|4|4|Lawbringer Pauldrons
226606|4|4|Lawbringer Legguards
226607|4|4|Lawbringer Headguard
226608|4|4|Lawbringer Handguards
226609|4|4|Lawbringer Sabatons
226610|4|4|Lawbringer Chestplate
226611|4|4|Earthfury Epaulets
226612|4|4|Earthfury Helmet
226613|4|4|Earthfury Boots
226614|4|4|Earthfury Legguards
226615|4|4|Earthfury Gauntlets
226616|4|4|Earthfury Belt
226617|4|4|Earthfury Vestments
226618|4|4|Earthfury Bracers
226619|4|4|Earthfury Ringmail
226620|4|4|Earthfury Walkers
226621|4|4|Earthfury Hands
226622|4|4|Earthfury Visor
226623|4|4|Earthfury Leggings
226624|4|4|Earthfury Mantle
226625|4|4|Earthfury Cord
226626|4|4|Earthfury Wristbands
226627|4|4|Earthfury Scalemail
226628|4|4|Earthfury Sabatons
226629|4|4|Earthfury Handguards
226630|4|4|Earthfury Greathelm
226631|4|4|Earthfury Scaled Leggings
226632|4|4|Earthfury Pauldrons
226633|4|4|Earthfury Waistguard
226634|4|4|Earthfury Wristguards
226635|4|4|Earthfury Chainmail
226636|4|4|Earthfury Battleboots
226637|4|4|Earthfury Grips
226638|4|4|Earthfury Headpiece
226639|4|4|Earthfury Chain Leggings
226640|4|4|Earthfury Spaulders
226641|4|4|Earthfury Girdle
226642|4|4|Earthfury Bindings
226644|4|4|Cenarion Spaulders
226645|4|4|Cenarion Boots
226646|4|4|Cenarion Leggings
226647|4|4|Cenarion Helm
226648|4|4|Cenarion Gloves
226649|4|4|Cenarion Bracers
226650|4|4|Cenarion Belt
226651|4|4|Cenarion Pants
226652|4|4|Cenarion Sandals
226653|4|4|Cenarion Mantle
226654|4|4|Cenarion Gauntlets
226655|4|4|Cenarion Wrists
226656|4|4|Cenarion Embrace
226657|4|4|Cenarion Cord
226658|4|4|Cenarion Antlers
226659|4|4|Cenarion Horns
226660|4|4|Cenarion Girdle
226661|4|4|Cenarion Tunic
226662|4|4|Cenarion Bands
226663|4|4|Cenarion Treads
226664|4|4|Cenarion Fists
226665|4|4|Cenarion Shoulders
226666|4|4|Cenarion Trousers
226667|4|4|Cenarion Waistguard
226668|4|4|Cenarion Wristguards
226669|4|4|Cenarion Grips
226670|4|4|Cenarion Crown
226671|4|4|Cenarion Legguards
226673|4|4|Cenarion Walkers
226674|4|4|Cenarion Pauldrons
226675|4|4|Cenarion Armor
226678|4|15|Premonition and Combat Foresight
226679|3|0|Timeless Wanderer's Insights
226680|3|0|Rune of the First Warrior
226694|2|0|Rune of Defense Specialization
226698|1|12|Vertically Composited Patch Hampler
226699|1|12|Brass-fitted Flam-Tamp Flange
226700|3|4|Shadowcraft Tunic
226701|3|4|Shadowcraft Belt
226702|3|4|Shadowcraft Gloves
226703|3|4|Shadowcraft Boots
226704|3|4|Shadowcraft Bracers
226705|3|4|Shadowcraft Pants
226706|3|4|Shadowcraft Spaulders
226707|3|4|Shadowcraft Cap
226708|3|4|Wildheart Cowl
226709|3|4|Wildheart Kilt
226710|3|4|Wildheart Spaulders
226711|3|4|Wildheart Gloves
226712|3|4|Wildheart Belt
226713|3|4|Wildheart Boots
226714|3|4|Wildheart Bracers
226715|3|4|Wildheart Vest
226716|3|4|Beaststalker's Mantle
226717|3|4|Beaststalker's Bindings
226718|3|4|Beaststalker's Belt
226719|3|4|Beaststalker's Pants
226720|3|4|Beaststalker's Cap
226721|3|4|Beaststalker's Gloves
226722|3|4|Beaststalker's Boots
226723|3|4|Beaststalker's Tunic
226724|3|4|Magister's Belt
226725|3|4|Magister's Bindings
226726|3|4|Magister's Mantle
226727|3|4|Magister's Leggings
226728|3|4|Magister's Crown
226729|3|4|Magister's Robes
226730|3|4|Magister's Boots
226731|3|4|Magister's Gloves
226732|3|4|Lightforge Belt
226733|3|4|Lightforge Helm
226734|3|4|Lightforge Breastplate
226735|3|4|Lightforge Spaulders
226736|3|4|Lightforge Legplates
226737|3|4|Lightforge Gauntlets
226738|3|4|Lightforge Boots
226739|3|4|Lightforge Bracers
226740|3|4|Devout Gloves
226741|3|4|Devout Mantle
226742|3|4|Devout Bracers
226743|3|4|Devout Sandals
226744|3|4|Devout Belt
226745|3|4|Devout Robe
226746|3|4|Devout Crown
226747|3|4|Devout Skirt
226748|3|4|Gauntlets of Elements
226749|3|4|Vest of Elements
226750|3|4|Kilt of Elements
226751|3|4|Bindings of Elements
226752|3|4|Boots of Elements
226753|3|4|Pauldrons of Elements
226754|3|4|Cord of Elements
226755|3|4|Coif of Elements
226756|3|4|Dreadmist Mantle
226757|3|4|Dreadmist Robe
226758|3|4|Dreadmist Wraps
226759|3|4|Dreadmist Bracers
226760|3|4|Dreadmist Leggings
226761|3|4|Dreadmist Belt
226762|3|4|Dreadmist Mask
226763|3|4|Dreadmist Sandals
226764|3|4|Boots of Valor
226765|3|4|Belt of Valor
226766|3|4|Bracers of Valor
226767|3|4|Legplates of Valor
226768|3|4|Spaulders of Valor
226769|3|4|Helm of Valor
226770|3|4|Breastplate of Valor
226771|3|4|Gauntlets of Valor
226772|3|4|Feralheart Sash
226773|4|4|Feralheart Cowl
226774|4|4|Feralheart Galoshes
226775|3|4|Feralheart Wraps
226776|4|4|Feralheart Vest
226777|4|4|Feralheart Hands
226778|3|4|Feralheart Spaulders
226779|3|4|Feralheart Kilt
226780|3|4|Feralheart Cord
226781|4|4|Feralheart Sandals
226782|3|4|Feralheart Bindings
226783|4|4|Feralheart Embrace
226784|4|4|Feralheart Gauntlets
226785|3|4|Feralheart Mantle
226786|4|4|Feralheart Headdress
226787|3|4|Feralheart Pants
226788|3|4|Feralheart Bands
226789|3|4|Feralheart Girdle
226790|3|4|Feralheart Epaulets
226791|3|4|Feralheart Trousers
226792|4|4|Feralheart Cap
226793|4|4|Feralheart Fists
226794|4|4|Feralheart Walkers
226795|4|4|Feralheart Tunic
226796|3|4|Feralheart Wristguards
226797|3|4|Feralheart Waistguard
226798|3|4|Feralheart Pauldrons
226799|3|4|Feralheart Legguards
226801|4|4|Feralheart Faceguard
226802|4|4|Feralheart Grips
226803|4|4|Feralheart Treads
226804|4|4|Feralheart Armor
226815|3|4|Feralheart Wrists
226816|3|4|Feralheart Waist
226817|3|4|Feralheart Shoulders
226818|3|4|Feralheart Legs
226819|4|4|Feralheart Helm
226820|4|4|Feralheart Gloves
226821|4|4|Feralheart Boots
226822|4|4|Feralheart Chest
226825|4|4|Darkmantle Tunic
226826|3|4|Darkmantle Spaulders
226827|3|4|Darkmantle Pants
226828|4|4|Darkmantle Grips
226829|4|4|Darkmantle Cap
226830|3|4|Darkmantle Bracers
226831|4|4|Darkmantle Footpads
226832|3|4|Darkmantle Belt
226835|3|4|Darkmantle Wristguards
226836|3|4|Darkmantle Waistguard
226837|3|4|Darkmantle Pauldrons
226838|3|4|Darkmantle Legguards
226840|4|4|Darkmantle Handguards
226841|4|4|Darkmantle Faceguard
226842|4|4|Darkmantle Treads
226843|4|4|Darkmantle Armor
226845|3|4|Darkmantle Wrists
226846|3|4|Darkmantle Waist
226847|3|4|Darkmantle Shoulders
226848|3|4|Darkmantle Legs
226849|4|4|Darkmantle Helm
226850|4|4|Darkmantle Gloves
226851|4|4|Darkmantle Boots
226852|4|4|Darkmantle Chest
226856|1|12|Guided Buoyancy Accelerant
226857|4|4|Battleboots of Heroism
226858|3|4|Spaulders of Heroism
226859|3|4|Legplates of Heroism
226860|4|4|Crown of Heroism
226861|4|4|Gauntlets of Heroism
226862|4|4|Breastplate of Heroism
226863|3|4|Bracers of Heroism
226864|3|4|Belt of Heroism
226865|3|4|Wristguards of Heroism
226866|3|4|Waistguard of Heroism
226867|3|4|Pauldrons of Heroism
226868|3|4|Legguards of Heroism
226869|4|4|Faceguard of Heroism
226870|4|4|Handguards of Heroism
226871|4|4|Sabatons of Heroism
226872|4|4|Chestguard of Heroism
226873|3|4|Wrists of Heroism
226874|3|4|Waist of Heroism
226875|3|4|Shoulders of Heroism
226876|3|4|Legs of Heroism
226877|4|4|Helm of Heroism
226878|4|4|Gloves of Heroism
226879|4|4|Boots of Heroism
226880|4|4|Chest of Heroism
226881|4|4|Beastmaster's Treads
226882|3|4|Beastmaster's Pants
226883|4|4|Beastmaster's Gauntlets
226884|3|4|Beastmaster's Mantle
226885|3|4|Beastmaster's Bindings
226886|4|4|Beastmaster's Tunic
226887|4|4|Beastmaster's Cap
226888|3|4|Beastmaster's Belt
226889|3|4|Beastmaster's Bracers
226890|3|4|Beastmaster's Waistwrap
226891|3|4|Beastmaster's Pauldrons
226892|3|4|Beastmaster's Leggings
226893|4|4|Beastmaster's Coif
226894|4|4|Beastmaster's Fists
226895|4|4|Beastmaster's Greaves
226896|4|4|Beastmaster's Chain
226897|3|4|Beastmaster's Wrists
226898|3|4|Beastmaster's Waist
226899|3|4|Beastmaster's Shoulders
226900|3|4|Beastmaster's Legs
226901|4|4|Beastmaster's Helm
226902|4|4|Beastmaster's Gloves
226903|4|4|Beastmaster's Boots
226904|4|4|Beastmaster's Chest
226905|3|4|Deathmist Belt
226906|4|4|Deathmist Robe
226907|3|4|Deathmist Bracers
226908|4|4|Deathmist Sandals
226909|4|4|Deathmist Mask
226910|3|4|Deathmist Leggings
226911|4|4|Deathmist Wraps
226912|3|4|Deathmist Mantle
226913|3|4|Deathmist Bindings
226914|3|4|Deathmist Cord
226915|3|4|Deathmist Epaulets
226916|3|4|Deathmist Pants
226917|4|4|Deathmist Hood
226918|4|4|Deathmist Grasps
226919|4|4|Deathmist Treads
226920|4|4|Deathmist Embrace
226921|3|4|Deathmist Wrists
226922|3|4|Deathmist Waist
226923|3|4|Deathmist Shoulders
226924|3|4|Deathmist Legs
226925|4|4|Deathmist Helm
226926|4|4|Deathmist Gloves
226927|4|4|Deathmist Boots
226928|4|4|Deathmist Chest
226929|3|4|Sorcerer's Bindings
226930|4|4|Sorcerer's Gauntlets
226931|4|4|Sorcerer's Sandals
226932|4|4|Sorcerer's Robes
226933|3|4|Sorcerer's Leggings
226934|3|4|Sorcerer's Belt
226935|4|4|Sorcerer's Crown
226936|3|4|Sorcerer's Mantle
226937|3|4|Sorcerer's Wrists
226938|3|4|Sorcerer's Waist
226939|3|4|Sorcerer's Shoulders
226940|3|4|Sorcerer's Legs
226941|4|4|Sorcerer's Helm
226942|4|4|Sorcerer's Gloves
226943|4|4|Sorcerer's Boots
226944|4|4|Sorcerer's Chest
226945|4|4|Virtuous Robe
226946|3|4|Virtuous Skirt
226947|4|4|Virtuous Crown
226948|3|4|Virtuous Belt
226949|3|4|Virtuous Bracers
226950|4|4|Virtuous Mitts
226951|3|4|Virtuous Mantle
226952|4|4|Virtuous Sandals
226953|3|4|Virtuous Wraps
226954|3|4|Virtuous Cord
226955|3|4|Virtuous Epaulets
226956|3|4|Virtuous Leggings
226957|4|4|Virtuous Cowl
226958|4|4|Virtuous Hands
226959|4|4|Virtuous Slippers
226960|4|4|Virtuous Gown
226961|3|4|Virtuous Wrists
226962|3|4|Virtuous Waist
226963|3|4|Virtuous Shoulders
226964|3|4|Virtuous Legs
226965|4|4|Virtuous Helm
226966|4|4|Virtuous Gloves
226967|4|4|Virtuous Boots
226968|4|4|Virtuous Chest
226969|3|4|Soulforge Spaulders
226970|3|4|Soulforge Bracers
226971|3|4|Soulforge Belt
226972|3|4|Soulforge Legplates
226973|4|4|Soulforge Breastplate
226974|4|4|Soulforge Warboots
226975|4|4|Soulforge Gauntlets
226976|4|4|Soulforge Greathelm
226977|3|4|Soulforge Bindings
226978|3|4|Soulforge Cord
226979|3|4|Soulforge Epaulets
226980|3|4|Soulforge Leggings
226981|4|4|Soulforge Crown
226982|4|4|Soulforge Fists
226983|4|4|Soulforge Treads
226984|4|4|Soulforge Embrace
226985|3|4|Soulforge Wristguards
226986|3|4|Soulforge Waistguard
226987|3|4|Soulforge Pauldrons
226988|3|4|Soulforge Legguards
226989|4|4|Soulforge Faceguard
226990|4|4|Soulforge Handguards
226991|4|4|Soulforge Sabatons
226992|4|4|Soulforge Chestguards
226993|3|4|Soulforge Wrists
226994|3|4|Soulforge Waist
226995|3|4|Soulforge Shoulders
226996|3|4|Soulforge Legs
226997|4|4|Soulforge Helm
226998|4|4|Soulforge Gloves
226999|4|4|Soulforge Boots
227000|4|4|Soulforge Chest
227001|3|4|Bindings of The Five Thunders
227002|4|4|Coif of The Five Thunders
227003|3|4|Pauldrons of The Five Thunders
227004|4|4|Vest of The Five Thunders
227005|3|4|Kilt of The Five Thunders
227006|4|4|Gauntlets of The Five Thunders
227007|4|4|Slippers of The Five Thunders
227008|3|4|Cord of The Five Thunders
227009|3|4|Bracers of The Five Thunders
227010|3|4|Sash of The Five Thunders
227011|3|4|Mantle of The Five Thunders
227012|3|4|Leggings of The Five Thunders
227013|4|4|Crown of The Five Thunders
227014|4|4|Grasp of The Five Thunders
227015|4|4|Greaves of The Five Thunders
227016|4|4|Tunic of The Five Thunders
227017|3|4|Bands of The Five Thunders
227018|3|4|Girdle of The Five Thunders
227019|3|4|Spaulders of The Five Thunders
227020|3|4|Legplates of The Five Thunders
227021|4|4|Face of The Five Thunders
227022|4|4|Fists of The Five Thunders
227023|4|4|Treads of The Five Thunders
227024|4|4|Chain of The Five Thunders
227025|3|4|Wristguards of The Five Thunders
227026|3|4|Waistguard of The Five Thunders
227027|3|4|Shoulderguards of The Five Thunders
227028|3|4|Legguards of The Five Thunders
227029|4|4|Headpiece of The Five Thunders
227030|4|4|Handguards of The Five Thunders
227031|4|4|Sabatons of The Five Thunders
227032|4|4|Chestguard of The Five Thunders
227033|3|4|Wrists of The Five Thunders
227034|3|4|Waist of The Five Thunders
227035|3|4|Shoulders of The Five Thunders
227036|3|4|Legs of The Five Thunders
227037|4|4|Helm of The Five Thunders
227038|4|4|Gloves of The Five Thunders
227039|4|4|Boots of The Five Thunders
227040|4|4|Chest of The Five Thunders
227041|1|12|Scourge Shadow Scalpel
227042|3|4|Champion's Plate Shoulders
227043|3|4|Champion's Plate Helm
227044|3|4|Lieutenant Commander's Plate Helm
227045|3|4|Lieutenant Commander's Plate Shoulders
227046|3|4|Knight-Captain's Plate Hauberk
227047|3|4|Knight-Captain's Plate Leggings
227048|3|4|Legionnaire's Plate Leggings
227049|3|4|Legionnaire's Plate Hauberk
227050|3|4|Blood Guard's Plate Gauntlets
227051|3|4|Blood Guard's Plate Greaves
227052|3|4|Knight-Lieutenant's Plate Greaves
227053|3|4|Knight-Lieutenant's Plate Gauntlets
227054|3|4|Lieutenant Commander's Leather Shoulders
227055|3|4|Lieutenant Commander's Leather Helm
227056|3|4|Champion's Leather Shoulders
227057|3|4|Champion's Leather Helm
227058|3|4|Knight-Captain's Leather Chestpiece
227059|3|4|Legionnaire's Leather Legguards
227060|3|4|Legionnaire's Leather Chestpiece
227061|3|4|Knight-Captain's Leather Legguards
227062|3|4|Blood Guard's Leather Walkers
227063|3|4|Blood Guard's Leather Grips
227064|3|4|Knight-Lieutenant's Leather Walkers
227065|3|4|Knight-Lieutenant's Leather Grips
227066|3|4|Lieutenant Commander's Chain Helm
227067|3|4|Champion's Chain Helm
227068|3|4|Lieutenant Commander's Chain Shoulders
227069|3|4|Champion's Chain Shoulders
227070|3|4|Knight-Captain's Chain Hauberk
227071|3|4|Legionnaire's Chain Hauberk
227072|3|4|Knight-Captain's Chain Legguards
227073|3|4|Legionnaire's Chain Legguards
227074|3|4|Blood Guard's Chain Greaves
227075|3|4|Blood Guard's Chain Vices
227076|3|4|Knight-Lieutenant's Chain Greaves
227077|3|4|Knight-Lieutenant's Chain Vices
227078|3|4|Champion's Chain Pauldrons
227079|3|4|Legionnaire's Chain Legplates
227080|3|4|Champion's Chain Greathelm
227081|3|4|Blood Guard's Chain Grips
227082|3|4|Blood Guard's Chain Sabatons
227083|3|4|Legionnaire's Chain Armor
227084|3|4|Lieutenant Commander's Chain Pauldrons
227085|3|4|Knight-Captain's Chain Legplates
227086|3|4|Lieutenant Commander's Chain Greathelm
227087|3|4|Knight-Lieutenant's Chain Grips
227088|3|4|Knight-Lieutenant's Chain Sabatons
227089|3|4|Knight-Captain's Chain Armor
227090|3|4|Champion's Dreadweave Cowl
227091|3|4|Lieutenant Commander's Dreadweave Spaulders
227092|3|4|Champion's Dreadweave Spaulders
227093|3|4|Lieutenant Commander's Dreadweave Cowl
227094|3|4|Legionnaire's Dreadweave Tunic
227095|3|4|Knight-Captain's Dreadweave Legguards
227096|3|4|Knight-Captain's Dreadweave Tunic
227097|3|4|Legionnaire's Dreadweave Legguards
227098|3|4|Blood Guard's Dreadweave Walkers
227099|3|4|Blood Guard's Dreadweave Handwraps
227100|3|4|Knight-Lieutenant's Dreadweave Handwraps
227101|3|4|Knight-Lieutenant's Dreadweave Walkers
227102|3|4|Lieutenant Commander's Silk Mantle
227103|3|4|Lieutenant Commander's Silk Cowl
227104|3|4|Champion's Silk Mantle
227105|3|4|Champion's Silk Cowl
227106|3|4|Legionnaire's Silk Tunic
227107|3|4|Legionnaire's Silk Legguards
227108|3|4|Knight-Captain's Silk Tunic
227109|3|4|Knight-Captain's Silk Legguards
227110|3|4|Blood Guard's Silk Walkers
227111|3|4|Blood Guard's Silk Handwraps
227112|3|4|Knight-Lieutenant's Silk Walkers
227113|3|4|Knight-Lieutenant's Silk Handwraps
227114|3|4|Knight-Lieutenant's Silk Gauntlets
227115|3|4|Blood Guard's Silk Gauntlets
227116|3|4|Knight-Lieutenant's Silk Gloves
227117|3|4|Blood Guard's Silk Gloves
227118|3|4|Champion's Satin Hood
227119|3|4|Lieutenant Commander's Satin Mantle
227120|3|4|Champion's Satin Mantle
227121|3|4|Lieutenant Commander's Satin Hood
227122|3|4|Knight-Captain's Satin Tunic
227123|3|4|Legionnaire's Satin Legguards
227124|3|4|Legionnaire's Satin Tunic
227125|3|4|Knight-Captain's Satin Legguards
227126|3|4|Blood Guard's Satin Handwraps
227127|3|4|Blood Guard's Satin Walkers
227128|3|4|Knight-Lieutenant's Satin Handwraps
227129|3|4|Knight-Lieutenant's Satin Walkers
227130|3|4|Champion's Satin Epaulets
227131|3|4|Legionnaire's Satin Leggings
227132|3|4|Champion's Satin Crown
227133|3|4|Blood Guard's Satin Grips
227134|3|4|Blood Guard's Satin Treads
227135|3|4|Legionnaire's Satin Robe
227136|3|4|Lieutenant Commander's Satin Epaulets
227137|3|4|Knight-Captain's Satin Leggings
227138|3|4|Lieutenant Commander's Satin Crown
227139|3|4|Knight-Lieutenant's Satin Grips
227140|3|4|Knight-Lieutenant's Satin Treads
227141|3|4|Knight-Captain's Satin Robe
227142|3|4|Knight-Captain's Lamellar Breastplate
227143|3|4|Knight-Captain's Lamellar Leggings
227144|3|4|Lieutenant Commander's Lamellar Headguard
227145|3|4|Lieutenant Commander's Lamellar Shoulders
227146|3|4|Knight-Lieutenant's Lamellar Sabatons
227147|3|4|Knight-Lieutenant's Lamellar Gauntlets
227148|3|4|Lieutenant Commander's Lamellar Pauldrons
227149|3|4|Lieutenant Commander's Lamellar Helmet
227150|3|4|Knight-Captain's Lamellar Legguards
227151|3|4|Knight-Captain's Lamellar Chestplate
227152|3|4|Knight-Lieutenant's Lamellar Gloves
227153|3|4|Knight-Lieutenant's Lamellar Greaves
227154|3|4|Champion's Mail Pauldrons
227155|3|4|Champion's Mail Headguard
227156|3|4|Legionnaire's Mail Legguards
227157|3|4|Legionnaire's Mail Hauberk
227158|3|4|Blood Guard's Mail Greaves
227159|3|4|Blood Guard's Mail Vices
227160|3|4|Champion's Mail Spaulders
227161|3|4|Legionnaire's Mail Leggings
227162|3|4|Champion's Mail Helm
227163|3|4|Blood Guard's Mail Gauntlets
227164|3|4|Blood Guard's Mail Sabatons
227165|3|4|Legionnaire's Mail Breastplate
227166|3|4|Champion's Mail Epaulets
227167|3|4|Legionnaire's Mail Pants
227168|3|4|Champion's Mail Skullcap
227169|3|4|Blood Guard's Mail Gloves
227170|3|4|Blood Guard's Mail Boots
227171|3|4|Legionnaire's Mail Chestguard
227172|3|4|Lieutenant Commander's Dragonhide Shoulders
227173|3|4|Lieutenant Commander's Dragonhide Headguard
227174|3|4|Champion's Dragonhide Headguard
227175|3|4|Champion's Dragonhide Shoulders
227176|3|4|Knight-Captain's Dragonhide Chestpiece
227177|3|4|Legionnaire's Dragonhide Leggings
227178|3|4|Knight-Captain's Dragonhide Leggings
227179|3|4|Legionnaire's Dragonhide Chestpiece
227180|3|4|Blood Guard's Dragonhide Grips
227181|3|4|Blood Guard's Dragonhide Treads
227182|3|4|Knight-Lieutenant's Dragonhide Treads
227183|3|4|Knight-Lieutenant's Dragonhide Grips
227184|3|4|Champion's Dragonhide Spaulders
227185|3|4|Legionnaire's Dragonhide Pants
227186|3|4|Champion's Dragonhide Helm
227187|3|4|Blood Guard's Dragonhide Gloves
227188|3|4|Blood Guard's Dragonhide Boots
227189|3|4|Legionnaire's Dragonhide Armor
227190|3|4|Lieutenant Commander's Dragonhide Spaulders
227191|3|4|Knight-Captain's Dragonhide Pants
227192|3|4|Lieutenant Commander's Dragonhide Helm
227193|3|4|Knight-Lieutenant's Dragonhide Gloves
227194|3|4|Knight-Lieutenant's Dragonhide Boots
227195|3|4|Knight-Captain's Dragonhide Armor
227196|3|4|Knight-Captain's Dragonhide Tunic
227197|3|4|Knight-Lieutenant's Dragonhide Greaves
227198|3|4|Knight-Lieutenant's Dragonhide Gauntlets
227199|3|4|Lieutenant Commander's Dragonhide Headdress
227200|3|4|Knight-Captain's Dragonhide Legguards
227201|3|4|Lieutenant Commander's Dragonhide Pauldrons
227202|3|4|Legionnaire's Dragonhide Tunic
227203|3|4|Blood Guard's Dragonhide Greaves
227204|3|4|Blood Guard's Dragonhide Gauntlets
227205|3|4|Champion's Dragonhide Headdress
227206|3|4|Legionnaire's Dragonhide Legguards
227207|3|4|Champion's Dragonhide Pauldrons
227279|4|4|Loop of the Magister
227280|4|4|Craft of the Shadows
227282|4|4|Ring of the Dreaded Mist
227284|4|4|Band of the Beast
227285|1|12|Fantastic Inventions
227286|1|0|Warmed Rumsey Rum with Cream
227337|4|15|Feline Gloves and Belt Set
227338|4|15|Astral Gloves and Belt Set
227339|4|15|Guardian's Gloves and Belt Set
227340|4|15|Mender's Gloves and Belt Set
227341|4|15|Pursuer's Gloves and Belt Set
227342|1|15|Prowler's Gloves and Belt Set
227343|4|15|Merciful Gloves and Belt Set
227344|4|15|Radiant Gloves and Belt Set
227345|4|15|Divine Will Gloves and Belt Set
227346|4|15|Dawn Gloves and Belt Set
227347|4|15|Twilight Gloves and Belt Set
227348|4|15|Thrill's Gloves and Belt Set
227349|1|15|Battle's Gloves and Belt Set
227350|4|15|Relief's Gloves and Belt Set
227351|4|15|Eruption's Gloves and Belt Set
227352|4|15|Impact's Gloves and Belt Set
227353|1|15|Resolve's Gloves and Belt Set
227354|4|15|Corrupted Gloves and Belt Set
227355|1|15|Wicked Gloves and Belt Set
227356|4|15|Immoveable Gloves and Belt Set
227357|4|15|Unstoppable Gloves and Belt Set
227359|4|15|Feline Boots, Legs, and Shoulders Set
227360|4|15|Astral Boots, Legs, and Shoulders Set
227361|4|15|Guardian's Boots, Legs, and Shoulders Set
227365|4|15|Mender's Boots, Legs, and Shoulders Set
227366|4|15|Pursuer's Boots, Legs, and Shoulders Set
227367|1|15|Prowler's Boots, Legs, and Shoulders Set
227368|4|15|Merciful Boots, Legs, and Shoulders Set
227369|4|15|Radiant Boots, Legs, and Shoulders Set
227370|4|15|Divine Will Boots, Legs, and Shoulders Set
227371|4|15|Dawn Boots, Legs, and Shoulders Set
227372|4|15|Twilight Boots, Legs, and Shoulders Set
227373|4|15|Thrill's Boots, Legs, and Shoulders Set
227374|1|15|Battle's Boots, Legs, and Shoulders Set
227375|4|15|Relief's Boots, Legs, and Shoulders Set
227376|4|15|Eruption's Boots, Legs, and Shoulders Set
227377|4|15|Impact's Boots, Legs, and Shoulders Set
227378|1|15|Resolve's Boots, Legs, and Shoulders Set
227379|4|15|Corrupted Boots, Legs, and Shoulders Set
227380|1|15|Wicked Boots, Legs, and Shoulders Set
227381|4|15|Immoveable Boots, Legs, and Shoulders Set
227382|4|15|Unstoppable Boots, Legs, and Shoulders Set
227383|4|15|Feline Helm and Chestpiece Set
227384|4|15|Astral Helm and Chestpiece Set
227385|4|15|Guardian's Helm and Chestpiece Set
227387|4|15|Mender's Helm and Chestpiece Set
227388|4|15|Pursuer's Helm and Chestpiece Set
227389|1|15|Prowler's Helm and Chestpiece Set
227390|4|15|Merciful Helm and Chestpiece Set
227391|4|15|Radiant Helm and Chestpiece Set
227392|4|15|Divine Will Helm and Chestpiece Set
227393|4|15|Dawn Helm and Chestpiece Set
227394|4|15|Twilight Helm and Chestpiece Set
227395|4|15|Thrill's Helm and Chestpiece Set
227396|1|15|Battle's Helm and Chestpiece Set
227397|4|15|Relief's Helm and Chestpiece Set
227398|4|15|Eruption's Helm and Chestpiece Set
227399|4|15|Impact's Helm and Chestpiece Set
227400|1|15|Resolve's Helm and Chestpiece Set
227401|4|15|Corrupted Helm and Chestpiece Set
227402|1|15|Wicked Helm and Chestpiece Set
227403|4|15|Immoveable Helm and Chestpiece Set
227404|4|15|Unstoppable Helm and Chestpiece Set
227444|2|4|Idol of the Huntress
227451|1|15|Sending Sigil
227454|4|4|Tidal Loop
227455|4|4|Ocean's Breeze
227456|2|0|Rune of the Crimson Tempest
227530|4|15|Incandescent Belt
227531|4|15|Incandescent Bindings
227532|4|15|Incandescent Hood
227533|4|15|Incandescent Gloves
227534|4|15|Incandescent Leggings
227535|4|15|Incandescent Robe
227536|4|15|Incandescent Boots
227537|4|15|Incandescent Shoulderpads
227549|1|15|Scrap of Parchment
227552|0|15|Shredded Parchment
227658|2|12|Shadowsworn Note
227683|5|2|Sulfuras, Hand of Ragnaros
227684|4|2|Sulfuron Hammer
227685|1|12|Modified Shadow Scalpel
227686|1|12|Ornate Warhammer
227687|2|12|Orthas' Favorite Gold Tooth
227688|1|2|Gorehowl
227689|1|12|Partially-Digested Plate Armor
227690|1|12|Necrotic Runestone
227691|4|2|Blade of Hanna
227724|0|12|Bloodstained Commendation
227727|4|9|Plans: Sulfuron Hammer
227728|5|7|Eye of Sulfuras
227730|4|12|Thorium Brotherhood Contract
227743|1|12|Obsidian Power Core
227745|1|12|Family Heirloom
227746|2|0|Rune of the World Tree
227747|1|12|Family Records
227748|1|12|Survivor Journal
227749|2|0|Rune of the Falling Star
227750|4|15|Molten Scaled Bindings
227751|4|15|Molten Scaled Belt
227752|4|15|Molten Scaled Shoulderpads
227754|4|15|Molten Scaled Leggings
227755|4|15|Molten Scaled Helm
227756|4|15|Molten Scaled Gloves
227757|4|15|Molten Scaled Boots
227758|4|15|Molten Scaled Chest
227759|4|15|Scorched Core Gloves
227760|4|15|Scorched Core Bindings
227761|4|15|Scorched Core Belt
227762|4|15|Scorched Core Shoulderpads
227763|4|15|Scorched Core Leggings
227764|4|15|Scorched Core Helm
227765|4|15|Scorched Core Boots
227766|4|15|Scorched Core Chest
227767|1|12|Flamestone Cluster
227768|1|12|Dreamjuice
227796|1|0|Mysterious 'Darnassian' Scroll
227797|1|0|Mysterious 'Darnassian' Scroll
227801|2|7|Firelands Ember
227803|4|4|Dire Warbear Harness
227804|4|4|Dire Warbear Woolies
227805|4|4|Ferocity of the Timbermaw
227807|4|4|Dense Timbermaw Belt
227808|4|4|Rugged Mantle of the Timbermaw
227809|4|4|Studded Timbermaw Brawlers
227810|4|4|Dense Timbermaw Boots
227811|4|4|Defender of the Timbermaw
227812|2|4|Furbolg Medicine Pouch
227813|1|0|Drinkable Stratholme Holy Water
227814|4|4|Radiant Girdle of the Dawn
227815|4|4|Fine Dawn Treaders
227816|4|4|Argent Elite Boots
227817|4|4|Radiant Gloves of the Dawn
227818|4|4|Glowing Mantle of the Dawn
227819|3|12|Blessed Flame Mantle of the Dawn
227820|4|4|Tempered Dark Iron Bracers
227821|4|4|Flamekissed Molten Helm
227822|4|4|Thick Corehound Boots
227823|4|4|Fine Flarecore Gloves
227824|4|4|Tempered Dark Iron Helm
227825|4|2|Molten Dark Iron Destroyer
227826|4|2|Dark Iron Flame Reaver
227827|4|4|Molten Chain Girdle
227828|4|4|Lavawalker Belt
227829|4|4|Hardened Black Dragonscale Boots
227830|4|4|Fine Flarecore Mantle
227831|4|4|Fine Flarecore Robe
227832|4|2|Tempered Black Amnesty
227833|4|2|Glaive of Obsidian Fury
227834|4|4|Molten Chain Shoulders
227835|4|4|Tempered Dark Iron Gauntlets
227836|4|4|Tempered Dark Iron Leggings
227837|4|4|Thick Corehound Belt
227838|4|4|Shining Chromatic Gauntlets
227839|4|4|Fine Flarecore Leggings
227840|4|2|Implacable Blackguard
227841|4|4|Tempered Dark Iron Boots
227842|4|2|Ebon Fist
227843|4|2|Reaving Nightfall
227844|3|1|Leather-Reinforced Runecloth Bag
227845|4|2|Refined Arcanite Reaper
227847|4|4|Devilcore Leggings
227848|4|4|Devilcore Gauntlets
227849|4|2|Fiery Core Sharpshooter Rifle
227850|4|2|Sageblade of the Archmagus
227851|3|4|Hardened Black Dragonscale Breastplate
227852|3|4|Hardened Black Dragonscale Leggings
227853|3|4|Hardened Black Dragonscale Shoulders
227854|4|4|Mastercrafted Shifting Cloak
227857|3|2|Desecration
227858|3|2|Hammer of the Wild Gods
227859|4|4|Shimmering Dawnbringer Shoulders
227860|3|4|Incandescent Mooncloth Vest
227861|3|4|Incandescent Mooncloth Robe
227862|4|4|Incandescent Mooncloth Boots
227863|3|4|Incandescent Mooncloth Circlet
227864|3|4|Incandescent Mooncloth Leggings
227865|3|4|Fiery Plate Gauntlets of the Hidden Technique
227866|3|4|Masterwork Volcanic Shoulders
227867|3|4|Masterwork Volcanic Leggings
227868|3|4|Masterwork Volcanic Breastplate
227869|4|4|Brilliant Chromatic Cloak
227870|3|4|Tempest Gauntlets
227871|3|4|Tempered Dark Iron Plate
227872|3|4|Warcrest of the Great Chief
227873|3|4|Honed Blue Dragonscale Shoulders
227874|3|4|Honed Blue Dragonscale Leggings
227875|3|4|Honed Blue Dragonscale Breastplate
227876|4|4|Invincible Mail
227877|3|4|Living Green Dragonscale Leggings
227878|3|4|Living Green Dragonscale Gauntlets
227879|3|4|Living Green Dragonscale Breastplate
227880|3|2|Finely-Enchanted Battlehammer
227881|3|2|Tranquility
227882|4|4|Girdle of Arcane Insight
227883|3|4|Swift Flight Vambraces
227884|3|2|Deadly Heartseeker
227885|4|4|Stronger-hold Gauntlets
227886|4|2|Skyrider's Masterwork Stormhammer
227887|4|2|Hardened Frostguard
227888|4|4|Argent Elite Shoulders
227895|1|9|Pattern: Golden Mantle of the Dawn
227896|1|9|Pattern: Argent Boots
227897|1|9|Pattern: Argent Shoulders
227898|1|9|Pattern: Honed Blue Dragonscale Breastplate
227899|3|9|Pattern: Honed Blue Dragonscale Shoulders
227900|3|9|Pattern: Living Green Dragonscale Leggings
227901|3|9|Plans: Tempered Dark Iron Plate
227902|1|9|Pattern: Hardened Black Dragonscale Breastplate
227903|3|9|Pattern: Hardened Black Dragonscale Leggings
227904|3|9|Pattern: Hardened Black Dragonscale Shoulders
227905|3|9|Plans: Skyrider's Masterwork Stormhammer
227906|2|9|Pattern: Masterwork Volcanic Breastplate
227907|2|9|Pattern: Masterwork Volcanic Shoulders
227908|2|9|Pattern: Masterwork Volcanic Leggings
227909|3|9|Plans: Fiery Plate Gauntlets of the Hidden Technique
227910|4|9|Pattern: Brilliant Chromatic Cloak
227911|1|12|Head of Rend Blackhand
227912|1|12|Applied Divinity
227914|1|12|Owlbeast Pineal Gland
227915|4|4|Duke's Domain
227921|2|0|Rune of Knives
227922|2|0|Rune of the Swashbuckler
227923|3|4|Water Treads
227924|1|15|Unusual Flask
227925|3|13|Beacon of Hydraxis
227926|3|12|Hydraxian Coronation
227927|4|13|Oath of the Sea
227928|1|15|Toolbox Key
227930|1|15|Safe Box Key
227931|1|15|Hidden Bundle
227932|1|15|Rusty Crowbar
227934|3|2|Flame Wrath
227935|3|2|Hammer of the Fallen Thane
227936|3|4|Diplomat Ring
227937|1|12|Puzzle Box
227938|1|12|Shard of Light
227939|1|12|Shard of Light
227940|3|2|Lord General's Sword
227941|3|2|Wraith Scythe
227947|3|4|Golem Fitted Pauldrons
227948|3|2|Angerforge's Battle Axe
227952|4|4|Savage Gladiator Chain
227955|3|4|Savage Gladiator Helm
227956|3|4|Deathdealer Breastplate
227957|3|4|Savage Gladiator Greaves
227958|3|4|Ghostshroud
227959|3|4|Legplates of the Eternal Guardian
227960|3|2|Impervious Giant
227961|3|4|Savage Gladiator Grips
227962|3|2|Flarethorn
227963|3|2|Blood-etched Blade
227964|3|4|Luminary Kilt
227965|3|4|Omnicast Boots
227967|3|4|Second Wind
227970|3|4|Cape of the Fire Salamander
227971|3|4|Molten Fists
227972|3|4|Burst of Knowledge
227973|4|4|Circle of Flame
227974|3|2|Lavastone Hammer
227978|3|4|Magmus Stone
227980|3|4|Robes of the Royal Crown
227981|3|2|Dreadforge Retaliator
227982|3|2|Guiding Stave of Wisdom
227983|3|4|Dark Iron Seal
227984|3|4|Thaurissan's Royal Scepter
227985|3|4|The Emperor's New Cape
227986|3|4|Wristguards of Renown
227987|3|4|Sash of the Grand Hunt
227988|3|4|Imperial Jewel
227990|3|4|Hand of Injustice
227991|4|2|Ironfoe
227992|3|4|Death Knight Sabatons
227993|3|2|Ebon Hilt of Marduk
227994|3|2|Frightskull Shaft
227996|3|2|Ancient Bone Bow
227997|3|2|Barovian Family Sword
227998|3|4|Bloodmail Boots
227999|3|4|Deathbone Sabatons
228000|3|4|Deathbone Chestplate
228001|3|4|Stoneform Shoulders
228002|3|4|Deathbone Girdle
228003|3|4|Bloodmail Legguards
228004|3|4|Windreaver Greaves
228005|3|4|Clutch of Andros
228006|3|4|Deathbone Gauntlets
228007|3|4|Gargoyle Slashers
228008|3|4|Deathbone Legguards
228009|3|4|Necropile Boots
228010|3|4|Necropile Mantle
228011|3|4|Necropile Cuffs
228012|3|4|Bloodmail Hauberk
228013|3|4|Necropile Robe
228014|3|4|Bloodmail Belt
228015|3|2|Frightalon
228016|3|4|Dimly Opalescent Ring
228017|3|4|Skullsmoke Pants
228018|3|4|Necropile Leggings
228019|3|4|Heart of the Fiend
228020|3|4|Bloodmail Gauntlets
228021|3|2|Witchblade
228022|4|2|Headmaster's Charge
228023|4|4|Alanna's Embrace
228024|3|2|Silent Fang
228025|3|4|Tombstone Breastplate
228026|3|2|Blade of Blackwood
228027|3|2|Iceblade Hacker
228028|3|2|Blade of Necromancy
228029|3|2|Gravestone War Axe
228030|3|2|Malicious Axe
228031|3|4|Darkshade Gloves
228032|3|4|Bone Ring Helm
228033|3|2|Hammer of Divine Might
228034|3|4|Shivery Handwraps
228036|3|4|Death's Clutch
228037|3|4|Rattlecage Buckler
228038|3|4|Ironweave Pants
228039|3|4|Spellbound Tome
228040|3|4|Ghostloom Leggings
228041|3|4|Wraithplate Leggings
228042|3|4|Detention Strap
228044|3|4|Maelstrom Leggings
228045|3|4|Necromantic Band
228046|3|4|Don Mauricio's Band of Domination
228047|3|4|Amalgam's Band
228050|3|2|Satyr's Bow
228051|3|2|Quel'dorai Channeling Rod
228052|3|2|Waveslicer
228053|3|4|Fervent Helm
228054|3|4|Tempest Talisman
228055|3|4|Energized Chestplate
228056|3|2|Fiendish Machete
228057|3|4|Ring of Demonic Potency
228058|3|4|Bulky Iron Spaulders
228059|3|4|Denwatcher's Shoulders
228060|3|4|Heliotrope Cloak
228061|3|4|Brightspark Gloves
228062|3|4|Insightful Hood
228063|3|4|Warpwood Binding
228064|3|4|Observer's Shield
228065|3|4|Cyclone Spaulders
228066|3|4|Ironweave Gloves
228067|3|4|Elder Magus Pendant
228068|3|4|Mugger's Belt
228069|3|4|Eldritch Reinforced Legplates
228070|3|4|Ogre Forged Hauberk
228074|3|4|Hands of Temptation
228075|3|2|Spear of Destiny
228076|3|4|Burning Ring of Fire
228077|3|4|Dreambough
228078|3|4|Accursed Chalice
228079|3|4|Cloak of Leaves
228080|3|4|Resin Loop
228081|3|4|Germinating Poisonseed
228082|3|2|Warsong Axe
228083|3|4|Gloaming Treeheart
228084|3|4|Miniaturized Fire Extinguisher
228085|3|4|Phaseshifted Legion Band
228086|3|2|Repurposed Shredderblade
228087|3|4|Supercharged Silver Moebius
228088|3|4|Shredder Operator's Dogtags
228089|3|4|Woodcarved Moonstalker
228090|3|2|Cenarion Ritual Dagger
228091|3|4|Thorned Boots
228092|3|4|Druidic Mantle
228093|3|4|Dark Heart of Darkness
228094|3|2|Dreadlord's Blade
228100|4|4|Drape of the Fire Lord
228101|4|4|Hide of the Behemoth
228102|4|4|Majordomo's Drape
228103|3|4|Nathrezim's Greaves
228104|3|4|Robes of Elune
228105|4|12|Everburning Flame Core
228106|3|4|Shield of Life and Death
228107|3|2|Fallen Huntress' Longbow
228108|3|2|Shadow of Gorehowl
228109|3|4|Legguards of Sacrifice
228111|3|4|Mask of the Godslayer
228112|3|4|Nightmare Gown
228113|3|4|Cold Embrace
228114|3|9|Plans: Refined Arcanite Reaper
228117|3|9|Plans: Refined Arcanite Champion
228118|4|9|Plans: Stronger-hold Gauntlets
228119|3|9|Pattern: Devilcore Gauntlets
228120|3|9|Pattern: Devilcore Leggings
228121|2|9|Pattern: Leather-Reinforced Runecloth Bag
228122|4|4|The Molten Core
228123|2|0|Jubilant Epiphany
228124|2|0|Oneiric Epiphany
228125|4|2|Refined Arcanite Champion
228126|2|0|Aperitive Epiphany
228127|4|4|Wristguards of Instability
228128|4|2|Hammer of The Black Anvil
228129|4|12|Shadowflame Skull
228130|2|15|Altruist Ward
228131|2|15|Altruist Ward
228132|1|5|Undead Potatoes
228133|1|5|Magma or Lava?
228134|1|5|Northern Kalimdor - A Comprehensive Guide
228135|1|5|A Study of the Light
228136|1|5|Ka-Boom!
228137|4|4|Heart of Golemagg
228138|1|5|The Knight and the Lady
228139|4|2|Fist of the Firesworn
228140|1|5|Scourge: Undead Menace or Misunderstood?
228141|1|5|Necromancy 101
228142|4|4|Earth and Fire
228143|4|2|Shadowflame Sword
228144|1|12|Strange Note
228145|4|2|Magmadar's Right Claw
228146|4|2|Magmadar's Left Claw
228147|4|4|Magmadar's Horn
228160|4|2|Faithbringer
228162|4|2|Deceit
228163|4|4|Broodmother's Brooch
228165|4|2|Dragonslayer's Javelin
228166|4|2|Key to the City
228168|4|2|Goblin Gear Grinder
228169|4|2|The Attitude Adjustor
228170|4|2|Makeshift South Sea Oar
228171|3|1|Kezan Cash Carrier
228172|2|4|Shadowtooth Illusion Ward
228173|3|4|Libram of the Consecrated
228174|3|4|Libram of the Devoted
228175|3|4|Libram of Holy Alacrity
228176|3|4|Totem of Thunder
228177|3|4|Totem of Raging Fire
228178|3|4|Totem of Earthen Vitality
228179|3|4|Totem of the Plains
228180|3|4|Idol of the Swarm
228181|3|4|Idol of Exsanguination (Cat)
228182|3|4|Idol of Exsanguination (Bear)
228183|3|4|Idol of the Grove
228184|4|4|Goblin Clothesline
228185|4|2|Broken Bottle of Goblino Noir
228186|3|4|Abandoned Wedding Band
228187|3|2|Stick of the South Sea
228188|4|4|Prestor's Hairpin
228189|3|13|Gift of Gob
228190|4|4|Knowledge of the Timbermaw
228191|1|12|Shimmering Molten Mineral
228222|2|0|Handbook of Valor of Azeroth
228227|4|0|Scroll of Overwhelming Power
228229|4|2|Obsidian Edged Blade
228230|4|2|Refined Hammer of the Titans
228238|2|0|Testament of Divine Steed
228239|4|4|Robe of Volatile Power
228240|4|4|Flamewaker Legplates
228242|4|4|Heavy Dark Iron Ring
228243|4|4|Ring of Spell Power
228244|4|4|Manastorm Leggings
228245|4|4|Salamander Scale Pants
228246|4|4|Wristguards of Stability
228247|4|4|Choker of Enlightenment
228248|4|2|Earthshaker
228249|4|4|Medallion of Steadfast Might
228250|4|9|Plans: Stronger-hold Gauntlets
228251|3|9|Pattern: Living Green Dragonscale Gauntlets
228252|4|2|Striker's Mark
228253|4|4|Sabatons of the Flamewalker
228254|4|4|Magma Tempered Boots
228255|4|4|Talisman of Ephemeral Power
228256|4|4|Mana Igniting Cord
228257|4|4|Aged Core Leather Gloves
228258|4|4|Deep Earth Spaulders
228259|4|4|Fire Runed Grimoire
228260|4|4|Flameguard Gauntlets
228261|4|4|Quick Strike Ring
228262|4|2|Crimson Shocker
228263|4|2|Sorcerous Dagger
228264|4|2|Aurastone Hammer
228265|4|2|Brutality Blade
228266|4|4|Drillborer Disk
228267|4|2|Gutgore Ripper
228268|4|4|Seal of the Archmagus
228269|4|2|Azuresong Mageblade
228270|4|2|Blastershot Launcher
228271|4|2|Staff of Dominance
228272|4|2|Shadowstrike
228273|4|2|Thunderstrike
228274|4|4|Cauterizing Band
228275|4|4|Core Forged Greaves
228276|4|9|Pattern: Mastercrafted Shifting Cloak
228277|4|2|Core Hound Tooth
228278|4|2|Hyperthermically Insulated Lava Dredger
228279|4|4|Fireguard Shoulders
228280|4|4|Fireproof Cloak
228281|4|4|Gloves of the Hypnotic Flame
228282|4|4|Sash of Whispered Secrets
228283|4|4|Wild Growth Spaulders
228284|4|4|Wristguards of True Flight
228285|4|4|Helm of the Lifegiver
228286|4|4|Band of Accuria
228287|4|4|Band of Sulfuras
228288|4|2|Bonereaver's Edge
228289|4|4|Choker of the Fire Lord
228290|4|4|Cloak of the Shrouded Mists
228291|4|4|Crown of Destruction
228292|4|4|Dragon's Blood Cape
228293|4|4|Essence of the Pure Flame
228294|4|4|Malistar's Defender
228295|4|4|Onslaught Girdle
228296|4|2|Perdition's Blade
228297|4|4|Shard of the Flame
228298|4|4|Shard of the Scale
228299|4|2|Spinal Reaper
228301|3|9|Pattern: Swift Flight Vambraces
228303|1|9|Pattern: Incandescent Mooncloth Robe
228304|3|9|Schematic: Fiery Core Sharpshooter Rifle
228305|3|9|Plans: Refined Hammer of the Titans
228306|1|9|Plans: Desecration
228307|3|9|Plans: Deadly Heartseeker
228308|2|9|Plans: Tranquility
228309|1|9|Pattern: Living Green Dragonscale Breastplate
228310|3|9|Plans: Hardened Frostguard
228311|2|9|Plans: Finely-Enchanted Battlehammer
228312|4|9|Plans: Invincible Mail
228313|3|9|Plans: Tempest Gauntlets
228314|3|9|Plans: Warcrest of the Great Chief
228315|4|9|Plans: Sageblade of the Archmagus
228316|3|9|Pattern: Incandescent Mooncloth Vest
228317|3|9|Pattern: Incandescent Mooncloth Circlet
228318|3|9|Pattern: Incandescent Mooncloth Leggings
228319|3|9|Pattern: Girdle of Arcane Insight
228323|2|12|Copper Slaughter Coin
228324|4|12|Gold Slaughter Coin
228325|3|12|Silver Slaughter Coin
228326|1|15|Satchel of Copper Slaughter Coins
228327|1|15|Satchel of Silver Slaughter Coins
228332|4|2|Lok'delar, Stave of the Ancient Keepers
228334|4|2|Rhok'delar, Longbow of the Ancient Keepers
228335|4|2|Benediction
228336|4|2|Anathema
228340|4|4|Unmelting Ice Girdle
228345|4|4|Leggings of Arcane Supremacy
228347|4|2|Typhoon
228349|4|2|Eskhandar's Left Claw
228350|4|2|Eskhandar's Right Claw
228351|4|4|Doomhide Gauntlets
228352|4|4|Fel Infused Leggings
228353|4|4|Infernal Headcage
228354|4|4|Blazefury Medallion
228355|4|4|Flayed Doomguard Belt
228356|4|2|Amberseal Keeper
228357|4|4|Blacklight Bracer
228359|4|4|Ring of Entropy
228360|4|4|Eskhandar's Pelt
228381|4|2|Cold Snap
228382|4|2|Fang of the Mystics
228383|4|4|Puissant Cape
228384|4|4|Snowblind Shoes
228385|4|4|Crystal Adorned Crown
228389|4|4|Drape of Benediction
228397|4|2|Empyrean Demolisher
]==],
[==[
228410|4|2|Dreadblade of the Destructor
228432|4|4|Whistle of the Beast
228459|4|2|Obsidian Edged Blade
228460|4|2|Spinal Reaper
228461|4|2|Bonereaver's Edge
228462|4|2|Aurastone Hammer
228463|4|2|Earthshaker
228464|3|4|Royal Seal of Eldre'Thalas
228465|3|4|Royal Seal of Eldre'Thalas
228466|3|4|Royal Seal of Eldre'Thalas
228467|3|4|Royal Seal of Eldre'Thalas
228468|3|4|Tanglemoss Leggings
228469|3|4|Tarnished Elven Ring
228470|3|4|Silvermoon Leggings
228471|3|2|Stoneshatter
228472|3|2|Distracting Dagger
228473|3|2|Unyielding Maul
228474|3|4|Mindsurge Robe
228475|3|4|Diabolic Mantle
228476|4|4|Embroidered Belt of the Archmage
228477|4|9|Pattern: Embroidered Belt of the Archmage
228478|3|2|Barbarous Blade
228479|3|4|Leggings of Destruction
228480|3|4|Crown of the Ogre King
228484|3|2|Rod of the Ogre Magi
228486|4|2|Treant's Bane
228498|4|2|Dreadblade of the Destructor
228500|3|4|Mask of the Unforgiven
228501|3|4|Songbird Blouse
228502|3|13|Piccolo of the Flaming Fire
228503|3|4|Woollies of the Prancing Minstrel
228504|3|4|Rainbow Girdle
228505|3|4|Royal Tribunal Cloak
228506|4|2|Brutality Blade
228508|4|2|Hammer of The Black Anvil
228511|4|2|Perdition's Blade
228513|3|4|Vambraces of the Sadist
228514|3|4|Timmy's Galoshes
228515|3|4|Grimgore Noose
228516|3|2|Peacemaker
228517|4|2|Azuresong Mageblade
228518|3|4|Magistrate's Cuffs
228519|4|2|Striker's Mark
228520|3|4|Soulstealer Mantle
228521|3|4|Shadowy Laced Handwraps
228522|3|2|Willey's Portable Howitzer
228523|3|4|Cannonball Runner
228524|3|4|The Postmaster's Seal
228525|3|4|The Postmaster's Tunic
228527|3|4|The Postmaster's Trousers
228528|3|4|The Postmaster's Band
228529|3|4|The Postmaster's Treads
228530|3|4|Chitinous Plate Legguards
228531|3|4|Thuzadin Sash
228532|3|4|Morlune's Bracer
228533|3|4|Nacreous Shell Necklace
228534|3|4|Plaguehound Leggings
228535|3|2|Bone Slicing Hatchet
228536|3|4|Star of Mystaria
228537|3|4|Dracorian Gauntlets
228538|3|4|Seal of Rivendare
228539|4|4|Book of the Dead
228540|3|4|Crown of Tyranny
228541|3|2|Gift of the Elven Magi
228542|3|2|Skullforge Reaver
228543|4|2|Runeblade of Baron Rivendare
228544|3|2|Hammer of the Grand Crusader
228545|3|4|Grand Crusader's Helm
228546|3|4|Shroud of the Nathrezim
228547|3|4|Ironweave Robe
228548|3|4|Scepter of Interminable Focus
228551|3|4|Tunic of the Crescent Moon
228552|3|4|Gauntlets of Deftness
228553|3|4|Helm of the Executioner
228554|3|4|Demonskin Gloves
228555|3|2|Phase Blade
228556|3|4|Butcher's Apron
228557|3|4|Swiftdart Battleboots
228558|3|4|Funeral Cuffs
228559|3|2|Blackcrow
228561|3|4|Trueaim Gauntlets
228562|3|4|Demonic Runed Spaulders
228563|3|4|Globe of D'sak
228564|3|4|Ogreseer Tower Boots
228565|3|4|Magus Ring
228566|3|4|Starfire Tiara
228567|3|4|Chiselbrand Girdle
228568|3|4|Backusarian Gauntlets
228570|3|2|Fist of Omokk
228571|3|4|Plate of the Shaman King
228572|3|4|Brazecore Armguards
228573|3|2|Venomspitter
228574|3|4|Talisman of Evasion
228575|3|4|Slashclaw Bracers
228576|3|4|Smolderweb's Eye
228577|3|4|Gilded Gauntlets
228578|3|4|Dustfeather Sash
228579|3|4|Crystallized Girdle
228583|3|4|Truestrike Shoulders
228584|3|4|Emberfury Talisman
228585|4|4|Mark of the Dragon Lord
228586|3|2|Chillpike
228587|3|2|Trindlehaven Staff
228588|3|4|Reiver Claws
228589|3|4|Heart of the Scale
228590|3|4|Sunderseer Mantle
228591|3|4|Rhombeard Protector
228592|3|2|Fang of the Crystal Spider
228593|3|4|Wind Dancer Boots
228594|3|4|Kayser's Boots of Precision
228595|3|4|Marksman's Girdle
228596|3|4|Ironweave Belt
228597|3|4|Ironweave Boots
228598|3|4|Ironweave Bracers
228599|3|4|Heart of Wyrmthalak
228600|3|2|The Jaw Breaker
228601|3|2|Relentless Scythe
228602|3|4|Flame Walkers
228603|3|2|Blackhand Doomsaw
228604|3|4|Eye of Rend
228605|3|4|Bonespike Shoulder
228606|4|2|Blackblade of Shahram
228615|2|0|Otherworldly Treasure
228650|3|4|Warmaster Legguards
228651|3|4|Battleborn Armbraces
228652|3|2|Dal'Rend's Tribal Guardian
228653|3|2|Dal'Rend's Sacred Charge
228659|4|12|Ancient Rune Etched Stave
228660|3|4|Blademaster Leggings
228661|3|4|Tristam Legguards
228662|3|4|Blackmist Armguards
228663|3|4|Bloodmoon Cloak
228664|3|4|Frostweaver Cape
228666|3|2|Seeping Willow
228667|3|4|Painweaver Band
228669|3|4|Tooth of Gnarr
228670|3|4|Brigam Girdle
228672|3|4|Handcrafted Mastersmith Girdle
228675|3|4|Band of Rumination
228676|3|4|Feralsurge Girdle
228677|3|4|Spellweaver's Turban
228678|3|4|Draconic Infused Emblem
228679|4|2|Quel'Serrar
228680|4|15|Nostro's Compendium of Dragon Slaying
228681|3|4|Ironweave Cowl
228682|3|2|Lord Valthalak's Staff of Command
228683|3|4|Rune Band of Wizardry
228684|3|4|Pendant of Celerity
228685|4|4|Onyxia Tooth Pendant
228686|4|4|Onyxia Blood Talisman
228687|4|4|Dragonslayer's Signet
228688|4|12|Head of Onyxia
228689|4|12|Head of Onyxia
228690|3|15|The Light and How to Swing It
228691|3|15|Garona: A Study on Stealth and Treachery
228692|3|15|Codex of Defense
228693|3|15|The Arcanist's Cookbook
228695|4|12|A Dull and Flat Elven Blade
228696|4|12|Heated Ancient Blade
228697|4|12|Treated Ancient Blade
228699|3|4|Ring of Demonic Guile
228700|3|4|Ironweave Mantle
228701|4|2|Core Hound Tooth
228702|4|4|Drillborer Disk
228703|3|4|Coldstone Slippers
228704|3|4|Tattered Leather Hood
228722|3|4|Hand of Justice
228746|4|15|Fluorescent Green Mechanostrider
228747|4|15|Reins of the Golden Sabercat
228748|4|15|Whistle of the Mottled Blood Raptor
228749|4|12|Splinter of Nordrassil
228757|4|2|Felstriker
228759|4|4|Eskhandar's Collar
228797|2|0|Grimoire of Fel Armor
228912|1|13|Artifact Storage Key
228922|4|2|Staff of Dominance
228924|4|4|Tempered Dark Iron Boots
228925|4|4|Tempered Dark Iron Boots
228926|4|4|Tempered Dark Iron Boots
228927|4|4|Tempered Dark Iron Boots
228928|4|4|Tempered Dark Iron Boots
228929|4|4|Tempered Dark Iron Boots
228955|4|4|Ancient Cornerstone Grimoire
228978|3|0|Enchanted Sigil: Flowing Waters
228979|4|9|Enchanted Sigil: Flowing Waters
228980|1|0|Conductive Shield Coating
228981|1|9|Formula: Conductive Shield Coating
228982|3|9|Formula: Enchant Shield - Law of Nature
228992|2|1|Onyxia Hide Backpack
228993|3|9|Pattern: Bottomless Bag
228994|3|1|Bottomless Bag
229008|1|9|Formula: Enchant Cloak - Greater Fire Resistance
229009|1|9|Formula: Enchant Cloak - Greater Nature Resistance
229055|0|15|Frayed Aranasi Silk
229056|0|15|Pumice Chunk
229057|0|15|Impounded Goods
229352|4|12|Intelligence Findings
229362|1|15|Storehouse Key
229368|3|15|Gill'el
229372|4|2|Gutgore Ripper
229373|4|2|Faithbringer
229374|4|2|Fist of the Firesworn
229376|4|2|Sorcerous Dagger
229377|4|2|Magmadar's Left Claw
229378|4|2|Magmadar's Right Claw
229379|4|2|Eskhandar's Right Claw
229380|4|2|Shadowstrike
229381|4|2|Thunderstrike
229382|4|2|Hyperthermically Insulated Lava Dredger
229415|1|12|Survival Supplies
229416|1|12|Warm Fur
229749|4|2|Truthbearer
229806|4|2|Truthbearer
229894|2|12|Dream Emerald
229897|1|15|Scroll: Create Signet of Beckoning
229906|4|4|Tarnished Bronze Scale
229909|4|2|Staff of Order
229910|4|2|Scythe of Chaos
229911|1|12|Caius' Dream Eater
229964|4|12|Demon Lord's Hoof
229965|3|12|The Eye of Az'olgothal
229966|4|4|Torque of the Silver Hand
229971|4|2|Staff of Inferno
229972|4|2|Staff of Rime
230002|4|2|Mortal Finisher
230008|4|13|Linkue Combatant Icon
230018|1|12|Mannoroc Orb Fragments
230224|5|2|Thunderfury, Blessed Blade of the Windseeker
230237|4|4|Arcane Infused Gem
230238|4|4|The Black Book
230239|4|4|Gloves of Rapid Evolution
230240|4|4|Mantle of the Blackwing Cabal
230241|4|2|Spineshatter
230242|4|2|The Untamed Blade
230243|4|4|Mind Quickening Gem
230244|4|4|Shapeshifter's Sigil
230245|4|4|Pendant of the Fallen Dragon
230246|4|4|Helm of Endless Rage
230247|4|2|Dragonfang Blade
230248|4|4|Red Dragonscale Protector
230249|4|4|Lifegiving Gem
230250|4|4|Venomous Totem
230251|4|4|Black Brood Pauldrons
230252|4|4|Bracers of Arcane Accuracy
230253|4|2|Heartstriker
230254|4|2|Maladath, Runed Blade of the Black Flight
230255|4|4|Taut Dragonhide Belt
230256|4|4|Drake Talon Pauldrons
230257|4|4|Ring of Blackrock
230269|4|4|Rejuvenating Gem
230270|4|2|Shadow Wing Focus Staff
230271|4|2|Drake Talon Cleaver
230272|4|4|Scrolls of Blinding Light
230273|4|4|Natural Alignment Crystal
230274|4|4|Black Ash Robe
230275|4|4|Firemaw's Clutch
230276|4|2|Claw of the Black Drake
230277|4|4|Cloak of Firemaw
230278|4|4|Legguards of the Fallen Crusader
230279|4|4|Primalist's Linked Legguards
230280|4|4|Aegis of Preservation
230281|4|4|Band of Forced Concentration
230282|4|4|Drake Fang Talisman
230723|4|4|Ebony Flame Gloves
230725|4|4|Malfurion's Blessed Bulwark
230726|4|2|Dragonbreath Hand Cannon
230733|4|4|Shroud of Pure Thought
230734|4|4|Circle of Applied Force
230735|4|4|Emberweave Leggings
230736|4|4|Styleen's Impeding Scarab
230737|4|2|Dragon's Touch
230738|4|2|Herald of Woe
230739|4|4|Angelista's Grasp
230740|4|4|Taut Dragonhide Shoulderpads
230741|4|4|Chromatic Boots
230742|4|4|Taut Dragonhide Gloves
230743|4|4|Shimmering Geta
230744|4|4|Elementium Threaded Cloak
230745|4|4|Girdle of the Fallen Crusader
230746|4|4|Empowered Leggings
230747|4|2|Chromatically Tempered Sword
230751|2|4|Ninja Obi
230794|4|2|Claw of Chromaggus
230800|4|4|Primalist's Linked Waistguard
230801|4|2|Ashjre'thul, Crossbow of Smiting
230802|4|4|Elementium Reinforced Bulwark
230804|4|4|Cloak of the Brood Lord
230805|4|4|Boots of the Shadow Flame
230806|4|4|Therazane's Link
230808|4|4|Archimtiros' Ring of Reckoning
230810|4|4|Neltharion's Tear
230811|4|4|Pure Elementium Band
230812|4|4|Mish'undare, Circlet of the Mind Flayer
230813|4|2|Staff of the Shadow Flame
230818|4|2|Ashkandi, Greatsword of the Brotherhood
230837|4|2|Crul'shorukh, Edge of Chaos
230838|4|2|Lok'amir il Romathis
230839|4|4|Master Dragonslayer's Ring
230840|4|4|Master Dragonslayer's Medallion
230841|4|4|Master Dragonslayer's Orb
230842|4|4|Cloak of Draconic Might
230843|4|4|Boots of Pure Thought
230844|4|2|Draconic Maul
230845|4|2|Doom's Edge
230846|4|4|Band of Dark Dominion
230847|4|2|Essence Gatherer
230848|4|4|Interlaced Shadow Jerkin
230849|4|4|Ringo's Blizzard Boots
230854|4|4|Band of Servitude
230855|4|4|Seal of the Gurubashi Berserker
230856|4|4|Belt of Untapped Power
230857|4|4|Blooddrenched Mask
230858|4|4|Cloak of the Hakkari Worshipers
230859|4|4|Gloves of the Tormented
230860|4|4|Might of the Tribe
230861|4|4|Sacrificial Gauntlets
230862|4|4|Zulian Headdress
230863|4|2|Zulian Scepter of Rites
230864|4|4|Runed Bloodstained Hauberk
230865|4|2|Fang of Venoxis
230866|4|4|Blooddrenched Footpads
230867|4|4|Zanzil's Band
230868|4|2|Zulian Stone Axe
230903|4|12|Scroll: Essence of Fire
230904|4|12|Scroll: SEENECS FO RIEF
230908|4|12|Imbued Essence of Fire
230909|4|12|Depleted Essence of Fire
230911|4|2|Jeklik's Crusher
230912|4|4|Animist's Spaulders
230913|4|4|Jeklik's Opaline Talisman
230914|4|4|Peacekeeper Boots
230915|4|4|Primalist's Band
230916|4|4|Seafury Boots
230917|4|4|Flowing Ritual Robes
230918|4|2|Mar'li's Touch
230919|4|4|Bloodstained Greaves
230920|4|4|Mar'li's Eye
230921|4|4|Band of Jin
230922|4|4|Talisman of Protection
230923|4|4|Betrayer's Boots
230925|4|2|Thekal's Grasp
230926|4|4|Peacekeeper Leggings
230927|4|4|Ritualistic Legguards
230928|4|4|Seafury Leggings
230929|4|4|Seal of Jin
230930|4|2|Zulian Slicer
230934|4|2|Arlokk's Grasp
230939|4|2|Will of Arlokk
230941|4|4|Arlokk's Hoodoo Stick
230942|4|4|Bloodsoaked Greaves
230943|4|4|Overlord's Onyx Band
230944|3|1|Panther Hide Sack
230946|4|12|Scroll: SEENECS FO ROFTS
230947|4|12|Scroll: Essence of Frost
230948|4|12|Imbued Essence of Frost
230949|4|12|Depleted Essence of Frost
230984|4|15|Incomplete Staff of Order
230989|4|2|Bloodlord's Defender
230991|4|2|Halberd of Smiting
230992|4|2|Warblade of the Hakkari
230993|4|2|Mandokir's Sting
230994|4|4|Animist's Leggings
230995|4|4|Blooddrenched Grips
230996|4|4|Bloodsoaked Pauldrons
230997|4|4|Bloodtinged Kilt
230998|4|4|Hakkari Loa Cloak
230999|4|4|Overlord's Crimson Band
231000|4|4|Primalist's Seal
231001|4|4|Zanzil's Seal
231002|4|2|Jin'do's Hexxer
231003|4|4|Jin'do's Evil Eye
231004|4|2|Jin'do's Judgement
231005|4|4|Jin'do's Bag of Whammies
231006|4|4|Animist's Boots
231007|4|4|Bloodstained Coif
231008|4|4|Bloodstained Legplates
231009|4|4|Blooddrenched Leggings
231010|4|4|Bloodsoaked Gauntlets
231011|4|4|Bloodtinged Gloves
231012|4|4|Overlord's Embrace
231013|4|4|The Hexxer's Cover
231014|4|4|Lizardscale Eyepatch
231015|0|4|Twill Mask
231016|4|2|Nat Pagle's Fish Terminator
231023|4|4|Wristguards of Wrath
231024|4|4|Waistguard of Wrath
231025|4|4|Pauldrons of Wrath
231026|4|4|Legguards of Wrath
231027|4|4|Faceguard of Wrath
231028|4|4|Handguards of Wrath
231029|4|4|Sabatons of Wrath
231030|4|4|Chestguard of Wrath
231031|4|4|Bracers of Wrath
231032|4|4|Belt of Wrath
231033|4|4|Shoulders of Wrath
231034|4|4|Legplates of Wrath
231035|4|4|Helm of Wrath
231036|4|4|Gauntlets of Wrath
231037|4|4|Greaves of Wrath
231038|4|4|Breastplate of Wrath
231039|4|4|Bloodfang Spaulders
231040|4|4|Bloodfang Chestpiece
231041|4|4|Bloodfang Boots
231042|4|4|Bloodfang Gloves
231043|4|4|Bloodfang Hood
231044|4|4|Bloodfang Pants
231045|4|4|Bloodfang Belt
231046|4|4|Bloodfang Bracers
231047|4|4|Bloodfang Shoulderpads
231048|4|4|Bloodfang Chestguard
231049|4|4|Bloodfang Footpads
231050|4|4|Bloodfang Handguards
231051|4|4|Bloodfang Cowl
231052|4|4|Bloodfang Legguards
231053|4|4|Bloodfang Waistguard
231054|4|4|Bloodfang Wristguards
231055|4|4|Dragonstalker's Bracers
231056|4|4|Dragonstalker's Belt
231057|4|4|Dragonstalker's Spaulders
231058|4|4|Dragonstalker's Legguards
231059|4|4|Dragonstalker's Helm
231060|4|4|Dragonstalker's Gauntlets
231061|4|4|Dragonstalker's Greaves
231062|4|4|Dragonstalker's Breastplate
231063|4|4|Dragonstalker's Vambraces
231065|4|4|Dragonstalker's Girdle
231066|4|4|Dragonstalker's Pauldrons
231067|4|4|Dragonstalker's Pants
231068|4|4|Dragonstalker's Skullcap
231069|4|4|Dragonstalker's Grips
231070|4|4|Dragonstalker's Sabatons
231071|4|4|Dragonstalker's Armor
231072|4|4|Nemesis Boots
231073|4|4|Nemesis Gloves
231074|4|4|Nemesis Skullcap
231075|4|4|Nemesis Leggings
231076|4|4|Nemesis Robes
231077|4|4|Nemesis Spaulders
231078|4|4|Nemesis Belt
231079|4|4|Nemesis Bracers
231090|4|4|Nemesis Treads
231091|4|4|Nemesis Handguards
231092|4|4|Nemesis Cowl
231093|4|4|Nemesis Pants
231095|4|4|Nemesis Garb
231096|4|4|Nemesis Shoulderpads
231097|4|4|Nemesis Cord
231098|4|4|Nemesis Wraps
231100|4|4|Netherwind Belt
231101|4|4|Netherwind Boots
231102|4|4|Netherwind Gloves
231103|4|4|Netherwind Crown
231104|4|4|Netherwind Pants
231105|4|4|Netherwind Robes
231106|4|4|Netherwind Mantle
231107|4|4|Netherwind Bindings
231108|4|4|Netherwind Sash
231109|4|4|Netherwind Slippers
231110|4|4|Netherwind Mitts
231111|4|4|Netherwind Mask
231112|4|4|Netherwind Leggings
231113|4|4|Netherwind Vestments
231114|4|4|Netherwind Shoulders
231115|4|4|Netherwind Wraps
231155|4|4|Boots of Transcendence
231156|4|4|Handguards of Transcendence
231157|4|4|Halo of Transcendence
231158|4|4|Leggings of Transcendence
231159|4|4|Robes of Transcendence
231160|4|4|Pauldrons of Transcendence
231161|4|4|Belt of Transcendence
231162|4|4|Bindings of Transcendence
231165|4|4|Treads of Transcendence
231166|4|4|Gloves of Transcendence
231167|4|4|Crown of Transcendence
231168|4|4|Pants of Transcendence
231169|4|4|Garb of Transcendence
231170|4|4|Mantle of Transcendence
231171|4|4|Cord of Transcendence
231172|4|4|Bracers of Transcendence
231174|4|4|Judgement Bindings
231175|4|4|Judgement Belt
231176|4|4|Judgement Spaulders
231177|4|4|Judgement Legplates
231178|4|4|Judgement Crown
231179|4|4|Judgement Gauntlets
231180|4|4|Judgement Sabatons
231181|4|4|Judgement Breastplate
231182|4|4|Judgement Vambraces
231183|4|4|Judgement Waistguard
231184|4|4|Judgement Pauldrons
231185|4|4|Judgement Legguards
231186|4|4|Judgement Great Helm
231187|4|4|Judgement Chestguard
231188|4|4|Judgement Handguards
231189|4|4|Judgement Greaves
231190|4|4|Judgement Bracers
231191|4|4|Judgement Girdle
231192|4|4|Judgement Mantle
231193|4|4|Judgement Plate Skirt
231194|4|4|Judgement Helm
231195|4|4|Judgement Gloves
231196|4|4|Judgement Treads
231197|4|4|Judgement Cuirass
231198|4|4|Gauntlets of Ten Storms
231199|4|4|Bracers of Ten Storms
231200|4|4|Belt of Ten Storms
231201|4|4|Epaulets of Ten Storms
231202|4|4|Legplates of Ten Storms
231203|4|4|Helmet of Ten Storms
231204|4|4|Greaves of Ten Storms
231205|4|4|Breastplate of Ten Storms
231206|4|4|Handguards of Ten Storms
231207|4|4|Wristguards of Ten Storms
231208|4|4|Waistguard of Ten Storms
231209|4|4|Pauldrons of Ten Storms
231210|4|4|Legguards of Ten Storms
231211|4|4|Faceguard of Ten Storms
231212|4|4|Sabatons of Ten Storms
231213|4|4|Chestguard of Ten Storms
231214|4|4|Gloves of Ten Storms
231215|4|4|Bindings of Ten Storms
231216|4|4|Cord of Ten Storms
231217|4|4|Mantle of Ten Storms
231218|4|4|Kilt of Ten Storms
231219|4|4|Headdress of Ten Storms
231220|4|4|Boots of Ten Storms
231221|4|4|Embrace of Ten Storms
231222|4|4|Grips of Ten Storms
231223|4|4|Vambraces of Ten Storms
231224|4|4|Girdle of Ten Storms
231225|4|4|Spaulders of Ten Storms
231226|4|4|Leggings of Ten Storms
231227|4|4|Crown of Ten Storms
231228|4|4|Treads of Ten Storms
231229|4|4|Armor of Ten Storms
231230|4|4|Stormrage Chestguard
231231|4|4|Stormrage Boots
231232|4|4|Stormrage Handguards
231233|4|4|Stormrage Cover
231234|4|4|Stormrage Legguards
231235|4|4|Stormrage Pauldrons
231236|4|4|Stormrage Belt
231237|4|4|Stormrage Bracers
231238|4|4|Stormrage Armor
231239|4|4|Stormrage Treads
231240|4|4|Stormrage Gauntlets
231241|4|4|Stormrage Headdress
231242|4|4|Stormrage Leggings
231243|4|4|Stormrage Spaulders
231244|4|4|Stormrage Waistguard
231245|4|4|Stormrage Wristguards
231246|4|4|Stormrage Leathers
231247|4|4|Stormrage Sandals
231248|4|4|Stormrage Mitts
231249|4|4|Stormrage Antlers
231250|4|4|Stormrage Kilt
231251|4|4|Stormrage Mantle
231252|4|4|Stormrage Cord
231253|4|4|Stormrage Bindings
231254|4|4|Stormrage Vest
231255|4|4|Stormrage Stompers
231256|4|4|Stormrage Grips
231257|4|4|Stormrage Cowl
231258|4|4|Stormrage Trousers
231259|4|4|Stormrage Shoulderpads
231260|4|4|Stormrage Sash
231261|4|4|Stormrage Wraps
231271|4|4|Nat Pagle's Broken Reel
231272|4|2|Tigule's Harpoon
231273|4|2|Gri'lek's Carver
231274|4|2|Gri'lek's Grinder
231275|4|2|Blazefury Retributer
231276|4|2|Thoughtblighter
231277|4|2|Pitchfork of Madness
231278|4|2|Hoodoo Hunting Bow
231279|4|2|Wushoolay's Poker
231280|4|4|Wushoolay's Charm of Nature
231281|4|4|Wushoolay's Charm of Spirits
231282|4|4|Hazza'rah's Charm of Chilled Magic
231283|4|4|Hazza'rah's Charm of Warding
231284|4|4|Hazza'rah's Charm of Destruction
231285|4|4|Gri'lek's Charm of Valor
231286|4|4|Gri'lek's Charm of Might
231287|4|4|Renataki's Charm of Trickery
231288|4|4|Renataki's Charm of Ravaging
231289|4|4|Aegis of the Blood God
231293|4|2|Ancient Hakkari Manslayer
231296|4|2|Bloodcaller
231298|2|0|Scroll of Lesser Spatial Mending
231299|4|4|Bloodsoaked Legplates
231300|4|4|Cloak of Consumption
231301|4|2|Fang of the Faceless
231302|4|2|Gurubashi Dwarf Destroyer
231303|4|4|Peacekeeper Gauntlets
231304|4|12|Scroll: SERELS PATALIS GNEMIND
231305|4|4|Seafury Gauntlets
231306|4|4|Soul Corrupter's Necklace
231307|4|4|The Eye of Hakkar
231308|4|2|Touch of Chaos
231309|4|2|Warblade of the Hakkari
231315|4|2|Zin'rokh, Destroyer of Worlds
231316|4|4|Pristine Enchanted South Seas Kelp
231317|4|4|Zandalar Haruspex's Tunic
231318|4|4|Zandalar Haruspex's Belt
231319|4|4|Zandalar Haruspex's Bracers
231320|4|4|Maelstrom's Wrath
231321|4|4|Zandalar Predator's Mantle
231322|4|4|Zandalar Predator's Belt
231323|4|4|Zandalar Predator's Bracers
231324|4|4|Jewel of Kajaro
231325|4|4|Zandalar Illusionist's Mantle
231326|4|4|Zandalar Illusionist's Wraps
231327|4|4|Zandalar Illusionist's Robe
231328|4|4|Hero's Brand
231329|4|4|Zandalar Freethinker's Breastplate
231330|4|4|Zandalar Freethinker's Belt
231331|4|4|Zandalar Freethinker's Armguards
231332|4|4|The All-Seeing Eye of Zuldazar
231333|4|4|Zandalar Confessor's Mantle
231334|4|4|Zandalar Confessor's Bindings
231335|4|4|Zandalar Confessor's Wraps
231336|4|4|Zandalarian Shadow Mastery Talisman
231337|4|4|Zandalar Madcap's Tunic
231338|4|4|Zandalar Madcap's Mantle
231339|4|4|Zandalar Madcap's Bracers
231340|4|4|Unmarred Vision of Voodress
231341|4|4|Zandalar Augur's Hauberk
231342|4|4|Zandalar Augur's Belt
231343|4|4|Zandalar Augur's Bracers
231346|4|4|Kezan's Unstoppable Taint
231347|4|4|Zandalar Demoniac's Wraps
231348|4|4|Zandalar Demoniac's Robe
231349|4|4|Zandalar Demoniac's Mantle
231350|4|4|Rage of Mugamba
231351|4|4|Zandalar Vindicator's Armguards
231352|4|4|Zandalar Vindicator's Belt
231353|4|4|Zandalar Vindicator's Breastplate
231354|3|15|Animist's Caress
231355|3|15|Animist's Balance
231357|3|15|Animist's Fury
231358|3|15|Animist's Roar
231359|3|15|Falcon's Call
231361|3|15|Syncretist's Seal
231362|3|15|Syncretist's Sigil
231363|3|15|Syncretist's Crest
231364|3|15|Syncretist's Emblem
231366|3|15|Prophetic Aura
231367|3|15|Prophetic Curse
231368|3|15|Death's Embrace
231370|3|15|Death's Advance
231371|3|15|Vodouisant's Embrace
231372|3|15|Vodouisant's Shroud
231373|3|15|Vodouisant's Charm
231375|3|15|Vodouisant's Vigilance
231376|3|15|Hoodoo Hex
231377|3|15|Hoodoo Curse
231378|4|12|Shimmering Golden Disk
231379|3|15|Presence of Might
231381|3|15|Presence of Valor
231382|5|12|Vessel of Rebirth
231383|3|15|Presence of Sight
231384|3|15|Falcon's Fury
231385|4|12|Simulacrum of the Dragon Soul
231386|3|12|Flawless Black Dragonscale
231387|4|2|Stormwrath, Sanctified Shortblade of the Galefinder
231452|4|12|Blood of the Lightbringer
231460|4|2|Planebreaker of Azgaloth
231466|4|12|Blackwing Warlock's Codex
231509|4|4|Cassandra's Tome
231512|3|15|Primal Hakkari Idol
231513|2|12|Gri'lek's Blood
231514|2|12|Renataki's Tooth
231515|2|12|Wushoolay's Mane
231516|2|12|Hazza'rah's Dream Thread
231517|2|15|Punctured Voodoo Doll
231518|2|15|Punctured Voodoo Doll
231519|2|15|Punctured Voodoo Doll
231520|2|15|Punctured Voodoo Doll
231521|2|15|Punctured Voodoo Doll
231522|2|15|Punctured Voodoo Doll
231523|2|15|Punctured Voodoo Doll
231524|2|15|Punctured Voodoo Doll
231525|2|15|Punctured Voodoo Doll
231530|4|4|Warlord's Plate Armor
231531|4|4|General's Plate Boots
231532|4|4|General's Plate Gauntlets
231533|4|4|General's Plate Leggings
231534|4|4|Warlord's Plate Shoulders
231535|4|4|Warlord's Plate Headpiece
231536|4|4|Field Marshal's Plate Armor
231537|4|4|Field Marshal's Plate Shoulderguards
231538|4|4|Field Marshal's Plate Helm
231539|4|4|Marshal's Plate Boots
231540|4|4|Marshal's Plate Legguards
231541|4|4|Marshal's Plate Gauntlets
231543|4|4|Field Marshal's Leather Chestpiece
231544|4|4|Marshal's Leather Handgrips
231545|4|4|Field Marshal's Leather Mask
231546|4|4|Marshal's Leather Footguards
231547|4|4|Field Marshal's Leather Epaulets
231548|4|4|Marshal's Leather Leggings
231549|4|4|Warlord's Leather Breastplate
231551|4|4|Warlord's Leather Spaulders
231552|4|4|General's Leather Treads
231553|4|4|Warlord's Leather Helm
231554|4|4|General's Leather Legguards
231555|4|4|General's Leather Mitts
231557|4|4|Field Marshal's Chain Pauldrons
231558|4|4|Marshal's Chain Legplates
231560|4|4|Marshal's Chain Grips
231561|4|4|Marshal's Chain Sabatons
231562|4|4|Field Marshal's Chain Greathelm
231563|4|4|Field Marshal's Chain Armor
231564|4|4|General's Chain Sabatons
231565|4|4|Warlord's Chain Pauldrons
231566|4|4|Warlord's Chain Armor
231567|4|4|General's Chain Legplates
231568|4|4|Warlord's Chain Greathelm
231569|4|4|General's Chain Grips
231570|4|4|General's Chain Greaves
231571|4|4|Warlord's Chain Helm
231572|4|4|Warlord's Chain Shoulders
231573|4|4|Warlord's Chain Hauberk
231574|4|4|General's Chain Legguards
231575|4|4|General's Chain Vices
231576|4|4|Field Marshal's Chain Shoulders
231577|4|4|Marshal's Chain Legguards
231578|4|4|Marshal's Chain Vices
231579|4|4|Marshal's Chain Greaves
231580|4|4|Field Marshal's Chain Helm
231581|4|4|Field Marshal's Chain Hauberk
231582|4|4|Field Marshal's Dreadweave Robe
231583|4|4|Field Marshal's Dreadweave Shoulders
231584|4|4|Field Marshal's Coronal
231585|4|4|Marshal's Dreadweave Boots
231586|4|4|Marshal's Dreadweave Gloves
231587|4|4|Marshal's Dreadweave Leggings
231588|4|4|General's Dreadweave Pants
231589|4|4|General's Dreadweave Gloves
231590|4|4|Warlord's Dreadweave Hood
231591|4|4|Warlord's Dreadweave Robe
231592|4|4|Warlord's Dreadweave Mantle
231593|4|4|General's Dreadweave Boots
231594|4|4|Warlord's Silk Amice
231595|4|4|General's Silk Trousers
231596|4|4|Warlord's Silk Raiment
231597|4|4|General's Silk Boots
231598|4|4|General's Silk Gloves
231599|4|4|General's Silk Gauntlets
231600|4|4|General's Silk Handwraps
231601|4|4|Warlord's Silk Cowl
231602|4|4|Field Marshal's Silk Spaulders
231603|4|4|Field Marshal's Silk Vestments
231604|4|4|Field Marshal's Coronet
231605|4|4|Marshal's Silk Leggings
231606|4|4|Marshal's Silk Footwraps
231607|4|4|Marshal's Silk Gloves
231608|4|4|Marshal's Silk Gauntlets
231609|4|4|Marshal's Silk Handwraps
231610|4|4|General's Satin Treads
231611|4|4|Warlord's Satin Epaulets
231612|4|4|Warlord's Satin Robes
231613|4|4|General's Satin Grips
231614|4|4|General's Satin Leggings
231615|4|4|Warlord's Satin Crown
231616|4|4|Field Marshal's Satin Crown
231617|4|4|Marshal's Satin Grips
231618|4|4|Field Marshal's Satin Robe
231619|4|4|Marshal's Satin Leggings
231620|4|4|Marshal's Satin Treads
231621|4|4|Field Marshal's Satin Epaulets
231622|4|4|Field Marshal's Satin Hood
231623|4|4|Marshal's Satin Handwraps
231624|4|4|Field Marshal's Satin Tunic
231625|2|0|Testament of Horn of Lordaeron
231626|4|4|Marshal's Satin Legguards
231627|4|4|Marshal's Satin Walkers
231628|4|4|Field Marshal's Satin Mantle
231630|4|4|General's Satin Walkers
231631|4|4|Warlord's Satin Mantle
231632|4|4|Warlord's Satin Tunic
231633|4|4|General's Satin Handwraps
231634|4|4|General's Satin Legguards
231635|4|4|Warlord's Satin Hood
231639|4|4|Marshal's Lamellar Legguards
231640|4|4|Field Marshal's Lamellar Helmet
231641|4|4|Field Marshal's Lamellar Chestplate
231642|2|15|Warden's Herb Bag
231643|4|4|Marshal's Lamellar Gloves
231644|2|15|Warden's Enchanting Bag
231645|4|4|Field Marshal's Lamellar Pauldrons
231646|4|4|Marshal's Lamellar Greaves
231647|4|4|Marshal's Lamellar Leggings
231648|4|4|Field Marshal's Lamellar Headguard
231649|4|4|Field Marshal's Lamellar Breastplate
231650|4|4|Marshal's Lamellar Gauntlets
231651|4|4|Field Marshal's Lamellar Shoulders
231652|4|4|Marshal's Lamellar Sabatons
231653|4|4|Warlord's Mail Hauberk
231654|4|4|Warlord's Mail Pauldrons
231655|4|4|General's Mail Vices
231656|4|4|General's Mail Greaves
231657|4|4|Warlord's Mail Headguard
231658|4|4|General's Mail Legguards
231659|4|4|Warlord's Mail Spaulders
231660|4|4|General's Mail Gauntlets
231661|4|4|General's Mail Sabatons
231662|4|4|Warlord's Mail Breastplate
231663|4|4|Warlord's Mail Helm
231664|4|4|General's Mail Leggings
231665|4|4|Warlord's Mail Epaulets
231666|4|4|General's Mail Gloves
231667|4|4|General's Mail Boots
231668|4|4|Warlord's Mail Chestguard
231669|4|4|Warlord's Mail Skullcap
231670|4|4|General's Mail Pants
231671|4|4|General's Dragonhide Greaves
231672|4|4|Warlord's Dragonhide Pauldrons
231673|4|4|General's Dragonhide Legguards
231674|4|4|Warlord's Dragonhide Tunic
231675|4|4|Warlord's Dragonhide Headdress
231676|4|4|General's Dragonhide Gauntlets
231677|4|4|General's Dragonhide Gloves
231678|4|4|Warlord's Dragonhide Helm
231679|4|4|Warlord's Dragonhide Armor
231680|4|4|General's Dragonhide Pants
231681|4|4|Warlord's Dragonhide Spaulders
231682|4|4|General's Dragonhide Boots
231683|4|4|General's Dragonhide Treads
231684|4|4|Warlord's Dragonhide Shoulders
231685|4|4|General's Dragonhide Leggings
231686|4|4|Warlord's Dragonhide Chestpiece
231687|4|4|Warlord's Dragonhide Headguard
231688|4|4|General's Dragonhide Grips
231689|4|4|Field Marshal's Dragonhide Headguard
231690|4|4|Field Marshal's Dragonhide Chestpiece
231691|4|4|Marshal's Dragonhide Leggings
231692|4|4|Marshal's Dragonhide Treads
231693|4|4|Field Marshal's Dragonhide Shoulders
231694|4|4|Marshal's Dragonhide Grips
231695|4|4|Field Marshal's Dragonhide Helm
231696|4|4|Field Marshal's Dragonhide Armor
231697|4|4|Marshal's Dragonhide Pants
231698|4|4|Marshal's Dragonhide Boots
231699|4|4|Field Marshal's Dragonhide Spaulders
231700|4|4|Marshal's Dragonhide Gloves
231701|4|4|Field Marshal's Dragonhide Headdress
231702|4|4|Field Marshal's Dragonhide Tunic
231703|4|4|Marshal's Dragonhide Legguards
231704|4|4|Marshal's Dragonhide Greaves
231705|4|4|Field Marshal's Dragonhide Pauldrons
231706|4|4|Marshal's Dragonhide Gauntlets
231707|4|15|Draconian Bindings
231708|4|15|Draconian Belt
231709|4|15|Draconian Shoulderpads
231710|4|15|Draconian Leggings
231711|4|15|Draconian Hood
231712|4|15|Draconian Gloves
231713|4|15|Draconian Boots
231714|4|15|Draconian Robe
231715|4|15|Primeval Bindings
231716|4|15|Primeval Belt
231717|4|15|Primeval Shoulderpads
231718|4|15|Primeval Leggings
231719|4|15|Primeval Helm
231720|4|15|Primeval Gloves
231721|4|15|Primeval Boots
231722|4|12|Depleted Scythe of Chaos
231723|4|15|Primeval Chest
231724|4|15|Ancient Bindings
231725|4|15|Ancient Belt
231726|4|15|Ancient Shoulderpads
231727|4|15|Ancient Leggings
231728|4|15|Ancient Helm
231729|4|15|Ancient Gloves
231730|4|15|Ancient Boots
231731|4|15|Ancient Chest
231732|2|12|Suspicious Supplies
231752|0|2|S03 - Monster - Sword, 2H Alliance
231753|4|2|Skywall's Solace
231754|4|2|Kestrel
231755|4|2|Peregrine
231777|4|4|Crystallized Qiraji Limb
231778|1|0|Mountain Spring Water
231779|4|4|Wrath of Wray
231780|2|0|Tome of Conjure Water VIII
231781|4|4|Soul of Thunder
231782|4|4|Crown of the Successor
231783|4|4|Drape of the Windlord
231784|4|4|Lightning's Cell
231785|4|4|Echoes of Betrayal
231789|1|15|Sigil of the Keeper
231792|1|15|Soul of Mischief
231793|4|12|Depleted Scythe of Chaos (Mischief)
231794|4|12|Depleted Scythe of Chaos (Void)
231795|4|12|Depleted Scythe of Chaos (Enthralling)
231796|4|12|Depleted Scythe of Chaos (Devouring)
231797|1|15|Soul of the Void
231798|1|15|Soul of Enthralling
231799|1|15|Soul of Devouring
231800|1|15|Soul of Des'Altek
231803|4|4|Prestor's Talisman of Connivery
231806|3|6|Searing Arrow
231807|3|6|Searing Shot
231811|4|4|Libram of Awe
231814|4|12|Chromatic Heart
231815|4|2|Flashrend
231817|4|2|Windstriker
231823|4|2|Geddon's Glaive
231828|2|0|Rune of Meditation Specialization
231829|2|0|Rune of Healing Specialization
231836|2|0|Glowing Scroll of Spatial Mending
231837|2|12|Shadow Carving
231841|4|12|Blood of the Lightbringer
231842|1|12|Nandieb's Stave
231843|1|0|First Sigil Fragment
231844|1|0|Second Sigil Fragment
231845|1|0|Third Sigil Fragment
231846|4|2|Gri'lek's Carver
231847|4|2|Gri'lek's Grinder
231848|4|2|Nat Pagle's Fish Terminator
231849|4|2|Tigule's Harpoon
231850|4|2|Will of Arlokk
231851|4|2|Arlokk's Grasp
231852|4|2|Gurubashi Dwarf Destroyer
231853|4|2|Warblade of the Hakkari
231854|4|2|Zin'rokh, Destroyer of Worlds
231855|4|2|Fang of the Faceless
231856|4|2|Ancient Hakkari Manslayer
231857|4|2|Touch of Chaos
231858|4|2|Bloodcaller
231859|4|2|Jin'do's Hexxer
231860|4|2|Jin'do's Judgement
231861|4|2|Jeklik's Crusher
231862|4|2|Blazefury Retributer
231863|4|2|Thoughtblighter
231864|4|2|Pitchfork of Madness
231865|4|2|Zulian Scepter of Rites
231866|4|2|Mar'li's Touch
231867|4|2|Bloodlord's Defender
231868|4|2|Mandokir's Sting
231869|4|2|Warblade of the Hakkari
231870|4|2|Halberd of Smiting
231871|4|2|Wushoolay's Poker
231872|4|2|Hoodoo Hunting Bow
231873|4|2|Zulian Stone Axe
231874|4|2|Fang of Venoxis
231875|4|2|Thekal's Grasp
231876|4|2|Zulian Slicer
231877|3|4|Tyler's Balanced Bobble
231882|4|15|Suppression Device Receipt
231885|4|2|Frostmourne
231890|4|4|Terrestris
231891|2|0|Treatise of the Falcon
231901|4|12|Truthbearer
231902|4|4|Ada's Amulet
231903|1|12|Scrap of Torn Cloth
231904|1|12|Tarnished Horn
231909|4|13|Crystallized Starlight
231910|3|4|Heart of Azgaloth
231911|3|4|Signet of the Legion General
231912|4|2|Blade of the Pit
231913|3|4|Eye of the Observer
231995|4|12|Hardened Elementium Slag
231996|3|12|Supercharged Gobmogrifier
232018|5|12|Dormant Wind Kissed Blade
232079|4|4|Stormrage Bindings
232080|4|4|Stormrage Cord
232081|4|4|Stormrage Mantle
232082|4|4|Stormrage Kilt
232083|4|4|Stormrage Antlers
232084|4|4|Stormrage Mitts
232085|4|4|Stormrage Sandals
232086|4|4|Stormrage Leathers
232087|4|4|Stormrage Bracers
232088|4|4|Stormrage Belt
232089|4|4|Stormrage Pauldrons
232090|4|4|Stormrage Legguards
232091|4|4|Stormrage Cover
232092|4|4|Stormrage Handguards
232093|4|4|Stormrage Boots
232094|4|4|Stormrage Chestguard
232095|4|4|Stormrage Wraps
232096|4|4|Stormrage Sash
232097|4|4|Stormrage Shoulderpads
232098|4|4|Stormrage Trousers
232099|4|4|Stormrage Cowl
232100|4|4|Stormrage Grips
232101|4|4|Stormrage Stompers
232102|4|4|Stormrage Vest
232103|4|4|Stormrage Wristguards
232104|4|4|Stormrage Waistguard
232105|4|4|Stormrage Spaulders
232106|4|4|Stormrage Leggings
232107|4|4|Stormrage Headdress
232108|4|4|Stormrage Gauntlets
232109|4|4|Stormrage Treads
232110|4|4|Stormrage Armor
232111|4|4|Dragonstalker's Vambraces
232112|4|4|Dragonstalker's Girdle
232113|4|4|Dragonstalker's Pauldrons
232114|4|4|Dragonstalker's Pants
232115|4|4|Dragonstalker's Skullcap
232116|4|4|Dragonstalker's Grips
232117|4|4|Dragonstalker's Sabatons
232118|4|4|Dragonstalker's Armor
232119|4|4|Dragonstalker's Bracers
232120|4|4|Dragonstalker's Belt
232121|4|4|Dragonstalker's Spaulders
232122|4|4|Dragonstalker's Legguards
232123|4|4|Dragonstalker's Helm
232124|4|4|Dragonstalker's Gauntlets
232125|4|4|Dragonstalker's Greaves
232126|4|4|Dragonstalker's Breastplate
232127|4|4|Netherwind Bindings
232128|4|4|Netherwind Belt
232129|4|4|Netherwind Mantle
232130|4|4|Netherwind Pants
232131|4|4|Netherwind Crown
232132|4|4|Netherwind Gloves
232133|4|4|Netherwind Boots
232134|4|4|Netherwind Robes
232135|4|4|Netherwind Wraps
232136|4|4|Netherwind Sash
232137|4|4|Netherwind Shoulders
232138|4|4|Netherwind Leggings
232139|4|4|Netherwind Mask
232140|4|4|Netherwind Mitts
232141|4|4|Netherwind Slippers
232142|4|4|Netherwind Vestments
232143|4|4|Judgement Bindings
232144|4|4|Judgement Belt
232145|4|4|Judgement Spaulders
232146|4|4|Judgement Legplates
232147|4|4|Judgement Crown
232148|4|4|Judgement Gauntlets
232149|4|4|Judgement Sabatons
232150|4|4|Judgement Breastplate
232151|4|4|Judgement Bracers
232152|4|4|Judgement Girdle
232153|4|4|Judgement Mantle
232154|4|4|Judgement Plate Skirt
232155|4|4|Judgement Helm
232156|4|4|Judgement Gloves
232157|4|4|Judgement Treads
232158|4|4|Judgement Cuirass
232159|4|4|Judgement Vambraces
232160|4|4|Judgement Waistguard
232161|4|4|Judgement Pauldrons
232162|4|4|Judgement Legguards
232163|4|4|Judgement Great Helm
232164|4|4|Judgement Handguards
232165|4|4|Judgement Greaves
232166|4|4|Judgement Chestguard
232167|4|4|Bracers of Transcendence
232168|4|4|Cord of Transcendence
232169|4|4|Mantle of Transcendence
232170|4|4|Pants of Transcendence
232171|4|4|Crown of Transcendence
232172|4|4|Gloves of Transcendence
232173|4|4|Treads of Transcendence
232174|4|4|Garb of Transcendence
232175|4|4|Bindings of Transcendence
232176|4|4|Belt of Transcendence
232177|4|4|Pauldrons of Transcendence
232178|4|4|Leggings of Transcendence
232179|4|4|Halo of Transcendence
232180|4|4|Handguards of Transcendence
232181|4|4|Boots of Transcendence
232182|4|4|Robes of Transcendence
232183|4|4|Bloodfang Bracers
232184|4|4|Bloodfang Belt
232185|4|4|Bloodfang Spaulders
232186|4|4|Bloodfang Pants
232187|4|4|Bloodfang Hood
232188|4|4|Bloodfang Gloves
232189|4|4|Bloodfang Boots
232190|4|4|Bloodfang Chestpiece
232191|4|4|Bloodfang Wristguards
232192|4|4|Bloodfang Waistguard
232193|4|4|Bloodfang Shoulderpads
232194|4|4|Bloodfang Legguards
232195|4|4|Bloodfang Cowl
232196|4|4|Bloodfang Handguards
232197|4|4|Bloodfang Footpads
232198|4|4|Bloodfang Chestguard
232199|4|4|Bindings of Ten Storms
232200|4|4|Cord of Ten Storms
232201|4|4|Mantle of Ten Storms
232202|4|4|Kilt of Ten Storms
232203|4|4|Headdress of Ten Storms
232204|4|4|Gloves of Ten Storms
232205|4|4|Boots of Ten Storms
232206|4|4|Embrace of Ten Storms
232207|4|4|Bracers of Ten Storms
232208|4|4|Belt of Ten Storms
232209|4|4|Epaulets of Ten Storms
232210|4|4|Legplates of Ten Storms
232211|4|4|Helmet of Ten Storms
232212|4|4|Gauntlets of Ten Storms
232213|4|4|Greaves of Ten Storms
232214|4|4|Breastplate of Ten Storms
232215|4|4|Vambraces of Ten Storms
232216|4|4|Girdle of Ten Storms
232217|4|4|Spaulders of Ten Storms
232218|4|4|Leggings of Ten Storms
232219|4|4|Crown of Ten Storms
232220|4|4|Grips of Ten Storms
232221|4|4|Treads of Ten Storms
232222|4|4|Armor of Ten Storms
232223|4|4|Wristguards of Ten Storms
232224|4|4|Waistguard of Ten Storms
232225|4|4|Pauldrons of Ten Storms
232226|4|4|Legguards of Ten Storms
232227|4|4|Faceguard of Ten Storms
232228|4|4|Handguards of Ten Storms
232229|4|4|Sabatons of Ten Storms
232230|4|4|Chestguard of Ten Storms
232231|4|4|Nemesis Bracers
232232|4|4|Nemesis Belt
232233|4|4|Nemesis Spaulders
232234|4|4|Nemesis Leggings
232235|4|4|Nemesis Skullcap
232236|4|4|Nemesis Gloves
232237|4|4|Nemesis Boots
232238|4|4|Nemesis Robes
232239|4|4|Nemesis Wraps
232240|4|4|Nemesis Cord
232241|4|4|Nemesis Shoulderpads
232242|4|4|Nemesis Pants
232243|4|4|Nemesis Cowl
232244|4|4|Nemesis Handguards
232245|4|4|Nemesis Treads
232246|4|4|Nemesis Garb
232247|4|4|Bracers of Wrath
232248|4|4|Belt of Wrath
232249|4|4|Shoulders of Wrath
232250|4|4|Legplates of Wrath
232251|4|4|Helm of Wrath
232252|4|4|Gauntlets of Wrath
232253|4|4|Greaves of Wrath
232254|4|4|Breastplate of Wrath
232255|4|4|Wristguards of Wrath
232256|4|4|Waistguard of Wrath
232257|4|4|Pauldrons of Wrath
232258|4|4|Legguards of Wrath
232259|4|4|Faceguard of Wrath
232260|4|4|Handguards of Wrath
232261|4|4|Sabatons of Wrath
232262|4|4|Chestguard of Wrath
232299|4|4|Zulian Defender
232309|4|2|Renataki's Soul Conduit
232310|4|2|Renataki's Soul Conduit
232311|4|4|Zulian Tigerhide Cloak
232312|4|12|Blood of the Lightbringer
232324|3|13|Bird Whistle
232344|4|0|Vick's VIP Pass
232357|4|2|Draconic Avenger
232358|4|12|Empty Reliquary
232373|4|13|Refined Eye of Sulfuras
232389|4|4|Libram of Plenty
232390|4|4|Idol of Celestial Focus
232391|4|4|Idol of Feline Focus
232392|4|4|Totem of Relentless Thunder
232409|4|4|Totem of the Elements
232414|4|12|Dragontooth Blade
232416|4|4|Totem of Astral Flow
232419|4|4|Totem of Conductive Currents
232420|4|4|Libram of Wrath
232421|4|4|Libram of Avenging
232423|4|4|Idol of Nurture
232424|4|4|Idol of Cruelty
232433|1|0|Dense Runecloth Bandage
232434|1|9|Manual: Dense Runecloth Bandage
232436|1|0|Darkclaw Bisque
232437|1|9|Recipe: Darkclaw Bisque
232438|1|0|Smoked Redgill
232443|1|9|Recipe: Smoked Redgill
232454|7|7|Emblem of the Wild Gods
232455|7|7|Emblem of Dishonor
232456|7|7|Emblem of the Violet Eye
232457|7|7|Emblem of the Worldcore
232458|2|0|Rune of Improved Sanctuary
232459|2|0|Rune of Backdraft
232460|2|0|Rune of Displacement
232461|2|0|Rune of Despair
232462|2|0|Rune of Purifying Power
232549|2|12|Logistics Task Briefing VI
232550|4|2|Ashkandi, Greatsword of the Brotherhood
232551|4|2|Draconic Maul
232552|4|2|Lok'amir il Romathis
232555|4|2|Crul'shorukh, Edge of Chaos
232556|4|2|Staff of the Shadow Flame
232557|4|2|Claw of Chromaggus
232558|4|2|Chromatically Tempered Sword
232559|4|2|Herald of Woe
232561|4|2|Claw of the Black Drake
232562|4|2|Drake Talon Cleaver
232563|4|2|Shadow Wing Focus Staff
232564|4|2|Maladath, Runed Blade of the Black Flight
232565|4|2|Dragonfang Blade
232566|4|2|The Untamed Blade
232567|4|2|Spineshatter
232576|4|2|Draconic Avenger
232577|4|2|Doom's Edge
232606|4|2|Ashjre'thul, Crossbow of Smiting
232607|4|2|Heartstriker
232608|4|2|Dragonbreath Hand Cannon
232610|1|9|Formula: Magnificent Trollshine
232611|1|0|Magnificent Trollshine
232652|4|13|Zila Amanemodas
233197|3|15|Argent Training Manual
233198|3|15|Horn of the Dawn
233200|3|15|Songflower Seed
233201|3|15|Shimmering Globe
233206|3|15|Overseer's Anvil
233208|3|15|"Defective" Magic 8-Ball
233209|3|15|Firewater Cauldron
233211|3|15|Spirit Conch
233213|3|0|Ancient Lodestone
233215|3|0|Explosive Sand Trap
233216|3|0|Freez-O-Matic Ray
233217|3|0|Tunneler's Incense
233226|3|0|Ancient Zandalarian Rope
233250|3|15|Ancient Branch
233351|4|15|Light Green Qiraji Resonating Crystal
233352|4|15|Dark Blue Qiraji Resonating Crystal
233353|4|15|Light Blue Qiraji Resonating Crystal
233356|4|15|Orange Qiraji Resonating Crystal
233357|4|15|Twilight Qiraji Resonating Crystal
233358|3|15|Tamed Silithid Tank
233362|4|12|Husk of the Old God
233363|4|12|Carapace of the Old God
233364|4|12|Skin of the Old God
233365|4|12|Intact Viscera
233367|4|12|Intact Peritoneum
233368|4|12|Intact Entrails
233369|4|12|Qiraji Bindings of Dominance
233370|4|12|Qiraji Bindings of Command
233371|4|12|Qiraji Bindings of Sovereignty
233372|4|4|Conqueror's Greaves
233373|4|4|Conqueror's Breastplate
233374|4|4|Conqueror's Legguards
233375|4|4|Conqueror's Crown
233376|4|4|Conqueror's Spaulders
233377|4|4|Doomcaller's Footwraps
233378|4|4|Doomcaller's Trousers
233379|4|4|Doomcaller's Mantle
233380|4|4|Doomcaller's Robes
233381|4|4|Doomcaller's Circlet
233382|4|4|Stormcaller's Leggings
233383|4|4|Stormcaller's Pauldrons
233384|4|4|Stormcaller's Footguards
233385|4|4|Stormcaller's Diadem
233386|4|4|Stormcaller's Hauberk
233387|4|4|Deathdealer's Spaulders
233388|4|4|Deathdealer's Helm
233389|4|4|Deathdealer's Vest
233390|4|4|Deathdealer's Leggings
233391|4|4|Deathdealer's Boots
233392|4|4|Footwraps of the Oracle
233393|4|4|Tiara of the Oracle
233394|4|4|Mantle of the Oracle
233395|4|4|Vestments of the Oracle
233396|4|4|Trousers of the Oracle
233397|4|4|Avenger's Breastplate
233398|4|4|Avenger's Crown
233399|4|4|Avenger's Greaves
233400|4|4|Avenger's Legguards
233401|4|4|Avenger's Pauldrons
233402|4|4|Enigma Robes
233403|4|4|Enigma Shoulderpads
233404|4|4|Enigma Circlet
233405|4|4|Enigma Boots
233406|4|4|Enigma Leggings
233407|4|4|Striker's Footguards
233408|4|4|Striker's Leggings
233409|4|4|Striker's Pauldrons
233410|4|4|Striker's Diadem
233411|4|4|Striker's Hauberk
233412|4|4|Genesis Helm
233413|4|4|Genesis Shoulderpads
233414|4|4|Genesis Boots
233415|4|4|Genesis Vest
233416|4|4|Genesis Trousers
233417|4|2|Mace of Unending Life
233418|4|4|Cloak of Unending Life
233419|4|4|Band of Unending Life
233420|4|4|Cloak of the Unseen Path
233421|4|2|Scythe of the Unseen Path
233422|4|4|Signet of the Unseen Path
233423|4|2|Blade of Vaulted Secrets
233424|4|4|Drape of Vaulted Secrets
233425|4|4|Band of Vaulted Secrets
233426|4|2|Blade of Eternal Justice
233427|4|4|Cape of Eternal Justice
233428|4|4|Ring of Eternal Justice
233429|4|2|Gavel of Infinite Wisdom
233430|4|4|Shroud of Infinite Wisdom
233431|4|4|Ring of Infinite Wisdom
233432|4|4|Cloak of Veiled Shadows
233433|4|2|Dagger of Veiled Shadows
233434|4|4|Band of Veiled Shadows
233435|4|2|Hammer of the Gathering Storm
233436|4|4|Cloak of the Gathering Storm
233437|4|4|Ring of the Gathering Storm
233438|4|4|Shroud of Unspoken Names
233439|4|2|Kris of Unspoken Names
233440|4|4|Ring of Unspoken Names
233441|4|4|Drape of Unyielding Strength
233442|4|2|Sickle of Unyielding Strength
233443|4|4|Signet of Unyielding Strength
233490|4|2|Obsidian Champion
233491|4|2|Obsidian Reaver
233492|4|4|Razorspike Battleplate
233496|4|4|Barrage Shoulders
233502|4|4|Amulet of Foul Warding
233503|4|4|Pendant of the Qiraji Guardian
233504|4|4|Cloak of Concentrated Hatred
233505|4|4|Leggings of Immersion
233506|4|4|Beetle Scaled Wristguards
233507|4|4|Ring of Swarming Thought
233509|4|2|Staff of the Qiraji Prophets
233514|4|4|Boots of the Unwavering Will
233515|4|2|Hammer of Ji'zhi
233516|4|4|Breastplate of Annihilation
233517|4|4|Boots of the Redeemed Prophecy
233518|4|4|Boots of the Fallen Prophet
233519|4|4|Cape of the Trinity
233520|4|4|Robes of the Triumvirate
233521|4|4|Ternary Mantle
233522|4|4|Guise of the Devourer
233523|4|4|Triad Girdle
233524|4|4|Angelista's Touch
233559|4|4|Gloves of Ebru
233560|4|4|Ooze-ridden Gauntlets
233561|4|4|Boots of the Fallen Hero
233562|4|4|Angelista's Charm
233563|4|4|Mantle of Phrenic Power
233564|4|4|Bile-Covered Gauntlets
233565|4|4|Ukko's Ring of Darkness
233566|4|4|Mantle of the Desert's Fury
233567|4|4|Mantle of the Desert Crusade
233568|4|4|Vest of Swift Execution
233569|4|4|Ring of the Devoured
233570|4|4|Petrified Scarab
233571|4|2|Wand of Qiraji Nobility
233572|4|4|Necklace of Purity
233573|4|4|Recomposed Boots
233574|4|4|Leggings of the Festering Swarm
233575|4|4|Robes of the Battleguard
233576|4|2|Silithid Claw
233577|4|4|Thick Qirajihide Belt
233578|4|4|Creeping Vine Helm
233579|4|4|Gloves of Enforcement
233580|4|4|Badge of the Swarmguard
233581|4|4|Sartura's Might
233582|4|4|Gauntlets of Steadfast Determination
233583|4|4|Legplates of Blazing Light
233584|4|4|Scaled Leggings of Qiraji Fury
233585|4|2|Ancient Qiraji Ripper
233586|4|2|Jaw of the Sand Reaver
233587|4|4|Barbed Choker
233588|4|4|Cloak of Untold Secrets
233589|4|4|Fetish of the Sand Reaver
233590|4|4|Hive Tunneler's Boots
233591|4|4|Silithid Carapace Chestguard
233592|4|4|Mantle of Wicked Revenge
233593|4|4|Pauldrons of the Unrelenting
233594|4|4|Robes of the Guardian Saint
233595|4|4|Scaled Sand Reaver Leggings
233596|4|4|Libram of Purification
233597|4|4|Totem of Life
233598|4|4|Slime-coated Leggings
233599|4|2|Sharpened Silithid Femur
233600|4|4|Ring of the Qiraji Fury
233601|4|4|Scarab Brooch
233602|4|4|Idol of Health
233603|4|4|Gauntlets of the Righteous Champion
233604|4|4|Gauntlets of Kalimdor
233605|4|2|Huhuran's Stinger
233606|4|4|Cloak of the Golden Hive
233607|4|4|Gloves of the Messiah
233608|4|4|Wasphide Gauntlets
233609|4|4|Ring of the Martyr
233610|4|4|Hive Defiler Wristguards
233611|4|4|Boots of Epiphany
233612|4|4|Qiraji Execution Bracers
233613|4|4|Vek'lor's Gloves of Devastation
233614|4|4|Royal Qiraji Belt
233615|4|4|Ring of Emperor Vek'lor
233616|4|4|Royal Scepter of Vek'lor
233617|4|4|Bracelets of Royal Redemption
233618|4|4|Gloves of the Hidden Temple
233619|4|4|Regenerating Belt of Vek'nilash
233620|4|4|Amulet of Vek'nilash
233621|4|2|Kalimdor's Revenge
233622|4|4|Grasp of the Fallen Emperor
233623|4|4|Belt of the Fallen Emperor
233624|4|4|Don Rigoberto's Lost Hat
233625|4|4|Burrower Bracers
233626|4|2|Larvae of the Great Worm
233627|4|4|Jom Gabbar
233628|4|4|The Burrower's Shell
233629|4|4|Wormscale Blocker
233630|4|4|Cloak of the Devoured
233631|4|4|Dark Storm Gauntlets
233632|4|4|Grasp of the Old God
233633|4|4|Eyestalk Waist Cord
233634|4|2|Death's Sting
233635|4|4|Belt of Never-ending Agony
233636|4|2|Scepter of the False Prophet
233637|4|4|Gauntlets of Annihilation
233638|4|4|Ring of the Godslayer
233639|4|4|Vanquished Tentacle of C'Thun
233640|4|2|Dark Edge of Insanity
233641|4|4|Cloak of Clarity
233642|4|4|Mark of C'Thun
233643|4|2|Anubisath Warhammer
233644|4|4|Garb of Royal Ascension
233645|4|4|Gloves of the Immortal
233646|4|4|Gloves of the Redeemed Prophecy
233647|4|2|Neretzek, The Blood Drinker
233648|4|4|Ritssyn's Ring of Chaos
233649|4|4|Shard of the Fallen Star
233651|4|4|Conqueror's Cuirass
233652|4|4|Conqueror's Sabatons
233653|4|4|Conqueror's Helm
233654|4|4|Conqueror's Tassets
233658|4|4|Conqueror's Pauldrons
233659|4|4|Deathdealer's Chestguard
233660|4|4|Deathdealer's Treads
233661|4|4|Deathdealer's Visor
233662|4|4|Deathdealer's Pants
233663|4|4|Deathdealer's Pauldrons
233664|4|4|Striker's Ringmail
233665|4|4|Striker's Treads
233666|4|4|Striker's Visor
233667|4|4|Striker's Chain Legplates
233668|4|4|Striker's Spaulders
233669|4|4|Doomcaller's Headguard
233670|4|4|Doomcaller's Garb
233671|4|4|Doomcaller's Shoulderpads
233672|4|4|Doomcaller's Pants
233673|4|4|Doomcaller's Treads
233674|4|4|Enigma Pants
233675|4|4|Enigma Slippers
233676|4|4|Enigma Diadem
233677|4|4|Enigma Mantle
233678|4|4|Enigma Garb
233679|4|4|Leggings of the Oracle
233680|4|4|Robes of the Oracle
233681|4|4|Shoulderpads of the Oracle
233682|4|4|Crown of the Oracle
233683|4|4|Slippers of the Oracle
233684|4|4|Avenger's Mantle
233685|4|4|Avenger's Plate Pants
233686|4|4|Avenger's Treads
233687|4|4|Avenger's Helm
233688|4|4|Avenger's Cuirass
233689|4|4|Avenger's Spaulders
233690|4|4|Avenger's Tassets
233691|4|4|Avenger's Sabatons
233692|4|4|Avenger's Great Helm
233693|4|4|Avenger's Chestguard
233694|4|4|Stormcaller's Chestguard
233695|4|4|Stormcaller's Faceguard
233696|4|4|Stormcaller's Sabatons
233697|4|4|Stormcaller's Spaulders
233698|4|4|Stormcaller's Legplates
233699|4|4|Stormcaller's Breastplate
233700|4|4|Stormcaller's Crown
233701|4|4|Stormcaller's Treads
233702|4|4|Stormcaller's Mantle
233703|4|4|Stormcaller's Chain Leggings
233704|4|4|Stormcaller's Embrace
233705|4|4|Stormcaller's Headdress
233706|4|4|Stormcaller's Greaves
233707|4|4|Stormcaller's Epaulets
233708|4|4|Stormcaller's Mail Leggings
233709|4|4|Genesis Cowl
233710|4|4|Genesis Leather Pants
233711|4|4|Genesis Armor
233712|4|4|Genesis Stompers
233713|4|4|Genesis Spaulders
233714|4|4|Genesis Leggings
233715|4|4|Genesis Leathers
233716|4|4|Genesis Treads
233717|4|4|Genesis Mantle
233718|4|4|Genesis Headdress
233719|4|4|Genesis Breeches
233720|4|4|Genesis Chestguard
233721|4|4|Genesis Greaves
233722|4|4|Genesis Pauldrons
233723|4|4|Genesis Mask
233724|4|4|Battle Hardened Plate Girdle
233725|4|4|Battle Hardened Plate Girdle
233726|4|4|Battle Hardened Plate Armguards
233727|4|4|Battle Hardened Plate Armguards
]==],
[==[
233728|4|4|Blood-Caked Insignia
233729|4|4|Blood-Caked Choker
233730|4|4|Blood-Caked Talisman
233731|4|4|Blood-Caked Amulet
233732|4|4|Blood-Caked Necklace
233733|4|4|Blood-Caked Ring
233734|4|4|Blood-Caked Circle
233735|4|4|Blood-Caked Loop
233736|4|4|Blood-Caked Band
233737|4|4|Blood-Caked Cloak
233738|4|4|Blood-Caked Cape
233739|4|4|Blood-Caked Drape
233740|4|4|Blood-Caked Shroud
233741|4|4|Battle Hardened Lamellar Belt
233742|4|4|Battle Hardened Lamellar Armguards
233743|4|4|Battle Hardened Lamellar Wrists
233744|4|4|Battle Hardened Lamellar Cord
233745|4|4|Battle Hardened Mail Waistband
233746|4|4|Battle Hardened Mail Cord
233747|4|4|Battle Hardened Mail Belt
233748|4|4|Battle Hardened Mail Bracers
233749|4|4|Battle Hardened Mail Wristguards
233750|4|4|Battle Hardened Mail Vambraces
233751|4|4|Battle Hardened Chain Girdle
233752|4|4|Battle Hardened Chain Girdle
233753|4|4|Battle Hardened Chain Belt
233754|4|4|Battle Hardened Chain Belt
233755|4|4|Battle Hardened Chain Wristguards
233756|4|4|Battle Hardened Chain Wristguards
233757|4|4|Battle Hardened Chain Bracers
233758|4|4|Battle Hardened Chain Bracers
233759|4|4|Battle Hardened Dragonhide Bracers
233760|4|4|Battle Hardened Dragonhide Bracers
233761|4|4|Battle Hardened Dragonhide Belt
233762|4|4|Battle Hardened Dragonhide Belt
233763|4|4|Battle Hardened Dragonhide Waistguard
233764|4|4|Battle Hardened Dragonhide Waistguard
233765|4|4|Battle Hardened Dragonhide Cord
233766|4|4|Battle Hardened Dragonhide Cord
233767|4|4|Battle Hardened Dragonhide Wrists
233768|4|4|Battle Hardened Dragonhide Wrists
233769|4|4|Battle Hardened Dragonhide Armbands
233770|4|4|Battle Hardened Dragonhide Armbands
233771|4|4|Battle Hardened Leather Girdle
233772|4|4|Battle Hardened Leather Girdle
233773|4|4|Battle Hardened Leather Armsplints
233774|4|4|Battle Hardened Leather Armsplints
233775|4|4|Battle Hardened Silk Cuffs
233776|4|4|Battle Hardened Silk Cuffs
233777|4|4|Battle Hardened Silk Sash
233778|4|4|Battle Hardened Silk Sash
233779|4|4|Battle Hardened Satin Bracers
233780|4|4|Battle Hardened Satin Bracers
233781|4|4|Battle Hardened Satin Wrists
233782|4|4|Battle Hardened Satin Wrists
233783|4|4|Battle Hardened Satin Sash
233784|4|4|Battle Hardened Satin Sash
233785|4|4|Battle Hardened Satin Cinch
233786|4|4|Battle Hardened Satin Cinch
233787|4|4|Battle Hardened Dreadweave Cuffs
233788|4|4|Battle Hardened Dreadweave Cuffs
233789|4|4|Battle Hardened Dreadweave Belt
233790|4|4|Battle Hardened Dreadweave Belt
233791|2|12|Blood-Caked Copper Coin
233793|4|4|Razorspike Shoulderplates
233795|4|4|Razorspike Headcage
233796|4|2|Obsidian Destroyer
233797|4|2|Obsidian Stormhammer
233798|4|2|Obsidian Sageblade
233801|4|2|Obsidian Defender
233802|3|0|Glowing Chitin Armor Kit
233803|3|0|Sharpened Chitin Armor Kit
233804|4|4|Razorbramble Shoulderpads
233808|4|4|Razorbramble Cowl
233813|4|4|Razorbramble Leathers
233826|4|4|Vampiric Cowl
233833|4|4|Vampiric Shawl
233837|4|4|Vampiric Robe
233956|4|4|Qiraji Silk Scarf
233958|4|4|Qiraji Silk Cape
233959|4|4|Qiraji Silk Cloak
233960|4|4|Qiraji Silk Drape
233962|1|0|Flask of Madness
233964|1|0|Flask of Ancient Knowledge
233965|1|0|Flask of the Old Gods
233966|1|0|Flask of Unyielding Sorrow
233967|1|0|Elixir of the Honey Badger
233968|1|0|Elixir of the Mage-Lord
233969|1|0|Elixir of the Ironside
233977|1|0|Elixir of Alacrity
233984|1|7|Arcane Megabomb
233985|1|7|The Fumigator
233986|1|7|Obsidian Bomb
233987|3|13|G00 DV-1B3 Generator
233988|4|4|Tuned Force Reactive Disk
233990|4|4|Speedstone
233991|4|4|Tear of the Dreamer
233992|4|4|Lodestone of Retaliation
233993|4|4|Enchanted Stopwatch
233994|4|4|Ruby-Encrusted Broach
233995|3|0|Scroll: Wrath of the Swarm
233996|1|0|Enchanted Repellent
233997|3|9|Formula: Enchant Chest - Living Stats
233998|3|9|Formula: Enchant Gloves - Holy Power
233999|3|9|Formula: Enchant Gloves - Arcane Power
234000|4|4|Enchanted Prayer Tome
234001|4|4|Enchanted Totem
234002|4|4|Enchanted Mushroom
234003|2|7|Obsidian-Infused Thorium Bar
234004|1|7|Obsidian Grinding Stone
234005|1|7|Obsidian Blasting Powder
234006|1|7|Monstrous Silithid Chitin
234007|1|7|Spiked Silithid Chitin
234008|1|7|Qiraji Silk
234009|1|7|Bolt of Qiraji Silk
234010|1|7|Ancient Sandworm Bile
234011|1|7|Qiraji Stalker Venom
234012|1|7|Hive Thistle
234016|4|4|Signet Ring of the Bronze Dragonflight
234017|4|4|Signet Ring of the Bronze Dragonflight
234018|4|4|Signet Ring of the Bronze Dragonflight
234019|4|4|Signet Ring of the Bronze Dragonflight
234020|4|4|Signet Ring of the Bronze Dragonflight
234021|4|4|Signet Ring of the Bronze Dragonflight
234022|4|4|Signet Ring of the Bronze Dragonflight
234023|4|4|Signet Ring of the Bronze Dragonflight
234024|4|4|Signet Ring of the Bronze Dragonflight
234025|4|4|Signet Ring of the Bronze Dragonflight
234026|4|4|Signet Ring of the Bronze Dragonflight
234027|4|4|Signet Ring of the Bronze Dragonflight
234028|4|4|Signet Ring of the Bronze Dragonflight
234029|4|4|Signet Ring of the Bronze Dragonflight
234030|4|4|Signet Ring of the Bronze Dragonflight
234031|4|4|Signet Ring of the Bronze Dragonflight
234032|4|4|Signet Ring of the Bronze Dragonflight
234033|4|4|Signet Ring of the Bronze Dragonflight
234034|4|4|Signet Ring of the Bronze Dragonflight
234035|4|4|Signet Ring of the Bronze Dragonflight
234061|4|2|Qiraji Sacrificial Dagger
234062|4|4|Vestments of the Shifting Sands
234063|4|4|Belt of the Sand Reaver
234064|4|4|Belt of the Inquisition
234065|4|4|Sand Reaver Wristguards
234066|4|4|Toughened Silithid Hide Gloves
234067|4|2|Manslayer of the Qiraji
234068|4|4|Boots of the Vanguard
234069|4|4|Boots of the Qiraji General
234070|4|4|Bracers of Qiraji Command
234071|4|4|Legplates of the Qiraji Command
234072|4|4|Southwind's Grasp
234073|4|4|Dustwind Turban
234075|4|4|Gauntlets of the Immovable
234076|4|4|Talon of Furious Concentration
234077|4|4|Thick Silithid Chestguard
234078|4|4|Chitinous Shoulderguards
234079|4|4|Cloak of the Savior
234080|4|4|Eye of Moam
234081|4|4|Gauntlets of Southwind
234082|4|4|Mantle of Maz'Nadir
234083|4|4|Ring of Fury
234084|4|4|Southwind Helm
234085|3|9|Plans: Black Grasp of the Destroyer
234086|4|4|Black Grasp of the Destroyer
234087|4|4|Obsidian Scaled Leggings
234088|4|4|Legplates of the Destroyer
234089|4|4|Buru's Skull Fragment
234090|4|4|Gloves of the Swarm
234091|4|4|Slimy Scaled Gauntlets
234092|4|4|Fetish of Chitinous Spikes
234093|4|4|Quicksand Waders
234094|4|4|Scaled Bracers of the Gorger
234095|4|4|Slime Kickers
234096|4|2|Bow of Taut Sinew
234097|4|2|Stinger of Ayamiss
234098|4|4|Boots of the Desert Protector
234099|4|4|Boots of the Fiery Sands
234100|4|4|Helm of Regrowth
234101|4|4|Ring of the Desert Winds
234102|4|4|Scaled Silithid Gauntlets
234103|4|4|Bracers of Brutality
234104|4|2|Crossbow of Imminent Doom
234105|4|4|Gauntlets of New Life
234106|4|4|Gloves of Dark Wisdom
234107|4|4|Helm of Domination
234108|4|4|Leggings of the Black Blizzard
234109|4|4|Mantle of the Horusath
234110|4|4|Ossirian's Binding
234111|4|4|Runic Stone Shoulders
234112|4|2|Sand Polished Hammer
234113|4|4|Sandstorm Cloak
234114|4|4|Shackles of the Unscarred
234115|4|2|Staff of the Ruins
234116|4|4|Fury of the Forgotten Swarm
234117|4|4|Treads of the Wandering Nomad
234118|4|2|Gavel of Qiraji Authority
234119|4|2|Antenna of Invigoration
234120|4|4|Helm of the Holy Avenger
234121|4|2|Silithid Husked Launcher
234122|4|2|The Lost Kris of Zedd
234123|4|4|Coif of Elemental Fury
234124|3|0|Handbook of Occult Poison II
234129|4|4|Onyx Embedded Leggings
234130|4|4|Amulet of Shadow Shielding
234132|4|4|Drake Tooth Necklace
234133|4|4|Drudge Boots
234134|4|4|Gnomish Turban of Psychic Might
234135|4|4|Band of Icy Depths
234136|4|4|Darkwater Robes
234137|4|2|Fang of Korialstrasz
234138|4|2|Shadowsong's Sorrow
234139|4|2|Ravencrest's Legacy
234141|4|2|Runesword of the Red
234142|3|13|Bottomless Noggenfogger Elixir
234143|3|13|Globe of Deception
234144|3|13|Censer of the False Prophet
234145|3|12|Blood-Caked Hakkari Bijou
234146|4|4|Acid Inscribed Greaves
234147|4|4|Ancient Corroded Leggings
234148|4|4|Dragonbone Wristguards
234149|4|4|Dragonspur Wraps
234150|4|4|Gloves of Delusional Power
234151|4|4|Green Dragonskin Cloak
234152|4|2|Hammer of Bestial Fury
234153|4|2|Staff of Rampant Growth
234154|4|4|Trance Stone
234155|4|4|Malfurion's Signet Ring
234156|4|4|Boots of the Endless Moor
234157|4|4|Circlet of Restless Dreams
234158|4|4|Dragonheart Necklace
234159|4|2|Polished Ironwood Crossbow
234160|4|4|Ring of the Unliving
234161|4|4|Belt of the Dark Bog
234162|4|4|Black Bark Wristbands
234163|4|4|Dark Heart Pants
234164|4|4|Deviate Growth Cap
234165|4|4|Gauntlets of the Shining Light
234166|4|4|Malignant Footguards
234167|4|4|Boots of Fright
234168|4|4|Mendicant's Slippers
234169|4|4|Mindtear Band
234170|4|2|Nightmare Blade
234171|4|4|Unnatural Leather Spaulders
234172|4|2|Emerald Dragonfang
234173|4|4|Leggings of the Demented Mind
234174|4|4|Acid Inscribed Pauldrons
234175|4|4|Hibernation Crystal
234176|4|4|Darkmoon Card: Heroism
234177|4|4|Darkmoon Card: Blue Dragon
234178|4|4|Darkmoon Card: Maelstrom
234179|4|4|Darkmoon Card: Twisting Nether
234180|1|12|Temporal Flare
234181|0|15|Twilight Cultist's Journal
234198|4|4|Signet Ring of the Bronze Dragonflight
234199|4|4|Signet Ring of the Bronze Dragonflight
234200|4|4|Signet Ring of the Bronze Dragonflight
234201|4|4|Signet Ring of the Bronze Dragonflight
234202|4|4|Signet Ring of the Bronze Dragonflight
234220|3|9|Plans: Razorspike Headcage
234221|3|9|Plans: Razorspike Shoulderplates
234222|3|9|Plans: Razorspike Battleplate
234223|3|9|Plans: Obsidian Reaver
234224|3|9|Plans: Obsidian Champion
234225|3|9|Plans: Obsidian Destroyer
234226|3|9|Plans: Obsidian Stormhammer
234227|3|9|Plans: Obsidian Sageblade
234228|3|9|Plans: Obsidian Defender
234235|3|9|Pattern: Glowing Chitin Armor Kit
234236|3|9|Pattern: Sharpened Chitin Armor Kit
234237|3|9|Pattern: Razorbramble Cowl
234238|3|9|Pattern: Razorbramble Shoulderpads
234239|3|9|Pattern: Razorbramble Leathers
234240|3|9|Pattern: Vampiric Cowl
234241|3|9|Pattern: Vampiric Shawl
234242|3|9|Pattern: Vampiric Robe
234244|3|9|Pattern: Qiraji Silk Scarf
234249|3|9|Pattern: Qiraji Silk Cape
234250|3|9|Pattern: Qiraji Silk Cloak
234251|3|9|Pattern: Qiraji Silk Drape
234252|2|9|Recipe: Flask of Unyielding Sorrow
234253|2|9|Recipe: Flask of Ancient Knowledge
234255|2|9|Recipe: Flask of the Old Gods
234256|2|9|Recipe: Flask of Madness
234257|2|9|Recipe: Elixir of the Honey Badger
234258|2|9|Recipe: Elixir of the Mage-Lord
234259|2|9|Recipe: Elixir of the Ironside
234260|2|9|Recipe: Elixir of Alacrity
234261|2|9|Schematic: Arcane Megabomb
234262|2|9|Schematic: The Fumigator
234263|2|9|Schematic: Obsidian Bomb
234264|3|9|Schematic: G00 DV-1B3 Generator
234265|3|9|Schematic: Tuned Force Reactive Disk
234266|3|9|Formula: Speedstone
234267|3|9|Formula: Tear of the Dreamer
234268|3|9|Formula: Lodestone of Retaliation
234269|3|9|Formula: Enchanted Stopwatch
234270|3|9|Formula: Ruby-Encrusted Broach
234271|2|9|Formula: Scroll: Wrath of the Swarm
234272|2|9|Formula: Enchanted Repellent
234275|3|9|Formula: Enchanted Prayer Tome
234276|3|9|Formula: Enchanted Totem
234277|3|9|Formula: Enchanted Mushroom
234278|2|9|Manual: Smelt Obsidian-Infused Thorium Bar
234279|2|9|Plans: Obsidian Grinding Stone
234280|2|9|Schematic: Obsidian Blasting Powder
234288|4|4|Ironvine Belt
234289|1|9|Plans: Ironvine Belt
234290|4|4|Ironvine Gloves
234291|1|9|Plans: Ironvine Gloves
234292|4|4|Ironvine Breastplate
234293|1|9|Plans: Ironvine Breastplate
234294|4|4|Sandstalker Bracers
234295|1|9|Pattern: Sandstalker Bracers
234296|4|4|Sandstalker Gauntlets
234297|1|9|Pattern: Sandstalker Gauntlets
234298|4|4|Sandstalker Breastplate
234299|1|9|Pattern: Sandstalker Breastplate
234300|4|4|Spitfire Bracers
234301|1|9|Pattern: Spitfire Bracers
234302|4|4|Spitfire Gauntlets
234303|1|9|Pattern: Spitfire Gauntlets
234304|4|4|Spitfire Breastplate
234305|1|9|Pattern: Spitfire Breastplate
234306|4|4|Bramblewood Belt
234307|1|9|Pattern: Bramblewood Belt
234308|4|4|Bramblewood Boots
234309|1|9|Pattern: Bramblewood Boots
234310|4|4|Bramblewood Helm
234311|1|9|Pattern: Bramblewood Helm
234312|4|4|Sylvan Shoulders
234314|1|9|Pattern: Sylvan Shoulders
234315|4|4|Sylvan Crown
234316|1|9|Pattern: Sylvan Crown
234317|4|4|Sylvan Vest
234318|1|9|Pattern: Sylvan Vest
234319|4|4|Heavy Obsidian Belt
234320|1|9|Plans: Heavy Obsidian Belt
234321|4|4|Light Obsidian Belt
234322|1|9|Plans: Light Obsidian Belt
234324|4|4|Dreamscale Breastplate
234325|1|9|Pattern: Dreamscale Breastplate
234428|4|2|Obsidian Heartseeker
234429|3|9|Plans: Obsidian Heartseeker
234434|4|2|Obsidian Shotgun
234435|3|9|Schematic: Obsidian Shotgun
234436|4|4|Signet Ring of the Bronze Dragonflight
234437|4|4|Signet Ring of the Bronze Dragonflight
234438|4|4|Signet Ring of the Bronze Dragonflight
234439|4|4|Signet Ring of the Bronze Dragonflight
234440|4|4|Signet Ring of the Bronze Dragonflight
234444|1|0|Occult Poison II
234445|2|9|Pattern: Bolt of Qiraji Silk
234447|3|13|Bubbles' Rod of Transformation
234458|1|9|Plans: Jagged Obsidian Shield
234459|4|4|Jagged Obsidian Shield
234460|4|4|Obsidian Mail Tunic
234461|1|9|Plans: Obsidian Mail Tunic
234462|4|4|Earthstrike
234463|4|4|Wrath of Cenarius
234464|3|13|Bubbles' Rod of Bubbles
234465|4|15|Reins of the Swift Spectral Tiger
234467|3|13|Bubbles' Rod of Dragons
234468|4|4|Idol of Ursin Power
234469|4|4|Idol of Feline Ferocity
234474|4|4|Idol of Sidereal Wrath
234475|4|4|Libram of the Exorcist
234476|4|4|Libram of Sanctity
234477|4|4|Libram of Righteousness
234478|4|4|Totem of Thunderous Strikes
234479|4|4|Totem of Flowing Magma
234480|4|4|Totem of Pyroclastic Thunder
234481|1|9|Pattern: Dreamscale Kilt
234482|4|4|Dreamscale Kilt
234483|1|9|Pattern: Dreamscale Bracers
234484|4|4|Dreamscale Bracers
234485|4|4|Dreamscale Mitts
234486|1|9|Pattern: Dreamscale Mitts
234487|4|4|Dreamscale Visor
234488|1|9|Plans: Dreamscale Visor
234542|4|2|High Warlord's Greatsword
234543|4|2|High Warlord's Battle Axe
234545|4|2|High Warlord's Pulverizer
234546|4|2|High Warlord's Destroyer
234547|4|2|High Warlord's Pig Sticker
234548|4|2|High Warlord's Pig Poker
234549|4|2|High Warlord's War Staff
234550|4|2|High Warlord's Spellblade
234551|4|2|High Warlord's Battle Mace
234552|4|2|High Warlord's Blade
234553|4|2|High Warlord's Quickblade
234554|4|2|High Warlord's Cleaver
234555|4|2|High Warlord's Bludgeon
234556|4|2|High Warlord's Razor
234557|4|2|High Warlord's Right Claw
234558|4|2|High Warlord's Left Claw
234559|4|2|High Warlord's Recurve
234560|4|2|High Warlord's Crossbow
234561|4|2|High Warlord's Street Sweeper
234562|4|4|High Warlord's Shield Wall
234563|4|4|High Warlord's Tome of Destruction
234564|4|4|High Warlord's Tome of Mending
234565|4|2|Grand Marshal's Claymore
234566|4|2|Grand Marshal's Sunderer
234567|4|2|Grand Marshal's Battle Hammer
234568|4|2|Grand Marshal's Demolisher
234569|4|2|Grand Marshal's Glaive
234570|4|2|Grand Marshal's Polearm
234571|4|2|Grand Marshal's Stave
234574|4|2|Grand Marshal's Mageblade
234576|4|2|Grand Marshal's Warhammer
234578|4|2|Grand Marshal's Longsword
234579|4|2|Grand Marshal's Swiftblade
234580|4|2|Grand Marshal's Handaxe
234581|4|2|Grand Marshal's Punisher
234582|4|2|Grand Marshal's Dirk
234583|4|2|Grand Marshal's Right Hand Blade
234584|4|2|Grand Marshal's Left Hand Blade
234585|4|2|Grand Marshal's Bullseye
234586|4|2|Grand Marshal's Repeater
234587|4|2|Grand Marshal's Hand Cannon
234588|4|4|Grand Marshal's Aegis
234589|4|4|Grand Marshal's Tome of Power
234590|4|4|Grand Marshal's Tome of Restoration
234614|4|4|Void-Touched Emblem
234650|4|2|Ancient Qiraji Ripper
234728|3|15|Hakkari Summoning Token
234747|4|2|Fist of Cenarius
234748|4|4|Deeprock Bracers
234749|4|4|Earthcalm Orb
234760|4|4|Rockfury Bracers
234761|4|4|Might of Cenarius
234779|4|4|Grace of Earth
234780|4|4|Band of Earthen Might
234782|4|4|Earthpower Vest
234785|4|4|Gloves of Earthen Power
234786|4|4|Band of Earthen Wrath
234788|4|4|Earthweave Cloak
234792|4|2|Ravenholdt Slicer
234793|4|2|Shivsprocket's Shiv
234797|4|2|The Thunderwood Poker
234798|4|2|Doomulus Prime
234799|4|2|Fahrad's Reloading Repeater
234800|4|2|Simone's Cultivating Hammer
234801|4|4|Amulet of the Fallen God
234802|4|4|Cloak of the Fallen God
234803|4|4|Ring of the Fallen God
234804|4|2|Blessed Qiraji War Axe
234805|4|2|Blessed Qiraji Musket
234806|4|2|Blessed Qiraji Pugio
234807|4|4|Blessed Qiraji Bulwark
234808|4|2|Blessed Qiraji Acolyte Staff
234809|4|2|Blessed Qiraji Augur Staff
234810|4|2|Blessed Qiraji War Hammer
234811|4|4|Charm of the Shifting Sands
234812|4|4|Amulet of the Shifting Sands
234813|4|4|Choker of the Shifting Sands
234814|4|4|Pendant of the Shifting Sands
234817|1|12|Roots Within Stone
234818|1|12|Essence Bottle
234819|4|4|Demonic Gauntlet
234820|1|12|Acidic Goo
234960|4|15|Reins of the Blood-Caked Tiger
234961|4|15|Whistle of the Blood-Caked Raptor
234962|4|4|Jade Inlaid Vestments
234963|4|4|Strangely Glyphed Legplates
234964|4|4|Signet Ring of the Bronze Dragonflight
234965|4|4|Signet Ring of the Bronze Dragonflight
234966|4|4|Signet Ring of the Bronze Dragonflight
234967|4|4|Signet Ring of the Bronze Dragonflight
234968|4|4|Signet Ring of the Bronze Dragonflight
234974|4|2|Staff of the Qiraji Prophets
234975|4|2|Hammer of Ji'zhi
234976|4|2|Wand of Qiraji Nobility
234977|4|2|Silithid Claw
234978|4|2|Jaw of the Sand Reaver
234979|4|2|Sharpened Silithid Femur
234980|4|2|Huhuran's Stinger
234981|4|2|Kalimdor's Revenge
234983|4|2|Larvae of the Great Worm
234984|4|2|Death's Sting
234985|4|2|Dark Edge of Insanity
234986|4|2|Anubisath Warhammer
234987|4|2|Neretzek, The Blood Drinker
234989|4|2|Qiraji Sacrificial Dagger
234990|4|2|Manslayer of the Qiraji
234991|4|2|Bow of Taut Sinew
234992|4|2|Stinger of Ayamiss
234993|4|2|Crossbow of Imminent Doom
234994|4|2|Sand Polished Hammer
234995|4|2|Staff of the Ruins
234996|4|2|Gavel of Qiraji Authority
234997|4|2|Silithid Husked Launcher
234998|4|2|The Lost Kris of Zedd
234999|4|2|Blessed Qiraji War Hammer
235000|4|2|Blessed Qiraji Augur Staff
235001|4|2|Blessed Qiraji Acolyte Staff
235002|4|2|Blessed Qiraji Pugio
235003|4|2|Blessed Qiraji War Axe
235004|4|2|Blessed Qiraji Musket
235005|4|2|Sickle of Unyielding Strength
235006|4|2|Dagger of Veiled Shadows
235007|4|2|Scythe of the Unseen Path
235008|4|2|Kris of Unspoken Names
235009|4|2|Hammer of the Gathering Storm
235010|4|2|Gavel of Infinite Wisdom
235011|4|2|Blade of Eternal Justice
235012|4|2|Mace of Unending Life
235013|4|2|Blade of Vaulted Secrets
235014|4|2|Scepter of the False Prophet
235039|3|9|Plans: Thick Obsidian Breastplate
235040|4|4|Thick Obsidian Breastplate
235044|4|4|Goo-Covered Demonic Gauntlet
235045|4|15|Imperial Qiraji Regalia
235046|4|15|Imperial Qiraji Armaments
235047|4|4|Gloves of the Fallen Prophet
235048|4|12|Head of Ossirian the Unscarred
235049|4|12|Nightmare Engulfed Object
235133|3|9|Formula: Libram of Righteousness
235134|3|9|Formula: Libram of the Exorcist
235135|3|9|Formula: Libram of Sanctity
235136|3|9|Formula: Totem of Pyroclastic Thunder
235137|3|9|Formula: Totem of Thunderous Strikes
235138|3|9|Formula: Totem of Flowing Magma
235139|3|9|Formula: Idol of Sidereal Wrath
235140|3|9|Formula: Idol of Feline Ferocity
235141|3|9|Formula: Idol of Ursin Power
235142|3|12|Blood-Caked Silver Coin
235143|4|12|Blood-Caked Gold Coin
235144|1|15|Satchel of Blood-Caked Copper Coins
235145|1|15|Satchel of Blood-Caked Silver Coins
235256|1|12|Severed Legashi Horn
235275|4|15|Portals Deck
235276|4|15|Elementals Deck
235277|4|15|Warlords Deck
235278|4|15|Beasts Deck
235282|4|2|Antenna of Invigoration
235334|1|12|Feardred's Amulet
235470|1|12|Satyrweed
235471|1|12|Fel Mote
235472|1|12|Legashi Firewater
235473|4|4|Grand Marshal's Barricade
235474|4|4|High Warlord's Barricade
235476|4|2|High Warlord's Hacker
235477|4|2|High Warlord's Bonecracker
235478|4|2|High Warlord's Shiv
235479|4|2|Grand Marshal's Shiv
235480|4|2|Grand Marshal's Bonecracker
235481|4|2|Grand Marshal's Hacker
235497|1|0|Draught of the Sands
235509|1|12|Satyrweed Tincture
235510|1|12|Bramblesnap's Panacea
235511|4|15|Flawless Yellow Qiraji Resonating Crystal
235512|4|15|Flawless Green Qiraji Resonating Crystal
235513|4|15|Flawless Blue Qiraji Resonating Crystal
235514|4|15|Flawless Red Qiraji Resonating Crystal
235517|1|15|Torch
235518|1|12|Timbermaw War Banner
235526|3|9|Formula: Enchant Bracer - Spell Power
235528|3|9|Formula: Enchant Bracer - Agility
235529|3|0|Obsidian Scope
235530|3|9|Schematic: Obsidian Scope
235597|2|0|Spell Notes: Deep Freeze
235598|2|0|Spell Notes: Icy Veins
235599|2|0|Spell Notes: Temporal Anomaly
235600|2|0|Rune of Divine Storm
235601|2|0|Rune of Fanaticism
235602|2|0|Rune of Hammer of the Righteous
235603|2|0|Rune of Righteous Vengeance
235604|2|0|Rune of Shield of Righteousness
235605|2|0|Rune of Shock and Awe
235645|1|12|Legashi Firewater Recipe
235785|1|13|Deadwind Cage "Key"
235786|2|7|Karazhan Curio
235787|1|12|Ancient Ironwood Branch
235788|1|12|Enthusiastic Wisp
235789|1|12|Flame of Life
235790|2|12|Enchanted Firebrand
235825|1|0|Draught of the Sands
235852|2|12|Violet Satchel
235867|1|15|Scrap of Parchment
235868|4|4|Bulwark of Ire
235869|4|4|The Master's Cowl
235870|4|4|Rattlechain Helm
235871|4|4|Clutching Death Helm
235872|4|4|Stalker's Bands
235873|4|4|Crypt's Keepers
235874|4|4|Cultist's Handwraps
235875|4|4|Gravedigger's Gloves
235876|4|4|Sinner's Handguards
235877|4|4|Fanatic's Gauntlets
235878|4|4|Malefic Belt
235879|4|4|Nimble Links
235880|4|4|Pauper Soles
235881|4|4|Dreaded Treaders
235882|4|4|Clattering Steps
235883|4|4|Well Diver's Stumble
235884|4|4|Spectral Signet
235885|4|4|Ghastly Ring
235886|4|4|Kaigy's Clasp
235887|4|4|Barian's Choker
235888|4|2|Clobberclub
235889|4|2|Servant's Quarterstaff
235890|4|2|Shadow Weaver's Needle
235891|4|2|Ol' Reliable
235892|4|2|Darkrider's Spine
235893|4|4|Shadowbound Grimoire
235894|4|2|Doomsayer's Demise
235899|1|12|Corrupted Core
236002|1|12|List of Components
236005|4|4|Dreadnaught Breastplate
236006|4|4|Dreadnaught Legplates
236007|4|4|Dreadnaught Helmet
236008|4|4|Dreadnaught Pauldrons
236009|4|4|Dreadnaught Sabatons
236010|4|4|Dreadnaught Gauntlets
236011|4|4|Dreadnaught Waistguard
236012|4|4|Dreadnaught Bracers
236013|4|4|Ring of the Dreadnaught
236014|4|4|Dreadnaught Cuirass
236015|4|4|Dreadnaught Tassets
236016|4|4|Dreadnaught Horns
236017|4|4|Dreadnaught Shoulders
236018|4|4|Dreadnaught Greaves
236019|4|4|Dreadnaught Grips
236020|4|4|Dreadnaught Belt
236021|4|4|Dreadnaught Wrists
236022|4|4|Band of the Dreadnaught
236023|4|4|Bonescythe Breastplate
236024|4|4|Bonescythe Legplates
236025|4|4|Bonescythe Helmet
236026|4|4|Bonescythe Pauldrons
236027|4|4|Bonescythe Sabatons
236028|4|4|Bonescythe Gauntlets
236029|4|4|Bonescythe Waistguard
236030|4|4|Bonescythe Bracers
236031|4|4|Bonescythe Ring
236032|4|4|Bonescythe Belt
236033|4|4|Bonescythe Treads
236034|4|4|Bonescythe Band
236035|4|4|Bonescythe Mantle
236036|4|4|Bonescythe Leggings
236037|4|4|Bonescythe Mask
236038|4|4|Bonescythe Grips
236039|4|4|Bonescythe Chestguard
236040|4|4|Bonescythe Wristguards
236041|4|4|Ring of the Cryptstalker
236042|4|4|Cryptstalker Wristguards
236043|4|4|Cryptstalker Tunic
236044|4|4|Cryptstalker Spaulders
236045|4|4|Cryptstalker Legguards
236046|4|4|Cryptstalker Headpiece
236047|4|4|Cryptstalker Handguards
236048|4|4|Cryptstalker Girdle
236049|4|4|Cryptstalker Boots
236050|4|4|Cryptstalker Vambraces
236051|4|4|Cryptstalker Belt
236052|4|4|Cryptstalker Pauldrons
236053|4|4|Cryptstalker Leggings
236054|4|4|Cryptstalker Visor
236055|4|4|Cryptstalker Gauntlets
236056|4|4|Band of the Cryptstalker
236057|4|4|Cryptstalker Greaves
236058|4|4|Cryptstalker Breastplate
236059|4|4|Plagueheart Sandals
236060|4|4|Plagueheart Leggings
236061|4|4|Plagueheart Bindings
236062|4|4|Plagueheart Robe
236063|4|4|Plagueheart Gloves
236064|4|4|Plagueheart Circlet
236065|4|4|Plagueheart Shoulderpads
236066|4|4|Plagueheart Belt
236067|4|4|Plagueheart Ring
236068|4|4|Plagueheart Wristguards
236069|4|4|Plagueheart Waistguard
236070|4|4|Plagueheart Mantle
236071|4|4|Plagueheart Pants
236072|4|4|Plagueheart Crown
236073|4|4|Plagueheart Handguards
236074|4|4|Plagueheart Loop
236075|4|4|Plagueheart Boots
236076|4|4|Plagueheart Garb
236077|4|4|Frostfire Bindings
236078|4|4|Frostfire Belt
236079|4|4|Frostfire Leggings
236080|4|4|Frostfire Sandals
236081|4|4|Frostfire Robe
236082|4|4|Frostfire Gloves
236083|4|4|Frostfire Circlet
236084|4|4|Frostfire Shoulderpads
236085|4|4|Frostfire Ring
236087|4|4|Frostfire Wristwraps
236088|4|4|Frostfire Waistguard
236089|4|4|Frostfire Mantle
236090|4|4|Frostfire Pants
236091|4|4|Frostfire Hood
236092|4|4|Frostfire Mitts
236093|4|4|Frostfire Band
236094|4|4|Frostfire Boots
236095|4|4|Frostfire Garb
236097|4|4|Robe of Faith
236098|4|4|Belt of Faith
236099|4|4|Sandals of Faith
236100|4|4|Bindings of Faith
236101|4|4|Leggings of Faith
236102|4|4|Shoulderpads of Faith
236103|4|4|Circlet of Faith
236104|4|4|Gloves of Faith
236105|4|4|Ring of Faith
236106|4|4|Wrists of Faith
236107|4|4|Girdle of Faith
236108|4|4|Mantle of Faith
236109|4|4|Pants of Faith
236110|4|4|Crown of Faith
236111|4|4|Hands of Faith
236112|4|4|Band of Faith
236113|4|4|Boots of Faith
236114|4|4|Garb of Faith
236115|4|4|Redemption Tunic
236116|4|4|Ring of Redemption
236117|4|4|Redemption Headpiece
236118|4|4|Redemption Handguards
236119|4|4|Redemption Wristguards
236120|4|4|Redemption Girdle
236121|4|4|Redemption Legguards
236122|4|4|Redemption Spaulders
236123|4|4|Redemption Boots
236124|4|4|Redemption Vambraces
236125|4|4|Redemption Belt
236126|4|4|Redemption Shoulderplates
236127|4|4|Redemption Leggings
236128|4|4|Redemption Helmet
236129|4|4|Redemption Gloves
236130|4|4|Band of Redemption
236131|4|4|Redemption Greaves
236132|4|4|Redemption Breastplate
236133|4|4|Redemption Bracers
236134|4|4|Redemption Waistguard
236135|4|4|Redemption Pauldrons
236136|4|4|Redemption Legplates
236137|4|4|Redemption Crown
236138|4|4|Redemption Gauntlets
236139|4|4|Loop of Redemption
236140|4|4|Redemption Sabatons
236141|4|4|Redemption Chestguard
236142|4|4|Earthshatter Handguards
236143|4|4|Earthshatter Legguards
236144|4|4|Earthshatter Headpiece
236145|4|4|Earthshatter Spaulders
236146|4|4|Earthshatter Boots
236147|4|4|Earthshatter Tunic
236148|4|4|Earthshatter Girdle
236149|4|4|Earthshatter Wristguards
236150|4|4|Ring of the Earthshatterer
236151|4|4|Earthshatter Bindings
236152|4|4|Earthshatter Cord
236153|4|4|Earthshatter Mantle
236154|4|4|Earthshatter Kilt
236155|4|4|Earthshatter Crown
236156|4|4|Earthshatter Mitts
236157|4|4|Band of the Earthshatterer
236158|4|4|Earthshatter Greaves
236159|4|4|Earthshatter Embrace
236160|4|4|Earthshatter Bracers
236162|4|4|Earthshatter Waistguard
236163|4|4|Earthshatter Pauldrons
236164|4|4|Earthshatter Legplates
236165|4|4|Earthshatter Faceguard
236166|4|4|Earthshatter Gloves
236167|4|4|Loop of the Earthshatterer
236168|4|4|Earthshatter Sabatons
236169|4|4|Earthshatter Chestguard
236170|4|4|Earthshatter Vambraces
236171|4|4|Earthshatter Belt
236172|4|4|Earthshatter Epaulets
236173|4|4|Earthshatter Leggings
236174|4|4|Earthshatter Helmet
236175|4|4|Earthshatter Grips
236176|4|4|Signet of the Earthshatterer
236177|4|4|Earthshatter Treads
236179|4|4|Earthshatter Armor
236182|4|4|Dreamwalker Headpiece
236183|4|4|Dreamwalker Wristguards
236184|4|4|Dreamwalker Handguards
236185|4|4|Dreamwalker Boots
236186|4|4|Dreamwalker Tunic
236187|4|4|Dreamwalker Girdle
236188|4|4|Dreamwalker Legguards
236189|4|4|Dreamwalker Spaulders
236190|4|4|Ring of the Dreamwalker
236192|4|4|Dreamwalker Bindings
236193|4|4|Dreamwalker Cord
236194|4|4|Dreamwalker Mantle
236195|4|4|Dreamwalker Kilt
236196|4|4|Dreamwalker Hood
236197|4|4|Dreamwalker Mitts
236198|4|4|Band of the Dreamwalker
236199|4|4|Dreamwalker Sandals
236200|4|4|Dreamwalker Leathers
236201|4|4|Dreamwalker Bracers
236202|4|4|Dreamwalker Waistguard
236203|4|4|Dreamwalker Pauldrons
236204|4|4|Dreamwalker Leggings
236205|4|4|Dreamwalker Headdress
236206|4|4|Dreamwalker Gauntlets
236207|4|4|Loop of the Dreamwalker
236208|4|4|Dreamwalker Sabatons
236209|4|4|Dreamwalker Armor
236210|4|4|Dreamwalker Wraps
236211|4|4|Dreamwalker Sash
236212|4|4|Dreamwalker Shoulderpads
236213|4|4|Dreamwalker Trousers
236214|4|4|Dreamwalker Cowl
236215|4|4|Dreamwalker Grips
236216|4|4|Signet of the Dreamwalker
236217|4|4|Dreamwalker Stompers
236218|4|4|Dreamwalker Vest
236219|4|2|Harbinger of Doom
236220|4|4|Necro-Knight's Garb
236221|4|2|Misplaced Servo Arm
236222|4|4|Ghoul Skin Tunic
236223|4|4|Ring of the Eternal Flame
236224|4|4|Stygian Buckler
236225|4|4|Girdle of Elemental Fury
236226|4|4|Pauldrons of Elemental Fury
236227|4|4|Belt of the Grand Crusader
236228|4|4|Spaulders of the Grand Crusader
236229|4|4|Leggings of the Grand Crusader
236230|4|4|Leggings of Elemental Fury
236231|4|15|Desecrated Breastplate
236232|4|15|Desecrated Waistguard
236233|4|15|Desecrated Gauntlets
236234|4|15|Desecrated Sabatons
236235|4|15|Desecrated Bracers
236236|4|15|Desecrated Helmet
236237|4|15|Desecrated Pauldrons
236238|4|15|Desecrated Legplates
236239|4|15|Desecrated Sandals
236240|4|15|Desecrated Shoulderpads
236241|4|15|Desecrated Circlet
236242|4|15|Desecrated Robe
236243|4|15|Desecrated Gloves
236244|4|15|Desecrated Belt
236245|4|15|Desecrated Bindings
236246|4|15|Desecrated Leggings
236247|4|15|Desecrated Wristguards
236248|4|15|Desecrated Boots
236249|4|15|Desecrated Headpiece
236250|4|15|Desecrated Handguards
236251|4|15|Desecrated Tunic
236252|4|15|Desecrated Girdle
236253|4|15|Desecrated Legguards
236254|4|15|Desecrated Spaulders
236255|4|4|Wristguards of Vengeance
236256|4|4|Touch of Frost
236257|4|4|Gem of Nerubis
236258|4|4|Cryptfiend Silk Cloak
236259|4|4|Band of Unanswered Prayers
236260|4|4|Icebane Pauldrons
236261|4|4|Malice Stone Pendant
236262|4|4|Polar Shoulder Pads
236263|4|2|Widow's Remorse
236264|4|2|The Widow's Embrace
236265|4|2|Wraith Blade
236266|4|4|Pendant of Forgotten Names
236267|4|4|Crystal Webbed Robe
236268|4|4|Kiss of the Spider
236269|4|2|Maexxna's Fang
236270|4|2|Hatchet of Sundered Bone
236271|4|4|Libram of Light
236272|4|4|Cloak of the Scourge
236273|4|4|Band of the Inevitable
236274|4|4|Hailstone Band
236275|4|4|Noth's Frigid Heart
236276|4|4|Totem of Flowing Water
236277|4|4|Necklace of Necropsy
236278|4|4|Glacial Headdress
236279|4|4|Preceptor's Hat
236280|4|4|Legplates of Carnage
236281|4|4|Icy Scale Coif
236282|4|4|Loatheb's Reflection
236283|4|4|Ring of Spiritual Fervor
236284|4|2|Brimstone Staff
236285|4|2|The Eye of Nerub
236286|4|4|Band of Unnatural Forces
236287|4|2|Severance
236288|4|4|The Plague Bearer
236289|4|4|Cloak of Suturing
236290|4|2|Wand of Fates
236291|4|4|Band of Reanimation
236292|4|2|Midnight Haze
236293|4|2|Toxin Injector
236294|4|4|Icy Scale Spaulders
236295|4|4|Glacial Mantle
236296|4|4|Death's Bargain
236297|4|2|The End of Dreams
236298|4|4|Rime Covered Mantle
236299|4|2|Claymore of Unholy Might
236300|4|4|Gluth's Missing Collar
236301|4|4|Digested Hand of Power
236302|4|4|Eye of Diminution
236303|4|4|Leggings of Polarity
236304|4|4|Plated Abomination Ribcage
236305|4|2|Spire of Twilight
236306|4|2|The Castigator
236307|4|4|Veil of Eclipse
236308|4|4|Idol of Longevity
236309|4|4|Girdle of the Mentor
236310|4|2|Wand of the Whispering Dead
236311|4|4|Signet of the Fallen Defender
236312|4|2|Iblis, Blade of the Fallen Seraph
236313|4|4|The Soul Harvester's Bindings
236314|4|4|Boots of Displacement
236315|4|4|Polar Helmet
236316|4|4|Sadist's Collar
236317|4|2|Vis'era the Gutrender
236318|4|4|Seal of the Damned
236319|4|4|Leggings of Apocalypse
236320|4|4|Warmth of Forgiveness
236321|4|2|Maul of the Redeemed Crusader
236322|4|2|Soulstring
236323|4|12|Resilience of the Scourge
236324|4|12|Power of the Scourge
236325|4|12|Fortitude of the Scourge
236326|4|12|Might of the Scourge
236327|4|4|Cloak of the Necropolis
236328|4|4|Sapphiron's Left Eye
236329|4|4|Eye of the Dead
236330|4|4|Sapphiron's Right Eye
236331|4|4|The Restrained Essence of Sapphiron
236333|4|4|Shroud of Dominion
236334|4|4|Slayer's Crest
236335|4|4|Fists of the Unrelenting
236336|4|4|The Face of Death
236337|4|4|Glyph of Deflection
236338|4|2|Claw of the Frost Wyrm
236339|4|2|Gressil, Dawn of Ruin
236340|4|2|Might of Menethil
236341|4|2|The Hungering Cold
236342|4|4|Stormrage's Talisman of Seething
236343|4|2|Kingsfall
236344|4|2|Nerubian Slavemaker
236345|4|4|Gem of Trapped Innocents
236346|4|2|Soulseeker
236347|4|4|Shield of Condemnation
236348|4|2|Hammer of the Twisting Nether
236349|4|2|Doomfinger
236350|4|15|The Phylactery of Kel'Thuzad
236351|4|4|Mark of the Champion
236352|4|4|Mark of the Champion
236354|1|15|Aspirant's Seal of the Dawn
236355|1|15|Initiate's Seal of the Dawn
236356|2|15|Squire's Seal of the Dawn
236357|2|15|Knight's Seal of the Dawn
236358|3|15|Templar's Seal of the Dawn
236360|3|15|Champion's Seal of the Dawn
236361|3|15|Vanguard's Seal of the Dawn
236362|4|15|Crusader's Seal of the Dawn
236363|4|15|Commander's Seal of the Dawn
236364|4|15|Highlord's Seal of the Dawn
236374|4|15|Commander's Seal of the Dawn
236375|4|15|Highlord's Seal of the Dawn
236376|4|15|Crusader's Seal of the Dawn
236378|3|15|Vanguard's Seal of the Dawn
236379|3|15|Champion's Seal of the Dawn
236380|3|15|Templar's Seal of the Dawn
236382|2|15|Knight's Seal of the Dawn
236383|2|15|Squire's Seal of the Dawn
236384|1|15|Initiate's Seal of the Dawn
236385|1|15|Aspirant's Seal of the Dawn
236386|4|15|Highlord's Seal of the Dawn
236388|4|15|Commander's Seal of the Dawn
236389|4|15|Crusader's Seal of the Dawn
236390|3|15|Vanguard's Seal of the Dawn
236391|3|15|Champion's Seal of the Dawn
236392|3|15|Templar's Seal of the Dawn
236393|2|15|Knight's Seal of the Dawn
236394|2|15|Squire's Seal of the Dawn
236395|1|15|Initiate's Seal of the Dawn
236396|1|15|Aspirant's Seal of the Dawn
236397|4|12|Remnants of Valor
236398|5|2|Atiesh, Greatstaff of the Guardian
236399|5|2|Atiesh, Greatstaff of the Guardian
236400|5|2|Atiesh, Greatstaff of the Guardian
236401|5|2|Atiesh, Greatstaff of the Guardian
236414|2|15|Damaged Undermine Supply Crate
236417|3|0|Soul of the Tactician
236418|3|0|Soul of the War Veteran
236419|3|0|Soul of the Battle Forecaster
236420|3|0|Soul of the Bloodseeker
236421|3|0|Soul of the Titan
236422|3|0|Soul of the Destroyer
236423|3|0|Soul of the Deathbound
236424|3|0|Soul of the Sanguinist
236425|3|0|Soul of the Pristine Blocker
236426|3|0|Soul of the Savage
236427|3|0|Soul of Enmity
236428|3|0|Soul of the Deflective
236429|3|0|Soul of the Revenger
236430|3|0|Soul of the Incessant
236431|3|0|Soul of the Thunderbringer
236432|3|0|Soul of the Sentinel
236433|3|0|Soul of the Southpaw
236434|3|0|Soul of the Gladiator
236435|3|0|Soul of the Aftershock
236436|3|0|Soul of the Avoidant
236437|3|0|Soul of the Toxicologist
236438|3|0|Soul of the Executioner
236439|3|0|Soul of the Opportunist
236440|3|0|Soul of the Butcher
236441|3|0|Soul of the Phantom
236442|3|0|Soul of the Scoundrel
236443|3|0|Soul of the Thrill Seeker
236444|3|0|Soul of the Shiv Savant
236445|3|0|Soul of the Stalker
236446|3|0|Soul of the Efficient
236447|3|0|Soul of the Knife Juggler
236448|3|0|Soul of the Shadow Master
236449|3|0|Soul of the Equilibrist
236450|3|0|Soul of the Poised Brawler
236451|3|0|Soul of the Black Belt
236452|3|0|Soul of the Fencer
236453|3|0|Soul of the Swashbuckler
236454|3|0|Soul of the Bloodthirsty
236455|3|0|Soul of the Transfusionist
236456|3|0|Soul of the Refined
236457|3|0|Soul of the Decimator
236458|3|0|Soul of the Rotbringer
236459|3|0|Soul of the Malevolent
236460|3|0|Soul of the Shadowmancer
236461|3|0|Soul of the Chaos Harbinger
236462|3|0|Soul of the Arsonist
236463|3|0|Soul of the Infernal Shepherd
236464|3|0|Soul of the Demonlord
236465|3|0|Soul of the Demonic Exorcist
236466|3|0|Soul of the Pained
236467|3|0|Soul of the Flamewraith
236468|3|0|Soul of the Fleshfeaster
236469|3|0|Soul of the Abyssal
236470|3|0|Soul of the Voidborne
236471|3|0|Soul of the Umbral Blade
236472|3|0|Soul of the Ritualist
236473|3|0|Soul of the Pain Spreader
236474|3|0|Soul of the Misleader
236475|3|0|Soul of the Preyseeker
236476|3|0|Soul of the Sharpshooter
236477|3|0|Soul of the Hazard Harrier
236478|3|0|Soul of the Alternator
236479|3|0|Soul of the Toxinologist
236480|3|0|Soul of the Bounty Hunter
236481|3|0|Soul of the Trick Shooter
236482|3|0|Soul of the Beast Tender
236483|3|0|Soul of the Hound Master
236484|3|0|Soul of the Alpha Tamer
236485|3|0|Soul of the Huntsman
236487|3|0|Soul of the Retaliator
236488|3|0|Soul of Echoes
236489|3|0|Soul of the Lethal Lasher
236490|3|0|Soul of the Kineticist
236491|3|0|Soul of the Strategist
236492|3|0|Soul of the Deadly Striker
236493|3|0|Soul of the Hastened Healer
236494|3|0|Soul of the Refined
236495|3|0|Soul of the Celebrant
236496|3|0|Soul of the Faithful
236497|3|0|Soul of the Serendipitous
236498|3|0|Soul of the Resonant
236499|3|0|Soul of the Devotee
236500|3|0|Soul of the Archbishop
236501|3|0|Soul of the Penitent
236502|3|0|Soul of the Soul Warder
236503|3|0|Soul of the Twilight Walker
236504|3|0|Soul of the Mind Breaker
236505|3|0|Soul of the Deathdealer
236506|3|0|Soul of the Spirit Font
236507|3|0|Soul of the Zealot
236508|3|0|Soul of the Unwavering Defiler
236509|3|0|Soul of the Contemnor
236510|3|0|Soul of the Plaguebringer
236511|3|0|Soul of the Reverberant
236512|3|0|Soul of the Chronohealer
236513|3|0|Soul of Temporal Longing
236514|3|0|Soul of the Precognitive
236515|3|0|Soul of the Arcanist
236516|3|0|Soul of the Eternal Caretaker
236517|3|0|Soul of the Spellbider
236518|3|0|Soul of the Wardshaper
236519|3|0|Soul of Winter's Grasp
236520|3|0|Soul of the Cryomancer
236521|3|0|Soul of the Evoker
236522|3|0|Soul of the Elementalist
236523|3|0|Soul of the Magical Armorer
236524|3|0|Soul of the Kindler
236525|3|0|Soul of Fiery Convergence
236526|3|0|Soul of the Perpetual Blaze
236527|3|0|Soul of the Pyromaniac
236528|3|0|Soul of the Igniter
236529|3|0|Soul of the Torcher
236530|3|0|Soul of the Pristine Blocker
236531|3|0|Soul of the Lightwarden
236532|3|0|Soul of the Radiant Defender
236533|3|0|Soul of the Shieldbearer
236534|3|0|Soul of the Bastion
236535|3|0|Soul of the Reckoner
236536|3|0|Soul of the Ironclad
236537|3|0|Soul of the Guardian
236538|3|0|Soul of the Peacekeeper
236539|3|0|Soul of the Refined
236540|3|0|Soul of the Exemplar
236541|3|0|Soul of the Inquisitor
236542|3|0|Soul of the Sovereign
236543|3|0|Soul of the Dominus
236544|3|0|Soul of the Vindicator
236545|3|0|Soul of the Altruist
236546|3|0|Soul of the Arbiter
236547|3|0|Soul of the Sealbearer
236548|3|0|Soul of the Justicar
236549|3|0|Soul of the Judicator
236550|3|0|Soul of the Ascendant
236551|3|0|Soul of the Retributor
236552|3|0|Soul of the Excommunicator
236553|3|0|Soul of the Lightbringer
236554|3|0|Soul of the Exile
236555|3|0|Soul of the Templar
236556|3|0|Soul of the Windwalker
236557|3|0|Soul of the Shield Master
236558|3|0|Soul of the Totemic Protector
236559|3|0|Soul of the Shock-Absorber
236560|3|0|Soul of the Spiritual Bulwark
236561|3|0|Soul of the Maelstrombringer
236562|3|0|Soul of the Lavawalker
236563|3|0|Soul of the True Alpha
236564|3|0|Soul of the Totemkeeper
236565|3|0|Soul of the Ancestors
236566|3|0|Soul of the Spiritweaver
236567|3|0|Soul of the Waterwalker
236568|3|0|Soul of the Stormtender
236569|3|0|Soul of the Elemental Seer
236570|3|0|Soul of the Vitalist
236571|3|0|Soul of the Spirithealer
236572|3|0|Soul of the Refined
236573|3|0|Soul of the Chieftain
236574|3|0|Soul of the Furycharged
236575|3|0|Soul of the Stormbreaker
236576|3|0|Soul of the Tempest
236577|3|0|Soul of the Seismic Smasher
236578|3|0|Soul of the Flamebringer
236579|3|0|Soul of the Volcano
236580|3|0|Soul of the Raging Flame
236581|3|0|Soul of the Elemental Master
236582|3|0|Soul of the Tribesman
236583|3|0|Soul of the Spirit Guide
236584|3|0|Soul of the Elder
236585|3|0|Soul of the Elements
236586|3|0|Soul of the Lava Sage
236587|3|0|Soul of the Ancestral Warden
236588|3|0|Soul of the Corrupt
236589|3|0|Soul of the Gentle Paw
236590|3|0|Soul of the Ferocious
236591|3|0|Soul of the Shifter
236592|3|0|Soul of the Territorial
236593|3|0|Soul of the Beast
236594|3|0|Soul of the Lacerator
236595|3|0|Soul of the Furious
236596|3|0|Soul of the Mangler
236597|3|0|Soul of the Innervator
236598|3|0|Soul of the Nurturer
236599|3|0|Soul of the Tranquil
236600|3|0|Soul of the Dreamwalker
236601|3|0|Soul of the Grove Tender
236602|3|0|Soul of the Feathered Sage
236603|3|0|Soul of the Benevolent Seer
236604|3|0|Soul of the Lifeweaver
236605|3|0|Soul of the Illuminator
236606|3|0|Soul of Predatory Instincts
236607|3|0|Soul of the Ripper
236608|3|0|Soul of the Claw
236609|3|0|Soul of the Prideful
236610|3|0|Soul of the Barbaric
236611|3|0|Soul of the Frenetic
236612|3|0|Soul of the Exsanguinator
236613|3|0|Soul of the Thornkeeper
236614|3|0|Soul of the Lunatic
236615|3|0|Soul of the Starcaller
236616|3|0|Soul of the Night
236617|3|0|Soul of the Keepers
236618|3|0|Soul of the Wrathful
236619|3|0|Soul of the Graceful
236620|3|0|Soul of the Astral Ascendant
236621|3|0|Soul of the Cometcaller
236622|3|0|Soul of the Forest
236623|3|0|Soul of Animalistic Expertise
236631|1|12|Bloodmaw's Basher
236642|4|4|Mender's Handwraps
236643|4|4|Nightwatcher's Gloves
236644|4|4|Mourner's Handguards
236645|4|4|Lightwielder's Gauntlets
236656|3|7|Frozen Rune
236657|3|13|Bubbles' Rotting Branch
236658|3|13|Bubbles' Spine Trophy
236660|3|13|Bubbles' Troll Tusk
236661|3|13|Bubbles' Ribcage of Ribaldy
236662|4|15|Reins of War
236663|4|15|Reins of Conquest
236664|4|15|Reins of Death
236665|4|15|Reins of Famine
236690|4|4|Glacial Cloak
236692|4|4|Glacial Gloves
236693|4|4|Glacial Wrists
236694|4|4|Glacial Vest
236695|4|4|Icebane Breastplate
236696|4|4|Icebane Bracers
236697|4|4|Icebane Gauntlets
236698|4|4|Icy Scale Bracers
236699|4|4|Icy Scale Breastplate
236700|4|4|Icy Scale Gauntlets
236701|4|4|Polar Bracers
236702|4|4|Polar Tunic
236703|4|4|Polar Gloves
236704|4|4|Frosty Wrists
236705|4|4|Frosty Gloves
236706|4|4|Frosty Vest
236707|4|4|Tunic of Undead Slaying
236708|4|4|Breastplate of Undead Slaying
236709|4|4|Chestguard of Undead Slaying
236710|4|4|Wristguards of Undead Slaying
236711|4|4|Wristwraps of Undead Slaying
236712|4|4|Bracers of Undead Slaying
236713|4|4|Handwraps of Undead Slaying
236714|4|4|Gauntlets of Undead Slaying
236715|4|4|Handguards of Undead Slaying
236716|4|4|Bracers of Undead Cleansing
236717|4|4|Gloves of Undead Cleansing
236718|4|4|Robe of Undead Cleansing
236719|4|4|Bracers of Undead Purification
236720|4|4|Gloves of Undead Purification
236721|4|4|Robe of Undead Purification
236722|4|4|Bracers of Undead Warding
236723|4|4|Gloves of Undead Warding
236724|4|4|Robe of Undead Warding
236725|4|4|Wristwraps of Undead Cleansing
236726|4|4|Handwraps of Undead Cleansing
236727|4|4|Tunic of Undead Cleansing
236728|4|4|Wristwraps of Undead Purification
236729|4|4|Handwraps of Undead Purification
236730|4|4|Tunic of Undead Purification
236731|4|4|Wristwraps of Undead Warding
236732|4|4|Handwraps of Undead Warding
236733|4|4|Tunic of Undead Warding
236734|4|4|Wristguards of Undead Cleansing
236735|4|4|Handguards of Undead Cleansing
236736|4|4|Chestguard of Undead Cleansing
236737|4|4|Wristguards of Undead Warding
236738|4|4|Handguards of Undead Warding
236739|4|4|Chestguard of Undead Warding
236740|4|4|Wristguards of Undead Purification
236741|4|4|Handguards of Undead Purification
236742|4|4|Chestguard of Undead Purification
236743|4|4|Bracers of Undead Purification
236744|4|4|Gauntlets of Undead Purification
236745|4|4|Breastplate of Undead Purification
236746|4|4|Bracers of Undead Warding
236747|4|4|Gauntlets of Undead Warding
236748|4|4|Breastplate of Undead Warding
236750|1|12|Heart of Doom
236754|2|9|Recipe: Distilled Firewater
236755|2|4|[TMP] Funerary Headdress
236759|2|2|[TMP] Furbolg Ritual Stave
236760|2|2|[TMP] Satyrbane
236782|4|4|Sairuh's Collar
236786|1|12|Heart of Doom
236864|4|11|Soulfrost Quiver
236869|4|11|Soulfrost Ammo Pouch
236871|3|4|Creepy Censor Sensors
236872|2|9|Schematic: Creepy Censor Sensors
236878|2|15|Mysterious Relic
236879|2|15|Mysterious Relic
236880|2|15|Mysterious Relic
237011|3|13|Portcullis Key
237020|3|15|Scarlet Insignia
237023|1|0|Pop-Up Shrub
237024|3|15|Opera Ticket
237037|1|15|Haute Club Membership Card
237041|2|9|Tome of Enchanted Flare
237143|1|12|Orders from the Commander
237163|3|15|Ancient Hero's Skull
237196|1|13|Suspicious Collection Equipment
237230|1|13|Suspicious Neutralizing Compound
237261|0|15|Fine Sand
237263|2|0|Supply Bag
237275|4|4|Icebane Helmet
237277|4|4|Frosty Leggings
237278|4|2|The Purifier
237279|4|4|Amulet of the Dawn
237280|4|4|Medallion of the Dawn
237281|4|4|Bracers of Hope
237282|4|4|Bracers of Subterfuge
237283|4|4|Talisman of Ascendance
237284|4|1|Supply Bag
237285|4|4|Band of Resolution
237286|4|4|Band of Piety
237287|4|2|Verimonde's Last Resort
237288|4|4|Sanctified Leather Helm
237289|4|4|Leggings of the Plague Hunter
237290|4|4|Icebane Leggings
237291|4|4|Glacial Leggings
237292|4|4|Polar Leggings
237293|4|4|Icy Scale Leggings
237294|4|4|Ramaladni's Icy Grasp
237302|3|4|Tabard of the Scarlet Enclave
237381|4|15|Desecrated Ring
237386|3|15|Wartorn Undermine Supply Crate
237504|2|7|Supply Shipment
237512|4|2|Blade of Inquisition
237577|4|2|Totem of Unholy Might
237773|2|15|Word of Thawing
237810|2|7|Weighted Consecrated Sharpening Stone
237814|4|4|Sentinel's Lamellar Legguards
237815|4|4|Sentinel's Silk Leggings
237817|4|4|Sentinel's Lizardhide Pants
237818|4|4|Sentinel's Leather Pants
237819|4|4|Sentinel's Chain Leggings
237820|4|4|Outrider's Silk Leggings
237821|4|4|Outrider's Lizardhide Pants
237822|4|4|Outrider's Leather Pants
237823|4|4|Outrider's Mail Leggings
237824|4|4|Outrider's Chain Leggings
237825|4|4|Sentinel's Plate Legguards
237826|4|4|Outrider's Plate Legguards
238057|1|12|Krellian's Head
238234|2|7|Blessed Wizard Oil
238241|2|7|Consecrated Sharpening Stone
238244|1|12|Tablet of Creation
238245|1|12|Tablet of Manipulation
238246|1|12|Tablet of Power
238264|3|4|Scarlet Augur's Hood
238265|3|4|Scarlet Augur's Mantle
238266|3|4|Scarlet Augur's Vestaments
238267|3|4|Scarlet Augur's Cuffs
238268|3|4|Scarlet Augur's Mitts
238269|3|4|Scarlet Augur's Strap
238270|3|4|Scarlet Augur's Leggings
238271|3|4|Scarlet Augur's Soles
238272|3|4|Scarlet Infiltrator's Bandana
238273|3|4|Scarlet Infiltrator's Shoulderpads
238274|3|4|Scarlet Infiltrator's Vest
238275|3|4|Scarlet Infiltrator's Bracers
238276|3|4|Scarlet Infiltrator's Gloves
238277|3|4|Scarlet Infiltrator's Belt
238278|3|4|Scarlet Infiltrator's Trousers
238279|3|4|Scarlet Infiltrator's Shoes
238280|3|4|Scarlet Huntsman's Coif
238281|3|4|Scarlet Huntsman's Pauldrons
238282|3|4|Scarlet Huntsman's Chain
238283|3|4|Scarlet Huntsman's Wristguards
238284|3|4|Scarlet Huntsman's Handguards
238285|3|4|Scarlet Huntsman's Clasp
238286|3|4|Scarlet Huntsman's Legguards
238287|3|4|Scarlet Huntsman's Boots
238288|3|4|Scarlet Soldier's Helmet
238289|3|4|Scarlet Soldier's Spaulders
238290|3|4|Scarlet Soldier's Chestplate
238291|3|4|Scarlet Soldier's Protectors
238292|3|4|Scarlet Soldier's Grips
238293|3|4|Scarlet Soldier's Waistguard
238294|3|4|Scarlet Soldier's Legplates
238295|3|4|Scarlet Soldier's Stompers
238298|3|9|Pattern: Scarlet Augur's Hood
238299|3|9|Pattern: Scarlet Augur's Mantle
238300|3|9|Pattern: Scarlet Augur's Vestments
238301|3|9|Pattern: Scarlet Augur's Cuffs
238302|3|9|Pattern: Scarlet Augur's Mitts
238303|3|9|Pattern: Scarlet Augur's Strap
238304|3|9|Pattern: Scarlet Augur's Leggings
238305|3|9|Pattern: Scarlet Augur's Soles
238306|3|9|Pattern: Scarlet Infiltrator's Bandana
238307|3|9|Pattern: Scarlet Infiltrator's Shoulderpads
238308|3|9|Pattern: Scarlet Infiltrator's Vest
238309|3|9|Pattern: Scarlet Infiltrator's Bracers
238310|3|9|Pattern: Scarlet Infiltrator's Gloves
238311|3|9|Pattern: Scarlet Infiltrator's Belt
238312|3|9|Pattern: Scarlet Infiltrator's Trousers
238313|3|9|Pattern: Scarlet Infiltrator's Shoes
238314|3|9|Pattern: Scarlet Huntsman's Coif
238315|3|9|Pattern: Scarlet Huntsman's Pauldrons
238316|3|9|Pattern: Scarlet Huntsman's Chain
238317|3|9|Pattern: Scarlet Huntsman's Wristguards
238318|3|9|Pattern: Scarlet Huntsman's Handguards
238319|3|9|Pattern: Scarlet Huntsman's Clasp
238320|3|9|Pattern: Scarlet Huntsman's Legguards
238321|3|9|Pattern: Scarlet Huntsman's Boots
238322|3|9|Plans: Scarlet Soldier's Helmet
238323|3|9|Plans: Scarlet Soldier's Spaulders
238324|3|9|Plans: Scarlet Soldier's Chestplate
238325|3|9|Plans: Scarlet Soldier's Protectors
238326|3|9|Plans: Scarlet Soldier's Grips
238327|3|9|Plans: Scarlet Soldier's Waistguard
238328|3|9|Plans: Scarlet Soldier's Legplates
238329|3|9|Plans: Scarlet Soldier's Stompers
238345|1|12|Lady Sesspira's Key
238347|1|12|Staff of Archmage Selwyn
238348|4|2|The Axe of Severing
238349|4|4|Abomination Skin Leggings
238350|4|2|Scorn's Focal Dagger
238351|4|4|The Frozen Clutch
238352|4|4|Scorn's Icy Choker
238353|4|4|Mantle of Lady Falther'ess
238354|4|2|Lady Falther'ess' Finger
238355|4|4|Chains of the Lich
238356|4|4|Waistband of Balzaphon
238357|4|2|Staff of Balzaphon
238358|4|4|Blackwood's Thigh
238360|4|4|Lord Blackwood's Buckler
238361|4|2|Lord Blackwood's Blade
238362|4|4|Bracers of Mending
238363|4|4|The Shadow's Grasp
238364|4|4|Cloak of Revanchion
238385|1|12|Memory Crystal
238449|1|12|Nullifying Ward
238463|1|12|Mosshoof Hide
238464|1|12|Astringent Spider Venom
238497|1|12|Air Elemental Core
238501|1|12|Pellet Gun
238503|1|12|Wild Honey
238507|1|12|Mammoth Shark Steak
238517|1|12|Mark of the Queen
238637|1|0|Prowler Steak
238638|1|0|Filet o' Flank
238639|1|0|Sunrise Omelette
238641|2|0|Specklefin Feast
238642|2|0|Grand Lobster Banquet
238644|1|12|Demonic Energy Crystal Shard
238645|1|9|Recipe: Prowler Steak
238646|1|9|Recipe: Filet o' Flank
238647|1|9|Recipe: Sunrise Omelette
238649|1|9|Recipe: Specklefin Feast
238650|1|9|Recipe: Grand Lobster Banquet
238681|1|0|Dusty Bag
238687|0|2|Maul of Onslaught
238734|2|0|Tinkerbox: Teleport
238735|2|0|Tinkerbox: Nitro Boosts
238736|2|0|Tinkerbox: Magnetic Displacement
238737|1|7|Tinkerbox
238781|2|4|Semisafe Transporter: New Avalon
238782|1|9|Schematic: Tinkerbox
238783|2|9|Schematic: Tinkerbox: Teleport
238784|2|9|Schematic: Tinkerbox: Nitro Boosts
238785|2|9|Schematic: Tinkerbox: Magnetic Displacement
238786|3|9|Schematic: Tinker: Teleport
238787|3|9|Schematic: Tinker: Nitro Boosts
238788|3|9|Schematic: Tinker: Magnetic Displacement
238789|3|9|Schematic: Semisafe Transporter: New Avalon
238794|1|12|Unappetizing Leftovers
238797|1|12|Fel Crystal Shard
238798|1|12|Toxic Essence
238802|1|13|Druidic Amulet
238811|1|12|Juicy Apple
238830|1|12|Apple Scope
238831|1|12|Apple Rope
238899|1|12|Assorted Fish
238925|4|11|Scarlet Quiver
238926|4|11|Scarlet Ammo Pouch
238927|2|9|Pattern: Scarlet Quiver
238928|2|9|Pattern: Scarlet Ammo Pouch
238935|1|12|Gently Plagued Meat
238945|4|2|Caladboulder
238960|1|12|Quartermaster's Crate
238961|4|2|Caladbolg
238985|1|12|Heavy Crate
239005|1|12|Distilled Demonic Essence
239006|1|12|Fel-Touched Flower
239010|4|2|Hilt of the Ashbringer
239011|5|7|Shard of Crystallized Light
239012|5|7|Splinter of Crystallized Light
239013|5|7|Crystalline Axe
239016|1|7|Holy Salts
239017|2|7|Exquisite Spices
239021|1|9|Carrie's Cookbook
239060|4|2|Will of the Mountain
239092|1|12|Preposterously Prosed Postage
239097|3|13|Key to the Cathedral
239117|4|7|Crusader's Chalice
239119|1|12|Holy Arrow
239147|3|1|Crusader's Knapsack
239148|4|1|Crimson Dawnwoven Bag
239149|3|9|Pattern: Crusader's Knapsack
239150|4|9|Pattern: Crimson Dawnwoven Bag
239159|2|4|S03 - Scarlet Enclave - Captains Shield
239196|5|12|Ruined Lightforged Blade
239197|4|12|Reforged Blade of the Ashbringer
239215|4|15|Charred Emblem
239216|5|15|Lightforged Iron
239218|5|12|Stoneshaper's Notes
239219|4|15|Emblem of the Ashbringer
239222|3|9|Schematic: Pop-Up Shrub
239223|1|12|House Prop
239225|1|12|Classy Quill
239246|1|12|Fizzlefuse's Shopping List
239248|4|15|Scarlet Junkbox
239292|1|0|Forgewright's Notes
239301|5|2|Corrupted Ashbringer
239302|1|12|Scarlet Uniform Belt
]==],
[==[
239316|1|12|Triangulation Samophlange
239512|4|4|Lightbreaker Wrists
239513|4|4|Lightbreaker Belt
239514|4|4|Lightbreaker Grips
239515|4|4|Lightbreaker Greaves
239516|4|4|Lightbreaker Shoulders
239517|4|4|Lightbreaker Greathelm
239518|4|4|Lightbreaker Tassets
239519|4|4|Lightbreaker Cuirass
239520|4|4|Lightbreaker Bracers
239521|4|4|Lightbreaker Waistguard
239522|4|4|Lightbreaker Gauntlets
239523|4|4|Lightbreaker Sabatons
239524|4|4|Lightbreaker Pauldrons
239525|4|4|Lightbreaker Helmet
239526|4|4|Lightbreaker Legplates
239527|4|4|Lightbreaker Breastplate
239529|4|4|Dawnstalker Breastplate
239530|4|4|Dawnstalker Greaves
239531|4|4|Dawnstalker Gauntlets
239532|4|4|Dawnstalker Visor
239533|4|4|Dawnstalker Leggings
239534|4|4|Dawnstalker Pauldrons
239535|4|4|Dawnstalker Belt
239536|4|4|Dawnstalker Vambraces
239537|4|4|Dawnstalker Boots
239538|4|4|Dawnstalker Girdle
239539|4|4|Dawnstalker Handguards
239540|4|4|Dawnstalker Headpiece
239541|4|4|Dawnstalker Legguards
239542|4|4|Dawnstalker Spaulders
239543|4|4|Dawnstalker Tunic
239544|4|4|Dawnstalker Wristguards
239545|1|12|Weathered Night Elf Artifact
239547|4|4|Duskwraith Wristguards
239548|4|4|Duskwraith Chestguard
239549|4|4|Duskwraith Grips
239550|4|4|Duskwraith Mask
239551|4|4|Duskwraith Leggings
239552|4|4|Duskwraith Mantle
239553|4|4|Duskwraith Treads
239554|4|4|Duskwraith Belt
239555|4|4|Duskwraith Bracers
239556|4|4|Duskwraith Waistguard
239557|4|4|Duskwraith Gauntlets
239558|4|4|Duskwraith Sabatons
239559|4|4|Duskwraith Pauldrons
239560|4|4|Duskwraith Helmet
239561|4|4|Duskwraith Legplates
239562|4|4|Duskwraith Breastplate
239565|4|4|Garb of Revelation
239572|4|4|Boots of Revelation
239574|4|4|Hands of Revelation
239575|4|4|Crown of Revelation
239577|4|4|Pants of Revelation
239581|4|4|Mantle of Revelation
239582|4|4|Girdle of Revelation
239583|4|4|Wrists of Revelation
239584|4|4|Gloves of Revelation
239585|4|4|Circlet of Revelation
239586|4|4|Shoulderpads of Revelation
239587|4|4|Leggings of Revelation
239588|4|4|Bindings of Revelation
239589|4|4|Sandals of Revelation
239590|4|4|Belt of Revelation
239591|4|4|Robe of Revelation
239609|1|12|Saria's Knapsack
239694|4|0|Covenant of Light
239695|4|15|Scarlet Steed
239696|5|15|Hilt of the Ashbringer
239698|1|12|Dawnwoven Fabric
239704|1|12|Amulet of Gol'gere
239706|4|15|Consecrated Sabatons
239707|4|15|Consecrated Helmet
239708|4|15|Consecrated Pauldrons
239709|4|15|Consecrated Legplates
239710|4|15|Consecrated Sandals
239712|4|15|Consecrated Shoulderpads
239714|4|15|Consecrated Circlet
239715|4|15|Consecrated Robe
239716|4|15|Consecrated Gloves
239718|4|15|Consecrated Belt
239719|4|15|Consecrated Bindings
239721|4|15|Consecrated Leggings
239722|4|15|Consecrated Wristguards
239726|4|15|Consecrated Boots
239729|4|15|Consecrated Headpiece
239730|4|15|Consecrated Handguards
239731|4|15|Consecrated Tunic
239756|4|15|Consecrated Girdle
239757|4|15|Consecrated Legguards
239758|4|15|Consecrated Spaulders
239759|4|15|Consecrated Bracers
239760|4|15|Consecrated Waistguard
239761|4|15|Consecrated Breastplate
239762|4|15|Consecrated Gauntlets
239764|1|12|Crimson Bladeleaf
240018|1|9|Fizzlefuse's Tinker Manual
240020|4|4|Inquisition Legguards
240021|4|4|Inquisition Spaulders
240022|4|4|Inquisition Boots
240023|4|4|Inquisition Vambraces
240024|4|4|Inquisition Belt
240025|4|4|Inquisition Shoulderplates
240026|4|4|Inquisition Leggings
240027|4|4|Inquisition Helmet
240028|4|4|Inquisition Gloves
240029|4|4|Inquisition Greaves
240030|4|4|Inquisition Breastplate
240031|4|4|Inquisition Bracers
240032|4|4|Inquisition Waistguard
240033|4|4|Inquisition Pauldrons
240034|4|4|Inquisition Legplates
240035|4|4|Inquisition Crown
240036|4|4|Inquisition Gauntlets
240037|4|4|Inquisition Sabatons
240038|4|4|Inquisition Chestguard
240039|4|4|Inquisition Tunic
240040|4|4|Inquisition Headpiece
240041|4|4|Inquisition Handguards
240042|4|4|Inquisition Wristguards
240043|4|4|Inquisition Girdle
240044|4|4|Fireleaf Wristwraps
240045|4|4|Fireleaf Waistguard
240046|4|4|Fireleaf Mantle
240047|4|4|Fireleaf Pants
240048|4|4|Fireleaf Hood
240049|4|4|Fireleaf Mitts
240050|4|4|Fireleaf Boots
240051|4|4|Fireleaf Garb
240052|4|4|Fireleaf Bindings
240053|4|4|Fireleaf Belt
240054|4|4|Fireleaf Shoulderpads
240055|4|4|Fireleaf Leggings
240056|4|4|Fireleaf Circlet
240057|4|4|Fireleaf Gloves
240058|4|4|Fireleaf Sandals
240059|4|4|Fireleaf Robe
240060|4|4|Waywatcher Wraps
240061|4|4|Waywatcher Sash
240062|4|4|Waywatcher Shoulderpads
240063|4|4|Waywatcher Trousers
240064|4|4|Waywatcher Cowl
240065|4|4|Waywatcher Grips
240066|4|4|Waywatcher Stompers
240067|4|4|Waywatcher Vest
240068|4|4|Waywatcher Bindings
240069|4|4|Waywatcher Cord
240070|4|4|Waywatcher Mantle
240071|4|4|Waywatcher Kilt
240072|4|4|Waywatcher Hood
240073|4|4|Waywatcher Mitts
240074|4|4|Waywatcher Sandals
240075|4|4|Waywatcher Leathers
240076|4|4|Waywatcher Bracers
240077|4|4|Waywatcher Waistguard
240078|4|4|Waywatcher Pauldrons
240079|4|4|Waywatcher Leggings
240080|4|4|Waywatcher Headdress
240081|4|4|Waywatcher Gauntlets
240082|4|4|Waywatcher Sabatons
240083|4|4|Waywatcher Armor
240084|4|4|Waywatcher Wristguards
240085|4|4|Waywatcher Girdle
240086|4|4|Waywatcher Spaulders
240087|4|4|Waywatcher Legguards
240088|4|4|Waywatcher Headpiece
240089|4|4|Waywatcher Handguards
240090|4|4|Waywatcher Boots
240091|4|4|Waywatcher Tunic
240092|4|4|Soulcrusher Tunic
240093|4|4|Soulcrusher Boots
240095|4|4|Soulcrusher Handguards
240096|4|4|Soulcrusher Headpiece
240097|4|4|Soulcrusher Legguards
240098|4|4|Soulcrusher Spaulders
240099|4|4|Soulcrusher Girdle
240100|4|4|Soulcrusher Wristguards
240101|4|4|Soulcrusher Chestguard
240102|4|4|Soulcrusher Sabatons
240103|4|4|Soulcrusher Gloves
240104|4|4|Soulcrusher Faceguard
240105|4|4|Soulcrusher Legplates
240106|4|4|Soulcrusher Pauldrons
240107|4|4|Soulcrusher Waistguard
240108|4|4|Soulcrusher Bracers
240109|4|4|Soulcrusher Embrace
240110|4|4|Soulcrusher Greaves
240122|4|4|Soulcrusher Mitts
240123|4|4|Soulcrusher Crown
240124|4|4|Soulcrusher Kilt
240125|4|4|Soulcrusher Mantle
240126|4|4|Soulcrusher Cord
240127|4|4|Soulcrusher Bindings
240128|4|4|Soulcrusher Armor
240129|4|4|Soulcrusher Treads
240130|4|4|Soulcrusher Grips
240131|4|4|Soulcrusher Helmet
240134|4|4|Soulcrusher Leggings
240135|4|4|Soulcrusher Epaulets
240136|4|4|Soulcrusher Belt
240137|4|4|Soulcrusher Vambraces
240138|4|4|Heretic Robe
240139|4|4|Heretic Sandals
240140|4|4|Heretic Gloves
240141|4|4|Heretic Cowl
240142|4|4|Heretic Leggings
240143|4|4|Heretic Shoulderpads
240144|4|4|Heretic Belt
240145|4|4|Heretic Bindings
240146|4|4|Heretic Garb
240147|4|4|Heretic Handguards
240148|4|4|Heretic Hood
240149|4|4|Heretic Pants
240150|4|4|Heretic Mantle
240151|4|4|Heretic Waistguard
240152|4|4|Heretic Wristguards
240153|4|4|Heretic Boots
240174|4|2|Solistra, Fang of the First Light
240195|4|2|Invisible Sword
240217|0|2|Monster Item - Stave_2H_Jeweled_A_02 - Red
240832|1|12|Nivifacient Gland
240835|1|12|Crate of Moonglade Supplies
240836|3|13|Thisalee's Whistle
240837|4|2|Strings of Fate
240839|4|2|Thal'kituun, the Unseen Guest
240841|4|2|High Commander's Guard
240842|4|2|Scarlet Rotbringer
240843|4|2|Starter's Pistol
240844|4|2|Putress' Poker
240845|1|12|Prototype Magnet
240846|1|12|Magnetic Scrap
240848|1|12|Nordrassil Detritus
240849|4|2|Staff of the Glade
240850|4|2|Lightfist Hammer
240851|4|2|Regicide
240852|4|2|Crimson Cleaver
240853|4|2|Queensfall
240854|4|2|Mercy
240919|4|2|Ravagane
240920|4|2|Leogan
240921|4|2|Scarlet Smashbringer
240922|4|2|Deception
240923|4|2|Duplicity
240924|4|2|Poleaxe of the Beast
240925|4|2|Experiment-800M
240936|4|2|Inert Ashbringer
240945|1|0|Slice of Carrie's Apple Pie
240997|4|2|Fratley's Spur
240998|4|2|Soporific Blade
241001|4|2|Tyr's Fall
241002|4|2|Remnants of the Red
241003|4|2|Mirage, Rod of Illusion
241004|4|2|Conundrum
241006|4|2|Spire of Sacrifice
241008|4|2|Condemnation
241011|4|2|Greatstaff of Fealty
241012|4|2|Wand of Reanimation
241015|4|4|Aegis of the Scarlet Bastion
241017|4|4|Demon's Folly
241018|4|4|Nathrezim Heart
241020|4|4|Putress' Completed Diary
241021|4|4|The Light
241022|4|4|Dawnbringer's Cloak
241023|4|4|Drape of the Dastardly
241024|4|4|Scarlet Commander's Cape
241025|4|4|Flag of the Broken Admiral
241026|4|4|Cardinal's Shawl
241027|4|4|Shield Warden's Guard
241028|4|4|Nathrezim Loop
241029|4|4|Baelin's Band
241030|4|4|Mason's Fraternity Ring
241031|4|4|Barthalomew's Promise
241032|4|4|Ring of Resurrection
241034|4|4|Heart of Light
241037|4|4|Abandoned Experiment
241038|4|4|Sir Dornel's Didgeridoo
241039|4|4|Infusion of Souls
241068|4|4|Stiltz's Standard
241069|4|4|Choke Chain
241070|4|4|Hope of Herod
241071|4|4|Talisman of the Scarlet Scoundrel
241072|4|4|Vial of Pus
241073|4|4|Touch of Light
241074|4|4|Helm of the Red Crusade
241075|4|4|Raging Destroyer's Helm
241076|4|4|Cowl of the Covenant
241077|4|4|Cardinal's Chapeau
241078|4|4|Shroud of the Embalmed
241079|4|4|Weight of the World
241080|4|4|Herod's Pauldron
241081|4|2|Corrupted Ashbringer
241082|5|2|Ashbringer
241083|2|2|S03 - Scarlet Enclave - Sword 2h Raid
241084|2|2|S03 - Scarlet Enclave - Herod's Sword - Normal
241085|2|2|S03 - Scarlet Enclave - Sword 1h
241086|1|4|Scarlet Tower Shield
241087|0|2|Scarlet Staff
241088|0|2|Scarlet Staff
241089|2|2|Scarlet Dagger
241090|2|2|Scarlet Great Axe
241091|0|2|Scarlet Mace
241092|0|2|Scarlet Edge
241120|2|2|S03 - Scarlet Enclave - Herod's Sword - Molten
241121|4|2|Reborn Dagger
241122|2|2|Reborn Knife
241123|4|2|Reborn Dagger
241124|2|2|Reborn Knife
241128|1|12|Pile of Portiporters
241152|4|4|Dawnwrought Shoulders
241153|4|4|Doan's Mantle
241154|4|4|Bearskin Mantle
241156|4|4|Blighted Robes
241157|4|4|Scarlet Chestplate
241158|4|4|Chains of the Abandoned
241159|4|4|Monastery Garb
241160|4|4|Dawnworn Chainmail
241161|4|4|Templar Breastplate
241162|4|4|Sunblessed Leathers
241163|4|4|Sunblaze Bracers
241164|4|4|Scrapped Argent Leathers
241165|4|4|Penitent Wraps
241166|4|4|Dawnstripped Bands
241167|4|4|Prisoner Shackles
241168|4|4|Sunblaze Grips
241169|1|12|Prototype Nitro Boosts
241170|4|4|Enclave Protectors
241171|4|4|Gloves of Departed Souls
241172|4|4|Caldoran's Locked Gauntlets
241173|4|4|High Wizard Wrap
241174|4|4|Girdle of the Reborn Champion
241175|4|4|Torturer's Toolbelt
241176|4|4|Diesalven's Demise
241177|4|4|Kilt of the Scarlet Arcanist
241178|4|4|Stalwart Pain Plate
241179|4|4|Leggings of Catastrophe
241180|4|4|Lightscale Leggings
241181|4|4|Dawnworn Chain Leggings
241182|4|4|Templar Plate Legguards
241183|4|4|Ashwalkers
241184|4|4|Savior Sandals
241185|4|4|Bear Training Boots
241186|4|4|Polished Scarlet Mail Boots
241187|4|4|Crimson Wartreads
241190|2|15|Bird Whistle
241191|3|9|Formula: Enchant Weapon - Grand Crusader
241195|3|9|Formula: Enchant 2H Weapon - Grand Arcanist
241201|3|9|Formula: Enchant Weapon - Grand Sorcerer
241212|4|2|Cluck Cannon
241233|1|15|[DNT] Super Strong Lockbox
241241|4|4|Lucky Doubloon
241613|3|0|No Longer Used
241629|4|15|Scarlet Cannonball
241649|2|4|Gauntlets of the Hillsbrad Guard
241650|1|0|Major Discolored Healing Potion
241651|2|9|Recipe: Major Discolored Healing Potion
241652|1|7|Discolored Beast Heart
241653|4|12|Heated Blade
241654|4|12|Inert Ashbringer
241655|1|0|Mishandled Healing Potion
241656|1|0|Mishandled Healing Potion
241657|4|12|Tempered Blade
242018|1|12|Plaguelands Bleeding Heart
242224|1|12|Basket of Hearts
242256|1|12|Satchel of Incendiary Bombs
242257|1|12|Mysterious Alchemical Sample
242258|1|12|Research Notes
242266|2|0|World of Wardcraft
242267|2|0|From Arcanist to Archmage
242268|2|0|If You Give a Crusader an Enchant
242269|3|0|Brilliance of the Grand Sorcerer
242270|3|0|Brilliance of the Grand Arcanist
242271|3|0|Brilliance of the Grand Crusader
242310|3|4|Hand of Reborn Justice
242311|3|4|Leonid's Charm
242312|3|4|Barthalomew Family Seal
242313|3|4|Journal of the Revered
242314|4|4|Cinders of the Fallen Crusade
242315|4|4|Ashes of Arrogance
242316|4|4|Dust of the Defiant
242317|4|4|Desecrated Prayerbook
242319|1|12|New Plague Samples
242320|1|12|New Plague Samples
242361|3|9|Formula: Enchant 2H Weapon - Grand Inquisitor
242362|3|0|Brilliance of the Grand Inquisitor
242363|2|0|Who, What, Where, When, and Die! Five Keys to a Good Inquisition
242364|4|15|Mature Light Dragon Sinew
242365|4|15|Wing of Balnazzar
242366|4|12|Inescapable Fate
242367|4|15|Wing and String
242425|3|15|Torn Diary Page - Page 1
242426|3|15|Torn Diary Page - Page 2
242427|4|4|Putress' Diary
242428|3|15|Torn Diary Page - Page 3
242429|4|4|Putress' Diary
242430|3|15|Torn Diary Page - Page 4
242431|3|15|Torn Diary Page - Page 5
242432|4|4|Putress' Diary
242433|3|15|Torn Diary Page - Page 6
242434|4|4|Putress' Diary
242435|4|4|Putress' Diary
242436|4|4|Putress' Diary
242465|4|0|Jostled Chalice Fragment
242710|0|2|Monster Weapon [DNT]
242793|4|4|Portable Cannon
243010|4|2|Corrupted Ashbringer
243064|1|2|Long Staff
243065|2|15|Broken Wand
243177|3|13|Ingenious Toy
243198|4|0|Poultry Precision Scope
243203|1|15|Humongous Crystal
243229|3|15|Hearthstone of the Dawn
243230|5|12|Ruined Lightforged Blade
243266|1|12|Fel-Tainted Giblets
243299|1|15|Big Bag o' Gold
243345|1|2|Long Staff
244228|1|4|Sash of the Tipsy Sage
244229|1|4|Angler's Mantle
244230|1|4|Strawhat of Frosted Currents
244231|1|0|Ensemble: Stillwater Fisher Attire
244352|1|4|Cloak of the Veiled Paws
244353|4|0|Poultry Precision Scope
244460|4|2|Caladbolg
245675|1|13|Gordok Inner Door Key
245983|1|12|Ursine Heirloom
246055|4|4|Inquisition Grips
246056|4|4|Inquisition Armbraces
246057|4|4|Inquisition Stompers
246058|4|4|Inquisition Plate Pants
246059|4|4|Inquisition Cord
246060|4|4|Inquisition Cuirass
246061|4|4|Inquisition Epaulets
246062|4|4|Inquisition Faceguard
246164|2|2|Skullthumper
246165|2|2|Driftwood Smasher
246213|1|12|Sturdy Lumber
246265|2|4|Salvaged Wooden Tower Shield
246680|1|12|Mana-Siphoning Wand
246683|1|12|Treasure Trowel 3000
246684|1|12|Highborne Treasure Fragment
246721|1|12|Seal of the Warrior
246722|1|12|Seal of the Ranger
246725|1|12|Seal of the Warden
246770|1|12|Sin'dorei Tome of Summoning
246778|1|12|Sin'dorei Tome of Summoning
246780|1|12|Heart of Vek'zol
246885|1|12|Soft Cow Doll
246888|1|15|Humongous Crystal
246938|1|12|Tear of Mennar
246948|1|0|Distilled Firewater
247000|1|12|Fel-Tainted Rock
247001|1|12|Fel-Tainted Branch
247238|1|12|Mana-Siphoning Wand
247239|1|0|Lesser Discolored Healing Potion
247240|1|0|Discolored Healing Potion
247241|1|0|Greater Discolored Healing Potion
247242|1|0|Superior Discolored Healing Potion
247684|1|12|Forgotten Ashes
247754|1|0|Minor Arcane Elixir
247755|1|0|Elixir of Minor Force
247786|1|7|Mote of Magic
247789|1|2|Novice's Practice Wand
247805|1|12|Stolen Enchanting Supplies
247813|1|12|Waterlogged Saw
247816|1|12|Mining Tools
247817|1|12|Waterlogged Axe
247818|1|12|Waterlogged Toolbox
247824|1|0|Thunder Applejack
247826|1|12|Croaky's Head
247834|1|15|Nibbled-On Book
247839|1|12|Stolen Book
247840|1|0|Mining for Dummies
247841|1|0|Wild Harvest
247846|1|0|Pelt Collecting for Beginners
247857|1|12|Nibbled-On Book
247862|1|12|Elmpaw's Head
247876|1|15|[DNT] Minimus Tentaculus
247877|1|12|Rough Wolf Pelt
247883|2|7|Crude Wax Effigy
247884|1|7|Luminous Residue
247885|0|15|Useless Goop
247886|1|12|Sack of "Picture" Books
247889|1|12|Untainted Soil
247892|1|12|Verdant Leaves
247963|1|12|Herbal Soil Poultice
247970|1|15|Kobold Tracking Kit
248001|1|12|Lost Book
248002|1|12|Picture Book: Fun with Elementals
248003|1|12|Geomancy for Curious Young Wizards
248004|1|12|Arcane Explainer: Magical Stuff in Simple Words
248005|2|2|Northshire Hammer
248006|2|2|Militia Sword
248007|2|2|Militia Shortblade
248008|2|2|Apprentice's Spellstaff
248206|3|0|Sealed Craftsman's Writ
248549|2|15|Waylaid Crate
248613|1|0|Lightning in a Bottle
248682|1|0|Waylaid Crate: Apprentice Herbs
248683|1|0|Waylaid Crate: Apprentice Ore
248684|1|0|Waylaid Crate: Apprentice Textiles
248685|1|0|Waylaid Crate: Apprentice Curiosities
248686|1|0|Waylaid Crate: Journeyman Herbs
248687|1|0|Waylaid Crate: Journeyman Ore
248688|1|0|Waylaid Crate: Journeyman Textiles
248689|1|0|Waylaid Crate: Journeyman Curiosities
248690|1|0|Waylaid Crate: Earthly Expert Herbs
248691|1|0|Waylaid Crate: Flowering Expert Herbs
248692|1|0|Waylaid Crate: Expert Ore
248693|1|0|Waylaid Crate: Expert Textiles
248694|1|0|Waylaid Crate: Expert Curiosities
248695|1|0|Waylaid Crate: Earthly Artisan Herbs
248696|1|0|Waylaid Crate: Flowering Artisan Herbs
248697|1|0|Waylaid Crate: Artisan Ore
248698|1|0|Waylaid Crate: Artisan Textiles
248699|1|0|Waylaid Crate: Artisan Curiosities
248702|2|0|Waylaid Crate: Apprentice Fabrics
248703|2|0|Waylaid Crate: Apprentice Ingots
248704|2|0|Waylaid Crate: Apprentice Parts
248705|2|0|Waylaid Crate: Journeyman Fabrics
248706|2|0|Waylaid Crate: Journeyman Ingots
248707|2|0|Waylaid Crate: Journeyman Parts
248708|2|0|Waylaid Crate: Expert Fabrics
248709|2|0|Waylaid Crate: Expert Ingots
248710|2|0|Waylaid Crate: Expert Parts
248711|2|0|Waylaid Crate: Artisan Fabrics
248712|2|0|Waylaid Crate: Artisan Ingots
248713|2|0|Waylaid Crate: Artisan Parts
248765|1|15|Sealed Apprentice Crate
248766|1|15|Sealed Journeyman Crate
248767|1|15|Sealed Expert Crate
248768|1|15|Sealed Artisan Crate
248769|1|15|Sealed Elite Crate
248770|2|15|Sealed Apprentice Crate
248771|2|15|Sealed Journeyman Crate
248772|2|15|Sealed Expert Crate
248773|2|15|Sealed Artisan Crate
248774|2|15|Sealed Elite Crate
248775|3|15|Sealed Apprentice Crate
248776|3|15|Sealed Journeyman Crate
248777|3|15|Sealed Expert Crate
248778|3|15|Sealed Artisan Crate
248779|3|15|Sealed Elite Crate
248815|1|7|Heavy Thorium Ore
248819|2|7|Fel Crystal
248820|2|7|Torbernite
248821|1|7|Demonsage
248822|2|7|Death Lotus
248823|1|7|Marefoil
248824|1|7|Fel Hide
248825|1|7|Fel Leather
248930|1|12|Quinn's Potion
248975|1|12|Seed of the Ancients
249144|2|2|Twisted Nether Wand
249232|2|2|Lesser Eternal Wand
249234|2|2|Dreambough Wand
249237|2|2|Greater Eternal Wand
249274|2|7|Stranglevine
249385|3|2|Brilliant Wand
249390|1|12|Seals of the Sin'dorei
249391|2|7|Pyrite
249392|3|2|Glimmering Staff
249393|3|2|Soulstaff
249394|3|4|Orb of Mystic Insight
249395|3|4|Orb of Souls
249396|3|4|Mystic Mushroom
249397|3|4|Tenets of the Silver Hand
249398|3|4|Polished Driftwood Icon
249399|2|7|Frilled Lichen
249409|2|7|Cerulean Dye
249410|2|7|Sulfuric Acid
249424|2|7|Rosecap
249425|2|7|Bauxite
249426|2|7|Pitchblende
249427|2|7|Pristine Leather
249428|2|7|Pristine Hide
249429|2|7|Pristine Scale
249430|2|7|Magenta Dye
249431|2|7|Viridian Dye
249432|2|7|Sandpaper
249441|3|4|Talons of Wrath
249442|3|4|Libram of Invocation
249443|3|4|Totem of Ancestral Protection
249453|3|2|Radiant Staff
249454|3|2|Dreamstaff
249455|3|4|Truesilver Conduit
249456|3|4|Twisting Essence Jar
249469|3|4|Frozen Heart of the Mountain
249470|3|4|Molten Heart of the Mountain
249473|3|4|Dormant Heart of the Mountain
249474|2|9|Formula: Enchant Bracer - Minor Intellect
249475|2|9|Formula: Enchant Bracer - Minor Healing Power
249476|3|9|Formula: Mystic Mushroom
249477|3|9|Formula: Tenets of the Silver Hand
249478|3|9|Formula: Polished Driftwood Icon
249479|2|9|Formula: Enchant Weapon - Insight
249480|2|9|Formula: Enchant Weapon - Recovery
249481|2|9|Formula: Enchant Weapon - Revelation
249482|3|9|Formula: Glimmering Staff
249483|3|9|Formula: Soulstaff
249484|3|9|Formula: Orb of Mystic Insight
249485|3|9|Formula: Orb of Souls
249486|2|9|Formula: Enchant Bracer - Lesser Agility
249487|2|9|Formula: Twisted Nether Wand
249488|2|9|Formula: Enchant Bracer - Agility
249489|2|9|Formula: Enchant Bracer - Lesser Healing Power
249493|3|9|Formula: Talons of Wrath
249494|3|9|Formula: Libram of Invocation
249495|3|9|Formula: Totem of Ancestral Protection
249496|2|9|Formula: Enchant Necklace - Strength
249502|2|9|Formula: Enchant Necklace - Spell Power
249503|2|9|Formula: Enchant Necklace - Healing Power
249504|2|9|Formula: Enchant Necklace - Agility
249505|2|9|Formula: Enchant Necklace - Deflection
249506|3|9|Formula: Radiant Staff
249507|3|9|Formula: Dreamstaff
249508|3|9|Formula: Truesilver Conduit
249509|3|9|Formula: Twisting Essence Jar
249510|2|9|Formula: Enchant Chest - Absorption
249511|2|9|Formula: Enchant 2H Weapon - Lesser Agility
249512|2|9|Formula: Dreambough Wand
249513|2|9|Formula: Enchant 2H Weapon - Lesser Strength
249514|2|9|Formula: Enchant Bracer - Greater Agility
249515|2|9|Formula: Lesser Eternal Wand
249516|2|9|Formula: Enchant Gloves - Advanced Skinning
249519|3|9|Formula: Frozen Heart of the Mountain
249520|3|9|Formula: Molten Heart of the Mountain
249521|3|9|Formula: Dormant Heart of the Mountain
249522|2|9|Formula: Greater Eternal Wand
249523|2|9|Formula: Enchant 2H Weapon - Strength
249524|2|9|Formula: Enchant Bracer - Superior Agility
249525|2|9|Formula: Enchant 2H Weapon - Mighty Spell Power
249526|2|9|Formula: Enchant 2H Weapon - Mighty Healing Power
249529|3|9|Formula: Idol of the Dream
249530|3|9|Formula: Libram of Holy Alacrity
249532|3|9|Formula: Totem of Thunder
249534|2|9|Formula: Enchant Gloves - Arcane Power
249535|2|9|Formula: Enchant Gloves - Natural Power
249536|2|9|Formula: Enchant Gloves - Holy Power
249537|3|9|Formula: Brilliant Wand
249538|2|9|Formula: Enchant Bracer - Superior Intellect
249539|2|9|Formula: Enchant Bracer - Superior Deflection
249692|1|12|Head of Varrox Bleakhoof
249693|1|12|Totem of Ursol
249694|1|12|Totem of Ursoc
249695|1|12|Fel-Tainted Flesh
249696|1|12|Tusks of the Unbroken
249697|1|12|Claws of the Great Bear
249698|1|12|Feathered Charm Necklace
249726|2|7|Azerothium Bar
249796|1|0|Hyjal Berries
249865|1|0|Peace Tea
249866|1|0|Royal Tea
249867|1|0|Root Tea
249868|1|0|Triage Tea
249869|1|0|Sunny Tea
249870|1|0|Sage's Tea
249871|1|0|Venomous Smoothie
249872|1|0|Slimy Smoothie
249873|1|0|Mrrggl Smrrthle
249874|1|0|Calcified Smoothie
249875|1|0|Spicy Smoothie
249876|1|0|Wicked Smoothie
249879|1|9|Recipe: Peace Tea
249880|1|9|Recipe: Royal Tea
249881|1|9|Recipe: Root Tea
249882|1|9|Recipe: Triage Tea
249883|1|9|Recipe: Sunny Tea
249884|1|9|Recipe: Sage's Tea
249885|1|9|Recipe: Venomous Smoothie
249886|1|9|Recipe: Slimy Smoothie
249887|1|9|Recipe: Mrrggl Smrrthle
249888|1|9|Recipe: Calcified Smoothie
249889|1|9|Recipe: Spicy Smoothie
249890|1|9|Recipe: Wicked Smoothie
249895|1|15|Frosty Lashling Bud
249896|1|15|Viridian Lashling Bud
249897|1|15|Flowery Lashling Bud
249898|1|15|Wilted Lashling Bud
249900|1|15|Regurgitated Seed Pod
249905|0|15|Scribbled I.O.U.
250065|1|0|Savory Stag Sliders
250066|1|0|Soaring Pamplona
250067|1|0|Bat Hachee
250068|1|0|Savory Turtle Stew
250069|1|0|Flank au Poivre
250070|1|0|Bear Bruscitti
250071|1|0|Steaming Stag Steak
250072|1|0|Swiftstrike Steak
250073|1|0|Raging Raptor Ribs
250074|1|0|Bear Brisket
250075|1|0|Prehistoric Pulled Raptor
250076|1|0|Raptor Rouladen
250077|1|0|Twice-Spiced Raptor Slice
250078|1|0|Giant Scrambled Eggs
250079|1|0|Tasty Raptor Bites
250080|1|0|Breakfast Omelette
250081|1|0|Clam Linguine
250101|0|2|Summit Guardian Polearm
250173|1|9|Recipe: Savory Stag Sliders
250174|1|9|Recipe: Soaring Pamplona
250175|1|9|Recipe: Bat Hachee
250176|1|9|Recipe: Savory Turtle Stew
250177|1|9|Recipe: Flank au Poivre
250178|1|9|Recipe: Bear Bruscitti
250179|1|9|Recipe: Steaming Stag Steak
250180|1|9|Recipe: Swiftstrike Steak
250181|1|9|Recipe: Raging Raptor Ribs
250182|1|9|Recipe: Bear Brisket
250183|1|9|Recipe: Prehistoric Pulled Raptor
250184|1|9|Recipe: Raptor Rouladen
250185|1|9|Recipe: Twice-Spiced Raptor Slice
250186|1|9|Recipe: Giant Scrambled Eggs
250187|1|9|Recipe: Tasty Raptor Bites
250188|1|9|Recipe: Breakfast Omelette
250189|1|9|Recipe: Clam Linguine
250217|0|2|Purveyor of Light
250327|1|0|Potion of Predatory Senses
250328|1|0|Elixir of Cunning
250329|1|0|Elixir of the Phalanx
250330|1|0|Minor Cleric's Elixir
250331|1|0|Lesser Cleric's Elixir
250332|1|0|Cleric's Elixir
250333|1|0|Greater Cleric's Elixir
250334|1|0|Elixir of Fortitude
250335|1|0|Elixir of Greater Fortitude
250336|1|0|Elixir of Wicked Regeneration
250337|1|0|Elixir of the Owl
250338|1|0|Elixir of Sages
250339|1|0|Minor Mageblood Elixir
250340|1|0|Lesser Mageblood Elixir
250341|1|0|Greater Mageblood Elixir
250342|1|0|Lesser Arcane Elixir
250343|1|0|Elixir of Nature Power
250344|1|0|Elixir of Minor Spirit
250345|1|0|Elixir of Lesser Spirit
250346|1|0|Elixir of Spirit
250347|1|0|Elixir of Greater Spirit
250348|1|0|Elixir of the Whale
250349|1|0|Elixir of Strength
250350|1|0|Elixir of Ferocity
250351|1|0|Elixir of the Grizzly
250353|1|0|Elixir of Lesser Intellect
250354|1|0|Elixir of Intellect
250363|1|9|Recipe: Potion of Predatory Senses
250364|1|9|Recipe: Elixir of Cunning
250365|1|9|Recipe: Elixir of the Phalanx
250366|1|9|Recipe: Minor Cleric's Elixir
250367|1|9|Recipe: Lesser Cleric's Elixir
250368|1|9|Recipe: Cleric's Elixir
250369|1|9|Recipe: Greater Cleric's Elixir
250370|1|9|Recipe: Elixir of Fortitude
250371|1|9|Recipe: Elixir of Greater Fortitude
250372|1|9|Recipe: Elixir of Wicked Regeneration
250373|1|9|Recipe: Elixir of the Owl
250374|1|9|Recipe: Elixir of Sages
250375|1|9|Recipe: Minor Mageblood Elixir
250376|1|9|Recipe: Lesser Mageblood Elixir
250377|1|9|Recipe: Greater Mageblood Elixir
250378|1|9|Recipe: Lesser Arcane Elixir
250379|1|9|Recipe: Elixir of Nature Power
250380|1|9|Recipe: Elixir of Minor Spirit
250381|1|9|Recipe: Elixir of Lesser Spirit
250382|1|9|Recipe: Elixir of Spirit
250383|1|9|Recipe: Elixir of Greater Spirit
250384|1|9|Recipe: Elixir of the Whale
250385|1|9|Recipe: Elixir of Strength
250386|1|9|Recipe: Elixir of Ferocity
250387|1|9|Recipe: Elixir of the Grizzly
250388|1|9|Recipe: Elixir of Lesser Intellect
250389|1|9|Recipe: Elixir of Intellect
250482|3|4|Glowing Copper Boots
250483|2|4|Sterling Silver Boots
250484|2|4|Sterling Silver Leggings
250485|2|4|Sterling Silver Gauntlet
250486|2|4|Sterling Silver Shoulders
250487|2|4|Sterling Silver Breastplate
250488|3|4|Veteran's Chain Shirt
250489|3|4|Guard's Chain Shirt
250490|3|4|Protector's Chain Shirt
250491|3|4|Acolyte's Chain Shirt
250492|3|4|Crusader's Chain Shirt
250493|3|4|Veteran's Chain Leggings
250494|3|4|Guard's Chain Leggings
250495|3|4|Protector's Chain Leggings
250496|3|4|Acolyte's Chain Leggings
250497|3|4|Crusader's Chain Leggings
250498|3|4|Veteran's Chain Helm
250499|3|4|Guard's Chain Helm
250500|3|4|Protector's Chain Helm
250501|3|4|Acolyte's Chain Helm
250502|3|4|Crusader's Chain Helm
250503|3|4|Veteran's Boots
250504|3|4|Guard's Boots
250505|3|4|Protector's Boots
250506|3|4|Acolyte's Boots
250507|3|4|Crusader's Boots
250508|3|4|Veteran's Gloves
250509|3|4|Guard's Gloves
250510|3|4|Protector's Gloves
250511|3|4|Acolyte's Gloves
250512|3|4|Crusader's Gloves
250513|3|4|Veteran's Chain Belt
250514|3|4|Guard's Chain Belt
250515|3|4|Protector's Chain Belt
250516|3|4|Acolyte's Chain Belt
250517|3|4|Crusader's Chain Belt
250518|3|4|Veteran's Silvered Chain Shirt
250519|3|4|Guard's Silvered Chain Shirt
250520|3|4|Protector's Silvered Chain Shirt
250521|3|4|Acolyte's Silvered Chain Shirt
250522|3|4|Crusader's Silvered Chain Shirt
250523|3|4|Veteran's Silvered Chain Leggings
250524|3|4|Guard's Silvered Chain Leggings
250525|3|4|Protector's Silvered Chain Leggings
250526|3|4|Acolyte's Silvered Chain Leggings
250527|3|4|Crusader's Silvered Chain Leggings
250528|3|4|Veteran's Silvered Chain Helm
250529|3|4|Guard's Silvered Chain Helm
250530|3|4|Protector's Silvered Chain Helm
250531|3|4|Acolyte's Silvered Chain Helm
250532|3|4|Crusader's Silvered Chain Helm
250533|2|4|Hard Gold Cuirass
250534|2|4|Hard Gold Boots
250535|2|4|Hard Gold Bracers
250536|2|4|Hard Gold Leggings
250537|2|4|Hard Gold Coif
250538|2|4|Hard Gold Gauntlet
250539|2|4|Hard Gold Pauldrons
250540|2|4|Shining Mithril Breastplate
250541|2|4|Shining Mithril Pauldrons
250542|2|4|Shining Mithril Boots
250543|2|4|Shining Mithril Helm
250544|2|4|Shining Mithril Pants
250545|2|4|Shining Mithril Gauntlet
250546|3|4|Officer's Boots
250547|3|4|Sentinel's Boots
250548|3|4|Warder's Boots
250549|3|4|Prefect's Boots
250550|3|4|Justicar's Boots
250551|3|4|Officer's Gloves
250552|3|4|Sentinel's Gloves
250553|3|4|Warder's Gloves
250554|3|4|Prefect's Gloves
250555|3|4|Justicar's Gloves
250556|3|4|Officer's Belt
250557|3|4|Sentinel's Belt
250558|3|4|Warder's Belt
250559|3|4|Prefect's Belt
250560|3|4|Justicar's Belt
250561|3|4|Officer's Sabatons
250562|3|4|Sentinel's Sabatons
250563|3|4|Warder's Sabatons
250564|3|4|Prefect's Sabatons
250565|3|4|Justicar's Sabatons
250566|3|4|Officer's Gauntlet
250567|3|4|Sentinel's Gauntlet
250568|3|4|Warder's Gauntlet
250569|3|4|Prefect's Gauntlet
250570|3|4|Justicar's Gauntlet
250571|3|4|Officer's Waistguard
250572|3|4|Sentinel's Waistguard
250573|3|4|Warder's Waistguard
250574|3|4|Prefect's Waistguard
250575|3|4|Justicar's Waistguard
250576|3|4|Officer's Pauldrons
250577|3|4|Sentinel's Pauldrons
250578|3|4|Warder's Pauldrons
250579|3|4|Prefect's Pauldrons
250580|3|4|Justicar's Pauldrons
250581|3|4|Officer's Wristguards
250582|3|4|Sentinel's Wristguards
250583|3|4|Warder's Wristguards
250584|3|4|Prefect's Wristguards
250585|3|4|Justicar's Wristguards
250586|2|4|Blessed Plate Pauldrons
250587|2|4|Blessed Plate Boots
250588|2|4|Blessed Plate Gauntlet
250589|2|4|Imperial Plate Gauntlets
250590|2|4|Blessed Plate Bracers
250591|2|4|Blessed Plate Leggings
250592|2|4|Blessed Plate Belt
250593|2|4|Blessed Plate Helm
250594|2|4|Blessed Plate Chest
250595|3|4|Enriched Thorium Breastplate
250596|3|4|Enriched Thorium Leggings
250597|3|4|Enriched Thorium Helm
250598|4|4|Champion's Legplates
250599|4|4|Stalwart Helm
250600|4|4|Martyr's Legplates
250601|4|4|Breastplate of Salvation
250602|2|2|Brass Knuckles
250603|2|2|Bronze Dory
250604|2|2|Iron Fists
250605|2|2|Steel Spear
250606|2|2|Iron Morningstar
250607|2|2|Mithril Shortsword
250608|2|2|Mithril Warhammer
250609|2|2|Mithril Claws
250610|2|2|Mithril Claymore
250611|2|2|Mithril Stiletto
250612|2|2|Charged Mithril Battleaxe
250613|3|2|Thorium Greatmace
250614|3|2|Thorium Cestus
250615|3|2|Thorium Poleaxe
250616|2|2|Bold Dirk
250617|3|2|Stormcarver
250618|3|2|Bagh Nakh
250619|3|2|Legionite Glaive
250620|3|4|Gemmed Copper Boots
250621|3|4|Strange Copper Boots
250725|1|12|Crate of Exotic Parts
250744|1|12|Firestarter Fir
250773|1|12|Nordrassil Root Cap
250775|1|12|Frayed Wire
250932|1|0|Minor Spellblasting Potion
250933|1|0|Lesser Spellblasting Potion
250934|1|0|Spellblasting Potion
250935|1|0|Greater Spellblasting Potion
250936|1|0|Superior Spellblasting Potion
250937|1|0|Major Spellblasting Potion
250938|1|0|Minor Frenzy Potion
250939|1|0|Lesser Frenzy Potion
250940|1|0|Frenzy Potion
250941|1|0|Greater Frenzy Potion
250942|1|0|Superior Frenzy Potion
250943|1|0|Major Frenzy Potion
250944|1|0|Minor Mender's Potion
250945|1|0|Lesser Mender's Potion
250946|1|0|Mender's Potion
250947|1|0|Greater Mender's Potion
250948|1|0|Superior Mender's Potion
250949|1|0|Major Mender's Potion
250950|1|0|Potion of Venomous Blood
250951|1|0|Caustic Smog Potion
250953|1|0|Dragonfire Potion
250954|1|0|Potion of Elemental Purging
250955|1|0|Potion of Beast Slaying
250976|1|9|Recipe: Minor Spellblasting Potion
250977|1|9|Recipe: Lesser Spellblasting Potion
250978|1|9|Recipe: Spellblasting Potion
250979|2|9|Recipe: Greater Spellblasting Potion
250980|1|9|Recipe: Superior Spellblasting Potion
250981|1|9|Recipe: Major Spellblasting Potion
250982|1|9|Recipe: Minor Frenzy Potion
250983|1|9|Recipe: Lesser Frenzy Potion
250984|1|9|Recipe: Frenzy Potion
250985|2|9|Recipe: Greater Frenzy Potion
250986|1|9|Recipe: Superior Frenzy Potion
250987|1|9|Recipe: Major Frenzy Potion
250988|1|9|Recipe: Minor Mender's Potion
250989|1|9|Recipe: Lesser Mender's Potion
250990|1|9|Recipe: Mender's Potion
250991|1|9|Recipe: Greater Mender's Potion
250992|1|9|Recipe: Superior Mender's Potion
250993|1|9|Recipe: Major Mender's Potion
250994|1|9|Recipe: Potion of Venomous Blood
250995|1|9|Recipe: Caustic Smog Potion
250997|1|9|Recipe: Dragonfire Potion
250998|1|9|Recipe: Potion of Elemental Purging
250999|1|9|Recipe: Potion of Beast Slaying
251270|1|12|Blood-Stained Parchment
251279|1|12|[DNT] Fragment of Air Essence REUSE
251280|1|12|[DNT] Fragment of Fire Essence REUSE
251281|1|12|[DNT] Fragment of Earth Essence REUSE
251282|1|12|[DNT] Fragment of Water Essence REUSE
251290|2|7|Legionite Bar
251291|2|7|Heavy Thorium Bar
251320|1|12|Sachet of Spirit Powder
251332|3|9|Plans: Gemmed Copper Boots
251333|3|9|Plans: Strange Copper Boots
251334|3|9|Plans: Glowing Copper Boots
251335|2|9|Plans: Sterling Silver Boots
251336|2|9|Plans: Sterling Silver Leggings
251337|2|9|Plans: Sterling Silver Gauntlet
251338|2|9|Plans: Sterling Silver Shoulders
251339|2|9|Plans: Sterling Silver Breastplate
251340|3|9|Plans: Veteran's Chain Shirt
251341|3|9|Plans: Guard's Chain Shirt
251342|3|9|Plans: Protector's Chain Shirt
251343|3|9|Plans: Acolyte's Chain Shirt
251344|3|9|Plans: Crusader's Chain Shirt
251345|3|9|Plans: Veteran's Chain Leggings
251346|3|9|Plans: Guard's Chain Leggings
251347|3|9|Plans: Protector's Chain Leggings
251348|3|9|Plans: Acolyte's Chain Leggings
251349|3|9|Plans: Crusader's Chain Leggings
251350|3|9|Plans: Veteran's Chain Helm
251351|3|9|Plans: Guard's Chain Helm
251352|3|9|Plans: Protector's Chain Helm
251353|3|9|Plans: Acolyte's Chain Helm
251354|3|9|Plans: Crusader's Chain Helm
251355|3|9|Plans: Veteran's Boots
251356|3|9|Plans: Guard's Boots
251357|3|9|Plans: Protector's Boots
251358|3|9|Plans: Acolyte's Boots
251359|3|9|Plans: Crusader's Boots
251360|3|9|Plans: Veteran's Gloves
251361|3|9|Plans: Guard's Gloves
251362|3|9|Plans: Protector's Gloves
251363|3|9|Plans: Acolyte's Gloves
251364|3|9|Plans: Crusader's Gloves
251365|3|9|Plans: Veteran's Chain Belt
251366|3|9|Plans: Guard's Chain Belt
251367|3|9|Plans: Protector's Chain Belt
251368|3|9|Plans: Acolyte's Chain Belt
251369|3|9|Plans: Crusader's Chain Belt
251370|3|9|Plans: Veteran's Silvered Chain Shirt
251371|3|9|Plans: Guard's Silvered Chain Shirt
251372|3|9|Plans: Protector's Silvered Chain Shirt
251373|3|9|Plans: Acolyte's Silvered Chain Shirt
251374|3|9|Plans: Crusader's Silvered Chain Shirt
251375|3|9|Plans: Veteran's Silvered Chain Leggings
251376|3|9|Plans: Guard's Silvered Chain Leggings
251377|3|9|Plans: Protector's Silvered Chain Leggings
251378|3|9|Plans: Acolyte's Silvered Chain Leggings
251379|3|9|Plans: Crusader's Silvered Chain Leggings
251380|3|9|Plans: Veteran's Silvered Chain Helm
251381|3|9|Plans: Guard's Silvered Chain Helm
251382|3|9|Plans: Protector's Silvered Chain Helm
251383|3|9|Plans: Acolyte's Silvered Chain Helm
251384|3|9|Plans: Crusader's Silvered Chain Helm
251385|2|9|Plans: Hard Gold Cuirass
251386|2|9|Plans: Hard Gold Boots
251387|2|9|Plans: Hard Gold Bracers
251388|2|9|Plans: Hard Gold Leggings
251389|2|9|Plans: Hard Gold Coif
251390|2|9|Plans: Hard Gold Gauntlet
251391|2|9|Plans: Hard Gold Pauldrons
251392|2|9|Plans: Shining Mithril Breastplate
251393|2|9|Plans: Shining Mithril Pauldrons
251394|2|9|Plans: Shining Mithril Boots
251395|3|9|Plans: Shining Mithril Helm
251396|2|9|Plans: Shining Mithril Pants
251397|2|9|Plans: Shining Mithril Gauntlet
251398|3|9|Plans: Officer's Boots
251399|3|9|Plans: Sentinel's Boots
251400|3|9|Plans: Warder's Boots
251401|3|9|Plans: Prefect's Boots
251402|3|9|Plans: Justicar's Boots
251403|3|9|Plans: Officer's Gloves
251404|3|9|Plans: Sentinel's Gloves
251405|3|9|Plans: Warder's Gloves
251406|3|9|Plans: Prefect's Gloves
251407|3|9|Plans: Justicar's Gloves
251408|3|9|Plans: Officer's Belt
251409|3|9|Plans: Sentinel's Belt
251410|3|9|Plans: Warder's Belt
251411|3|9|Plans: Prefect's Belt
251412|3|9|Plans: Justicar's Belt
251413|3|9|Plans: Officer's Sabatons
251414|3|9|Plans: Sentinel's Sabatons
251415|3|9|Plans: Warder's Sabatons
251416|3|9|Plans: Prefect's Sabatons
251417|3|9|Plans: Justicar's Sabatons
251418|3|9|Plans: Officer's Gauntlet
251419|3|9|Plans: Sentinel's Gauntlet
251420|3|9|Plans: Warder's Gauntlet
251421|3|9|Plans: Prefect's Gauntlet
251422|3|9|Plans: Justicar's Gauntlet
251423|3|9|Plans: Officer's Waistguard
251424|3|9|Plans: Sentinel's Waistguard
251425|3|9|Plans: Warder's Waistguard
251426|3|9|Plans: Prefect's Waistguard
251427|3|9|Plans: Justicar's Waistguard
251428|3|9|Plans: Officer's Pauldrons
251429|3|9|Plans: Sentinel's Pauldrons
251430|3|9|Plans: Warder's Pauldrons
251431|3|9|Plans: Prefect's Pauldrons
251432|3|9|Plans: Justicar's Pauldrons
251433|3|9|Plans: Officer's Wristguard
251434|3|9|Plans: Sentinel's Wristguard
251435|3|9|Plans: Warder's Wristguard
251436|3|9|Plans: Prefect's Wristguard
251437|3|9|Plans: Justicar's Wristguards
251438|2|9|Plans: Blessed Plate Pauldrons
251439|2|9|Plans: Blessed Plate Boots
251440|2|9|Plans: Blessed Plate Gauntlet
251441|2|9|Plans: Imperial Plate Gauntlets
251442|2|9|Plans: Blessed Plate Bracers
251443|2|9|Plans: Blessed Plate Leggings
251444|2|9|Plans: Blessed Plate Belt
251445|2|9|Plans: Blessed Plate Helm
251446|2|9|Plans: Blessed Plate Chest
251447|3|9|Plans: Enriched Thorium Breastplate
251448|3|9|Plans: Enriched Thorium Leggings
251449|3|9|Plans: Enriched Thorium Helm
251450|4|9|Plans: Champion's Legplates
251451|4|9|Plans: Stalwart Helm
251452|4|9|Plans: Martyr's Legplates
251453|4|9|Plans: Breastplate of Salvation
251454|2|9|Plans: Brass Knuckles
251455|2|9|Plans: Bronze Dory
251456|2|9|Plans: Iron Fists
251457|2|9|Plans: Steel Spear
251458|2|9|Plans: Iron Morningstar
251459|2|9|Plans: Mithril Shortsword
251460|2|9|Plans: Mithril Warhammer
251461|2|9|Plans: Mithril Claws
251462|2|9|Plans: Mithril Claymore
251463|2|9|Plans: Mithril Stiletto
251464|2|9|Plans: Charged Mithril Battleaxe
251465|3|9|Plans: Thorium Greatmace
251466|3|9|Plans: Thorium Cestus
251467|3|9|Plans: Thorium Poleaxe
251468|3|9|Plans: Bold Dirk
251469|3|9|Plans: Stormcarver
251470|3|9|Plans: Bagh Nakh
251471|3|9|Plans: Legionite Glaive
251485|2|2|Edward's Knife
251486|2|4|Tabitha's Cuffs
251520|1|12|Last Scrawlings of Edward Heartweaver
251522|1|12|Blood-Stained Letter
251523|0|15|The Friends We Made Along the Way
251524|1|7|Whimsyfin
251525|1|0|Savory Whimsyfin Delight
251526|2|9|Recipe: Savory Whimsyfin Delight
251641|1|12|Hyjal Venison Cut
251723|1|15|Charged Stone
251735|3|9|Pattern: Slimeslayer's Adaptive Robes
251736|3|9|Pattern: Slimeslayer's Adaptive Cuffs
251737|3|9|Pattern: Slimeslayer's Adaptive Cord
251738|3|9|Pattern: Beastculler's Adaptive Vest
251739|3|9|Pattern: Beastculler's Adaptive Bracers
251740|3|9|Pattern: Beastculler's Adaptive Wrap
251741|3|9|Pattern: Dinodestroyer's Adaptive Chestguard
251742|3|9|Pattern: Dinodestroyer's Adaptive Wrists
251743|3|9|Pattern: Dinodestroyer's Adaptive Belt
251744|3|9|Plans: Earthcrusher's Adaptive Chestplate
251745|3|9|Plans: Earthcrusher's Adaptive Armguards
251746|3|9|Plans: Earthcrusher's Adaptive Girdle
251747|2|9|Schematic: Sludge Suppressor
251748|2|9|Schematic: Enormous Tranquilizer Dart
251749|2|9|Schematic: G.R.R.-Nade
251750|3|9|Pattern: Slimetender's Adaptive Tunic
251751|3|9|Pattern: Slimetender's Adaptive Bracers
251752|3|9|Pattern: Slimetender's Adaptive Belt
251753|3|9|Pattern: Beastmender's Adaptive Robe
251754|3|9|Pattern: Beastmender's Adaptive Wristlinks
251755|3|9|Pattern: Beastmender's Adaptive Girdle
251756|3|9|Pattern: Dinomender's Adaptive Tunic
251757|3|9|Pattern: Dinomender's Adaptive Wrists
251758|3|9|Pattern: Dinomender's Adaptive Chain
251759|3|9|Plans: Earthweaver's Adaptive Plate
251760|3|9|Plans: Earthweaver's Adaptive Links
251761|3|9|Plans: Earthweaver's Adaptive Waistguard
251780|1|12|Rabbit Carcass
251781|1|12|Head Scratcher's Scratchers
251900|1|12|Thendal Grove Gift Voucher
251917|1|0|Falorne's Homemade Tart
251918|1|12|Scrawny Ursera Claw
251924|1|12|Signet of Akir
251925|0|15|Tattered Ursera Feather
251927|0|15|Chipped Cirrusfly Stinger
251928|0|15|Torn Insect Wing
251930|0|15|Minor Essence of the Four Winds
251931|0|15|Depleted Windstone
251941|1|12|Scribbled Letter
251960|2|2|Yngwe's Axe
251961|1|12|Arcane Mote
251983|1|12|Fel Infused Blossom
252022|1|0|Galestrider Jerky
252023|1|0|Zaalanarr Sharp
252026|1|0|Gustberry Pie
252027|1|0|Gustberry Juice
252028|1|0|Fresh Gustberry Bread
252029|1|0|Hippogryph Flank
252030|1|0|Pungent Skycheddar
252031|1|0|Crisp Spring Water
252032|1|0|Red Delicious Stormapple
252264|1|15|"Gold"
252424|3|4|Black Whelp Slippers
252425|3|4|Dark Leather Boots
252426|3|4|Murloc Scale Shoes
252427|3|4|Moonglow Boots
252428|3|4|Brawler's Leather Belt
252429|3|4|Trapper's Leather Belt
252430|3|4|Defender's Leather Belt
252431|3|4|Totemic Leather Belt
252432|3|4|Stormrider's Leather Belt
252433|3|4|Wisdom's Leather Belt
252434|3|4|Defender's Leather Armor
252435|3|4|Totemic Leather Armor
252436|2|0|Mystic Medium Armor Kit
252437|2|0|Forceful Medium Armor Kit
252439|3|4|Brawler's Leather Boots
252440|3|4|Trapper's Leather Boots
252441|3|4|Defender's Leather Boots
252442|3|4|Totemic Leather Boots
252443|3|4|Stormrider's Leather Boots
252444|3|4|Wisdom's Leather Boots
252445|3|4|Defender's Leather Pants
252446|3|4|Totemic Leather Pants
252447|3|4|Defender's Leather Hood
252448|3|4|Totemic Leather Hood
252449|2|4|Hillman's Leather Boots
252450|3|4|Defender's Leather Tunic
252451|3|4|Totemic Leather Tunic
252452|2|0|Mystic Heavy Armor Kit
252453|2|0|Forceful Heavy Armor Kit
252455|3|4|Defender's Leather Helm
252456|3|4|Totemic Leather Helm
252457|3|4|Defender's Leather Kilt
252458|3|4|Totemic Leather Leggings
252459|3|4|Prowler's Leather Belt
252460|3|4|Warden's Leather Belt
252461|3|4|Skirmisher's Leather Belt
252462|2|0|Mystic Thick Armor Kit
252463|2|0|Forceful Thick Armor Kit
252465|3|4|Prowler's Leather Shoes
252466|3|4|Warden's Leather Shoes
252467|2|4|Blue Suede Shoes
252468|3|4|Prowler's Leather Boots
252469|3|4|Skulker's Leather Boots
252470|3|4|Warden's Leather Boots
252471|3|4|Skycaller's Leather Boots
252472|3|4|Mender's Leather Boots
252473|3|4|Prowler's Leather Waistguard
252474|3|4|Skulker's Leather Waistguard
252475|3|4|Warden's Leather Waistguard
252476|3|4|Skycaller's Leather Waistguard
252477|3|4|Mender's Leather Waistguard
252478|2|4|Blue Suede Pants
252479|2|4|Wicked Leather Boots
252480|2|4|Blue Suede Armor
252481|2|4|Blue Suede Belt
252482|2|4|Blue Suede Hat
252483|4|4|Dawn Armor
252484|4|4|Timbermaw Tunic
252485|4|4|Warbear Helm
252486|4|4|Ironfeather Leggings
252487|2|0|Mystic Rugged Armor Kit
252488|2|0|Forceful Rugged Armor Kit
252490|3|4|Brawler's Leather Armor
252491|3|4|Trapper's Leather Armor
252492|3|4|Stormrider's Leather Armor
252493|3|4|Wisdom's Leather Armor
252494|3|4|Brawler's Leather Gloves
252495|3|4|Trapper's Leather Gloves
252496|3|4|Defender's Leather Gloves
252497|3|4|Totemic Leather Gloves
252498|3|4|Stormrider's Leather Gloves
252499|3|4|Wisdom's Leather Gloves
252500|3|4|Brawler's Leather Pants
252501|3|4|Trapper's Leather Pants
252502|3|4|Stormrider's Leather Pants
252503|3|4|Wisdom's Leather Pants
252504|3|4|Brawler's Leather Hood
252505|3|4|Trapper's Leather Hood
252506|3|4|Stormrider's Leather Hood
252507|3|4|Wisdom's Leather Hood
252508|3|4|Brawler's Leather Tunic
252509|3|4|Trapper's Leather Tunic
252510|3|4|Stormrider's Leather Tunic
252511|3|4|Wisdom's Leather Tunic
252512|3|4|Brawler's Leather Helm
252513|3|4|Trapper's Leather Helm
252514|3|4|Stormrider's Leather Helm
252515|3|4|Wisdom's Leather Helm
252516|3|4|Brawler's Leather Legguards
252517|3|4|Trapper's Leather Legguards
252518|3|4|Stormrider's Leather Kilt
252519|3|4|Wisdom's Leather Leggings
252520|3|4|Skulker's Leather Belt
252521|3|4|Stalker's Leather Belt
252522|3|4|Skycaller's Leather Belt
252523|3|4|Mender's Leather Belt
252524|3|4|Prowler's Leather Gloves
252525|3|4|Skulker's Leather Gloves
252526|3|4|Stalker's Leather Gloves
252527|3|4|Warden's Leather Gloves
252528|3|4|Skirmisher's Leather Gloves
252529|3|4|Skycaller's Leather Gloves
252530|3|4|Mender's Leather Gloves
252531|3|4|Skulker's Leather Shoes
252532|3|4|Skycaller's Leather Shoes
252533|3|4|Mender's Leather Shoes
252534|3|4|Prowler's Leather Shoulders
252535|3|4|Skulker's Leather Shoulder
252536|3|4|Warden's Leather Shoulders
252537|3|4|Skycaller's Leather Shoulders
252538|3|4|Mender's Leather Shoulders
252539|3|4|Prowler's Leather Bracers
252540|3|4|Skulker's Leather Bracers
252541|3|4|Warden's Leather Bracers
252542|3|4|Skycaller's Leather Bracers
252543|3|4|Mender's Leather Bracers
252544|2|4|Tooled Leather Belt
252545|2|4|Tooled Leather Boots
252546|2|4|Blue Suede Gloves
252547|3|4|Prowler's Leather Gauntlets
252548|3|4|Skulker's Leather Gauntlets
252549|3|4|Warden's Leather Gauntlets
252550|3|4|Skycaller's Leather Gauntlets
252551|3|4|Mender's Leather Gauntlets
252552|2|4|Tooled Leather Armor
252553|2|4|Tooled Leather Gauntlets
252554|2|4|Blue Suede Shoulders
252555|2|4|Tooled Leather Crown
252556|2|4|Wicked Leather Shoulders
252557|2|4|Tooled Leather Bracers
252558|2|4|Tooled Leather Epaulets
252559|2|4|Blue Suede Bracers
252560|2|4|Tooled Leather Pants
252561|4|4|Living Crown
252562|3|4|Stalker's Mail Boots
252563|3|4|Skycaller's Mail Boots
252564|3|4|Skirmisher's Mail Boots
252565|3|4|Mender's Mail Boots
252566|3|4|Stalker's Mail Shoulders
252567|3|4|Skycaller's Mail Shoulders
252568|3|4|Skirmisher's Mail Shoulders
252569|3|4|Mender's Mail Shoulders
252570|3|4|Stalker's Mail Bracers
252571|3|4|Skycaller's Mail Bracers
252572|3|4|Skirmisher's Mail Bracers
252573|3|4|Mender's Mail Bracers
252574|2|4|Supple Scorpid Boots
252575|2|4|Charged Scorpid Belt
252576|3|4|Stalker's Mail Sabatons
252577|3|4|Skycaller's Mail Sabatons
252578|3|4|Skirmisher's Mail Sabatons
252579|3|4|Mender's Mail Sabatons
252580|2|4|Supple Scorpid Leggings
252581|2|4|Charged Scorpid Helm
252582|2|4|Supple Scorpid Bracers
252583|2|4|Charged Scorpid Shoulders
252584|3|4|Stalker's Mail Gauntlets
252585|3|4|Skycaller's Mail Gauntlets
252586|3|4|Skirmisher's Mail Gauntlets
252587|3|4|Mender's Mail Gauntlets
252588|3|4|Stalker's Mail Belt
252589|3|4|Skycaller's Mail Belt
252590|3|4|Skirmisher's Mail Belt
252591|3|4|Mender's Mail Belt
252592|2|4|Supple Scorpid Shoulders
252593|2|4|Charged Scorpid Bracers
252594|2|4|Heavy Scorpid Boots
252595|2|4|Supple Scorpid Belt
252596|2|4|Charged Scorpid Gauntlets
252597|2|4|Supple Scorpid Helm
252598|2|4|Charged Scorpid Vest
252599|2|4|Supple Scorpid Vest
252600|2|4|Charged Scorpid Leggings
252601|2|4|Supple Scorpid Sabatons
252602|2|4|Charged Scorpid Boots
252603|4|4|Red Dragonscale Leggings
252604|4|4|Blue Dragonscale Helm
252605|4|4|Black Dragonscale Helm
252606|4|4|Pristine Scorpid Leggings
252661|1|12|Commander Cyclas's Head
252665|1|12|Head of Urs'anah
252670|1|12|Prideclaw Pelt
252671|0|15|Hoarder's Foot
252674|1|12|Indari's Offering
252678|1|12|Demon Dust
252760|1|12|Stolen Shen'dar Supplies
252761|3|9|Pattern: Black Whelp Slippers
252762|3|9|Pattern: Dark Leather Boots
252763|3|9|Pattern: Murloc Scale Shoes
252764|3|9|Pattern: Moonglow Boots
252765|3|9|Pattern: Brawler's Leather Belt
252766|3|9|Pattern: Trapper's Leather Belt
252767|3|9|Pattern: Defender's Leather Belt
252768|3|9|Pattern: Totemic Leather Belt
252769|3|9|Pattern: Stormrider's Leather Belt
252770|3|9|Pattern: Wisdom's Leather Belt
252771|3|9|Pattern: Brawler's Leather Armor
252772|3|9|Pattern: Trapper's Leather Armor
252773|3|9|Pattern: Defender's Leather Armor
252774|3|9|Pattern: Totemic Leather Armor
252775|3|9|Pattern: Stormrider's Leather Armor
252776|3|9|Pattern: Wisdom's Leather Armor
252777|3|9|Pattern: Brawler's Leather Gloves
252778|3|9|Pattern: Trapper's Leather Gloves
252779|3|9|Pattern: Defender's Leather Gloves
252780|3|9|Pattern: Totemic Leather Gloves
252781|3|9|Pattern: Stormrider's Leather Gloves
252782|3|9|Pattern: Wisdom's Leather Gloves
252783|2|9|Pattern: Mystic Medium Armor Kit
252784|2|9|Pattern: Forceful Medium Armor Kit
252786|3|9|Pattern: Brawler's Leather Boots
252787|3|9|Pattern: Trapper's Leather Boots
252788|3|9|Pattern: Defender's Leather Boots
252789|3|9|Pattern: Totemic Leather Boots
252790|3|9|Pattern: Stormrider's Leather Boots
252791|3|9|Pattern: Wisdom's Leather Boots
252792|3|9|Pattern: Brawler's Leather Pants
252793|3|9|Pattern: Trapper's Leather Pants
252794|3|9|Pattern: Defender's Leather Pants
252795|3|9|Pattern: Totemic Leather Pants
252796|3|9|Pattern: Stormrider's Leather Pants
252797|3|9|Pattern: Wisdom's Leather Pants
252798|3|9|Pattern: Brawler's Leather Hood
252799|3|9|Pattern: Trapper's Leather Hood
252800|3|9|Pattern: Defender's Leather Hood
252801|3|9|Pattern: Totemic Leather Hood
252802|3|9|Pattern: Stormrider's Leather Hood
252803|3|9|Pattern: Wisdom's Leather Hood
252804|2|9|Pattern: Hillman's Leather Boots
252805|3|9|Pattern: Brawler's Leather Tunic
252806|3|9|Pattern: Trapper's Leather Tunic
252807|3|9|Pattern: Defender's Leather Tunic
252808|3|9|Pattern: Totemic Leather Tunic
252809|3|9|Pattern: Stormrider's Leather Tunic
252810|3|9|Pattern: Wisdom's Leather Tunic
252811|2|9|Pattern: Mystic Heavy Armor Kit
252812|2|9|Pattern: Forceful Heavy Armor Kit
252814|3|9|Pattern: Brawler's Leather Helm
252815|3|9|Pattern: Trapper's Leather Helm
252816|3|9|Pattern: Defender's Leather Helm
252817|3|9|Pattern: Totemic Leather Helm
252818|3|9|Pattern: Stormrider's Leather Helm
252819|3|9|Pattern: Wisdom's Leather Helm
252820|3|9|Pattern: Brawler's Leather Legguards
252821|3|9|Pattern: Trapper's Leather Legguards
252822|3|9|Pattern: Defender's Leather Kilt
252823|3|9|Pattern: Totemic Leather Leggings
252824|3|9|Pattern: Stormrider's Leather Kilt
252825|3|9|Pattern: Wisdom's Leather Leggings
252826|3|9|Pattern: Prowler's Leather Belt
252827|3|9|Pattern: Skulker's Leather Belt
252828|3|9|Pattern: Stalker's Leather Belt
252829|3|9|Pattern: Warden's Leather Belt
252830|3|9|Pattern: Skirmisher's Leather Belt
252831|3|9|Pattern: Skycaller's Leather Belt
252832|3|9|Pattern: Mender's Leather Belt
252833|2|9|Pattern: Mystic Thick Armor Kit
252834|2|9|Pattern: Forceful Thick Armor Kit
252836|3|9|Pattern: Prowler's Leather Gloves
252837|3|9|Pattern: Skulker's Leather Gloves
252838|3|9|Pattern: Stalker's Leather Gloves
252839|3|9|Pattern: Warden's Leather Gloves
252840|3|9|Pattern: Skirmisher's Leather Gloves
252841|3|9|Pattern: Skycaller's Leather Gloves
252842|3|9|Pattern: Mender's Leather Gloves
252843|3|9|Pattern: Prowler's Leather Shoes
252844|3|9|Pattern: Skulker's Leather Shoes
252845|3|9|Pattern: Warden's Leather Shoes
252846|3|9|Pattern: Skycaller's Leather Shoes
252847|3|9|Pattern: Mender's Leather Shoes
252848|3|9|Pattern: Prowler's Leather Shoulders
252849|3|9|Pattern: Skulker's Leather Shoulder
252850|3|9|Pattern: Warden's Leather Shoulders
252851|3|9|Pattern: Skycaller's Leather Shoulders
252852|3|9|Pattern: Mender's Leather Shoulders
252853|3|9|Pattern: Prowler's Leather Bracers
252854|3|9|Pattern: Skulker's Leather Bracers
252855|3|9|Pattern: Warden's Leather Bracers
252856|3|9|Pattern: Skycaller's Leather Bracers
252857|3|9|Pattern: Mender's Leather Bracers
252858|2|9|Pattern: Tooled Leather Belt
252859|2|9|Pattern: Blue Suede Shoes
252860|3|9|Pattern: Prowler's Leather Boots
252861|3|9|Pattern: Skulker's Leather Boots
252862|3|9|Pattern: Warden's Leather Boots
252863|3|9|Pattern: Skycaller's Leather Boots
252864|3|9|Pattern: Mender's Leather Boots
252865|2|9|Pattern: Tooled Leather Boots
252866|2|9|Pattern: Blue Suede Gloves
252867|3|9|Pattern: Prowler's Leather Gauntlets
252868|3|9|Pattern: Skulker's Leather Gauntlets
252869|3|9|Pattern: Warden's Leather Gauntlets
252870|3|9|Pattern: Skycaller's Leather Gauntlets
252871|3|9|Pattern: Mender's Leather Gauntlets
252872|3|9|Pattern: Prowler's Leather Waistguard
252873|3|9|Pattern: Skulker's Leather Waistguard
252874|3|9|Pattern: Warden's Leather Waistguard
252875|3|9|Pattern: Skycaller's Leather Waistguard
252876|3|9|Pattern: Mender's Leather Waistguard
252877|2|9|Pattern: Tooled Leather Armor
252878|2|9|Pattern: Blue Suede Pants
252879|2|9|Pattern: Wicked Leather Boots
252880|2|9|Pattern: Tooled Leather Gauntlets
252881|2|9|Pattern: Blue Suede Shoulders
252882|2|9|Pattern: Tooled Leather Crown
252883|2|9|Pattern: Blue Suede Armor
252884|2|9|Pattern: Wicked Leather Shoulders
252885|2|9|Pattern: Tooled Leather Bracers
252886|2|9|Pattern: Blue Suede Belt
252887|2|9|Pattern: Tooled Leather Epaulets
252888|2|9|Pattern: Blue Suede Bracers
252889|2|9|Pattern: Tooled Leather Pants
252890|2|9|Pattern: Blue Suede Hat
252891|4|9|Pattern: Living Crown
252892|4|9|Pattern: Dawn Armor
252893|4|9|Pattern: Timbermaw Tunic
252894|4|9|Pattern: Warbear Helm
252895|4|9|Pattern: Ironfeather Leggings
252896|3|9|Pattern: Stalker's Mail Boots
252897|3|9|Pattern: Skycaller's Mail Boots
252898|3|9|Pattern: Skirmisher's Mail Boots
252899|3|9|Pattern: Mender's Mail Boots
252900|3|9|Pattern: Stalker's Mail Shoulders
252901|3|9|Pattern: Skycaller's Mail Shoulders
252902|3|9|Pattern: Skirmisher's Mail Shoulders
252903|3|9|Pattern: Mender's Mail Shoulders
252904|3|9|Pattern: Stalker's Mail Bracers
252905|3|9|Pattern: Skycaller's Mail Bracers
252906|3|9|Pattern: Skirmisher's Mail Bracers
252907|3|9|Pattern: Mender's Mail Bracers
]==],
[==[
252908|2|9|Pattern: Supple Scorpid Boots
252909|2|9|Pattern: Charged Scorpid Belt
252910|3|9|Pattern: Stalker's Mail Sabatons
252911|3|9|Pattern: Skycaller's Mail Sabatons
252912|3|9|Pattern: Skirmisher's Mail Sabatons
252913|3|9|Pattern: Mender's Mail Sabatons
252914|2|9|Pattern: Supple Scorpid Leggings
252915|2|9|Pattern: Charged Scorpid Helm
252916|2|9|Pattern: Supple Scorpid Bracers
252917|2|9|Pattern: Charged Scorpid Shoulders
252918|3|9|Pattern: Stalker's Mail Gauntlets
252919|3|9|Pattern: Skycaller's Mail Gauntlets
252920|3|9|Pattern: Skirmisher's Mail Gauntlets
252921|3|9|Pattern: Mender's Mail Gauntlets
252922|3|9|Pattern: Stalker's Mail Belt
252923|3|9|Pattern: Skycaller's Mail Belt
252924|3|9|Pattern: Skirmisher's Mail Belt
252925|3|9|Pattern: Mender's Mail Belt
252926|2|9|Pattern: Supple Scorpid Shoulders
252927|2|9|Pattern: Charged Scorpid Bracers
252928|2|9|Pattern: Heavy Scorpid Boots
252929|2|9|Pattern: Supple Scorpid Belt
252930|2|9|Pattern: Charged Scorpid Gauntlets
252931|2|9|Pattern: Supple Scorpid Helm
252932|2|9|Pattern: Charged Scorpid Vest
252933|2|9|Pattern: Supple Scorpid Vest
252934|2|9|Pattern: Charged Scorpid Leggings
252935|2|9|Pattern: Supple Scorpid Sabatons
252936|2|9|Pattern: Charged Scorpid Boots
252937|4|9|Pattern: Red Dragonscale Leggings
252938|4|9|Pattern: Blue Dragonscale Helm
252939|4|9|Pattern: Black Dragonscale Helm
252940|4|9|Pattern: Pristine Scorpid Leggings
252941|2|9|Pattern: Mystic Rugged Armor Kit
252942|2|9|Pattern: Forceful Rugged Armor Kit
253017|1|12|Corrupted Felbloom
253152|1|12|Aonda's Written Report
253239|1|12|Azgalor's Ashes
253247|1|12|Banner of Ironforge
253249|1|12|Horde Flag
253258|1|12|The Hum Gun
253259|1|15|Cool Heat
253260|1|15|Miniature Morphologic Mimic Encabulator
253341|1|12|Hyjal Owl Feather
253378|2|15|Tenn's Road-Worn Flute
253591|1|12|Ripe Stormapple
253595|1|12|Flutterfly Dust
253596|1|12|Blood-Stained Bandit Mask
253597|1|12|Lowlands Galestrider Tenderloin
253664|1|1|Linen Reagent Bag
253665|2|9|Pattern: Linen Reagent Bag
253666|1|12|Flutterfly Swatter
253667|1|1|Woolen Reagent Bag
253668|2|9|Pattern: Woolen Reagent Bag
253710|1|12|Bruuz's Dorsal Fin
253711|1|12|Goliath's Wristguards
253884|2|4|Template Item
253885|3|4|Novice Arcanist's Sash
253886|3|9|Pattern: Novice Arcanist's Sash
253887|3|4|Novice Ardent's Sash
253888|3|9|Pattern: Novice Ardent's Sash
253889|3|4|Pristine Boots
253890|3|9|Pattern: Pristine Boots
253891|3|4|Silky Boots
253892|3|9|Pattern: Silky Boots
253893|3|4|Flame Boots
253894|3|9|Pattern: Flame Boots
253895|3|4|Shadow Boots
253896|3|9|Pattern: Shadow Boots
253897|3|4|Pearly Boots
253898|3|9|Pattern: Pearly Boots
253899|3|4|Shining Boots
253900|3|9|Pattern: Shining Boots
253901|3|4|Filigreed Pristine Gown
253902|3|9|Pattern: Filigreed Pristine Gown
253903|3|4|Filigreed Silky Gown
253904|3|9|Pattern: Filigreed Silky Gown
253905|3|4|Filigreed Flame Gown
253906|3|9|Pattern: Filigreed Flame Gown
253907|3|4|Filigreed Shadow Gown
253908|3|9|Pattern: Filigreed Shadow Gown
253909|3|4|Filigreed Pearly Gown
253910|3|9|Pattern: Filigreed Pearly Gown
253911|3|4|Filigreed Shining Gown
253912|3|9|Pattern: Filigreed Shining Gown
253913|3|4|Pristine Gloves
253914|3|9|Pattern: Pristine Gloves
253915|3|4|Silky Gloves
253916|3|9|Pattern: Silky Gloves
253917|3|4|Flame Gloves
253918|3|9|Pattern: Flame Gloves
253919|3|4|Shadow Gloves
253920|3|9|Pattern: Shadow Gloves
253921|3|4|Pearly Gloves
253922|3|9|Pattern: Pearly Gloves
253923|3|4|Shining Gloves
253924|3|9|Pattern: Shining Gloves
253925|3|4|Pristine Sash
253926|3|9|Pattern: Pristine Sash
253927|3|4|Silky Sash
253928|3|9|Pattern: Silky Sash
253929|3|4|Flame Sash
253930|3|9|Pattern: Flame Sash
253931|3|4|Shadow Sash
253932|3|9|Pattern: Shadow Sash
253933|3|4|Pearly Sash
253934|3|9|Pattern: Pearly Sash
253935|3|4|Shining Sash
253936|3|9|Pattern: Shining Sash
253937|3|4|Filigreed Pristine Leggings
253938|3|9|Pattern: Filigreed Pristine Leggings
253939|3|4|Filigreed Silky Leggings
253940|3|9|Pattern: Filigreed Silky Leggings
253941|3|4|Filigreed Flame Leggings
253942|3|9|Pattern: Filigreed Flame Leggings
253943|3|4|Filigreed Shadow Leggings
253944|3|9|Pattern: Filigreed Shadow Leggings
253945|3|4|Filigreed Pearly Leggings
253946|3|9|Pattern: Filigreed Pearly Leggings
253947|3|4|Filigreed Shining Leggings
253948|3|9|Pattern: Filigreed Shining Leggings
253949|3|4|Pristine Circlet
253950|3|9|Pattern: Pristine Circlet
253951|3|4|Silky Circlet
253952|3|9|Pattern: Silky Circlet
253953|3|4|Flame Circlet
253954|3|9|Pattern: Flame Circlet
253955|3|4|Shadow Circlet
253956|3|9|Pattern: Shadow Circlet
253957|3|4|Pearly Circlet
253958|3|9|Pattern: Pearly Circlet
253959|3|4|Shining Circlet
253960|3|9|Pattern: Shining Circlet
253961|3|4|Pristine Gown
253962|3|9|Pattern: Pristine Gown
253963|3|4|Silky Gown
253964|3|9|Pattern: Silky Gown
253965|3|4|Flame Gown
253966|3|9|Pattern: Flame Gown
253967|3|4|Shadow Gown
253968|3|9|Pattern: Shadow Gown
253969|3|4|Pearly Gown
253970|3|9|Pattern: Pearly Gown
253971|3|4|Shining Gown
253972|3|9|Pattern: Shining Gown
253973|1|1|Silk Reagent Bag
253974|2|9|Pattern: Silk Reagent Bag
253975|3|4|Filigreed Pristine Circlet
253976|3|9|Pattern: Filigreed Pristine Circlet
253977|3|4|Filigreed Silky Circlet
253978|3|9|Pattern: Filigreed Silky Circlet
253979|3|4|Filigreed Flame Circlet
253980|3|9|Pattern: Filigreed Flame Circlet
253981|3|4|Filigreed Shadow Circlet
253982|3|9|Pattern: Filigreed Shadow Circlet
253983|3|4|Filigreed Pearly Circlet
253984|3|9|Pattern: Filigreed Pearly Circlet
253985|3|4|Filigreed Shining Circlet
253986|3|9|Pattern: Filigreed Shining Circlet
253987|3|4|Pristine Leggings
253988|3|9|Pattern: Pristine Leggings
253989|3|4|Silky Leggings
253990|3|9|Pattern: Silky Leggings
253991|3|4|Flame Leggings
253992|3|9|Pattern: Flame Leggings
253993|3|4|Shadow Leggings
253994|3|9|Pattern: Shadow Leggings
253995|3|4|Pearly Leggings
253996|3|9|Pattern: Pearly Leggings
253997|3|4|Shining Leggings
253998|3|9|Pattern: Shining Leggings
253999|2|4|Earthen Leggings
254000|2|9|Pattern: Earthen Leggings
254001|3|4|Gilded Slippers
254002|3|9|Pattern: Gilded Slippers
254003|3|4|Frothing Slippers
254004|3|9|Pattern: Frothing Slippers
254005|3|4|Fiery Slippers
254006|3|9|Pattern: Fiery Slippers
254007|3|4|Black Slippers
254008|3|9|Pattern: Black Slippers
254009|3|4|Golden Slippers
254010|3|9|Pattern: Golden Slippers
254011|3|4|Radiant Slippers
254012|3|9|Pattern: Radiant Slippers
254013|2|4|Earthen Silk Slippers
254014|2|9|Pattern: Earthen Silk Slippers
254015|2|4|Earthen Silk Hood
254016|2|9|Pattern: Earthen Silk Hood
254017|2|4|Earthen Silk Gloves
254018|2|9|Pattern: Earthen Silk Gloves
254019|2|4|Earthen Silk Cuffs
254020|2|9|Pattern: Earthen Silk Cuffs
254021|3|4|Gilded Handwraps
254022|3|9|Pattern: Gilded Handwraps
254023|3|4|Frothing Handwraps
254024|3|9|Pattern: Frothing Handwraps
254025|3|4|Fiery Handwraps
254026|3|9|Pattern: Fiery Handwraps
254027|3|4|Black Handwraps
254028|3|9|Pattern: Black Handwraps
254029|3|4|Golden Handwraps
254030|3|9|Pattern: Golden Handwraps
254031|3|4|Radiant Handwraps
254032|3|9|Pattern: Radiant Handwraps
254033|2|4|Earthen Silk Shoulders
254034|2|9|Pattern: Earthen Silk Shoulders
254035|1|1|Mageweave Reagent Bag
254036|2|9|Pattern: Mageweave Reagent Bag
254037|3|4|Gilded Cord
254038|3|9|Pattern: Gilded Cord
254039|3|4|Frothing Cord
254040|3|9|Pattern: Frothing Cord
254041|3|4|Fiery Cord
254042|3|9|Pattern: Fiery Cord
254043|3|4|Black Cord
254044|3|9|Pattern: Black Cord
254045|3|4|Golden Cord
254046|3|9|Pattern: Golden Cord
254047|3|4|Radiant Cord
254048|3|9|Pattern: Radiant Cord
254049|3|4|Nethergeld Shoulders
254050|3|9|Pattern: Nethergeld Shoulders
254051|3|4|Netherfroth Shoulders
254052|3|9|Pattern: Netherfroth Shoulders
254053|3|4|Netherflame Shoulders
254054|3|9|Pattern: Netherflame Shoulders
254055|3|4|Netherpearl Shoulders
254056|3|9|Pattern: Netherpearl Shoulders
254057|3|4|Nethershine Shoulders
254058|3|9|Pattern: Nethershine Shoulders
254059|3|4|Netherlight Shoulders
254060|3|9|Pattern: Netherlight Shoulders
254061|3|4|Nethergeld Cuffs
254062|3|9|Pattern: Nethergeld Cuffs
254063|3|4|Netherfroth Cuffs
254064|3|9|Pattern: Netherfroth Cuffs
254065|3|4|Netherflame Cuffs
254066|3|9|Pattern: Netherflame Cuffs
254067|3|4|Netherpearl Cuffs
254068|3|9|Pattern: Netherpearl Cuffs
254069|3|4|Nethershine Cuffs
254070|3|9|Pattern: Nethershine Cuffs
254071|3|4|Netherlight Cuffs
254072|3|9|Pattern: Netherlight Cuffs
254073|2|4|Ghostweave Cord
254074|2|9|Pattern: Ghostweave Cord
254075|2|4|Earthenweave Gloves
254076|2|9|Pattern: Earthenweave Gloves
254077|2|4|Earthenweave Cord
254078|2|9|Pattern: Earthenweave Cord
254079|1|1|Runecloth Reagent Bag
254080|2|9|Pattern: Runecloth Reagent Bag
254081|3|4|Gilded Waistcord
254082|3|9|Pattern: Gilded Waistcord
254083|3|4|Frothing Waistcord
254084|3|9|Pattern: Frothing Waistcord
254085|3|4|Fiery Waistcord
254086|3|9|Pattern: Fiery Waistcord
254087|3|4|Black Waistcord
254088|3|9|Pattern: Black Waistcord
254089|3|4|Golden Waistcord
254090|3|9|Pattern: Golden Waistcord
254091|3|4|Radiant Waistcord
254092|3|9|Pattern: Radiant Waistcord
254093|2|4|Earthenweave Boots
254094|2|9|Pattern: Earthenweave Boots
254095|3|4|Gilded Gloves
254096|3|9|Pattern: Gilded Gloves
254097|3|4|Frothing Gloves
254098|3|9|Pattern: Frothing Gloves
254099|3|4|Fiery Gloves
254100|3|9|Pattern: Fiery Gloves
254101|3|4|Black Gloves
254102|3|9|Pattern: Black Gloves
254103|3|4|Golden Gloves
254104|3|9|Pattern: Golden Gloves
254105|3|4|Radiant Gloves
254106|3|9|Pattern: Radiant Gloves
254107|3|4|Gilded Sandals
254108|3|9|Pattern: Gilded Sandals
254109|3|4|Frothing Sandals
254110|3|9|Pattern: Frothing Sandals
254111|3|4|Fiery Sandals
254112|3|9|Pattern: Fiery Sandals
254113|3|4|Black Sandals
254114|3|9|Pattern: Black Sandals
254115|3|4|Golden Sandals
254116|3|9|Pattern: Golden Sandals
254117|3|4|Radiant Sandals
254118|3|9|Pattern: Radiant Sandals
254119|2|4|Earthenweave Mantle
254120|2|9|Pattern: Earthenweave Mantle
254121|2|4|Earthenweave Vest
254122|2|9|Pattern: Earthenweave Vest
254123|2|4|Runecloth Cuffs
254124|2|9|Pattern: Runecloth Cuffs
254125|2|4|Earthenweave Leggings
254126|2|9|Pattern: Earthenweave Leggings
254127|2|4|Ghostweave Mantle
254128|2|9|Pattern: Ghostweave Mantle
254129|2|4|Ghostweave Boots
254130|2|9|Pattern: Ghostweave Boots
254131|2|4|Earthenweave Cuffs
254132|2|9|Pattern: Earthenweave Cuffs
254133|1|1|Mooncloth Reagent Bag
254134|2|9|Pattern: Mooncloth Reagent Bag
254135|2|4|Ghostweave Hood
254136|2|9|Pattern: Ghostweave Hood
254137|2|4|Earthenweave Crown
254138|2|9|Pattern: Earthenweave Crown
254139|1|1|Bottomless Reagent Bag
254140|2|9|Pattern: Bottomless Reagent Bag
254378|1|12|Shriekling Talons
254392|1|12|Conqueror's Helm
254432|2|15|Carved Centaur Totem
254545|1|12|Well Water Sample Kit
254546|1|12|Jansen Stead Water Sample
254547|1|12|Molsen Farm Water Sample
254548|1|12|Longshore Murloc Gill
254549|1|12|[UNUSED] Mine Water Sample Kit
254550|1|12|Jangolode Water Sample
254551|1|12|Gold Coast Water Sample
254552|1|12|Remote Detonator Kit
254553|1|12|Extra-Destructive Explosives
254562|1|12|Quest Item Placeholder
254584|1|12|Index Esoteria
254663|1|12|Gently Cursed Bone
254676|1|12|Suspicious Industrial Supplies
254679|0|2|Stillwind String
254680|0|2|Twin's Pact
254681|2|9|Pattern: Stormcloth Pants
254682|2|9|Pattern: Stormcloth Gloves
254683|2|9|Pattern: Stormcloth Vest
254684|2|9|Pattern: Stormcloth Headband
254685|2|9|Pattern: Stormcloth Shoulders
254686|2|9|Pattern: Stormcloth Boots
254687|0|2|Spire of Astral Awakening
254692|1|12|Staff of Ohk'zi
254695|1|12|Fel-Tainted Remains
254696|0|2|Reverence
254779|2|2|A'sharahm, the Roiling Tempest
254780|1|12|Huge Feather
254840|1|12|Imbued Tears
254841|1|12|Petrified Bark
254842|1|12|Well Cursed Bone
254859|1|12|Vicious Hook Talon
254870|1|12|Rudimentary Necromancy Staff
254871|1|12|Bloody Note
254877|1|12|Namida's Hoof
255007|1|7|Golem Isospring
255010|1|12|Harvester Gyrostabilizer
255154|0|15|Ruined Gyrostabilizer
255155|1|12|Precessive Autocognition Assembly
255403|1|12|Enhanced Necromancy Staff
255645|1|7|Swollen Venom Sac
255656|2|12|Pylon Fragment
255657|2|12|Pylon Shard
255658|1|12|Al'Aketh Windstone Charm
255662|2|12|Mana Sieve
255663|1|0|Windstone
255667|1|12|Coalesced Mana Crystal
255715|1|7|Potent Anti-Venom
255716|1|7|Simple Poultice
255717|1|7|Clever Poultice
255718|1|7|Superior Poultice
255719|1|7|Powerful Poultice
255720|1|7|Woolen Tourniquet
255721|1|7|Leather Tourniquet
255722|1|7|Surgical Tourniquet
255723|2|9|Manual: Greater Healing Potion
255724|2|9|Manual: Clever Poultice
255725|2|9|Manual: Superior Healing Potion
255726|2|9|Manual: Leather Tourniquet
255727|2|9|Manual: Superior Poultice
255728|2|9|Manual: Potent Anti-Venom
255729|2|9|Manual: Major Healing Potion
255730|2|9|Manual: Surgical Tourniquet
255731|2|9|Manual: Powerful Poultice
255875|1|12|Necromantic Garb
255878|1|12|Tear of Theradras
255941|1|12|Gelkis Necromantic Garb
255945|1|12|Accursed Skull
256036|0|15|Handful of Dirt
256037|0|15|Grass Clippings
256038|0|2|Rage of the Sleeper
256039|0|2|Rake of the Sleeper
256044|0|15|Iridescent Insect Carapace
256045|0|15|Bloodfly Proboscis
256057|1|12|Draenethyst Crystal
256058|1|12|Uthek's Staff
256061|1|12|Uthek's Draenethyst Staff
256892|1|12|Stolen Supplies
256935|1|1|Simple Leather Satchel
257107|1|12|Shriekling Matriarch's Head
257126|1|12|Heart of the Obliterator
257128|1|12|Zephyrseed
257135|0|4|Huntress' Kite Shield
257215|1|12|Rusty Gadget
257224|0|15|Cracked Windstone
257226|0|15|Lesser Essence of the Four Winds
257228|1|12|Untainted Giblets
257255|2|4|Highlands Defender's Shield
257257|1|4|Thendal Ranger's Shoes
257263|1|4|Thendal Ranger's Belt
257264|1|4|Thendal Ranger's Gloves
257272|1|4|Skychain Belt
257273|1|2|Worn Greatblade
257274|1|4|Flowing Tunic
257275|1|4|Ranger-Apprentice Cape
257276|1|2|Peacekeeper's Pickhammer
257277|1|4|Windblown Short Cloak
257278|1|4|Plain Skirt
257280|1|4|Vuldren Hide Bracers
257281|1|4|Fur-Lined Shoes
257282|1|2|Novice's Quarterstaff
257283|1|2|Scout Ranger's Dagger
257328|1|4|Highlander Gloves
257329|1|4|Smooth Waistband
257330|1|4|Homestitched Robe
257331|1|4|Brass-Banded Bracers
257332|1|2|Stained Ritual Dagger
257333|1|2|Curved Scimitar
257334|1|4|Well-Worn Pants
257335|1|4|Windblown Kilt
257336|1|4|Peacekeeper's Buckler
257337|1|2|Solid Copper Club
257338|1|4|Valanaar Chain Gloves
257339|1|4|Skysilk Wristguards
257340|1|4|Farmer's Field Boots
257341|1|4|Wind-Worn Boots
257342|2|4|Elite Peacekeeper's Leggings
257343|2|2|Balanced Quarterstaff
257344|2|4|Skywatcher's Vestments
257345|2|2|Honed Greathammer
257346|2|2|Quickblade's Dagger
257348|3|5|Essence of Innovation
257517|1|12|Ultimate Necromancy Staff
257685|2|12|Totem Tote
257808|1|12|Parcel of Mail
257809|1|12|Parcel of Mail
257878|1|4|Highlander's Chain Vest
257879|1|4|Prideclaw Hide Armor
257941|1|12|Windsong Crawler Meat
257942|1|12|Vulgara's Head
257943|2|4|Hunter's Simple Cloak
257945|1|12|Pilfered Windstone
258051|0|15|Spittle
258296|2|12|Vial of Earth Song Water
258323|1|12|Missing Mail
258526|1|7|Flight Log
258530|1|12|Lucky Lure
258661|1|12|Uthek's Draenethyst Staff
258734|1|12|Unfinished Masterwork Sword
258735|1|12|Phantasmal Blade
258771|1|15|Al'Aketh Cultist's Ear
258772|1|12|Windstone Cluster
258773|1|12|Broken Dart Trap
258774|1|12|Gimashi's Findings
258882|1|2|Worn Greatsword
259226|1|12|Spectral Iron Ore
259229|1|12|Vindael's Spectral Pickaxe
259268|1|12|Bag of Thorn Seeds
259357|1|15|Burning Keystone
259460|0|4|Shield, Lordaeron Guard
259461|1|15|Partially Digested Collar
259846|2|4|Wide-Brimmed Fishing Hat
259890|2|4|Deep-Sea Waders
259891|2|2|Berdun's Trusty Rifle
259892|2|4|Feardred's Cleansed Amulet
259893|1|15|Corpsefeeder's Carapace
259990|0|15|Tusk Ring
260166|2|2|Rageroar's Best Club
260167|2|4|Adventurer's Lost Boots
260168|2|4|Mourner's Shroud
260169|2|4|Amice of Sorrow
260171|2|4|Timbermaw Prayer Beads
260172|2|2|Assassin's Dagger
260176|1|12|Untainted Seed
260178|2|4|Honor Guard's Plate
260179|2|4|Barkwoven Belt
260180|2|2|Scout's Dagger
260181|2|4|Sentinel's Plate
260182|2|4|Elunar Belt
260183|3|4|Sacred Bangle
260184|3|4|Cliff Walker's Cinch
260185|3|4|Hippogryph Hide Boots
260186|2|2|Darkblade
260195|2|4|Headdress of the Damned
260196|2|4|Belt of Shadows
260201|2|4|Highborne Memory Crystal
260205|2|4|Highborne Research Tablet
260207|2|2|Staff of Archmage Selwyn
260208|2|4|Prelate's Orb
260209|2|2|Truesong's Hammer
260210|3|4|A Bigger Shield
260211|3|4|Panic Hands
260212|3|4|Bad Hat
260236|1|0|Scribbled Directions to Sulfur Vents
260237|1|12|Virulent Blood of Agamaggan
260244|2|12|Benevolent Bouquet
260245|2|12|Vibrant Flower
260247|1|15|Forlorn Necklace
260307|1|1|Hyjal Postal Satchel
260347|1|15|Tattered Journal
260348|1|15|Barely Legible Journal Entry, Page I
260349|1|15|Barely Legible Journal Entry, Page II
260350|1|15|Barely Legible Journal Entry, Page III
260351|1|15|Barely Legible Journal Entry, Page IV
260352|1|15|Barely Legible Journal Entry, Page V
260353|1|15|Barely Legible Journal Entry, Page VI
260354|1|15|Barely Legible Journal Entry, Page VII
260356|1|15|Barely Legible Journal Entry, Page VIII
260357|1|15|Barely Legible Journal Entry, Page IX
260358|1|15|Barely Legible Journal Entry, Page X
260452|1|12|Courier's Shipment
260466|1|12|A Blood Spattered Letter
260518|1|12|Azore's Transcription
260623|1|0|Candied Fruit Sampler
260624|1|0|Pristine Peach
260625|1|0|Garnished Rice Cake
260627|1|0|Savory Shen'dralar Steak
260628|1|0|Stuffed Pumpkin
260629|1|0|Spectral Spirits
260631|1|0|Arcane Wine
260632|1|0|Slushberry Brandy
260633|1|0|Sip of Lemonale
260704|0|4|Polished Bronze Safety Goggles
260784|1|7|SAF-T Tabs
260792|1|0|SAF-T Dynamite
260793|1|0|SAF-T Copper Bomb
260794|1|7|EZ-Thro Wrap
260795|1|0|EZ-Thro Copper Bomb XL
260796|1|7|No Slip SAF-T Padding
260797|1|0|SAF-T Bronze Bomb
260798|1|0|SAF-T Jumbo Dynamite
260799|1|7|SAF-T Bell
260800|1|0|Shafety Sheep
260801|1|7|EZ-Thro Fireproof Fuse
260802|1|4|EZ-Thro Bronze Mortar
260803|1|0|EZ-Thro Grenade
260804|1|7|SAF-T Casing
260805|1|0|SAF-T Bomb
260806|1|4|Emergency Field Cloak
260807|1|0|Compact Critter Carrier
260808|1|7|EZ-Thro Tru-Trigger
260809|1|0|Tru-Trigger Frag Bomb
260810|1|4|SAF-T Disposable Parachute
260811|1|7|Gnomish Army Knife
260812|3|15|Loot-A-Rang
260813|1|7|SAF-T Tube
260814|1|0|SAF-T Clever Dynamite
260815|1|7|EZ-Thro Shell
260816|1|0|EZ-Thro Thorium Grenade
260817|1|0|EZ-Thro Dark Bomb
260818|1|0|EZ-Thro Mana Bomb
260819|2|4|EZ-Thro Field Transporter: Gadgetzan
260820|2|4|SAF-T Emergency Ripper: Everlook
260821|2|4|EZ and SAF Field Transporter: Mt. Hyjal
260822|2|0|Ultrasafe Rechargeable Battery
260823|2|15|Dimensional Transporter - Mt. Hyjal
260824|3|4|Gnomish Poultryizer
260825|2|15|Ultralight Goblin Glider
260826|2|7|Gnomish Weather Machine NYI
260827|2|0|Stealthman 52
260828|2|4|SAF-T Nitro Boosts
260829|2|4|EZ-Thro Magnetic Displacer
260830|2|0|SAF-T Teleport
260880|1|12|Air Construct Core
260881|1|12|Crystallized Lightning
260883|1|12|Enchanted Gyrozephyr
260927|0|15|Rusted Construct Parts
262357|1|12|Wind Hollow Essence
262433|1|0|Ketharas' Hyjal Stew
262640|1|12|Feed Satchel
262668|1|12|Wind-Infused Bough
262764|1|4|Durotar Supply and Logistics Tabard
262765|1|4|Azeroth Commerce Authority Tabard
262766|4|15|Reins of the Pack Kodo
262801|2|1|Barkskin Satchel
262802|1|12|Moonveil Moss
262803|1|12|Burrow Beetle Bits
262816|1|12|Intact Owl Body
262818|1|12|Bear Berries
262887|3|0|Sealed Apprentice's Writ
262888|3|0|Sealed Journeyman's Writ
262889|3|0|Sealed Expert's Writ
262890|3|0|Sealed Artisan's Writ
262896|1|15|Forger's Quill
262902|1|15|Forged Delivery Receipt
262913|1|12|Fel-Tainted Bear Heart
262917|1|15|Notarized Shipping Container
263028|1|12|Enchanted Harpy Amulet
263029|1|12|Empty Waterskin
263030|1|12|Filled Hyjal Waterskin
263183|0|15|Sharp Ursera Tooth
263184|0|15|Chipped Ursera Bone
263227|1|12|Thorn Seed
263305|2|4|Windshaped Shield
263306|2|4|Nightclaw Gloves
263307|2|4|Shadowgale Pants
263308|2|4|Cult Hunter's Boots
263309|2|4|Freedom Walkers
263310|2|4|Sorrowsong Gloves
263311|2|4|Scuffed Cuffs
263312|2|2|Planting Shovel
263313|2|2|Trusty Wrench
263314|2|2|Roofing Hammer
263329|2|2|Flutterfly Swatter
263330|2|4|Tracker's Pants
263332|2|4|Elder's Tunic
263333|2|4|Peacekeeper's Mail
263335|2|4|Hunter's Cord
263336|2|4|Windsong Bangles
263337|2|4|Breaker's Gauntlets
263338|2|4|Defender's Bracers
263339|2|4|Windswept Slippers
263340|2|4|Peacekeeper's Legguards
263401|2|4|Martyr's Armor
263402|2|4|Sash of Sorrow
263403|2|4|Cilice of Regret
263404|2|2|Bow of Hours
263405|2|4|Belt of Blades
263406|2|4|Empyrean Shoes
263407|2|2|Empyrean Greatsword
263408|1|4|Exterminator's Vest
263409|1|4|Gardening Pants
263410|1|4|Watcher's Mail Chest
263411|2|4|Idol of Shifting Tides
263412|2|4|Totem of Charged Flames
263414|1|4|Traveler's Wraps
263415|1|12|Raani's Lucky Feather
263417|1|4|Adventurer's Cloak
263418|1|12|Shadowsong Family Signet
263420|1|4|Hiking Boots
263421|1|4|Bandit's Jerkin
263422|1|4|Patchwork Leggings
263423|1|4|Highlands Mail Legguards
263424|1|4|Wolfhide Belt
263425|1|4|Elegant Cuffs
263426|1|4|Ex-Commander's Gauntlets
263428|1|2|Dowsing Rod
263430|2|2|Windbough Wand
263431|2|4|Defender's Aegis
263432|2|2|Skulker's Shiv
263434|2|2|Winged Beast Staff
263435|2|4|Mark of Urs'endris
263436|2|4|Firestorm Totem
263439|1|12|Deadwood Tribal Beads
263491|1|12|Shadowsong Family Signet
263493|1|12|Hippogryph Down
263509|1|0|Skywall Souffle
263511|1|9|Recipe: Skywall Souffle
263512|1|0|Pincer Bites
263513|1|9|Recipe: Pincer Bites
263930|1|12|Farholde Scouting Report
263931|1|12|Crudely Fashioned Report
263972|1|12|Woodworker's Axe
263973|1|12|Beguiler's Blade
263992|1|13|Overseer's Keyring
263993|1|12|Skybreaker Bulwark
264011|3|0|Craftsman's Writ: Elixir of Ogre's Strength
264012|3|0|Craftsman's Writ: Elixir of Wisdom
264013|3|0|Craftsman's Writ: Lesser Mana Potion
264014|3|0|Craftsman's Writ: Shadow Protection Potion
264015|3|0|Craftsman's Writ: Free Action Potion
264016|3|0|Craftsman's Writ: Elixir of Lesser Agility
264017|3|0|Craftsman's Writ: Lesser Troll's Blood Elixir
264018|3|0|Craftsman's Writ: Elixir of Defense
264019|3|0|Craftsman's Writ: Draught of Water Breathing
264020|3|0|Craftsman's Writ: Pearl-Handled Dagger
264021|3|0|Craftsman's Writ: Golden Rod
264022|3|0|Craftsman's Writ: Iridescent Hammer
264023|3|0|Craftsman's Writ: Silver Skeleton Key
264024|3|0|Craftsman's Writ: Heavy Bronze Mace
264025|3|0|Craftsman's Writ: Rough Bronze Leggings
264026|3|0|Craftsman's Writ: Green Iron Gauntlets
264027|3|0|Craftsman's Writ: Big Bronze Knife
264028|3|0|Craftsman's Writ: Green Iron Boots
264029|3|0|Craftsman's Writ: Ornate Spyglass
264030|3|0|Craftsman's Writ: Explosive Sheep
264031|3|0|Craftsman's Writ: Moonsight Rifle
264032|3|0|Craftsman's Writ: Minor Recombobulator
264033|3|0|Craftsman's Writ: Practice Lock
264034|3|0|Craftsman's Writ: Shadow Goggles
264035|3|0|Craftsman's Writ: Gnomish Universal Remote
264036|3|0|Craftsman's Writ: Big Bronze Bomb
264037|3|0|Craftsman's Writ: Crafted Solid Shot
264038|3|0|Craftsman's Writ: Heavy Leather Ball
264039|3|0|Craftsman's Writ: Fine Leather Pants
264040|3|0|Craftsman's Writ: Herbalist's Gloves
264041|3|0|Craftsman's Writ: Dark Leather Tunic
264042|3|0|Craftsman's Writ: Pilferer's Gloves
264043|3|0|Craftsman's Writ: Heavy Quiver
264044|3|0|Craftsman's Writ: Dark Leather Shoulders
264045|3|0|Craftsman's Writ: Barbaric Gloves
264046|3|0|Craftsman's Writ: Red Whelp Gloves
264047|3|0|Craftsman's Writ: Lesser Wizard's Robe
264048|3|0|Craftsman's Writ: Blue Overalls
264049|3|0|Craftsman's Writ: Azure Silk Hood
264050|3|0|Craftsman's Writ: Small Silk Pack
264051|3|0|Craftsman's Writ: Phoenix Pants
264052|3|0|Craftsman's Writ: Red Woolen Boots
264053|3|0|Craftsman's Writ: Colorful Kilt
264054|3|0|Craftsman's Writ: Greater Adept's Robe
264055|3|0|Craftsman's Writ: Spider Silk Slippers
264056|3|0|Craftsman's Writ: Frost Protection Potion
264057|3|0|Craftsman's Writ: Lesser Invisibility Potion
264058|3|0|Craftsman's Writ: Lesser Stoneshield Potion
264059|3|0|Craftsman's Writ: Nature Protection Potion
264060|3|0|Craftsman's Writ: Catseye Draught
264061|3|0|Craftsman's Writ: Great Rage Potion
264062|3|0|Craftsman's Writ: Mana Potion
264063|3|0|Craftsman's Writ: Fire Protection Potion
264064|3|0|Craftsman's Writ: Shadow Oil
264065|3|0|Craftsman's Writ: Goblin Rocket Fuel
264066|3|0|Craftsman's Writ: Elixir of Agility
264067|3|0|Craftsman's Writ: Wildvine Potion
264068|3|0|Craftsman's Writ: Steel Plate Helm
264069|3|0|Craftsman's Writ: Inlaid Mithril Cylinder
264070|3|0|Craftsman's Writ: Steel Weapon Chain
264071|3|0|Craftsman's Writ: Ornate Mithril Shoulders
264072|3|0|Craftsman's Writ: Blue Glittering Axe
264073|3|0|Craftsman's Writ: Moonsteel Broadsword
264074|3|0|Craftsman's Writ: Golden Scale Coif
264075|3|0|Craftsman's Writ: Solid Sharpening Stone
264076|3|0|Craftsman's Writ: Wicked Mithril Blade
264077|3|0|Craftsman's Writ: Truesilver Rod
264078|3|0|Craftsman's Writ: Golden Scale Gauntlets
264079|3|0|Craftsman's Writ: Heavy Mithril Axe
264080|3|0|Craftsman's Writ: Mechanical Dragonling
264081|3|0|Craftsman's Writ: Advanced Target Dummy
264082|3|0|Craftsman's Writ: Craftsman's Monocle
264083|3|0|Craftsman's Writ: Goblin Land Mine
264084|3|0|Craftsman's Writ: Catseye Ultra Goggles
264085|3|0|Craftsman's Writ: Unstable Trigger
264086|3|0|Craftsman's Writ: Flash Bomb
264087|3|0|Craftsman's Writ: Fire Goggles
264088|3|0|Craftsman's Writ: Mithril Frag Bomb
264089|3|0|Craftsman's Writ: Gyromatic Micro-Adjuster
264090|3|0|Craftsman's Writ: Mechanical Repair Kit
264091|3|0|Craftsman's Writ: Dark Iron Bomb
264092|3|0|Craftsman's Writ: Comfortable Leather Hat
264093|3|0|Craftsman's Writ: Guardian Cloak
264094|3|0|Craftsman's Writ: Dusky Bracers
264095|3|0|Craftsman's Writ: Wild Leather Helmet
264096|3|0|Craftsman's Writ: Wild Leather Shoulders
264097|3|0|Craftsman's Writ: Quickdraw Quiver
264098|3|0|Craftsman's Writ: Swift Boots
264099|3|0|Craftsman's Writ: Nightscape Shoulders
264100|3|0|Craftsman's Writ: Big Voodoo Mask
264101|3|0|Craftsman's Writ: Big Voodoo Robe
264102|3|0|Craftsman's Writ: Turtle Scale Breastplate
264103|3|0|Craftsman's Writ: Thick Leather Ammo Pouch
264104|3|0|Craftsman's Writ: Mageweave Bag
264105|3|0|Craftsman's Writ: Shadoweave Gloves
264106|3|0|Craftsman's Writ: Crimson Silk Robe
264107|3|0|Craftsman's Writ: Shadoweave Robe
264108|3|0|Craftsman's Writ: Enchanted Mageweave Pouch
264109|3|0|Craftsman's Writ: Star Belt
264110|3|0|Craftsman's Writ: Black Mageweave Vest
264111|3|0|Craftsman's Writ: Red Mageweave Pants
264112|3|0|Craftsman's Writ: Orange Martial Shirt
264113|3|0|Craftsman's Writ: White Bandit Mask
264114|3|0|Craftsman's Writ: Cindercloth Robe
264115|3|0|Craftsman's Writ: Earthen Silk Belt
264116|3|0|Craftsman's Writ: Potion of Demonslaying
264117|3|0|Craftsman's Writ: Dreamless Sleep Potion
264118|3|0|Craftsman's Writ: Greater Fire Protection Potion
264119|3|0|Craftsman's Writ: Draught of Detect Demon
264120|3|0|Craftsman's Writ: Gift of Arthas
264121|3|0|Craftsman's Writ: Flask of Chromatic Resistance
264122|3|0|Craftsman's Writ: Limited Invulnerability Potion
264123|3|0|Craftsman's Writ: Major Rejuvenation Potion
264124|3|0|Craftsman's Writ: Distilled Firewater
264125|3|0|Craftsman's Writ: Radiant Circlet
264126|3|0|Craftsman's Writ: Radiant Belt
264127|3|0|Craftsman's Writ: Orcish War Leggings
264128|3|0|Craftsman's Writ: Mithril Spurs
264129|3|0|Craftsman's Writ: Imperial Plate Chest
264130|3|0|Craftsman's Writ: Darkrune Gauntlets
264131|3|0|Craftsman's Writ: Huge Thorium Battleaxe
264132|3|0|Craftsman's Writ: Arcanite Skeleton Key
264133|3|0|Craftsman's Writ: Ebon Shiv
264134|3|0|Craftsman's Writ: Masterwork Target Dummy
264135|3|0|Craftsman's Writ: Green Lens
264136|3|0|Craftsman's Writ: Lifelike Mechanical Toad
264137|3|0|Craftsman's Writ: Gnomish Alarm-O-Bot
264138|3|0|Craftsman's Writ: Goblin Jumper Cables XL
264139|3|0|Craftsman's Writ: Field Repair Bot 74A
264140|3|0|Craftsman's Writ: Truesilver Transformer
264141|3|0|Craftsman's Writ: Sniper Scope
264142|3|0|Craftsman's Writ: Tranquil Mechanical Yeti
264143|3|0|Craftsman's Writ: Wicked Leather Pants
264144|3|0|Craftsman's Writ: Gordok Ogre Suit
264145|3|0|Craftsman's Writ: Volcanic Breastplate
264146|3|0|Craftsman's Writ: Runic Leather Headband
264147|3|0|Craftsman's Writ: Wicked Leather Bracers
264148|3|0|Craftsman's Writ: Chimeric Vest
264149|3|0|Craftsman's Writ: Heavy Scorpid Helm
264150|3|0|Craftsman's Writ: Runic Leather Bracers
264151|3|0|Craftsman's Writ: Frostsaber Boots
264152|3|0|Craftsman's Writ: Wizardweave Turban
264153|3|0|Craftsman's Writ: Runecloth Bag
264154|3|0|Craftsman's Writ: Runecloth Boots
264155|3|0|Craftsman's Writ: Tuxedo Jacket
264156|3|0|Craftsman's Writ: Felcloth Boots
264157|3|0|Craftsman's Writ: Cenarion Herb Bag
264158|3|0|Craftsman's Writ: Shadoweave Mask
264159|3|0|Craftsman's Writ: Ghostweave Vest
264160|3|0|Craftsman's Writ: Soul Pouch
264163|1|12|Taming Rod
264201|1|9|Schematic: SAF-T Tabs
264202|1|9|Schematic: SAF-T Dynamite
264203|1|9|Schematic: SAF-T Copper Bomb
264204|1|9|Schematic: EZ-Thro Wrap
264205|1|9|Schematic: EZ-Thro Copper Bomb XL
264206|1|9|Schematic: No Slip SAF-T Padding
264207|1|9|Schematic: SAF-T Bronze Bomb
264208|1|9|Schematic: SAF-T Jumbo Dynamite
264209|1|9|Schematic: SAF-T Bell
264210|1|9|Schematic: Shafety Sheep
264211|1|9|Schematic: EZ-Thro Fireproof Fuse
264212|1|9|Schematic: EZ-Thro Bronze Mortar
264213|1|9|Schematic: EZ-Thro Grenade
264214|1|9|Schematic: SAF-T Casing
264215|1|9|Schematic: SAF-T Bomb
264216|1|9|Schematic: Emergency Field Cloak
264217|1|9|Schematic: Compact Critter Carrier
264218|1|9|Schematic: EZ-Thro Tru-Trigger
264219|1|9|Schematic: Tru-Trigger Frag Bomb
264220|1|9|Schematic: SAF-T Disposable Parachute
264221|1|9|Schematic: Gnomish Army Knife
264222|1|9|Schematic: Loot-A-Rang
264223|1|9|Schematic: SAF-T Tube
264224|1|9|Schematic: SAF-T Clever Dynamite
264225|1|9|Schematic: EZ-Thro Shell
264226|1|9|Schematic: EZ-Thro Thorium Grenade
264227|1|9|Schematic: EZ-Thro Dark Bomb
264228|1|9|Schematic: EZ-Thro Mana Bomb
264229|1|9|Schematic: EZ-Thro Field Transporter: Gadgetzan
264230|1|9|Schematic: SAF-T Emergency Ripper: Everlook
264231|1|9|Schematic: EZ and SAF Field Transporter: Mt. Hyjal
264232|1|9|Schematic: Ultrasafe Rechargeable Battery
264233|1|9|Schematic: Dimensional Transporter: Mt. Hyjal
264234|1|9|Schematic: Gnomish Poultryizer
264235|1|9|Schematic: Ultralight Goblin Glider
264236|1|9|Schematic: Gnomish Weather Machine
264237|1|9|Schematic: Stealthman 52
264238|1|9|Schematic: SAF-T Nitro Boosts
264239|1|9|Schematic: EZ-Thro Magnetic Displacer
264240|1|9|Schematic: SAF-T Teleport
264356|1|12|Iceclaw Bear Pendant
264360|1|12|Diemetradon Meat
264361|1|12|Pterrordax Meat
264693|1|12|Scarlet Crusade Attack Plans
264908|1|4|Ancient Heirloom
265065|1|12|Stolen Feed
265066|1|12|Hearty Stew
265105|1|12|Lady's Tear Moss
265140|1|12|Pristine Shriekling Feather
265141|1|12|Bloody Heirloom
265357|1|12|Snargl's Snout
265358|1|12|Stolen Ore
265359|0|4|Novice's Robe
265360|0|4|Novice's Pants
265475|1|12|Commander Haalien's Severed Head
265476|1|12|Ripped Missive
265732|1|12|Unfilled Brown Waterskin
265734|1|12|Full Brown Waterskin
265738|1|12|Sootfur's Pelt
265745|1|12|Twilight Missive
265747|1|12|Unfilled Red Waterskin
265748|1|12|Full Red Waterskin
265750|1|12|Chogg's Head
265751|1|12|Zac's Head
265772|1|12|Unfilled Blue Waterskin
265773|1|12|Full Blue Waterskin
265782|1|12|Mysterious Orders
265806|1|12|Riverweed
265808|1|12|Sweetberry
265810|1|12|Treat for Snufflesnout
265821|1|12|Twilight Key
265837|1|12|Kilgar's Head
265838|4|15|Green Skeletal Horse
265839|4|15|Dark Skeletal Horse
265840|4|15|Purple Skeletal Horse
265932|1|12|A Bloodsoaked Note
266148|1|12|Farmers' Mementos
266154|1|12|Lumber Tree Seed
266156|1|12|Fresh Manure
266157|1|12|Jumbo Crawfish Shell
266158|1|12|Taming Rod
266161|1|12|Tree Sprouting Kit
266251|1|12|Discarded Doll
266252|1|12|Damaged Locket
266253|1|12|Taming Rod
266254|1|12|Taming Rod
266424|1|12|Twilight Page
266425|1|12|Twilight Charm
266426|1|12|Filled Crystal Catalyst
266427|1|12|Field Marshal's Log
266428|1|12|Marshal Ryan's Crest
266433|1|12|Abandoned Belongings
266434|1|12|Resaan's Heirloom
266884|1|12|Robbie's Hat
266888|1|12|Prized Lion Hide
266889|1|12|Komuk's Warmaul
266891|1|12|Shipment to Farholde Keep
266895|1|12|Solomon's Plea to Farholde
266897|1|12|Saw Blade
266997|1|12|Fel Ash
267001|1|12|Ketharas' Empty Vial
267003|1|12|Ketharas' Filled Vial
267073|1|12|Twilight Finger Bone
267079|2|12|Staff of the Mountain
267086|1|12|Eye of Mugg
267087|1|12|Head of Zarmok
267089|1|13|Krol'dok Compound Key
267091|1|12|Cultist Ear
267104|1|12|Tome of Twilight
267137|1|12|Krol'dok Moulding
267138|1|12|Krol'dok Moulding
267178|1|12|Wheeler's Steed Feed
267223|1|12|Pawprint Tracing
267224|1|12|Tuft of Bloody Fur
267225|1|12|Gnawed Horse Skull
267234|1|12|Twilight Bangle
267244|1|12|Care Package
267256|0|15|Field Marshal's Log
267263|1|12|Bundle of Lion Pelts
267266|1|12|Mudfin Murloc Head
267272|1|12|Taming Rod
267289|1|12|Scarlet Dart Tuber
267298|1|12|Taming Rod
267336|1|12|Fluffy Wolf Fur
267337|1|12|Fresh Pine Needles
267341|1|0|Sweetpaw Jam
267361|1|12|Enchanted Silver Ingot
267362|1|12|Pyrewood Blacksmith's Hammer
267412|1|13|Fenris Isle Key
267413|1|12|Gnomeregan Archival Data
267414|1|12|Pristine Leopard Pelt
267415|1|12|Stolen Blasting Powder
267416|1|12|Toughened Boar Hide
267429|1|12|Fox-Catching Net
267454|1|12|Trevan's Weapon Notes
267474|1|0|Galeswept Forestshroom
267489|1|12|Stolen Tool
267630|1|12|Tuft of Renalard's Fur
268035|1|12|Satchel of Cursed Mementos
268036|1|12|Satchel of Mementos
268052|1|12|Barnacle Encrusted Blade
268054|2|12|A Curious Blade
268109|1|15|Musical Gustjumper
268192|1|12|Bundle of Blacksmithing Materials
268298|1|12|Concoction of Cleansing
268336|1|12|Improved Concoction of Cleansing
268341|1|12|Rot-Covered Harpoon
268344|1|12|Saltwater Murloc Eye
268345|1|12|Sand Crawler Meat
268346|1|12|Eastsea Powder Keg
268359|1|12|Ott's Masterwork
268415|2|7|Commonplace Herb Seeds
268416|2|7|Uncommon Herb Seeds
268417|2|7|Unusual Herb Seeds
268418|2|7|Scarce Herb Seeds
268421|1|12|Southern Watch Gnoll Report
268422|1|12|Velvet of Kala'th's Horn
268423|1|12|Whisker of Shalla'kal
268484|2|2|Moonsilver Blade
268502|1|15|Tiny Bronze Whelpling
268503|1|15|Tiny Azure Whelpling
268505|1|12|Remote Explosive Charge
268506|1|12|Lamora's Loot
268507|1|12|Broken Staff
268516|1|12|Twilight Scouting Report
268518|1|12|Head of the Baron
268520|1|12|Lamora's Key
268521|1|12|Swineherd's Staff
268535|1|12|Bloodied Insignia
268536|1|12|Bundle of Hay
268540|1|12|Bloodied Insignia
268548|1|12|Empty Powder Keg
268549|1|12|Bundle of Boar Meat
268558|1|12|Trogg's Lucky Rock
268559|1|12|Leopard's Head
268560|1|12|Troll's Pendant
268573|1|12|Reanimator's Amulet
268579|1|15|Crest of Lordaeron
268580|1|12|Intact Limbs
268581|1|12|Scoutmaster's Eye
268582|1|12|Corrupted Totems
268586|1|12|Trapclaw's Pincer
268632|1|12|Beast Entrails
268633|1|12|Sea Monster's Head
268646|1|12|Amberhall's Soulstone
268647|1|12|Big Ball o' Bait
268664|1|12|Rotflesh Mushroom
268675|1|12|Refined Concoction of Cleansing
268677|1|12|Barkskin Purification Tonic
268705|1|12|Blood and Battle
268796|1|15|Smuggled Goods
268801|1|12|Bottle of Whispering Elixir
268805|1|12|Tazzik's Sweaty Shirt
268810|1|12|Ruzzgot's Shipment
268811|1|12|Friz's Secret Stash
268812|1|12|Whispering Horror Residue
268813|1|12|Fel Ash Sample
268814|0|15|Sludgy Bits
268815|0|15|Bone Fragments
268816|1|12|Surplus Crops
268824|1|12|The Friz Special
268825|1|12|Bottle of Whispers
268829|0|4|Chef's Hat
268873|4|4|Defender of the Barkskin
268879|1|15|Uber Diablo Stone
268880|1|0|"Secret" Bait
268881|1|0|Perishable Minor Healing Potion
268882|1|0|Perishable Lesser Healing Potion
268883|1|0|Perishable Healing Potion
268912|1|0|Expiring Crab Cake
268913|1|0|Expiring Crocolisk Steak
268967|1|12|Token of the Wild King
268990|1|12|Pristine Fel-Slime Crystal
268997|1|12|Wormwing Pinfeather
268998|1|12|Omnuron's Spear
269000|1|15|SI:7 Disguise Kit
269008|1|12|Corrupted Grovewalker Sap
269011|1|12|Ash-tainted Sap
269013|1|12|Altered Concoction of Cleansing
269025|2|12|Ceremonial Mastic
269233|1|12|Ashen Infused Crystal
269244|1|12|Calcified Excrement
269246|1|12|Warped Metal Scrap
269247|1|15|Inert Phylactery
269257|1|12|Skullbasher
269326|5|12|NOT USED
269327|0|2|Edge of Oblivion
269351|1|12|Executioner's Mace
269501|2|4|Elven Chain Wristguards
269502|2|4|Dwarven Plate
269503|2|4|Poacher Boots
269504|1|1|Smoking Satchel
269671|4|15|Swift Empyrean Galestrider
269673|4|15|Swift Regal Galestrider
269678|4|15|Swift Stormy Galestrider
269681|3|15|Empyrean Galestrider
269682|3|15|Regal Galestrider
269683|3|15|Stormy Galestrider
269715|1|12|Savannah Lion Hide
269716|2|2|Keen Skinning Knife
269717|2|2|Wildgore Greatsword
269718|1|12|Bundle of Hides
269719|1|12|Trapped Game
269739|0|15|Bloody Tuft of Fur
269741|2|4|Scented Runewood Brooch
269742|2|2|Walton's Second-Favorite Gun
269749|1|12|Headhunter's Head
269757|1|12|Battered Zeppelin Parcel
269758|1|15|Quest Reward Placeholder
269759|1|15|Quest Reward Placeholder
269773|1|12|Twilight Missive
269774|1|12|Unusual Ooze Vial
269777|1|12|Quicklatch Sparker
269810|1|12|Scrapper's Salvage
269830|1|15|Snowy Wolf Pup
269900|2|15|Centaur Banner Deployment Device
269901|2|9|Schematic: Centaur Banner Deployment Device
269902|1|0|Hoof-Shaped Foot Pedal
269903|2|9|Schematic: Hoof-Shaped Foot Pedal
269920|1|12|Hyjal Owl Egg
269944|1|12|Bag of Enchanted Seeds
269990|1|12|Crystal Catalyst
269997|1|12|Bundle of Candles
269998|1|12|Sacred Stag Bundle
270000|2|4|Apprentice Wizard's Gown
270004|2|4|Murloc-hide Gloves
270006|2|4|Boots of the People's Militia
270007|2|4|Worn Miner's Waistcord
270010|2|4|Raptorcrest Bracers
270011|2|4|Embroidered Leggings
270012|2|4|Miner's Workgloves
270013|2|4|Miner's Workboots
270014|2|4|Deerhide Pants
270017|2|1|Hunting Satchel
270019|2|4|Loch Walkers
270020|2|4|Gnollhide Pants
270022|2|4|Archaeologist's Gown
270028|2|4|Harpy Bangles
270033|2|4|Demonhide Bracers
270034|2|4|Shadow Gauntlets
270035|2|4|Reclaimer's Robes
270037|2|4|Smouldering Leggings
270038|2|4|Runed Gauntlets
270039|2|4|Raptorclaw Shoulders
270044|2|4|Darkshire Shoulderguards
270046|2|4|Ethereal Mantle
270048|2|2|Uthil's Cudgel
270049|2|2|Mavoris's Warstaff
270050|2|4|Fury Ring
270051|2|4|Ladimore Heirloom Ring
270052|2|4|Swamp Ring
270053|2|4|Ring of Ruin
270056|2|4|Stromgarde Librarian Leggings
270057|2|4|Stromgarde Operative Pants
270065|2|4|Farseer's Forgotten Shield
270066|2|4|Tower Boots
270067|2|4|Wild Headdress
270068|2|4|Stromgarde Bracers
270069|2|2|Mindslicer
270070|2|2|Madman's Blade
270071|2|2|Dark Hearted Hammer
270072|2|4|Alterac Assassin's Gloves
270073|2|4|Stromgarde Cuffs
270076|2|4|Tidal Bracers
270077|2|4|Undertow Legguards
270079|2|4|Witchdoctor's Dress
270080|2|4|Arathi Armbands
270082|2|4|Ceremonial Gown
270083|2|4|Blooded Pants
270084|2|2|Master Hunter's Wand
270085|2|2|Master Hunter's Spellsword
270086|2|4|Oversized Ogre's Mittens
270087|2|4|Thick Ogre's Belt
270088|2|2|Thane's Hammer
270089|2|4|Ironforge Agent's Gloves
270090|2|4|Beggar's Leggings
270091|2|4|Seadog's Battered Cuffs
270092|2|2|Blackwater Scimitar
270093|2|4|Blackwater Cap
270094|2|4|Black Whelp Boots
270096|2|4|Rebel Breastplate
270097|2|4|Archer's Leggings
270100|2|4|Freebooter's Armband
270101|2|4|Gnomish Floatation Device
270102|2|4|Projectile Redirectors
270103|2|4|Reloading Assist Armbands
270104|2|4|Stonewalker's Slippers
270105|2|4|Protector's Armguards
270106|2|2|Vicious Throwing Stars
270107|2|2|Bloodstained Longbow
270108|2|2|Bloodied Longmace
270109|2|4|Smotts' Pinky Ring
270110|2|4|First Mate's Armguards
270111|2|4|Forest Troll Leggings
270112|2|4|Gryphon Rider's Crop
270113|2|4|Singed Cloth Robe
270114|2|4|Dragonscale Pants
270118|3|4|Cindercloth Gown
270122|2|4|Yesterday's Pants
270151|1|12|Benedict's Orders
270180|1|12|Horrible Rootcore
270181|1|12|[DNT] REUSE
270225|2|4|Jewel of the Guard Captain
270226|2|4|Golden Banana
270257|2|15|Captain Sander's Locker
270270|2|4|Scale of the Tidebender
270275|2|4|Cleansed Vilebranch Medallion
270276|2|4|Cleansed Vilebranch Icon
270298|1|12|Unholy Icon
270302|1|12|Chakuyak's Pelt
270305|1|12|Brinescale Trident
270308|1|12|The First Tablet of I'lalai
270309|1|12|The Second Tablet of I'lalai
270310|1|12|The Third Tablet of I'lalai
270311|1|12|The Fourth Tablet of I'lalai
270312|1|15|Translated Tale of I'lalai
270313|1|15|Tale of I'lalai in Zandali
270332|1|15|Fredd's Head
270333|1|12|Voodoo-Infused Artifact
270334|1|4|Sweat-Stained Shirt
270338|1|12|Beacon of Moonlight
270339|1|12|Bundle of I'lalai Findings
270340|1|12|Savage Coast Report Bundle
270343|1|12|I'lalai Fetish
270435|1|12|Rudolph Gelhardt's Head
270436|1|12|Rudolph Gelhardt's Head
270865|1|12|Titan Relic
270866|1|12|Titan Relic
270868|3|15|Dwarven Tradeskill Signpost
270870|3|15|Orcish Tradeskill Signpost
270877|2|15|Alchemy Sign
270878|2|15|Blacksmithing Sign
270879|2|15|Cooking Sign
270880|2|15|Enchanting Sign
270881|2|15|Engineering Sign
270882|2|15|Leatherworking Sign
270883|2|15|Tailoring Sign
270887|3|15|Advertising License Application
270888|3|15|Advertising License Application
270896|1|12|Massive Pile of Forms
270897|1|12|Massive Pile of Completed Forms
270901|1|12|Reed-woven Heart
271100|1|12|Thicket Raptor Meat
271220|1|12|Ephemeral Essence
271343|1|15|Note Scrap
271350|1|12|Tortured Soul
271425|1|12|Blademaster's Banner
271431|1|12|Fresh Apple
271432|1|12|Coyote Pelt
271611|1|12|Cubic Draconia
271612|1|12|Head of Scaldaron
271613|1|12|Head of Scaldaron
271618|1|4|Rejected Roses
271620|1|12|Foreman's Crate
271621|2|15|Alchemy Certification
271622|2|15|Blacksmithing Certification
271624|2|15|Enchanting Certification
271625|2|15|Engineering Certification
271626|2|15|Leatherworking Certification
271627|2|15|Tailoring Certification
271629|1|15|Wood Bundle
271630|1|12|Makeshift Stickin' Spear
271639|1|12|Makeshift Stickin' Spear
271646|0|15|How to Make Friend
271647|0|15|Once Used Shoe
271648|0|15|Ogre Tooth Cleaner
271650|1|12|Crawler Spittle
271653|1|12|Goblin Degreaser
271654|1|12|Expired Poison
271655|1|4|Thendal Apprentice's Shirt
271657|1|12|Fresh Chum
271658|0|4|Thendal Apprentice's Pants
271659|1|4|Thendal Apprentice's Boots
271661|1|4|Thendal Novice's Boots
271662|0|4|Thendal Novice's Pants
271663|1|4|Thendal Novice's Shirt
271664|2|2|Hornbeam Heft
271665|1|4|Thendal Survivalist's Boots
271666|0|4|Thendal Survivalist's Pants
271667|2|2|Ironwood Destroyer
271668|1|4|Thendal Survivalist's Shirt
271669|1|4|Thendal Warrior's Shirt
271670|2|4|Curl of Life
271671|1|4|Thendal Warrior's Boots
271672|0|4|Thendal Warrior's Pants
271673|1|4|Grove Scoundrel's Boots
271674|0|4|Grove Scoundrel's Pants
271675|1|4|Grove Scoundrel's Shirt
271716|3|4|Explorer's League Dustcover
271719|3|4|Furs of the Earthen Ring
271720|3|4|Crocolisk Skin Gaiter
271721|1|13|Krol'dok Ogre Key
271722|1|4|Shen'dorei Magister's Belt
271723|1|4|Shen'dorei Magister's Boots
271724|1|4|Shen'dorei Magister's Cloak
271725|1|4|Shen'dorei Magister's Robe
271726|1|4|Shen'dorei Magister's Gloves
271727|1|4|Shen'dorei Magister's Helm
271728|1|4|Shen'dorei Magister's Leggings
271729|1|4|Shen'dorei Magister's Vest
271730|1|4|Shen'dorei Magister's Pauldrons
271731|1|0|Ensemble: Shen'dorei Magister's Garb
271732|2|4|Dirt-Heavy Bracers
271733|1|4|Shen'dorei Peacekeeper's Belt
271734|1|4|Shen'dorei Peacekeeper's Boots
271735|1|4|Shen'dorei Peacekeeper's Cloak
271736|1|4|Shen'dorei Peacekeeper's Robe
271737|1|4|Shen'dorei Peacekeeper's Gloves
271738|1|4|Shen'dorei Peacekeeper's Helm
271739|1|4|Shen'dorei Peacekeeper's Leggings
271740|2|4|Knife-Polishing Rag
271742|1|4|Shen'dorei Peacekeeper's Vest
271743|1|4|Shen'dorei Peacekeeper's Pauldrons
271744|1|0|Ensemble: Shen'dorei Peacekeeper's Garb
271745|1|15|Bloody Map
271746|1|4|Shen'dorei Skyseer's Belt
271747|1|4|Shen'dorei Skyseer's Boots
271748|1|4|Shen'dorei Skyseer's Cloak
271749|1|4|Shen'dorei Skyseer's Robe
271750|1|4|Shen'dorei Skyseer's Gloves
271751|1|4|Shen'dorei Skyseer's Helm
271752|1|4|Shen'dorei Skyseer's Leggings
271753|1|4|Shen'dorei Skyseer's Vest
271754|1|4|Shen'dorei Skyseer's Pauldrons
271755|1|0|Ensemble: Shen'dorei Skyseer's Garb
271756|1|4|Al'Aketh Zealot's Belt
271757|1|4|Al'Aketh Zealot's Boots
271758|1|4|Al'Aketh Zealot's Cloak
271759|1|4|Al'Aketh Zealot's Robe
271760|1|4|Al'Aketh Zealot's Gloves
271761|1|4|Al'Aketh Zealot's Helm
271762|1|4|Al'Aketh Zealot's Leggings
271763|1|4|Al'Aketh Zealot's Vest
271764|1|4|Al'Aketh Zealot's Pauldrons
271765|1|0|Ensemble: Al'Aketh Zealot's Garb
271766|3|2|Heavehammer
271767|3|2|Healer's Staff
271769|2|4|Daewyn's Girdle
271770|1|12|Explorers' League Cartographer's Kit
271771|1|12|Drained Crystal Fragment
271776|1|12|Glade Viper Venom
271777|1|12|Gnawed Skull
271778|1|12|Intact Tallstrider Beak
271779|1|12|Tallstrider Call
271793|1|12|Plains Buzzard Feather
271794|2|2|Centaur Spear
271795|2|2|Wanderer's Broadsword
271796|2|2|Blade of the Magram Clan
271797|2|2|Staff of Revelations
271798|2|4|Desperate Barrier
271799|2|2|Desert Crawler's Claw
271800|3|2|Scavenged Magram Armament
271801|3|2|Abandoned Ferocity
271802|3|2|Bludgeon of Betrayed Virtues
271803|3|2|Greatstaff of the Necrokhans
271804|3|2|Soulsplatter Mace
271805|3|4|Thrice-Damned Effigy
271806|2|4|Survivor's Amulet
271807|2|4|Weathered Necklace
271808|2|4|Scavenger's Ring
271809|2|4|Desolate Band
271810|3|4|Corpsefeeder's Shedding
271811|3|4|Clacking Carapace Spaulders
271812|3|4|Discarded Circlet
271822|1|12|Frothing Mug
271823|1|12|Wildflower
271828|1|12|Ghostmaw's Fang
271870|1|15|Lump of Coal
271871|4|0|Gift of Galloping
271872|1|12|Broken Staff of Incinerator Gar'im
271877|1|12|Wood Bundle
271879|1|12|Eye of Endless Influence
271880|2|12|Activated Brimstone Carving
271882|2|12|Pile of Pylon Parts
271892|1|12|Good Rock
271893|0|15|Bad Rock
271894|1|12|Fiery Crystal
271898|1|12|Charged Crystal
271902|1|12|Noxious Crystal
271903|3|4|Enriched Seal
271904|3|4|Volunteer's Lucky Seal
271905|3|4|Enriched Seal
271906|3|4|Volunteer's Lucky Seal
271908|3|4|Theramore Signet
271909|3|4|Theramore Signet
271910|3|4|Theramore Signet
271911|3|4|Theramore Signet
271912|1|12|Moist Crystal
271913|3|4|Militant's Band
271914|3|4|Militant's Band
271915|3|4|Militant's Band
271916|3|4|Militant's Band
271917|3|4|Seal of the Expedition
271918|3|4|Seal of the Expedition
271919|3|4|Seal of the Expedition
271920|3|4|Seal of the Expedition
271940|4|4|Theramore Gauntlets
271941|4|4|Theramore Gauntlets
271945|4|4|Theramore Handwraps
271946|4|4|Theramore Handwraps
271955|4|4|Theramore Pauldrons
271965|0|2|Jewelcrafting Chisel
271972|1|12|Partially Digested Journal Page
271992|2|12|Phantasmal Blade
271993|0|2|Monster Weapon
271994|1|15|Undermine Satchel
272000|3|15|Golden Statue
272001|2|15|Gold Ring
272004|1|12|Marsh Gas Vial
272011|1|15|Activated Ogre Lightning Rod
272014|2|15|Silver Necklace
272015|1|15|Huge Quartz Gem
272016|1|15|Gold Nugget
272017|3|12|Nefarion's Remit
272018|3|12|Overseer's License
272019|3|12|Bronzebeard Wedding Contract
272020|3|12|Felvine Seed
272021|3|12|Ancient Memento
272022|3|12|Earthstone Diamond Pinky Ring
272023|3|12|Headmaster's Records
272024|3|12|Grain Shipment Records
272025|3|12|Dathrohan's Correspondence
272026|3|12|Ysera's Tear
272027|3|12|Mark of Xavius
272028|3|12|Freya's Sigil
272053|1|0|Darkspear Islands Field Ration
272054|1|0|Darkspear Islands Iron Ration
272055|1|0|Darkspear Islands Enriched Ration
272056|1|0|Darkspear Islands Silk Bandage
272057|1|0|Darkspear Islands Mageweave Bandage
272058|1|0|Darkspear Islands Runecloth Bandage
272059|3|4|Darkspear Voodoo Seal
272060|3|4|Relentless Raider's Seal
272061|3|4|Darkspear Voodoo Seal
272062|3|4|Relentless Raider's Seal
272064|3|4|Insurgent's Band
272065|3|4|Insurgent's Band
272066|3|4|Insurgent's Band
272067|3|4|Insurgent's Band
272068|3|4|Darkspear Signet
272069|3|4|Darkspear Signet
272070|3|4|Darkspear Signet
272071|3|4|Darkspear Signet
272072|3|4|Darkspear Warding Pendant
272073|3|4|Darkspear Warding Pendant
272074|3|4|Darkspear Warding Pendant
272075|3|4|Darkspear Warding Pendant
272095|4|4|Raider Gauntlets
272096|4|4|Raider Gauntlets
272097|4|4|Raider Handwraps
272098|4|4|Raider Handwraps
272105|4|4|Darkspear Pauldrons
272124|1|15|Translated Tale of I'lalai
272126|1|12|Makeshift Bandages
272127|1|12|Drinking Water Sample
272151|2|15|Damaged Undermine Supply Crate
272179|2|2|Greatsword of Great Pasts
272180|2|2|Spectral Magister's Commission
272181|2|2|Phantasmal Shiv
272184|2|4|Amulet of Vengeance
272185|2|4|Amulet of Forgiveness
272186|3|4|Overgrown Cuffs
272187|3|4|Thornplated Cord
272190|1|12|Gronok's Key
272313|2|12|Ancient Hilt
272314|1|12|Neutralizing Concoction
272319|2|12|Tattered Note
272394|4|4|Penitent's Cinch
272395|4|4|Assassin's Waistguard
272396|4|4|Shifter's Belt
272397|4|4|Ranger's Belt
272398|4|4|Caretaker's Cord
272399|4|4|Stormseeker's Girdle
272401|4|4|Elunite Cord
272402|4|4|Prophet's Waistcord
272403|4|4|Valiant's Waistguard
272404|4|4|Vindicator's Belt
272405|4|4|Redeemer's Waistcord
272406|3|4|Channeler's Ring
272407|3|4|Blessed Band of Light
272408|3|4|Cutthroat's Signet
272409|3|4|Ring of Awareness
272410|4|4|Windseeker's Belt
272413|3|4|Drape of Recovery
272427|3|4|Howling Idol
272428|3|4|Enraged Idol
272429|3|4|Idol of Synthesis
272430|3|4|Swarming Idol
272431|3|4|Tidal Totem
272432|3|4|Totem of the Storm
272433|3|4|Burning Totem
272434|3|4|Sentinel's Libram
272435|3|4|Libram of Law
272436|3|4|Libram of Economy
272437|3|4|Adaptive Combat Assistant
272438|3|4|Weakness Analyzer
272439|3|4|Serenity Field
272440|3|4|Defender's Grip Stabilizer
272448|1|12|Purified Kor Gem
272449|1|4|Scout's Tabard
272450|1|4|Stone Guard's Herald
272451|3|4|Sergeant's Cloak
272452|4|2|Premier High Warlord's Blade
272453|3|4|Premier Magus Footwraps
272454|3|4|Premier Magus Cuffs
272455|3|4|Premier Magus Gloves
272456|3|4|Premier Magus Belt
272457|3|4|Premier Magus Hood
272458|3|4|Premier Magus Pants
272459|3|4|Premier Magus Robes
272461|3|4|Premier Kodohide Armguards
272462|3|4|Premier Dragonhide Boots
272463|3|4|Premier Dragonhide Waistband
272464|3|4|Premier Kodohide Gauntlets
272465|3|4|Premier Shadowhide Armguards
272467|3|4|Premier Shadowhide Vices
272468|3|4|Premier Shadowhide Girdle
272469|3|4|Premier Dragonhide Spaulders
272470|3|4|Premier Dragonhide Trousers
272471|3|4|Premier Dragonhide Helm
272472|3|4|Premier Dragonhide Breastplate
272473|3|4|Premier Shadowhide Hauberk
272474|3|4|Premier Shadowhide Headguard
272475|3|4|Premier Shadowhide Mantle
272476|3|4|Premier Shadowhide Leggings
272477|3|4|Premier Mortarplate Boots
272478|3|4|Premier Mortarplate Gloves
272479|3|4|Premier Mortarplate Armor
272480|3|4|Premier Mortarplate Headguard
272481|3|4|Premier Mortarplate Legguards
272483|3|4|Premier Chain Bracers
272484|3|4|Premier Mail Walkers
272485|3|4|Premier Linked Grips
272486|3|4|Premier Mail Helm
272487|3|4|Premier Mail Chestpiece
272488|3|4|Premier Linked Leggings
272489|3|4|Premier Linked Shoulders
272490|3|4|Premier Chain Breastplate
272492|3|4|Premier Chain Leggings
272494|3|4|Premier Chain Girdle
272495|3|4|Premier Chain Gauntlets
272496|3|4|Premier Chain Boots
272497|3|4|Premier Linked Wristguards
272498|4|4|Premier Warlord's Magus Cowl
272499|4|4|Premier General's Magus Trousers
272500|4|4|Premier Warlord's Magus Raiment
272501|4|4|Premier General's Magus Amice
272502|4|4|Premier Legionnaire's Magus Sash
]==],
[==[
272503|4|4|Premier Legionnaire's Magus Cuffs
272504|4|4|Premier Centurion's Magus Boots
272505|4|4|Premier Champion's Magus Handguards
272506|4|4|Premier Warlord's Mortarplate Armor
272507|4|4|Premier Warlord's Mortarplate Headpiece
272508|4|4|Premier General's Mortarplate Leggings
272509|4|4|Premier General's Mortarplate Shoulders
272510|4|4|Premier Centurion's Mortarplate Boots
272511|4|4|Premier Legionnaire's Mortarplate Armguards
272512|4|4|Premier Legionnaire's Mortarplate Girdle
272513|4|4|Premier Champion's Mortarplate Gauntlets
272514|4|4|Premier Warlord's Dragonhide Hauberk
272515|4|4|Premier Warlord's Dragonhide Helmet
272516|4|4|Premier General's Dragonhide Epaulets
272517|4|4|Premier General's Dragonhide Leggings
272518|4|4|Premier Legionnaire's Dragonhide Bracers
272519|4|4|Premier Centurion's Dragonhide Boots
272520|4|4|Premier Champion's Dragonhide Gloves
272521|4|4|Premier Legionnaire's Dragonhide Belt
272522|4|4|Premier Legionnaire's Shadowhide Girdle
272523|4|4|Premier Centurion's Shadowhide Treads
272524|4|4|Premier Legionnaire's Shadowhide Armsplints
272525|4|4|Premier Champion's Shadowhide Mitts
272526|4|4|Premier Warlord's Shadowhide Helm
272527|4|4|Premier General's Shadowhide Spaulders
272528|4|4|Premier Warlord's Shadowhide Breastplate
272529|4|4|Premier General's Shadowhide Legguards
272530|4|4|Premier Warlord's Chain Chestpiece
272531|4|4|Premier Warlord's Chain Helmet
272532|4|4|Premier General's Chain Legguards
272533|4|4|Premier General's Chain Shoulders
272534|4|4|Premier Centurion's Chain Sabatons
272535|4|4|Premier Legionnaire's Chain Wristguards
272536|4|4|Premier Champion's Chain Gloves
272537|4|4|Premier Legionnaire's Chain Girdle
272538|4|4|Premier Centurion's Linked Boots
272539|4|4|Premier Champion's Linked Gauntlets
272540|4|4|Premier Legionnaire's Linked Waistband
272541|4|4|Premier Legionnaire's Linked Bracers
272542|4|4|Premier Warlord's Linked Armor
272543|4|4|Premier Warlord's Linked Helm
272544|4|4|Premier General's Linked Leggings
272545|4|4|Premier General's Linked Spaulders
272548|3|4|Premier Felweave Robe
272549|3|4|Premier Felweave Shoulders
272550|3|4|Premier Felweave Belt
272551|3|4|Premier Felweave Bracers
272552|3|4|Premier Felweave Boots
272553|3|4|Premier Felweave Gloves
272554|4|4|Premier Centurion's Felweave Boots
272555|4|4|Premier Legionnaire's Felweave Bracers
272556|4|4|Premier Champion's Felweave Gloves
272557|4|4|Premier Legionnaire's Felweave Belt
272558|4|4|Premier General's Felweave Mantle
272559|4|4|Premier Warlord's Felweave Hood
272560|4|4|Premier Warlord's Felweave Robe
272561|4|4|Premier General's Felweave Pants
272562|3|4|Premier Satin Cowl
272563|3|4|Premier Satin Trousers
272564|3|4|Premier Satin Vestments
272565|3|4|Premier Satin Shoulderpads
272566|3|4|Premier Satin Sash
272567|3|4|Premier Satin Cuffs
272568|3|4|Premier Satin Boots
272569|3|4|Premier Satin Gloves
272570|4|4|Premier Centurion's Satin Boots
272571|4|4|Premier Legionnaire's Satin Bracers
272572|4|4|Premier Champion's Satin Gloves
272573|4|4|Premier Legionnaire's Satin Cinch
272574|4|4|Premier General's Satin Mantle
272575|4|4|Premier Warlord's Satin Cowl
272576|4|4|Premier Warlord's Satin Robes
272577|4|4|Premier General's Satin Leggings
272578|3|4|Premier Sergeant's Cloak
272579|3|4|Premier Mortarplate Bracers
272580|3|4|First Sergeant's Plate Bracers
272581|3|4|First Sergeant's Mail Wristguards
272582|3|4|Premier Dragonhide Armguards
272589|3|4|Premier Sergeant's Cape
272591|4|4|Premier High Warlord's Shield Wall
272592|4|2|Premier High Warlord's Cleaver
272593|4|2|Premier High Warlord's Battle Axe
272594|4|2|Premier High Warlord's Recurve
272595|4|2|Premier High Warlord's Crossbow
272596|4|2|Premier High Warlord's Razor
272597|4|2|Premier High Warlord's Right Claw
272598|4|2|Premier High Warlord's Left Claw
272599|4|2|Premier High Warlord's Street Sweeper
272600|4|2|Premier High Warlord's Bludgeon
272601|4|2|Premier High Warlord's Pulverizer
272602|4|2|Premier High Warlord's Pig Sticker
272603|4|2|Premier High Warlord's War Staff
272604|4|2|Premier High Warlord's Greatsword
272606|3|4|Premier Kodohide Treads
272608|3|4|Premier Shadowhide Walkers
272609|3|4|Premier Linked Greaves
272611|3|4|Premier Silken Walkers
272614|3|4|Premier Dragonhide Grips
272617|3|4|Premier Mail Vices
272619|3|4|Premier Silken Handwraps
272625|3|4|Premier Linked Hauberk
272626|3|4|Premier Kodohide Chestpiece
272627|3|4|Premier Kodohide Leggings
272630|3|4|Premier Felweave Legguards
272634|3|4|Premier Silken Tunic
272636|3|4|Premier Mail Legguards
272637|3|4|Premier Mortarplate Shoulders
272640|3|4|Premier Chain Shoulders
272641|3|4|Premier Kodohide Headguard
272642|3|4|Premier Kodohide Shoulders
272643|3|4|Premier Felweave Cowl
272647|3|4|Premier Linked Headguard
272648|3|4|Premier Mail Pauldrons
272649|3|4|Premier Silken Hood
272650|3|4|Premier Silken Mantle
272656|3|4|Premier Lunarhide Leggings
272657|3|4|Premier Dreadweave Legguards
272663|3|4|Premier Silken Legguards
272669|3|4|Premier Lunarhide Headguard
272670|3|4|Premier Lunarhide Shoulders
272671|3|4|Premier Dreadweave Cowl
272677|3|4|Premier Mooncloth Hood
272678|3|4|Premier Mooncloth Mantle
272680|3|4|Premier Magus Mantle
272681|4|2|Premier High Warlord's Battle Mace
272682|4|2|Premier High Warlord's Destroyer
272683|4|2|Premier High Warlord's Spellblade
272684|4|2|Premier High Warlord's Quickblade
272685|4|4|Premier High Warlord's Tome of Destruction
272686|4|4|Premier High Warlord's Tome of Mending
272693|4|2|Premier Grand Marshal's Longsword
272694|1|4|Private's Tabard
272695|1|4|Knight's Colors
272698|3|4|Premier Sergeant's Cloak
272699|3|4|Premier Sergeant's Cape
272700|3|4|Premier Silk Sash
272701|3|4|Premier Silk Boots
272702|3|4|Premier Silk Cuffs
272703|3|4|Premier Silk Gloves
272704|3|4|Premier Leather Boots
272705|3|4|Premier Beasthide Footwraps
272706|3|4|Premier Leather Bracers
272707|3|4|Premier Beasthide Armsplints
272708|3|4|Premier Leather Gauntlets
272709|3|4|Premier Beasthide Gloves
272710|3|4|Premier Leather Belt
272711|3|4|Premier Beasthide Girdle
272712|3|4|Premier Chainmail Girdle
272713|3|4|Premier Chainmail Boots
272715|3|4|Premier Chainmail Gauntlets
272716|3|4|Premier Plate Boots
272717|3|4|Premier Plate Gauntlets
272718|3|4|Premier Chevalier Sabatons
272719|3|4|Premier Chevalier Gauntlets
272720|3|4|Premier Chevalier Cinch
272721|3|4|Premier Chevalier Armsplints
272722|3|4|Premier Silk Raiment
272723|3|4|Premier Silk Leggings
272724|3|4|Premier Silk Spaulders
272725|3|4|Premier Silk Crown
272726|3|4|Premier Leather Armor
272727|3|4|Premier Leather Veil
272728|3|4|Premier Leather Legguards
272729|3|4|Premier Leather Spaulders
272730|3|4|Premier Beasthide Tunic
272731|3|4|Premier Beasthide Leggings
272732|3|4|Premier Beasthide Epaulets
272733|3|4|Premier Beasthide Shroud
272734|3|4|Premier Chainmail Hauberk
272735|3|4|Premier Chainmail Leggings
272736|3|4|Premier Chainmail Pauldrons
272737|3|4|Premier Chainmail Helmet
272738|3|4|Premier Plate Helm
272739|3|4|Premier Plate Chestguard
272740|3|4|Premier Plate Leggings
272741|3|4|Premier Plate Pauldrons
272742|3|4|Premier Chevalier Breastplate
272743|3|4|Premier Chevalier Headguard
272744|3|4|Premier Chevalier Leggings
272745|3|4|Premier Chevalier Shoulders
272746|4|4|Premier Knight-Champion's Silk Footwraps
272747|4|4|Premier Knight-Captain's Silk Bracers
272748|4|4|Premier Knight-Captain's Silk Sash
272749|4|4|Premier Lieutenant Commander's Silk Gloves
272750|4|4|Premier Field Marshal's Silk Coronet
272751|4|4|Premier Marshal's Silk Leggings
272752|4|4|Premier Field Marshal's Silk Vestments
272753|4|4|Premier Marshal's Silk Spaulders
272754|4|4|Premier Knight-Captain's Beasthide Bracers
272755|4|4|Premier Knight-Champion's Leather Footguards
272756|4|4|Premier Knight-Captain's Beasthide Waistguard
272757|4|4|Premier Lieutenant Commander's Beasthide Gauntlets
272758|4|4|Premier Marshal's Beasthide Spaulders
272759|4|4|Premier Marshal's Beasthide Legguards
272760|4|4|Premier Field Marshal's Beasthide Helmet
272761|4|4|Premier Field Marshal's Beasthide Breastplate
272762|4|4|Premier Field Marshal's Leather Chestpiece
272763|4|4|Premier Lieutenant Commander's Leather Handgrips
272764|4|4|Premier Field Marshal's Leather Mask
272765|4|4|Premier Marshal's Leather Leggings
272766|4|4|Premier Marshal's Leather Epaulets
272767|4|4|Premier Knight-Captain's Leather Cinch
272768|4|4|Premier Knight-Champion's Beasthide Boots
272769|4|4|Premier Knight-Captain's Leather Armsplints
272770|4|4|Premier Knight-Captain's Chainmail Bracers
272771|4|4|Premier Knight-Champion's Chainmail Boots
272772|4|4|Premier Lieutenant Commander's Chainmail Grips
272773|4|4|Premier Knight-Captain's Chainmail Girdle
272774|4|4|Premier Field Marshal's Chainmail Helm
272775|4|4|Premier Field Marshal's Chainmail Breastplate
272776|4|4|Premier Marshal's Chainmail Legguards
272777|4|4|Premier Marshal's Chainmail Spaulders
272778|4|4|Premier Knight-Captain's Chevalier Armguards
272779|4|4|Premier Knight-Captain's Chevalier Belt
272780|4|4|Premier Lieutenant Commander's Chevalier Gloves
272781|4|4|Premier Knight-Champion's Chevalier Boots
272782|4|4|Premier Field Marshal's Chevalier Chestplate
272783|4|4|Premier Field Marshal's Chevalier Faceguard
272784|4|4|Premier Marshal's Chevalier Legplates
272785|4|4|Premier Marshal's Chevalier Pauldrons
272786|4|4|Premier Field Marshal's Plate Armor
272787|4|4|Premier Field Marshal's Plate Helm
272788|4|4|Premier Marshal's Plate Legguards
272789|4|4|Premier Marshal's Plate Shoulderguards
272790|4|4|Premier Knight-Captain's Plate Bracers
272791|4|4|Premier Knight-Captain's Plate Girdle
272792|4|4|Premier Knight-Champion's Plate Boots
272793|4|4|Premier Lieutenant Commander's Plate Gauntlets
272794|3|4|Premier Dreadweave Boots
272795|3|4|Premier Dreadweave Bracers
272796|3|4|Premier Dreadweave Gloves
272797|3|4|Premier Dreadweave Belt
272800|3|4|Premier Dreadweave Robe
272801|3|4|Premier Dreadweave Mantle
272802|4|4|Premier Field Marshal's Dreadweave Coronal
272803|4|4|Premier Marshal's Dreadweave Leggings
272804|4|4|Premier Marshal's Dreadweave Shoulders
272805|4|4|Premier Field Marshal's Dreadweave Robe
272806|4|4|Premier Knight-Captain's Dreadweave Cuffs
272807|4|4|Premier Knight-Champion's Dreadweave Boots
272808|4|4|Premier Lieutenant Commander's Dreadweave Gloves
272809|4|4|Premier Knight-Captain's Dreadweave Sash
272810|3|4|Premier Voidcloth Boots
272811|3|4|Premier Voidcloth Cuffs
272812|3|4|Premier Voidcloth Gloves
272813|3|4|Premier Voidcloth Cord
272814|3|4|Premier Voidcloth Diadem
272815|3|4|Premier Voidcloth Leggings
272816|3|4|Premier Voidcloth Robes
272817|3|4|Premier Voidcloth Amice
272818|4|4|Premier Field Marshal's Voidcloth Headdress
272819|4|4|Premier Marshal's Voidcloth Pants
272820|4|4|Premier Marshal's Voidcloth Mantle
272821|4|4|Premier Field Marshal's Voidcloth Vestments
272822|4|4|Premier Knight-Captain's Voidcloth Bracers
272823|4|4|Premier Knight-Champion's Voidcloth Sandals
272824|4|4|Premier Lieutenant Commander's Voidcloth Gloves
272825|4|4|Premier Knight-Captain's Voidcloth Sash
272828|3|4|Premier Plate Wristguards
272830|3|4|Premier Chainmail Armguards
272834|3|4|Premier Dreamhide Armsplints
272835|3|4|Premier Lunarhide Armsplints
272838|4|4|Premier Grand Marshal's Aegis
272839|4|2|Premier Grand Marshal's Handaxe
272840|4|2|Premier Grand Marshal's Sunderer
272841|4|2|Premier Grand Marshal's Bullseye
272842|4|2|Premier Grand Marshal's Repeater
272843|4|2|Premier Grand Marshal's Dirk
272844|4|2|Premier Grand Marshal's Right Hand Blade
272845|4|2|Premier Grand Marshal's Left Hand Blade
272846|4|2|Premier Grand Marshal's Hand Cannon
272847|4|2|Premier Grand Marshal's Punisher
272848|4|2|Premier Grand Marshal's Battle Hammer
272849|4|2|Premier Grand Marshal's Glaive
272850|4|2|Premier Grand Marshal's Stave
272851|4|2|Premier Grand Marshal's Claymore
272852|3|4|Premier Luminous Breastplate
272853|3|4|Premier Luminous Leggings
272854|3|4|Premier Luminous Headguard
272855|3|4|Premier Luminous Shoulders
272856|4|2|Premier Grand Marshal's Mageblade
272857|4|2|Premier Grand Marshal's Warhammer
272858|4|2|Premier Grand Marshal's Demolisher
272859|4|2|Premier Grand Marshal's Swiftblade
272925|1|12|Ketharas' Note
272932|1|12|Parcel of Supplies
272936|1|12|Deadwood Key
272941|1|7|Thick Logs
272973|1|12|Drop of Stolen Life
272974|1|12|The Jewel of the Horizon
272976|0|15|Bent Wire
272977|1|12|Spare Part
273001|1|12|Gloomrise Toxin Sample
273002|1|12|Slime Ward - Fel Ash Experimentation Notes
273008|1|12|Fel-Slime Ooze
273015|1|12|Toxin Extractor
273050|1|15|Blackmaw Pouch
273085|2|9|Blueprint: Fermenter
273086|2|9|Blueprint: Anvil
273087|2|9|Blueprint: Journeyman Campfire
273092|2|9|Blueprint: Repair Bot
273096|2|9|Blueprint: Tanning Rack
273097|2|9|Blueprint: Rock Garden
273098|2|9|Blueprint: Field Guide
273099|2|9|Blueprint: Spinning Wheel
273101|2|9|Blueprint: Expert Campfire
273102|2|9|Blueprint: Cookie's Feast
273103|2|9|Blueprint: Arcane Salvager
273105|2|9|Blueprint: Toxin Study
273106|2|9|Blueprint: Greenhouse
273109|2|9|Blueprint: Trapper's Workbench
273112|2|9|Blueprint: Alchemy Laboratory
273113|2|9|Blueprint: Master Forge
273115|2|9|Blueprint: Iron Oven
273116|2|9|Blueprint: Arcane Forge
273117|2|9|Blueprint: Anarchist's Workbench
273118|2|9|Blueprint: Plague Doctor's Laboratory
273119|2|9|Blueprint: Fishing Hut
273120|2|9|Blueprint: Seed Hybridizer
273121|2|9|Blueprint: Sewing Machine
273122|2|9|Blueprint: Molten Foundry
273124|2|9|Blueprint: Loom
273125|2|15|Lich's Index Finger
273127|2|15|Golem Heart
273128|2|15|Maker's Spark
273129|2|15|Essence of Anarchy
273130|2|15|Undeath Engine
273131|2|15|Bottled Screams
273141|2|9|Blueprint: Fishing Rack
273164|1|12|Tarnished Highfeather Bangle
273168|1|12|Olvek's Guide to Tinctures, Tonics, and Toxins
273169|1|12|The Lost Magic of the Runemasters
273181|1|12|Crystalline Silk
273290|1|12|Bones of Frezzlie Popwhiz
273291|1|12|Bones of Tyaeha Darkoath
273292|1|12|Bones of Dazka Shadowsleep
273294|1|12|Sutara's Lasso
273295|1|7|Seasonal Fish Steaks
273296|1|12|Bag of Ashen Warlock Bones
273304|1|12|Prickly Pinecone
273308|1|12|Disease Ward - Fel Ash Experimentation Notes
273309|1|12|Vessel Ward - Fel Ash Experimentation Notes
273310|1|12|Alchemy Ward - Fel Ash Experimentation Notes
273318|1|15|Pack of Journeyman Supplies
273319|1|15|Pack of Apprentice Supplies
273320|1|15|Pack of Expert Supplies
273321|1|15|Pack of Artisan Supplies
273322|1|12|Watcher's Eye
273323|1|12|Slimy Pinecone
273324|3|4|Premier Mortarplate Girdle
273325|3|4|Premier Plate Girdle
273327|4|4|Premier Knight-Captain's Luminous Armguards
273328|4|4|Premier Knight-Captain's Luminous Belt
273329|4|4|Premier Lieutenant Commander's Luminous Gloves
273330|4|4|Premier Knight-Champion's Luminous Boots
273331|4|4|Premier Field Marshal's Luminous Chestplate
273332|4|4|Premier Field Marshal's Luminous Faceguard
273333|4|4|Premier Marshal's Luminous Legplates
273334|4|4|Premier Marshal's Luminous Pauldrons
273336|4|4|Premier Centurion's Mail Boots
273337|4|4|Premier Champion's Mail Gauntlets
273338|4|4|Premier Legionnaire's Mail Waistband
273339|4|4|Premier Legionnaire's Mail Bracers
273340|4|4|Premier Warlord's Mail Armor
273341|4|4|Premier Warlord's Mail Helm
273342|4|4|Premier General's Mail Leggings
273343|4|4|Premier General's Mail Spaulders
273344|4|4|Premier Centurion's Ringmail Boots
273345|4|4|Premier Champion's Ringmail Gauntlets
273346|4|4|Premier Legionnaire's Ringmail Waistband
273347|4|4|Premier Legionnaire's Ringmail Bracers
273348|4|4|Premier Warlord's Ringmail Armor
273349|4|4|Premier Warlord's Ringmail Helm
273350|4|4|Premier General's Ringmail Leggings
273351|4|4|Premier General's Ringmail Spaulders
273352|3|4|Premier Linked Girdle
273353|3|4|Premier Mail Wristguards
273355|3|4|Premier Ringmail Walkers
273356|3|4|Premier Ringmail Helm
273357|3|4|Premier Ringmail Chestpiece
273358|3|4|Premier Ringmail Vices
273359|3|4|Premier Ringmail Legguards
273360|3|4|Premier Ringmail Pauldrons
273361|3|4|Premier Ringmail Wristguards
273362|3|4|Premier Ringmail Girdle
273363|3|4|Premier Luminous Gauntlets
273364|3|4|Premier Luminous Armsplints
273365|3|4|Premier Luminous Sabatons
273366|3|4|Premier Luminous Cinch
273367|3|4|Premier Kodohide Waistband
273368|3|4|Premier Lunarhide Gloves
273369|3|4|Premier Lunarhide Girdle
273370|3|4|Premier Lunarhide Footwraps
273371|3|4|Premier Lunarhide Tunic
273372|3|4|Premier Mail Girdle
273373|3|4|Premier Dreamhide Leggings
273374|3|4|Premier Dreamhide Headguard
273375|3|4|Premier Dreamhide Shoulders
273377|3|4|Premier Dreamhide Gloves
273378|3|4|Premier Dreamhide Girdle
273379|3|4|Premier Dreamhide Footwraps
273380|3|4|Premier Dreamhide Tunic
273381|3|4|Premier Wyrmhide Armguards
273382|3|4|Premier Wyrmhide Gauntlets
273383|3|4|Premier Wyrmhide Treads
273384|3|4|Premier Wyrmhide Chestpiece
273385|3|4|Premier Wyrmhide Leggings
273386|3|4|Premier Wyrmhide Headguard
273387|3|4|Premier Wyrmhide Shoulders
273388|3|4|Premier Wyrmhide Waistband
273389|4|4|Premier Knight-Captain's Lunarhide Bracers
273390|4|4|Premier Knight-Captain's Lunarhide Waistguard
273391|4|4|Premier Lieutenant Commander's Lunarhide Gauntlets
273392|4|4|Premier Marshal's Lunarhide Spaulders
273393|4|4|Premier Marshal's Lunarhide Legguards
273394|4|4|Premier Field Marshal's Lunarhide Helmet
273395|4|4|Premier Field Marshal's Lunarhide Breastplate
273396|4|4|Premier Knight-Champion's Lunarhide Boots
273397|4|4|Premier Knight-Captain's Dreamhide Bracers
273398|4|4|Premier Knight-Captain's Dreamhide Waistguard
273399|4|4|Premier Lieutenant Commander's Dreamhide Gauntlets
273400|4|4|Premier Marshal's Dreamhide Spaulders
273401|4|4|Premier Marshal's Dreamhide Legguards
273402|4|4|Premier Field Marshal's Dreamhide Helmet
273403|4|4|Premier Field Marshal's Dreamhide Breastplate
273404|4|4|Premier Knight-Champion's Dreamhide Boots
273405|4|4|Premier Warlord's Wyrmhide Hauberk
273406|4|4|Premier Warlord's Wyrmhide Helmet
273407|4|4|Premier General's Wyrmhide Epaulets
273408|4|4|Premier General's Wyrmhide Leggings
273409|4|4|Premier Legionnaire's Wyrmhide Bracers
273410|4|4|Premier Centurion's Wyrmhide Boots
273411|4|4|Premier Champion's Wyrmhide Gloves
273412|4|4|Premier Legionnaire's Wyrmhide Belt
273413|4|4|Premier Warlord's Kodohide Hauberk
273414|4|4|Premier Warlord's Kodohide Helmet
273415|4|4|Premier General's Kodohide Epaulets
273416|4|4|Premier General's Kodohide Leggings
273417|4|4|Premier Legionnaire's Kodohide Bracers
273418|4|4|Premier Centurion's Kodohide Boots
273419|4|4|Premier Champion's Kodohide Gloves
273420|4|4|Premier Legionnaire's Kodohide Belt
273421|4|4|Premier Field Marshal's Mooncloth Headdress
273422|4|4|Premier Marshal's Mooncloth Pants
273423|4|4|Premier Marshal's Mooncloth Mantle
273424|4|4|Premier Field Marshal's Mooncloth Vestments
273425|4|4|Premier Knight-Captain's Mooncloth Bracers
273426|4|4|Premier Knight-Champion's Mooncloth Sandals
273427|4|4|Premier Lieutenant Commander's Mooncloth Gloves
273428|4|4|Premier Knight-Captain's Mooncloth Sash
273429|4|4|Premier Centurion's Silken Boots
273430|4|4|Premier Legionnaire's Silken Bracers
273431|4|4|Premier Champion's Silken Gloves
273432|4|4|Premier Legionnaire's Silken Cinch
273433|4|4|Premier General's Silken Mantle
273434|4|4|Premier Warlord's Silken Cowl
273435|4|4|Premier Warlord's Silken Robes
273436|4|4|Premier General's Silken Leggings
273443|3|4|Premier Mooncloth Boots
273444|3|4|Premier Mooncloth Cuffs
273445|3|4|Premier Mooncloth Gloves
273447|3|4|Premier Mooncloth Leggings
273448|3|4|Premier Mooncloth Robes
273449|3|4|Premier Mooncloth Cord
273450|3|4|Premier Silken Cuffs
273455|1|0|Template Vellum [DNT]
273458|1|0|Enchant Bracer - Inferior Stamina
273459|1|0|Enchant Chest - Inferior Stamina
273460|1|0|Enchant Chest - Minor Absorption
273461|1|0|Enchant Bracer - Minor Deflect
273462|1|0|Enchant Chest - Minor Intellect
273463|1|0|Enchant Cloak - Minor Resistance
273464|1|0|Enchant Bracer - Minor Stamina
273465|1|0|Enchant 2H Weapon - Minor Impact
273466|1|0|Enchant Chest - Lesser Stamina
273467|1|0|Enchant Bracer - Minor Spirit
273468|1|0|Enchant Cloak - Minor Protection
273469|1|0|Enchant Chest - Lesser Intellect
273470|1|0|Enchant Bracer - Minor Agility
273471|1|0|Enchant Bracer - Minor Strength
273472|1|0|Enchant Weapon - Minor Beastslayer
273473|1|0|Enchant Weapon - Minor Striking
273474|1|0|Enchant 2H Weapon - Lesser Intellect
273475|1|0|Enchant Chest - Stamina
273476|1|0|Enchant Bracer - Lesser Spirit
273477|1|0|Enchant Cloak - Lesser Fire Resistance
273478|1|0|Enchant Boots - Minor Stamina
273479|1|0|Enchant Boots - Minor Agility
273480|1|0|Enchant Shield - Minor Stamina
273481|1|0|Enchant 2H Weapon - Lesser Spirit
273482|1|0|Enchant Cloak - Minor Agility
273483|1|0|Enchant Cloak - Lesser Protection
273484|1|0|Enchant Shield - Lesser Protection
273485|1|0|Enchant Shield - Lesser Spirit
273486|1|0|Enchant Bracer - Lesser Stamina
273487|1|0|Enchant Weapon - Lesser Striking
273488|1|0|Enchant Cloak - Lesser Shadow Resistance
273489|1|0|Enchant 2H Weapon - Lesser Impact
273490|1|0|Enchant Bracer - Lesser Strength
273491|1|0|Enchant Chest - Lesser Absorption
273492|1|0|Enchant Chest - Intellect
273493|1|0|Enchant Gloves - Mining
273494|1|0|Enchant Gloves - Herbalism
273495|1|0|Enchant Gloves - Fishing
273496|1|0|Enchant Bracer - Lesser Intellect
273497|1|0|Enchant Chest - Minor Stats
273498|1|0|Enchant Shield - Lesser Stamina
273499|1|0|Enchant Cloak - Defense
273500|1|0|Enchant Boots - Lesser Agility
273501|1|0|Enchant Chest - Greater Stamina
273502|1|0|Enchant Bracer - Spirit
273503|1|0|Enchant Boots - Lesser Stamina
273504|1|0|Enchant Bracer - Lesser Deflection
273505|1|0|Enchant Bracer - Stamina
273506|1|0|Enchant Weapon - Lesser Beastslayer
273507|1|0|Enchant Weapon - Lesser Elemental Slayer
273508|1|0|Enchant Cloak - Fire Resistance
273509|1|0|Enchant Shield - Spirit
273510|1|0|Enchant Bracer - Strength
273511|1|0|Enchant Chest - Greater Intellect
273512|1|0|Enchant Boots - Lesser Spirit
273513|1|0|Enchant Shield - Lesser Block
273514|1|0|Enchant Weapon - Striking
273515|1|0|Enchant 2H Weapon - Impact
273516|1|0|Enchant Gloves - Skinning
273517|1|0|Enchant Chest - Lesser Stats
273518|1|0|Enchant Cloak - Greater Defense
273519|1|0|Enchant Cloak - Resistance
273520|1|0|Enchant Gloves - Agility
273521|1|0|Enchant Shield - Stamina
273522|1|0|Enchant Bracer - Intellect
273523|1|0|Enchant Boots - Stamina
273524|1|0|Enchant Gloves - Advanced Mining
273525|1|0|Enchant Bracer - Greater Spirit
273526|1|0|Enchant Chest - Superior Stamina
273527|1|0|Enchant Gloves - Advanced Herbalism
273528|1|0|Enchant Cloak - Lesser Agility
273529|1|0|Enchant Gloves - Strength
273530|1|0|Enchant Boots - Minor Speed
273531|1|0|Enchant Weapon - Fiery Weapon
273532|1|0|Enchant Shield - Greater Spirit
273533|1|0|Enchant Weapon - Demonslaying
273534|1|0|Enchant Chest - Superior Intellect
273535|1|0|Enchant Bracer - Deflection
273536|1|0|Enchant Shield - Frost Resistance
273537|1|0|Enchant Boots - Agility
273538|1|0|Enchant 2H Weapon - Greater Impact
273539|1|0|Enchant Bracer - Greater Strength
273540|1|0|Enchant Chest - Stats
273541|1|0|Enchant Weapon - Greater Striking
273542|1|0|Enchant Bracer - Greater Stamina
273543|1|0|Enchant Gloves - Riding Skill
273544|1|0|Enchant Gloves - Minor Haste
273545|1|0|Enchant Bracer - Greater Intellect
273546|1|0|Enchant Bracer - Superior Spirit
273547|1|0|Enchant Bracer - Superior Strength
273548|1|0|Enchant Bracer - Superior Stamina
273549|1|0|Enchant Gloves - Greater Agility
273550|1|0|Enchant Gloves - Greater Strength
273551|1|0|Enchant Cloak - Greater Resistance
273552|1|0|Enchant Cloak - Superior Defense
273553|1|0|Enchant Shield - Superior Spirit
273554|1|0|Enchant Shield - Greater Stamina
273555|1|0|Enchant Boots - Greater Stamina
273556|1|0|Enchant Boots - Greater Agility
273557|1|0|Enchant Boots - Spirit
273558|1|0|Enchant Chest - Greater Stats
273559|1|0|Enchant Chest - Major Stamina
273560|1|0|Enchant Chest - Major Intellect
273561|1|0|Enchant Weapon - Icy Chill
273562|1|0|Enchant 2H Weapon - Superior Impact
273563|1|0|Enchant Weapon - Superior Striking
273564|1|0|Enchant Weapon - Lifestealing
273565|1|0|Enchant Weapon - Unholy Weapon
273566|1|0|Enchant Weapon - Crusader
273567|1|0|Enchant 2H Weapon - Major Spirit
273568|1|0|Enchant 2H Weapon - Major Intellect
273569|1|0|Enchant Weapon - Winter's Might
273570|1|0|Enchant Weapon - Spell Power
273571|1|0|Enchant Weapon - Healing Power
273572|1|0|Enchant Weapon - Strength
273573|1|0|Enchant Weapon - Agility
273574|1|0|Enchant Bracer - Mana Regeneration
273575|1|0|Enchant Bracer - Healing Power
273576|1|0|Enchant Weapon - Mighty Spirit
273577|1|0|Enchant Weapon - Mighty Intellect
273578|1|0|Enchant Gloves - Threat
273579|1|0|Enchant Gloves - Shadow Power
273580|1|0|Enchant Gloves - Frost Power
273581|1|0|Enchant Gloves - Fire Power
273582|1|0|Enchant Gloves - Healing Power
273583|1|0|Enchant Gloves - Superior Agility
273584|1|0|Enchant Cloak - Greater Fire Resistance
273585|1|0|Enchant Cloak - Greater Nature Resistance
273586|1|0|Enchant Cloak - Stealth
273587|1|0|Enchant Cloak - Subtlety
273588|1|0|Enchant Cloak - Dodge
273589|1|0|Enchant 2H Weapon - Agility
273590|1|0|Enchant Weapon - Dismantle
273591|1|0|Enchant Chest - Retricutioner
273592|1|0|Enchant Shield - Law of Nature
273593|1|0|Enchant Chest - Living Stats
273594|1|0|Enchant Gloves - Holy Power
273595|1|0|Enchant Gloves - Arcane Power
273596|1|0|Enchant Bracer - Spell Power
273597|1|0|Enchant Bracer - Agility
273598|1|0|Enchant Off-Hand - Superior Intellect
273599|1|0|Enchant Off-Hand - Excellent Spirit
273600|1|0|Enchant Off-Hand - Wisdom
273601|1|0|Enchant 2H Weapon - Spellblasting
273602|1|0|Enchant Shield - Excellent Stamina
273604|1|0|Enchant Cloak - Agility
273605|1|0|Enchant Shield - Critical Strike
273606|1|0|Enchant Bracer - Greater Spellpower
273607|1|0|Enchant Weapon - Grand Crusader
273608|1|0|Enchant 2H Weapon - Grand Arcanist
273609|1|0|Enchant Weapon - Grand Sorcerer
273610|1|0|Enchant 2H Weapon - Grand Inquisitor
273611|1|0|Enchant Bracer - Minor Intellect
273612|1|0|Enchant Bracer - Minor Healing Power
273613|1|0|Enchant Bracer - Lesser Agility
273614|1|0|Enchant Bracer - Agility
273615|1|0|Enchant Bracer - Lesser Healing Power
273616|1|0|Enchant Bracer - Greater Agility
273617|1|0|Enchant 2H Weapon - Lesser Agility
273618|1|0|Enchant 2H Weapon - Lesser Strength
273619|1|0|Enchant Gloves - Advanced Skinning
273620|1|0|Enchant Bracer - Superior Agility
273621|1|0|Enchant 2H Weapon - Mighty Spell Power
273622|1|0|Enchant 2H Weapon - Mighty Healing Power
273623|1|0|Enchant Gloves - Superior Strength
273624|1|0|Enchant Gloves - Natural Power
273625|1|0|Enchant Bracer - Superior Intellect
273626|1|0|Enchant Bracer - Superior Deflection
273627|1|0|Enchant Weapon - Insight
273628|1|0|Enchant Weapon - Recovery
273629|1|0|Enchant Weapon - Revelation
273630|1|0|Enchant Necklace - Strength
273631|1|0|Enchant Necklace - Spell Power
273632|1|0|Enchant Necklace - Healing Power
273633|1|0|Enchant Necklace - Agility
273634|1|0|Enchant Necklace - Deflection
273635|1|0|Enchant Chest - Absorption
273636|1|7|Chef's Knife
273642|1|12|Ring of the Fallen Soldier
273654|2|4|Crystal Thread Cloak
273658|1|15|Bloody Parchment
273659|1|12|Bloody Parchment
273771|1|12|Sentinel's Sight
273772|1|12|Blackthorne Intelligence
273798|1|12|Ring of the Fallen Soldier
273799|1|12|Thomas's Ring
273800|2|4|Thomas's Ring
273801|1|12|Marn's Warding Incense
273812|1|4|Airy Magister's Shirt
273813|1|4|Airy Peacekeeper's Shirt
273814|1|4|Airy Skyseer's Shirt
273815|1|4|Airy Windseeker's Shirt
273816|1|4|Apprentice's Blouse
273822|0|2|Vengeance
273845|1|12|Faintly Glowing Staff
273852|1|12|Glowing Crystal
273857|1|12|Enchanted Branch
273875|2|4|Empyrean Treads
273876|2|4|Broken Cultist Gloves
273877|1|2|Windswept Shortbow
273878|4|4|[DNT] Crafted Tier Piece Placeholder
273879|1|2|Refined Shortbow
273883|1|12|Ca'zass's Head
273952|4|9|Pattern: Grovekeeper Trousers
273953|4|9|Pattern: Grovekeeper Grips
273954|4|9|Pattern: Grovekeeper Shoulderpads
273955|4|9|Pattern: Grovekeeper Stompers
273956|4|9|Pattern: Grovekeeper Kilt
273957|4|9|Pattern: Grovekeeper Mitts
273958|4|9|Pattern: Grovekeeper Mantle
273959|4|9|Pattern: Grovekeeper Sandals
273960|4|9|Pattern: Grovekeeper Legguards
273961|4|9|Pattern: Grovekeeper Handguards
273962|4|9|Pattern: Grovekeeper Pauldrons
273963|4|9|Pattern: Grovekeeper Boots
273964|4|9|Pattern: Grovekeeper Leggings
273965|4|9|Pattern: Grovekeeper Gauntlets
273966|4|9|Pattern: Grovekeeper Spaulders
273967|4|9|Pattern: Grovekeeper Treads
273968|4|9|Pattern: Wildstalker's Legguards
273969|4|9|Pattern: Wildstalker's Gauntlets
273970|4|9|Pattern: Wildstalker's Spaulders
273971|4|9|Pattern: Wildstalker's Greaves
273972|4|9|Pattern: Manaflare Pants
273973|4|9|Pattern: Manaflare Gloves
273974|4|9|Pattern: Manaflare Mantle
273975|4|9|Pattern: Manaflare Boots
273976|4|9|Plans: Justice Leggings
273977|4|9|Plans: Justice Gauntlets
273978|4|9|Plans: Justice Spaulders
273979|4|9|Plans: Justice Greaves
273980|4|9|Plans: Justice Legplates
273981|4|9|Plans: Justice Gloves
273982|4|9|Plans: Justice Epaulets
273983|4|9|Plans: Justice Treads
273984|4|9|Plans: Justice Legguards
273985|4|9|Plans: Justice Handguards
273986|4|9|Plans: Justice Pauldrons
273987|4|9|Plans: Justice Sabatons
273988|4|9|Pattern: Pants of Conviction
273989|4|9|Pattern: Gloves of Conviction
273990|4|9|Pattern: Mantle of Conviction
273991|4|9|Pattern: Treads of Conviction
273992|4|9|Pattern: Leggings of Conviction
273993|4|9|Pattern: Handguards of Conviction
273994|4|9|Pattern: Pauldrons of Conviction
273995|4|9|Pattern: Boots of Conviction
273996|4|9|Pattern: Grimstitch Pants
273997|4|9|Pattern: Grimstitch Gloves
273998|4|9|Pattern: Grimstitch Spaulders
273999|4|9|Pattern: Grimstitch Boots
274000|4|9|Pattern: Spiritcaller Leggings
274001|4|9|Pattern: Spiritcaller Grips
274002|4|9|Pattern: Spiritcaller Spaulders
274003|4|9|Pattern: Spiritcaller Treads
274004|4|9|Pattern: Spiritcaller Pants
274005|4|9|Pattern: Spiritcaller Gauntlets
274006|4|9|Pattern: Spiritcaller Epaulets
274007|4|9|Pattern: Spiritcaller Greaves
274008|4|9|Pattern: Demonheart Leggings
274009|4|9|Pattern: Demonheart Gloves
274010|4|9|Pattern: Demonheart Spaulders
274011|4|9|Pattern: Demonheart Boots
274012|4|9|Plans: Legplates of Glory
274013|4|9|Plans: Gauntlets of Glory
274014|4|9|Plans: Shoulders of Glory
274015|4|9|Plans: Greaves of Glory
274016|4|9|Plans: Legguards of Glory
274017|4|9|Plans: Handguards of Glory
274018|4|9|Plans: Pauldrons of Glory
274019|4|9|Plans: Sabatons of Glory
274020|4|15|Seal of Armorcrafting
274021|3|4|Barrens Headband
274022|3|4|Tough Guy's Eyepatch
274023|3|4|Stolen Wastewander Cowl
274024|3|4|Fizzbolt's Fashionable Fedora
274025|1|4|Guardians of Hyjal Tabard
274026|3|15|Extravagant Extravaganza Coin
274027|4|4|Placeholder
274028|1|12|Blood Red Bandana
274029|1|12|Ornate Shackle Key
274030|4|7|Malleable Essence of Nature
274035|2|4|Staghide Drape
274041|1|15|Document Box
274044|1|12|Twisted Fire Totem
274045|1|12|Twisted Earth Totem
274046|1|12|Twisted Water Totem
274047|1|12|Twisted Air Totem
274077|1|12|Mason's Note
274093|3|13|Glowing Kaleidoscope
274151|1|12|Tender Nightsaber Haunch
274162|1|12|Venom-dripping Heart
274163|1|12|Vacant Heart
274165|1|12|Eternity Cloth
274176|3|4|Premier Scalemail Walkers
274177|3|4|Premier Flatmail Grips
274178|3|4|Premier Scalemail Helm
274179|3|4|Premier Scalemail Chestpiece
274180|3|4|Premier Flatmail Leggings
274181|3|4|Premier Flatmail Shoulders
274182|3|4|Premier Flatmail Wristguards
274183|4|4|Premier Knight-Champion's Flatmail Boots
274184|4|4|Premier Lieutenant Commander's Flatmail Gauntlets
274185|4|4|Premier Knight-Captain's Flatmail Waistband
274186|4|4|Premier Knight-Captain's Flatmail Bracers
274187|4|4|Premier Field Marshal's Flatmail Armor
274188|4|4|Premier Field Marshal's Flatmail Helm
274189|4|4|Premier Marshal's Flatmail Leggings
274190|4|4|Premier Marshal's Flatmail Spaulders
274192|3|4|Premier Flatmail Greaves
274193|3|4|Premier Scalemail Vices
274194|3|4|Premier Flatmail Hauberk
274195|3|4|Premier Scalemail Legguards
274196|3|4|Premier Flatmail Headguard
274197|3|4|Premier Scalemail Pauldrons
274198|4|4|Premier Knight-Champion's Scalemail Boots
274199|4|4|Premier Lieutenant Commander's Scalemail Gauntlets
274200|4|4|Premier Knight-Captain's Scalemail Waistband
274201|4|4|Premier Knight-Captain's Scalemail Bracers
274202|4|4|Premier Field Marshal's Scalemail Armor
274203|4|4|Premier Field Marshal's Scalemail Helm
274204|4|4|Premier Marshal's Scalemail Leggings
274205|4|4|Premier Marshal's Scalemail Spaulders
274206|4|4|Premier Knight-Champion's Linkmail Boots
274207|4|4|Premier Lieutenant Commander's Linkmail Gauntlets
274208|4|4|Premier Knight-Captain's Linkmail Waistband
274209|4|4|Premier Knight-Captain's Linkmail Bracers
274210|4|4|Premier Field Marshal's Linkmail Armor
274211|4|4|Premier Field Marshal's Linkmail Helm
274212|4|4|Premier Marshal's Linkmail Leggings
274213|4|4|Premier Marshal's Linkmail Spaulders
274214|3|4|Premier Flatmail Girdle
274215|3|4|Premier Scalemail Wristguards
274217|3|4|Premier Linkmail Walkers
274218|3|4|Premier Linkmail Helm
274219|3|4|Premier Linkmail Chestpiece
274220|3|4|Premier Linkmail Vices
274221|3|4|Premier Linkmail Legguards
274222|3|4|Premier Linkmail Pauldrons
274223|3|4|Premier Linkmail Wristguards
274224|3|4|Premier Linkmail Girdle
274225|3|4|Premier Scalemail Girdle
274226|3|4|Premier Scaled Sabatons
274227|3|4|Premier Scaled Gauntlets
274228|3|4|Premier Scaled Cinch
274229|3|4|Premier Scaled Armsplints
274230|3|4|Premier Scaled Breastplate
274231|3|4|Premier Scaled Headguard
274232|3|4|Premier Scaled Leggings
274233|3|4|Premier Scaled Shoulders
274234|4|4|Premier Legionnaire's Scaled Armguards
274235|4|4|Premier Legionnaire's Scaled Belt
274236|4|4|Premier Champion's Scaled Gloves
274237|4|4|Premier Centurion's Scaled Boots
274238|4|4|Premier Warlord's Scaled Chestplate
274239|4|4|Premier Warlord's Scaled Faceguard
274240|4|4|Premier General's Scaled Legplates
274241|4|4|Premier General's Scaled Pauldrons
274244|3|4|Premier Lamellar Breastplate
274245|3|4|Premier Lamellar Leggings
274246|3|4|Premier Lamellar Headguard
274247|3|4|Premier Lamellar Shoulders
274248|4|4|Premier Legionnaire's Lamellar Armguards
274249|4|4|Premier Legionnaire's Lamellar Belt
274250|4|4|Premier Champion's Lamellar Gloves
274251|4|4|Premier Centurion's Lamellar Boots
274252|4|4|Premier Warlord's Lamellar Chestplate
274253|4|4|Premier Warlord's Lamellar Faceguard
274254|4|4|Premier General's Lamellar Legplates
274255|4|4|Premier General's Lamellar Pauldrons
274256|3|4|Premier Lamellar Gauntlets
274257|3|4|Premier Lamellar Armsplints
274258|3|4|Premier Lamellar Sabatons
274259|3|4|Premier Lamellar Cinch
274268|1|12|Dark Iron Map
274273|2|0|Flask of Natural Accuracy
274274|2|0|Flask of Natural Aggression
274275|2|0|Flask of Natural Precision
274276|2|0|Flask of Natural Swiftness
274277|3|9|Recipe: Flask of Natural Accuracy
274278|3|9|Recipe: Flask of Natural Aggression
274279|3|9|Recipe: Flask of Natural Precision
274280|3|9|Recipe: Flask of Natural Swiftness
274286|1|12|Durgen Dirgehammer's Head
274287|1|12|Grand Hippogryph Feather
274288|1|12|Oily Chimaera Hair
274289|1|12|Dwarven Heirloom
274373|1|12|Barkskin Purification Tonic
274379|2|15|Rousing Seed Pod
274383|2|2|Kanai's Knife
274384|2|4|Illegible Dogtags
274386|2|4|Toy Soldier
274387|4|6|Swiftfeather Arrow
274388|4|6|Swiftstrike Shot
274389|4|9|Schematic: Swiftfeather Arrow
274390|4|9|Schematic: Swiftstrike Shot
274391|3|9|Formula: Enchant Off Hand - Superior Intellect
274392|3|9|Formula: Enchant Off Hand - Excellent Spirit
274393|3|9|Formula: Enchant Off Hand - Wisdom
274394|3|9|Formula: Enchant 2H Weapon - Spellblasting
274395|3|9|Formula: Enchant Shield - Excellent Stamina
274396|1|12|Fel Ash Experimentation Notes
274398|3|9|Formula: Enchant Gloves - Superior Strength
274399|3|9|Formula: Enchant Cloak - Agility
274400|3|9|Formula: Enchant Shield - Critical Strike
274401|3|9|Formula: Enchant Bracer - Greater Spellpower
274408|1|12|Ashen Crystal Vial
274411|1|12|Survivor's Torch
274412|1|12|Fel-Slime Crystal
274413|1|12|Bag of Ashen Warlock Bones
274414|1|12|Pristine Fel-Slime Crystal
274415|1|9|Recipe: Sweetpaw Jam
274417|3|4|Barkskin Baubles
274418|3|4|Burrow Barricade
274419|3|2|Bear Poking Stick
274420|3|2|Wisepaw Totem
274424|2|9|Formula: Enchant Gloves - Lotus Claw
274426|1|0|Enchant Gloves - Lotus Claw
274429|0|2|Monster Weapon
274444|3|4|Greater Insignia of the Horde
274445|3|4|Greater Insignia of the Alliance
274463|1|12|Tattered Note
274483|1|15|The Walks of Shaman
274490|2|4|Centaur Hoofwarmers
274491|2|9|Pattern: Centaur Hoofwarmers
274559|3|15|Level 23 Cloth Gear
274560|0|2|Hyjal Summit Trash Weapon
274561|3|15|Level 23 Leather Gear
274562|3|15|Level 23 Mail Gear
274563|3|15|Level 38 Cloth Gear
274564|3|15|Level 38 Leather Gear
274565|3|15|Level 38 Mail Gear
274566|3|15|Level 57 Cloth Gear
274567|3|15|Level 57 Leather Gear
274568|3|15|Level 57 Mail Gear
274569|3|15|Level 57 Plate Gear
274570|3|15|Level 60 Cloth Gear
274571|3|15|Level 60 Leather Gear
274572|3|15|Level 60 Mail Gear
274573|3|15|Level 60 Plate Gear
274586|1|12|Rustleaf Fox Tail
274616|1|15|Aetherstill Spirits
274617|1|12|Sturdy Tree Branch
274684|3|15|Level 23 Mining Supplies
274686|3|15|Level 38 Mining Supplies
274687|3|15|Level 57 Mining Supplies
274688|3|15|Level 60 Mining Supplies
274689|3|15|Level 23 Herbalism Supplies
274690|3|15|Level 38 Herbalism Supplies
274691|3|15|Level 57 Herbalism Supplies
274692|3|15|Level 60 Herbalism Supplies
274693|3|15|Level 23 Skinning Supplies
274694|3|15|Level 38 Skinning Supplies
274695|3|15|Level 57 Skinning Supplies
274696|3|15|Level 60 Skinning Supplies
274697|3|15|Level 23 Cloth Supplies
274698|3|15|Level 38 Cloth Supplies
274699|3|15|Level 57 Cloth Supplies
274700|3|15|Level 60 Cloth Supplies
274701|3|15|Level 23 Enchanting Supplies
274702|3|15|Level 38 Enchanting Supplies
274703|3|15|Level 57 Enchanting Supplies
274704|3|15|Level 60 Enchanting Supplies
274706|3|15|Reins of the Striped Dawnsaber
274709|1|0|Potion of Experience - Level 23
274710|1|0|Potion of Experience - Level 38
274711|1|0|Potion of Experience - Level 57
274712|1|0|Potion of Experience - Level 60
274718|2|4|Lost Veteran's Sabatons
274719|2|4|Forgotten Trompers
274720|2|4|Abandoned Boots
274721|2|4|Tattered Sandals
274725|1|12|Blackthorne Documents
274740|2|4|Quilted Cloak
274741|2|4|Rumpled Kilt
274742|2|4|Ratchet Wristwraps
274743|3|4|Defective Samophlange
274744|3|2|Barrens Basher
274745|2|4|Deckswabber's Mitts
274746|2|4|Sea Giant's Toe Ring
274747|2|4|Soggy Boots
274748|3|2|Booty Bay Bruiser's Buckshot
274749|3|4|Souvenir Sea Shell
274750|2|4|Reflective Wristguards
274751|2|4|Sunburn Spaulders
274752|2|4|Sandstorm Cover
274753|3|2|Jhordy's Misplaced Screwdriver
274754|3|4|Suspicious Spare Part
274755|2|4|Steamwheedle Grips
274756|2|4|Impractical Headwarmer
274757|2|4|Substandard Belt Chain
274758|2|4|Coldmetal Guard
274759|3|4|Everlook Pathcarver
274760|3|4|Everlook Delivery Bot
274761|3|4|Parachute-Priest Pager
274776|1|12|Uninfected Root Sample
274795|1|12|Embroidered Scabbard
274799|4|15|Ochre Skeletal Warhorse
274800|1|12|Fishing Trip
274895|2|0|Darkspear Islands Mark of Honor
274915|2|4|Sacristan Band
274916|2|4|Verger Greaves
274917|1|0|Brittle Trap
274918|1|0|Warding Candle
274919|2|2|Neophyte's Wand
274920|2|2|Twilight Carver
274922|1|0|Riverglades Marsh Gas
274926|2|11|Matriarch Quiver
274928|2|2|Curly's Chopper
274929|2|2|Hurley's Felling Axe
274930|3|15|Umber Galestrider
274933|4|15|Swift Umber Galestrider
274935|1|0|Tessa's Tonic
274938|2|4|Gnollhide Tunic
274939|2|4|Southern Watch Leggings
274940|2|2|Unbalanced Fighting Stick
274941|2|4|Bristle Hills Mystic Robe
274942|2|4|Bristlepelt Vest
274943|2|4|Gnoll Crusher Leggings
274944|2|2|Bloodsnout Striker
274946|2|4|Gnollblood Robe
274947|2|0|Scroll of Imbue Lesser Flame
274948|2|2|Bottle of Powderfuse Port
274949|1|12|Scrap of Horde Heraldry
274955|2|4|Clobrok's Block Rock
274956|1|15|Wild Chicken Egg
274957|2|4|Lumber Luggers
274958|1|12|Especially Delicious Berries
274961|2|4|Brute Slayer Band
274963|2|2|Rot-Covered Harpoon
274964|1|15|Mote of Unstable Magic
274966|1|12|Silvermoon Shimmerwine
274968|3|4|Premier Senior Sergeant's Insignia
274969|3|4|Premier Master Sergeant's Insignia
274971|1|0|Briny Seafood Stew
274972|1|9|Recipe: Briny Seafood Stew
274974|2|15|Message in a Bottle
274975|1|12|Rog'mar Supply Crate
274976|1|0|Plain Ol' Paletusk
274977|1|9|Recipe: Plain Ol' Paletusk
274979|1|12|Hyjal Silphium
274981|1|12|Rog'mar Report
275019|1|12|Supply Bundle
275022|1|12|Lost Journal
275028|2|4|Twilight Mine Light
275042|1|4|Farholde Keep Tabard
275043|3|4|Bloodmaster's Ring
275044|3|4|Bloodsport Band
275045|3|4|Ogre Horn Ring
275046|2|4|Twilight Overlord Drape
275049|2|4|Farholde Bastion
275050|2|4|Cloak of the Cult
275051|2|4|Twilight Barrier
275067|2|0|Scroll of Imbue Chillknife
275069|1|0|Scroll of Rat Familiar
275229|4|4|Premier Emboldened Shoulder Seal
275238|4|4|Premier Emboldened Chest Seal
275239|4|4|Premier Emboldened Hands Seal
275240|4|4|Premier Emboldened Wrist Seal
275241|4|4|Premier Emboldened Head Seal
275242|4|4|Premier Emboldened Legs Seal
275243|4|4|Premier Emboldened Feet Seal
275244|4|4|Premier Emboldened Belt Seal
275291|2|2|Staff of the Deeproar
275293|2|2|Barkskin Scepter
275296|2|2|Deadwood Boomstick
275347|2|4|Lichbane
275390|2|4|Shallow Bindings
275434|2|4|Murkborn Girdle
275437|3|4|Premier Silken Sash
275438|2|4|Greaves of Mourning
275439|2|2|Blunderflame Bone Bow
275441|2|2|Cremation Longbow
275443|1|12|Highly Toxic Strain
275482|1|12|Barton's Scouting Report
275521|1|15|Crest of Lordaeron
275580|3|9|Pattern: Venomspew Gloves
275581|3|9|Pattern: Venomspew Cord
275582|3|9|Pattern: Venomspew Footpads
275583|3|9|Pattern: Swarmtender's Gloves
275584|3|9|Pattern: Swarmtender's Cord
275585|3|9|Pattern: Swarmtender's Footpads
275586|3|9|Pattern: Bileblister Claws
275587|3|9|Pattern: Bileblister Girdle
275588|3|9|Pattern: Bileblister Boots
275589|3|9|Pattern: Hivethrasher's Claws
275590|3|9|Pattern: Hivethrasher's Girdle
275591|3|9|Pattern: Hivethrasher's Boots
275592|3|9|Pattern: Scalegut Clenchers
275593|3|9|Pattern: Scalegut Belt
275594|3|9|Pattern: Scalegut Treaders
275595|3|9|Pattern: Broodwatcher's Clenchers
275596|3|9|Pattern: Broodwatcher's Belt
275597|3|9|Pattern: Broodwatcher's Treaders
275598|3|9|Plans: Goregasher Grips
275599|3|9|Plans: Goregasher Support
275600|3|9|Plans: Goregasher Stompers
275601|3|9|Plans: Clutchlord's Grips
275602|3|9|Plans: Clutchlord's Support
275603|3|9|Plans: Clutchlord's Stompers
275604|3|4|Venomspew Gloves
275605|3|4|Venomspew Cord
275606|3|4|Venomspew Footpads
275607|3|4|Swarmtender's Gloves
275608|3|4|Swarmtender's Cord
275609|3|4|Swarmtender's Footpads
275610|3|4|Bileblister Claws
275611|3|4|Bileblister Girdle
275612|3|4|Bileblister Boots
275613|3|4|Hivethrasher's Claws
275614|3|4|Hivethrasher's Girdle
275615|3|4|Hivethrasher's Boots
275616|3|4|Scalegut Clenchers
275617|3|4|Scalegut Belt
275618|3|4|Scalegut Treaders
275619|3|4|Broodwatcher's Clenchers
275620|3|4|Broodwatcher's Belt
275621|3|4|Broodwatcher's Treaders
275622|3|4|Goregasher Grips
275623|3|4|Goregasher Support
275624|3|4|Goregasher Stompers
275625|3|4|Clutchlord's Grips
275626|3|4|Clutchlord's Support
275627|3|4|Clutchlord's Stompers
275630|2|4|Depleted Eye of Influence
275633|1|0|Foxtail Ward
275635|1|12|Blade of House Perenolde
275636|1|12|Royal Aegis of Perenolde
275642|1|15|Waylaid Herbs
275645|2|2|Reforged Spear
275646|1|12|Alliance Equipment
275647|2|2|Cleansed Ritual Kris
275648|2|2|Purified Gnarlybark Staff
275649|2|4|Bramblebark Barrier
275666|2|4|Whitemane's Plateau
275668|2|4|Summit Drape
275669|2|4|Punchy's Punchers
275671|2|4|Field Agent Beverage
275682|1|15|Excitable Slime
275685|2|4|Stormwind Intelligence Seal
275688|1|0|Power Recycler
275698|2|2|Yaely's Mending Tool
275700|2|2|Glaive Thrower Muffler
275701|2|2|Copper Plated Pipe
275706|1|12|Syndicate Uniform
275708|3|4|Ghansurok Hide Tunic
275709|1|12|Stolen Funds
275711|3|4|Chimaera Wing Cape
275713|1|12|Raider's Bow
275715|2|4|Rocket Pilot Gloves
275716|1|12|Raider's Battleaxe
275717|1|12|Raider's Shield
275718|1|12|Prickly Pear Fruit
275719|1|12|Weathered Spine
275720|1|12|Rough Lizard Hide
275722|1|12|Ukor's Lost Pack
275723|1|12|Halikor's Hoof
275724|2|7|Hexed Pendant
275729|2|2|Rusty Propeller Blade
275730|2|15|Arcane Censer
275736|3|4|Horn of Ve'han
275737|3|4|Hermit's Pauldron
275738|3|4|Jereman's Bauble
275739|3|4|Wild Wristguards
275740|3|4|Ring of Nature's Cycles
275741|3|4|Ketharas' Linked Belt
275742|2|2|Demonbane Blade
275818|4|15|Pinky
275824|3|2|Wardcleaver
275827|2|4|Wool-Stitched Waistband
275831|2|4|Highfeather Bangle
275832|2|4|Crowfeather Tunic
275833|2|4|Bristlecone Cloak
275836|2|2|Acolyte Blade
275837|2|2|Felflick's Fire Flicker
275838|2|4|Dirtwalker Pendant
275842|0|15|Fossilized Insect
275843|0|15|Tuft of Hair
275851|1|12|Necrotic Crystal Fragment
275882|1|12|Intercepted Shipment
275891|0|15|Dwarven Skull
275892|1|15|Short Stout
275893|1|15|Searing Gourd
275894|0|15|Ghastly Cloth
275895|0|15|Fading Echo
275903|1|12|Hol'anyee's Big Book of Big Lizards
275916|0|2|Glaive
275927|1|12|Sun-Bleached Bone
275929|4|12|Acid-Etched Blade
275939|0|15|Arcane Fragment
275940|0|15|Solidified Mana Shard
275957|1|15|Tuft of Fox Fur
275958|1|12|Abandoned Supplies
275968|3|4|Initiate's Signet of Ferocity
275969|3|4|Initiate's Signet of Brilliance
275970|3|4|Initiate's Signet of Resolve
275971|3|4|Initiate's Signet of Vigilance
275972|3|4|Tracker's Signet of Ferocity
275973|3|4|Tracker's Signet of Brilliance
275974|3|4|Tracker's Signet of Resolve
275975|3|4|Tracker's Signet of Vigilance
275976|4|4|Watcher's Signet of Ferocity
275977|4|4|Watcher's Signet of Brilliance
275979|4|4|Watcher's Signet of Resolve
275980|4|4|Watcher's Signet of Vigilance
275981|4|4|Warden's Signet of Ferocity
275982|4|4|Warden's Signet of Brilliance
275983|4|4|Warden's Signet of Resolve
275984|4|4|Warden's Signet of Vigilance
275985|3|15|Unsullied Owl Statuette
275989|2|15|Tome of Dalaran
275991|1|12|Galvinquam's Drinking Gourd
275993|3|15|White Kodo
275994|1|12|Captain Nials' Correspondence
275996|1|12|The Founding of Dalaran
275997|1|12|Cracked Sentry Core
275998|1|12|Galvinquam's Belongings
276063|3|15|Black Skeletal Horse
276064|1|12|War Paint Wrap
276065|1|12|Fizzgrimble's Mysterious Crate
276066|1|12|Frazzlespark's Crate
276067|1|12|Lost Shipping Crate
276068|1|12|Cask of Powderfuse Port
276070|1|12|Chol'aruk's Head
276087|1|12|Nail
276088|1|12|Metal Bracket
276099|1|12|Sawyer Family Ledger
276100|1|12|Felhound Spike
276101|0|15|Zizplink's Grocery List
276102|2|2|Bladewind
276105|2|4|Scoutmaster's Eyepatch
276145|1|0|Explosive Runeshard
276158|0|15|Crystallized Shard
276160|0|15|Mana Fragment
276199|3|4|Haughty Fellow's Monocle
276200|2|4|Crawler's Clackers
276201|2|4|Misplaced Pantaloons
276202|2|4|Disengagement Ring
276203|3|2|Primitive Fishing Pole
276204|3|4|Thrash's Trash
276235|1|12|Seeping Slime Essence
276236|3|15|Holstered Replica Ironforge Air Rifle
276242|1|15|Replica Dartol's Rod of Transformation
276272|3|4|Master Angler's Fishing Hat
276273|3|4|Empty Fish Bucket
276274|3|4|Surfer Shoes
276275|3|15|Bitter Baitling
276278|1|15|Handful of Coins
276279|1|15|Small Bag of Coins
276280|1|15|Hefty Sack of Coins
276332|2|2|Abigail's Hope
276333|2|4|Sawyer Family Seal
276334|2|4|Hand-Hewn Buckler
276335|2|2|Polished Doomguard Edge
276336|2|4|Yashiro's Spirit Bead
276337|2|4|Thaelemaches' Talisman
276338|2|2|Claw of Shalla'kal
276339|2|4|Cured Staghide Leggings
276340|2|4|Blademaster Hakama
276341|2|4|Plaguecrusher Greaves
276423|1|15|Unstable Elemental Core
276467|1|12|Jorin's List
276468|1|15|Consecrated Holy Salts
276471|3|15|Level 23 Hunter Supplies
276472|3|15|Level 38 Hunter Supplies
276473|3|15|Level 57 Hunter Supplies
276474|3|15|Level 60 Hunter Supplies
276502|1|4|Darkspear Battle Tabard
276504|1|4|Theramore Battle Tabard
276538|4|4|Spiritcaller Kilt
276539|4|4|Spiritcaller Gloves
276540|4|4|Spiritcaller Mantle
276541|4|4|Spiritcaller Boots
276542|4|9|Pattern: Spiritcaller Kilt
276543|4|9|Pattern: Spiritcaller Gloves
276544|4|9|Pattern: Spiritcaller Mantle
276545|4|9|Pattern: Spiritcaller Boots
276561|1|12|Black Tome
276614|1|12|Zayus's Exorcism Censer
276637|1|0|Currency Wallet
276685|2|2|Militia Bow
276686|1|2|Junior's Hunting Bow
276694|2|2|Captain Sander's Lucky Shooter
276695|2|2|Harvester's Pestslayer
276719|2|4|DNT HEAD
276720|2|4|Criminal's Pauldrons
276721|2|4|DNT CHEST
276722|2|4|Gnoll Shackles
276723|2|4|Wise Gauntlets
276724|2|4|Trophy Belt
276725|2|4|DNT LEGS
276727|2|4|Glistening Stompers
276754|3|4|Sunderbark Vigil
276782|1|2|Distant Communication Device
276783|1|12|Spirit of Retribution
276784|1|12|Charger's Lost Soul
276785|1|12|Danitha's Satchel
276886|2|2|Chol'aruk's Trophy Sword
276887|2|2|Big Bad Basher
276888|2|2|Quilboar Toothpick
276889|2|4|Thornwoven Shield
276890|1|12|Zarla's Journal
276891|2|1|Spidersilk Pouch
276892|2|1|Spidersilk Sack
276893|1|12|Blackmaw Ritual Totem
276894|1|12|Ancient Gurubashi Idol
276895|2|4|Transformative Cocoon
276896|3|15|Everlasting Silvermoon Shimmerwine
276897|3|4|A Lesson in Destruction
276898|3|4|Salve and Salvation
276899|3|4|Knucklebound Thimble
276900|2|4|Denric's Dog Tags
276901|2|4|Uncle's Heroism
276902|2|2|Youngster's First Bow
276903|2|2|Shimmerwine Shanker
276904|2|4|Shimmerwine Spirits
276909|0|15|Corrupted Cat Figurine
276916|1|12|The Coldbringer's Eye
276928|2|9|Plans: Cloudy Skyforged Chainmail
276929|2|9|Plans: Cloudy Skyforged Wristguards
276930|2|9|Plans: Cloudy Skyforged Gauntlets
276931|2|9|Plans: Cloudy Skyforged Chain
276932|2|9|Plans: Cloudy Skyforged Legguards
276933|2|9|Plans: Cloudy Skyforged Greaves
276934|2|9|Pattern: Cloudy Gustwoven Harness
276935|2|9|Pattern: Cloudy Gustwoven Bracers
276936|2|9|Pattern: Cloudy Gustwoven Gloves
276937|2|9|Pattern: Cloudy Gustwoven Belt
276938|2|9|Pattern: Cloudy Gustwoven Trousers
276939|2|9|Pattern: Cloudy Gustwoven Boots
276940|2|9|Pattern: Cloudy Windraveled Jerkin
276941|2|9|Pattern: Cloudy Windraveled Armguards
276942|2|9|Pattern: Cloudy Windraveled Mitts
276943|2|9|Pattern: Cloudy Windraveled Strap
276944|2|9|Pattern: Cloudy Windraveled Pants
276945|2|9|Pattern: Cloudy Windraveled Footwraps
276946|2|9|Pattern: Cloudy Stormsewn Vest
276947|2|9|Pattern: Cloudy Stormsewn Cuffs
276948|2|9|Pattern: Cloudy Stormsewn Handwraps
276949|2|9|Pattern: Cloudy Stormsewn Cord
276950|2|9|Pattern: Cloudy Stormsewn Leggings
276951|2|9|Pattern: Cloudy Stormsewn Shoes
276952|2|9|Plans: Azure Skyforged Chainmail
276953|2|9|Plans: Azure Skyforged Wristguards
276954|2|9|Plans: Azure Skyforged Gauntlets
276955|2|9|Plans: Azure Skyforged Chain
276956|2|9|Plans: Azure Skyforged Legguards
276957|2|9|Plans: Azure Skyforged Greaves
276958|2|9|Pattern: Azure Gustwoven Harness
276959|2|9|Pattern: Azure Gustwoven Bracers
276960|2|9|Pattern: Azure Gustwoven Gloves
276961|2|9|Pattern: Azure Gustwoven Belt
276962|2|9|Pattern: Azure Gustwoven Trousers
276963|2|9|Pattern: Azure Gustwoven Boots
276964|2|9|Pattern: Azure Windraveled Jerkin
276965|2|9|Pattern: Azure Windraveled Armguards
276966|2|9|Pattern: Azure Windraveled Mitts
276967|2|9|Pattern: Azure Windraveled Strap
276968|2|9|Pattern: Azure Windraveled Pants
276969|2|9|Pattern: Azure Windraveled Footwraps
276970|2|9|Pattern: Azure Stormsewn Vest
276971|2|9|Pattern: Azure Stormsewn Cuffs
276972|2|9|Pattern: Azure Stormsewn Handwraps
276973|2|9|Pattern: Azure Stormsewn Cord
276974|2|9|Pattern: Azure Stormsewn Leggings
276975|2|9|Pattern: Azure Stormsewn Shoes
276976|2|9|Plans: Cloudy Skyforged Helm
276977|2|9|Plans: Cloudy Skyforged Pauldrons
276978|2|9|Pattern: Cloudy Gustwoven Hood
276979|2|9|Pattern: Cloudy Gustwoven Spaulders
276980|2|9|Pattern: Cloudy Windraveled Cover
276981|2|9|Pattern: Cloudy Windraveled Drapes
276982|2|9|Pattern: Cloudy Stormsewn Cowl
276983|2|9|Pattern: Cloudy Stormsewn Epaulets
276984|2|9|Plans: Azure Skyforged Helm
276985|2|9|Plans: Azure Skyforged Pauldrons
276986|2|9|Pattern: Azure Gustwoven Hood
276987|2|9|Pattern: Azure Gustwoven Spaulders
276988|2|9|Pattern: Azure Windraveled Cover
276989|2|9|Pattern: Azure Windraveled Drapes
276990|2|9|Pattern: Azure Stormsewn Cowl
276991|2|9|Pattern: Azure Stormsewn Epaulets
276992|2|4|Cloudy Skyforged Chainmail
276993|2|4|Cloudy Skyforged Wristguards
276994|2|4|Cloudy Skyforged Gauntlets
276995|2|4|Cloudy Skyforged Chain
276996|2|4|Cloudy Skyforged Legguards
276997|2|4|Cloudy Skyforged Greaves
276998|2|4|Cloudy Gustwoven Harness
276999|2|4|Cloudy Gustwoven Bracers
277000|2|4|Cloudy Gustwoven Gloves
277001|2|4|Cloudy Gustwoven Belt
277002|2|4|Cloudy Gustwoven Trousers
277003|2|4|Cloudy Gustwoven Boots
277004|2|4|Cloudy Windraveled Jerkin
277005|2|4|Cloudy Windraveled Armguards
277006|2|4|Cloudy Windraveled Mitts
277007|2|4|Cloudy Windraveled Strap
277008|2|4|Cloudy Windraveled Pants
277009|2|4|Cloudy Windraveled Footwraps
277010|2|4|Cloudy Stormsewn Vest
277011|2|4|Cloudy Stormsewn Cuffs
277012|2|4|Cloudy Stormsewn Handwraps
277013|2|4|Cloudy Stormsewn Cord
277014|2|4|Cloudy Stormsewn Leggings
277015|2|4|Cloudy Stormsewn Shoes
277016|2|4|Azure Skyforged Chainmail
277017|2|4|Azure Skyforged Wristguards
277018|2|4|Azure Skyforged Gauntlets
277019|2|4|Azure Skyforged Chain
277020|2|4|Azure Skyforged Legguards
277021|2|4|Azure Skyforged Greaves
277022|2|4|Azure Gustwoven Harness
277023|2|4|Azure Gustwoven Bracers
277024|2|4|Azure Gustwoven Gloves
277025|2|4|Azure Gustwoven Belt
277026|2|4|Azure Gustwoven Trousers
277027|2|4|Azure Gustwoven Boots
277028|2|4|Azure Windraveled Jerkin
277029|2|4|Azure Windraveled Armguards
277030|2|4|Azure Windraveled Mitts
277031|2|4|Azure Windraveled Strap
277032|2|4|Azure Windraveled Pants
277033|2|4|Azure Windraveled Footwraps
277034|2|4|Azure Stormsewn Vest
277035|2|4|Azure Stormsewn Cuffs
277036|2|4|Azure Stormsewn Handwraps
277037|2|4|Azure Stormsewn Cord
277038|2|4|Azure Stormsewn Leggings
277039|2|4|Azure Stormsewn Shoes
277040|2|4|Cloudy Skyforged Helm
277041|2|4|Cloudy Skyforged Pauldrons
277042|2|4|Cloudy Gustwoven Hood
277043|2|4|Cloudy Gustwoven Spaulders
277044|2|4|Cloudy Windraveled Cover
277045|2|4|Cloudy Windraveled Drapes
277046|2|4|Cloudy Stormsewn Cowl
277047|2|4|Cloudy Stormsewn Epaulets
277048|2|4|Azure Skyforged Helm
277049|2|4|Azure Skyforged Pauldrons
277050|2|4|Azure Gustwoven Hood
277051|2|4|Azure Gustwoven Spaulders
277052|2|4|Azure Windraveled Cover
277053|2|4|Azure Windraveled Drapes
277054|2|4|Azure Stormsewn Cowl
277055|2|4|Azure Stormsewn Epaulets
277080|1|4|Zephrali Chainmail
277081|1|4|Zephrali Wristguards
277082|1|4|Zephrali Gauntlets
277083|1|4|Zephrali Chain
277084|1|4|Zephrali Legguards
277085|1|4|Zephrali Greaves
277086|1|4|Zephrali Harness
277087|1|4|Zephrali Bracers
277088|1|4|Zephrali Gloves
277089|1|4|Zephrali Belt
277090|1|4|Zephrali Trousers
277091|1|4|Zephrali Boots
277092|1|4|Zephrali Jerkin
277093|1|4|Zephrali Armguards
277094|1|4|Zephrali Mitts
277095|1|4|Zephrali Strap
277096|1|4|Zephrali Pants
277097|1|4|Zephrali Footwraps
277098|1|4|Zephrali Vest
277099|1|4|Zephrali Cuffs
277100|1|4|Zephrali Handwraps
277101|1|4|Zephrali Cord
277102|1|4|Zephrali Leggings
277103|1|4|Zephrali Shoes
277104|1|2|Zephrali Greatsword
277105|1|2|Zephrali Blade
277106|1|2|Zephrali Smasher
277107|1|2|Zephrali Bludgeon
277108|1|2|Zephrali Knife
277109|1|2|Zephrali Greatstaff
277110|1|2|Zephrali Bow
277111|1|2|Zephrali Crossbow
277112|1|12|Zum'rah's Head
277113|1|1|Apprentice's Herb Pouch
277114|1|1|Apprentice's Skinning Satchel
277115|1|1|Apprentice's Mining Pack
277119|1|12|Gatehouse Shipment
277128|1|12|Bloodtalon Matriarch Eggs
277129|1|12|Fragment of the Firelands
277132|2|0|Harvester Override Signalcaster
277135|1|12|Forgotten Loa Idol
277136|2|13|Brooch of the Wardens
277140|1|12|An'she's Radiance
277153|1|12|Intricate Filigree
277154|1|15|Corrupted Gemstone
277158|1|12|Wrapped Reading Material
277172|3|15|Corrupted Chillhowl Shard
277174|3|15|Corrupted Dreadspinner Shard
277175|3|15|Corrupted Tangleclaw Shard
277178|3|15|Corrupted Sorrowful Shard
277179|3|15|Corrupted Amethrax Shard
277190|1|12|Fang of Githyiss
277194|1|12|Trollbane Conquests
277195|1|12|The Forsaken Ally
277196|1|12|Field Accounts of Horde Razings
277197|1|12|Cycles of Morality
277198|1|12|Gatehouse Shipment
277199|1|12|Pouch of Smoldering Incense
277200|1|1|Scorched Leather Pouch
277202|3|4|Artifact Seeker's Pendant
277203|2|4|Scholarly Pendant
277204|2|4|Erudite's Amulet
277205|3|4|Cloak of the Divine Storm
277206|2|4|Brilliant Cloak
277207|2|4|Well-Weathered Cloak
277208|2|4|Determined Band
277209|2|4|Ponderous Loop
277210|3|4|Pyrewood Signet Ring
277211|2|4|Dudd's Thinkin' Cap
277212|2|4|Soulwoven Epaulets
277214|2|4|Crusty Cuffs
277215|2|4|Plain Handwraps
277216|2|4|Cross-Stitched Cord
277217|2|4|Patchy Pants
277218|2|4|Incinerator's Boots
277219|2|4|Solomon's Comfortable Hat
277220|2|4|Shabby Spaulders
277221|2|4|Grimtotem Naturalist's Tunic
277222|2|4|War Painted Cuffs
277223|2|4|Traveled Gloves
277224|2|4|Kurzen Headshrinker's Cinch
277225|2|4|Feathered Leggings
277226|2|4|Disjointed Shoes
277227|2|4|Magistrate's Chain Hood
277228|2|4|Snakescale Pauldrons
277229|2|4|Enduring Chain Vest
277230|2|4|Grayscale Bracers
277231|2|4|Conductive Gauntlets
]==],
[==[
277232|2|4|Jailer's Discarded Chain
277233|2|4|Clinking Mail Legguards
277234|2|4|Alacritous Treads
277235|2|4|Soldier's Visor
277236|3|4|Pauldrons of Vindication
277237|2|4|Inspiring Chestplate
277238|2|4|Shimmering Bracers
277239|2|4|Bejeweled Punchers
277240|2|4|Gilded Plate Belt
277241|2|4|Double-Plated Legplates
277242|2|4|Silverrune Greaves
277243|3|2|Silverbane Slicer
277244|3|2|Guardian's Maulers
277245|3|2|Swampspine Crusher
277246|3|2|Ruby-Adorned Blade
277247|2|2|Mug of Muddled Memories
277248|3|2|Notched Ritual Rib
277250|3|2|The Skullcracker
277253|2|2|Staff of Brutal Cunning
277254|3|2|Truthseeker's Bow
277255|2|2|Misplaced Shooter
277256|2|2|Dudd's Second-Favorite Wand
277257|3|4|Raven Hill Crest
277258|3|4|Crest of Elucidation
277259|3|4|Fermented Restoration Potion
277260|3|4|Researcher's Night Light
277267|1|12|Faladiel's Heart
277269|1|12|Kuramaa's Mask
277277|1|12|Olgra's Adornments
277278|1|12|Handful of Cattails
277279|1|12|Speargrass Cuttings
277284|1|12|Migi's Lunch
277286|2|2|Encroacher's Claim
277288|2|2|Pathfinder's Clearway
277289|2|4|Traveler's Shawl
277329|1|12|Torch of Eternal Flame
277331|1|12|Handful of Complicated Parts
277332|1|1|Scuffed Shipping Crate
277470|1|9|Schematic: Harvester Override Signalcaster
277483|1|0|Scroll of Frog Familiar
277484|1|0|Scroll of Confuse Beast
277485|2|0|Scroll of Imbue Frost
277486|2|0|Scroll of Imbue Striking
277487|2|0|Scroll of Imbue Baleflame
277488|2|0|Scroll of Imbue Iceknife
277489|2|0|Scroll of Imbue Spark
277490|3|0|Scroll of the Saber
277491|1|0|Scroll of Rebuke Elemental
277492|1|0|Scroll of Khadgar's Unlocking
277493|1|0|Scroll of Cat Familiar
277494|2|0|Scroll of Imbue Accuracy
277495|2|0|Scroll of Imbue Quickening
277496|2|0|Scroll of Imbue Balefrost
277497|2|0|Scroll of Imbue Flame
277498|2|0|Scroll of Imbue Manablade
277499|1|0|Scroll of Greater Cryoblast
277500|2|0|Scroll of Imbue Greater Flame
277501|2|0|Scroll of Imbue Greater Frost
277502|2|0|Scroll of Imbue Precision
277503|2|0|Scroll of Imbue Spellbreak
277504|3|0|Scroll of Wit
277505|1|12|Misplaced Package
277507|2|13|Dalaran Sewer Key
277508|1|15|Prairie Wolf Pup Carrier
277514|2|4|Aka'rai's Tattered Vestments
277515|2|2|Dagger of Deals
277518|1|2|Last Week's Ration
277519|3|0|Nelanna's Enchanted Jewel
277533|1|15|Fel Tainted Journal
277534|2|15|Arena Spoils
277566|1|12|Yelmak's Potion
277648|1|15|Stormwind Library Card
277649|1|15|Undercity Library Card
277651|1|15|Bundle of Scrolls
277653|1|12|Abandoned Training Weapon
277661|1|12|Dull Storm Orb
277665|1|12|Charged Thunder Lizard Organ
277672|2|4|Rough Copper Chain Boots
277673|2|9|Plans: Rough Copper Chain Boots
277714|3|15|Spectral Bear Cub
277715|1|1|Light Leather Reagent Bag
277716|2|9|Pattern: Light Leather Reagent Bag
277717|3|4|Spectral Bear Tabard
277718|4|15|Reins of the Spectral Bear
277844|2|4|Mirage Mirror
277845|1|1|A Reasonably Large Bag
277910|2|4|Mysticbloom Seed
277915|1|12|Stonetalon Supply Satchel
277917|1|12|Stonetalon Supply Bundle
277936|1|12|Glittering Sunstone
277950|2|4|Wastewanderer Rations
277952|1|12|Smooth Boulder
277953|1|12|Stolen Shipment
277957|1|12|Primitive Key
277958|1|12|Putrescent Bear Organs
277959|1|12|Putrescent Wolf Organs
277960|3|15|Lavender Kodo
277972|1|12|Mirrorscale's Wing
277973|1|12|Stag Lord's Bauble
277974|1|12|Twice Reordered Package
277976|1|12|Gozwin's Mechanic's Log
277977|1|1|Canvas Latchbag
277979|2|2|Mauler's Mutton
277980|2|4|Ogre Bone
277981|2|4|Souvenir Ogre Tooth
277986|1|12|Drum of Crude Oil
277988|2|2|Hoof-Holstered Blade
278002|2|2|Valley Cosh
278017|2|4|Refunded Ring
278018|2|4|Renegotiated Ring
278019|2|4|Apology Ring
278029|0|15|Dark Purple Berries
278030|2|15|Scarlet Banner
278049|1|12|Excavation Tools
278051|1|12|Monogrammed Silver Hair Clip
278066|3|15|Level 60 Tradeskill Supplies
278069|1|0|Potion of Tradeskill Testing - Level 60
278078|1|12|Prepared Incense
278079|1|12|Bundle of Herbs
278080|1|12|Bundle of Dried Cedar Twigs
278081|1|12|Sinew Thread
278083|1|12|Ceremonial Flint and Tinder
278091|1|12|Hailspite Frostmoss
278097|1|12|Kuroma's Head
278098|1|12|Kamuro's Head
278117|1|0|Hard Boiled Eggs
278118|1|0|Rich Broth
278119|1|0|Bread with Butter
278120|1|0|Fruit Platter
278121|1|0|Smoked Sausage
278122|1|0|Carrot Salad
278157|4|4|Premier Grand Marshal's Tome of Restoration
278158|4|4|Premier Grand Marshal's Tome of Power
278159|1|12|Lean Worg Flank
278160|1|12|Twitching Spider Carcass
278161|1|12|Dark Iron Delight
278162|1|12|Pouch of Chipped Hearthstones
278186|1|12|Brilliantly Polished Bangle
278191|1|12|Desert Debris
278194|1|12|Crate of Radioactive Refuse
278201|1|12|Mirkweed Pods
278225|1|12|Surgical Spidersilk
278242|1|12|Duskbat Wing Membrane
278243|1|12|Darkhound Hide
278244|1|12|Vile Fin Murloc Skin
278265|1|0|Nutritious Slime Sludge
278398|1|12|Excavation Tools
278402|1|12|Unstudied Artifact
278403|1|12|Explorers' League Mining Helmet
278404|1|12|Pristine Mattock
278462|1|12|Packaged Tonics
278468|4|4|Premier Grand Marshal's Barricade
278469|4|4|Premier High Warlord's Barricade
278515|1|12|Mus'hale's Stolen Supplies
278543|1|0|Pouch of Tomb Dust
278569|1|0|Yesterday's Leftovers
278744|2|12|Mirage Mirror
278796|0|15|Condensed Elemental Fragment
278797|0|15|Crystallized Elemental Shard
278836|1|12|Head of Rend Blackhand
278868|1|12|Tremayne Family Blacksmithing Techniques
279020|1|12|Unstable Potion
279023|0|15|Inert Potion
279045|1|12|Thundris' Letter
279046|0|15|Cracked Crab Pincer
279048|1|12|Alexston's Reply
279082|1|12|Gnarlpine Totem
279171|1|12|Diplomatic Satchel
279173|1|4|Veteran Adventurer's Chestpiece
279174|1|4|Veteran Adventurer's Belt
279175|1|4|Veteran Adventurer's Legguards
279176|1|4|Veteran Adventurer's Boots
279177|1|4|Veteran Adventurer's Bracer
279178|1|4|Veteran Adventurer's Gloves
279179|1|4|Veteran Adventurer's Cloak
279180|1|4|Veteran Adventurer's Hood
279181|1|4|Veteran Adventurer's Shoulderpads
279182|1|0|Ensemble: Veteran Adventurer's Outdoor Wear
279186|1|12|Stormheart's Still-beating Heart
279225|1|12|Vilebranch Totem
279229|1|12|Lost Gryphon Egg
279246|4|2|Torch of Light
279247|4|4|Steadfast Libram
279248|4|4|Libram of Infusion
279249|4|4|Totem of Urgency
279250|4|4|Idol of Swiftness
279251|4|4|Idol of the Ursine Twins
279252|4|4|Elderwild Waistcord
279253|4|4|Outlaw's Collar
279254|4|4|Elderwild Pants
279255|4|4|Eternity Pauldrons
279256|4|4|Tranquil Wristguards
279257|4|4|Mourning Handguards
279258|3|0|Wild Leather Armor Kit
279259|4|2|Ironwood Blade
279260|4|2|Forest Defender's Axe
279261|4|2|Greenhammer
279262|4|4|Evergreen Shield
279263|4|4|Depleted Thorium Sabatons
279264|4|4|Heavy Thorium Gauntlets
279265|4|4|Azerothium Legplates
279266|4|4|Robes of Fiery Devastation
279267|4|4|Mana-infused Cord
279268|4|4|Rime-encrusted Boots
279269|4|4|Fel Cape
279270|4|4|Cloak of Earth and Sky
279271|4|1|Felblood Soul Bag
279272|3|0|SAF-T Ultra Precision Scope
279273|4|2|Hyper Deluxe Sniper Rifle Mk XVII
279274|1|12|Gleaming Crescent Necklace
279275|2|12|Clouded Water Globe
279276|1|0|Mathystral Amulet Fragment
279277|1|0|Mathystral Amulet
279279|1|12|Peerless Eye
279291|1|12|Drained Vessel
279295|4|9|Formula: Torch of Light
279296|4|9|Formula: Steadfast Libram
279297|4|9|Formula: Libram of Infusion
279298|4|9|Formula: Totem of Urgency
279299|4|9|Formula: Idol of Swiftness
279300|4|9|Formula: Idol of the Ursine Twins
279301|4|9|Pattern: Elderwild Waistcord
279302|4|9|Pattern: Outlaw's Collar
279303|4|9|Pattern: Elderwild Pants
279304|4|9|Pattern: Eternity Pauldrons
279305|4|9|Pattern: Tranquil Wristguards
279306|4|9|Pattern: Mourning Handguards
279307|4|9|Pattern: Wild Leather Armor Kit
279308|4|9|Plans: Ironwood Blade
279309|4|9|Plans: Forest Defender's Axe
279310|4|9|Plans: Greenhammer
279311|4|9|Plans: Evergreen Shield
279312|4|9|Plans: Depleted Thorium Sabatons
279313|4|9|Plans: Heavy Thorium Gauntlets
279314|4|9|Plans: Azerothium Legplates
279315|4|9|Pattern: Robes of Fiery Devastation
279316|4|9|Pattern: Mana-infused Cord
279317|4|9|Pattern: Rime-encrusted Boots
279318|4|9|Pattern: Fel Cape
279319|4|9|Pattern: Cloak of Earth and Sky
279320|4|9|Pattern: Felblood Soul Bag
279321|4|9|Schematic: SAF-T Ultra Precision Scope
279322|4|9|Schematic: Hyper Deluxe Sniper Rifle Mk XVII
279331|1|12|Moonwell Remnants
279378|1|12|Lunar Pendant
279379|1|12|Jar of Snow
279380|1|12|Ceramic Jar
279383|1|12|Stolen Freewind Supplies
279385|1|12|Pristine Crimson Scale
279386|1|12|Sealed Company Request
279389|1|12|Sack of Homebrew Hops
279390|1|12|Case of Fallrook Varietal
279391|1|4|Taurajo Headband
279392|3|2|Glimmer
279393|3|2|Frostfall
279394|1|12|Darthalia's Orders
279395|1|12|Apothecary Vials
279415|1|12|Ash of Asharell
279450|2|15|Fractured Insignia
279469|1|12|Grimy Key
279472|1|12|Pristine Pesterhide Pelt
279481|1|12|Package of Pristine Pelts
279505|1|2|Jagged Orcish Sword
279507|1|2|Curved Orcish Dagger
279589|1|12|Menethil Statuette
279591|1|12|Marek's Croc-Hunting Knife
279595|1|12|Menethil Statuette
279598|1|12|Menethil Statuette
279601|1|12|Intact Raptor Hide
279821|1|12|Khaz Modan Timber
279822|1|12|Khaz Modan Iron
279913|1|12|Ti'ik's Head
279915|1|12|Nord'el
279924|1|12|Nord'el
279934|1|12|Shed Dark Dragonscale
279935|1|12|Book Bag
279936|1|1|Book Bag
279937|1|12|Collecting Basket
279938|1|0|Trapper's Workbench
279939|1|1|Collecting Basket
279940|1|0|Toxin Study
279941|1|0|Tanning Rack
279943|1|0|Spinning Wheel
279944|1|0|Sharpening Wheel
279945|1|0|Sewing Machine
279947|1|0|Seed Hybridizer
279948|1|0|Rock Garden
279949|1|0|Repair Bot
279950|1|0|Reagent Bot
279951|1|0|Plague Doctor's Laboratory
279952|1|0|Molten Foundry
279955|1|0|Master Forge
279956|1|0|Mana Well
279957|1|0|Cookie's Feast
279959|1|0|Loom
279960|1|0|Lodestone
279961|1|0|Journeyman Campfire Kit
279962|1|0|Incense Candle
279964|1|0|Greenhouse
279965|1|0|Fishing Rack
279966|1|0|Fishing Hut
279967|1|0|Fish Bowl
279968|1|0|First Aid Kit
279969|1|0|Field Guide
279970|1|0|Fermenter
279972|1|0|Faction Banner
279973|1|0|Faction Banner
279974|1|0|Expert Campfire Kit
279976|1|0|Enchanted Lute
279978|1|0|Camp Tent
279979|1|0|Camp Chair
279981|1|0|Basic Campfire Kit
279982|1|0|Iron Oven
279985|1|0|Arcane Salvager
279987|1|0|Arcane Forge
279988|1|0|Anvil
279989|1|0|Anarchist's Workbench
279990|1|0|Alchemy Laboratory
279991|1|12|Dry Branch
279993|1|12|Titanic Keystone
279996|1|12|Goaz Stone
280042|1|12|Tattered Spellbook
280087|1|12|Soft Nightsaber Pelt
280088|1|1|Soft Saber Sack
280092|1|12|Wyrmtail
280099|1|12|Crimson Crate
280103|1|12|Razormaw Incisor
280132|1|12|Perfect Razormaw Egg
280179|1|12|Shipping Label
280180|1|12|Shipping Label
280181|1|12|Redstone Basilisk Scale
280203|1|12|Jameson's Training Sword
280306|2|4|Whimsical Waistwrap
280307|2|4|Gizmo Girdle
280308|2|4|Clanking Cord
280310|2|4|Floppy Goggles
280311|2|4|Bent Goggles
280312|2|4|Stuckbutton Goggles
280313|2|4|Dented Goggles
280317|1|2|Frying Pan
280319|1|12|Unruptured Stalker Gland
280321|2|9|Schematic: Whimsical Waistwrap
280322|2|9|Schematic: Gizmo Girdle
280323|2|9|Schematic: Clanking Cord
280324|2|9|Schematic: Serrated Strap
280325|2|9|Schematic: Floppy Goggles
280326|2|9|Schematic: Bent Goggles
280327|2|9|Schematic: Stuckbutton Goggles
280328|2|9|Schematic: Dented Goggles
280330|1|12|Carnage's Head
280331|1|12|Malignant Rotclaw Flesh
280347|1|15|Shadowgale Squirrel
280369|1|12|Dragonmaw Armaments
280375|1|12|Worgen Bits
280390|1|12|Carved Stone Trinket
280391|1|12|Carved Stone Trinket
280392|1|12|Howin's Missive
280394|1|12|Goaz Stone
280395|1|12|Heart of Ados
280396|1|12|Heart of Modr
280397|1|12|Heart of Golm
280398|1|12|Heart of Neru
280399|1|2|Damaged Scimitar
280400|1|2|Worn Bludgeon
280402|1|2|Rusty Dagger
280403|1|12|Whelgar Relic Package
280404|1|4|Lordaeron Forever Tabard
280413|1|12|Flintfire's Shipment
280417|1|12|Damaged Blue Crystal
280426|1|12|Sack of Fish
280430|1|12|Mountaineer Gretchen's Report
280438|1|15|Abominable Head
280449|1|4|Skyborne Tabard
280456|1|15|Weevil K. Neevil
280459|1|12|Crystal Infused Scale
280502|1|12|Relic of the Fang
280504|1|12|Mudsoaked Scrap
280544|4|15|Cerulean Prideclaw
280567|1|0|Small Sack of Gems
280604|3|2|Rage of the Storm
280605|3|2|Tidebringer's Claw
280607|3|2|Lightning's Grasp
280608|1|12|Eldarath Relic
280610|1|12|Lord Sarthiss' Head
280611|3|15|Veteran Adventurer's Loyal Companion
280614|3|15|Pachimari
280615|1|15|Galestrider Chick
280623|1|4|Veteran Adventurer's Rucksack
280679|1|12|Relic of the Claw
280680|1|12|Relic of the Silent Shadow
280686|1|12|Rod of Deep Dominion
280696|3|4|Elementalist's Guard
280697|1|15|Plagued Cockroach
280699|1|15|Undercity Cockroach
280703|1|15|Jungle Boa
280729|1|4|Shen'dorei Tabard
280740|1|15|Shen'dorei Windwell
280766|2|4|Satchel of Potions
280794|1|15|Brown Ground Squirrel Whistle
280795|1|15|Red Ground Squirrel Whistle
280797|1|15|Rabbit Crate (Arctic)
280801|1|15|Rabbit Crate (Brown)
280803|1|15|Eagle Owl
280806|1|12|Stolen Explosives
280831|1|12|Hatescreech's Amulet
280832|1|12|Windmistress Gaedress' Amulet
280834|1|12|Witchmother Arysa's Amulet
280839|1|12|Blackrock Supplies
280841|1|12|Stolen Weapon
280911|1|12|Spiked Collar
280943|1|15|Tome of Tremayne Family Blacksmithing Techniques
281015|1|0|Scroll: DOST OREM
281016|1|0|Scroll: FORGOT HOOF THUD
281017|1|0|Scroll: KEEP CLEF FOCI
281018|1|0|Scroll: RARE SERVICHI RADAR
281023|1|12|Mature Fel Moss
281030|1|12|Treaty of Understanding
281031|1|12|Mulgore Expansion Plans
281035|1|12|Shredder Operation Instructions
281036|1|12|Barrens Operations Best Practices
281037|1|12|One "Gerenzo", of Stonetalon
281038|1|12|Feather of Jai'vhanel
281039|1|12|Mulgore Expansion Plans
281040|1|15|Prepared Incense
281041|1|15|Bundle of Herbs
281042|1|15|Bundle of Dried Cedar Twigs
281043|1|15|Sinew Thread
281044|1|15|Ceremonial Flint and Tinder
281046|1|12|Raven Hill Tome
281048|1|12|Clearcutter Key
281052|1|12|Ombassa's Hide
281059|1|0|Loose Clearcutter Blade
281060|3|15|Replica Ironforge Air Rifle
281139|1|12|Thunderhorn's Report
281142|1|15|Merrick's Bow
281143|1|15|Ira's Dagger
281145|1|15|Silvia's Sword
281147|1|15|Grant's Shield
281149|0|15|Memories of Valor
281166|3|15|Panda Collar
281167|3|15|Zergling Leash
281168|3|15|Diablo Stone
281228|1|12|Filled Freshwater Phial
281229|1|12|Empty Phial
281234|1|0|Potion of Winterspring Shrouding
281240|1|12|Tom's Gift
281241|1|12|Chillwind Chimaera Fur
281242|1|12|Winterspring Owl Feather
281243|1|12|Hollee's Note
281250|2|4|Forest Oracle's Cloak
281251|2|4|Courier's Wristguards
281252|2|4|Harpy Claw Ring
281253|2|2|Mountaineer's Greataxe
281254|2|2|Invader's Mace
281256|2|4|Repurposed Hair Band
281257|2|2|Daggerfang's Daggerfang
281258|2|4|Essene's Hope
281259|2|4|Stonard Stompers
281260|2|4|Ancestral Waistcord
281261|2|4|Crystal-flecked Cord
281262|2|4|Crystal-flecked Waistguard
281263|2|2|Wicked Lich's Finger
281264|2|2|Ghastly Bow
281265|2|4|Roadwatcher's Confidence
281266|1|4|Furred Belt
281267|2|4|Raptorscale Pants
281268|1|4|Depleted Ritual Band
281269|2|4|Mogra's Friendship Bracelet
281270|2|4|Thra's Friendship Bracelet
281271|2|4|Puk's Friendship Bracelet
281272|2|4|Brog's Friendship Bracelet
281273|2|4|Migi's Friendship Bracelet
281274|2|2|Makeshift Stormcaller
281275|2|4|Mantle of Scaleslaying
281276|2|4|Pauldrons of Scaleslaying
281277|2|4|Shoulders of Scaleslaying
281278|2|4|Shoulderplates of Scaleslaying
281279|2|4|Hailgiant's Fists
281280|2|4|Mountain Climbers
281281|2|4|Frost's Whisper Pendant
281282|1|0|A Little Somethin'
281283|2|4|Patchwing Pants
281284|2|4|Howlhide Vest
281285|2|4|Finscale Soles
281286|2|4|High Order Pendant
281287|2|4|Windshaper Pendant
281288|2|4|Shen'dorei Signet
281289|2|4|Swordfeather Cloak
281290|2|4|Replica Crescent Necklace
281291|3|4|Mathystra Channeling Orb
281292|3|4|Onu's Patience
281293|2|2|Weathered Deathstalker's Blade
281294|2|4|Expended Apothecary Vial
281295|2|4|Pelt Pants
281296|2|2|Knight's Lance
281297|2|2|Royal Dagger
281298|2|4|Ti'ik's Tattered Trousers
281299|2|4|Profane Ritual Robes
281301|2|4|Sacrificial Shackles
281302|2|4|Whelpscale Necklace
281303|2|4|Bleached Scale Vest
281304|2|4|Prospector's Signet
281305|2|4|Excavation Cloak
281306|2|4|Flamescarred Spellbook
281307|2|4|Dragonmaw Buckler
281308|2|2|Jameson's Backup Sword
281309|2|4|Razormaw Shorts
281310|2|4|Carnage Trousers
281312|3|2|Fallen Dragon's Scepter
281313|3|2|Trusty Sword
281314|3|2|Subdued Dragon's Fang
281315|2|4|Foulfur Gloves
281316|2|4|Glimmerchain Trousers
281317|2|4|Redstone Boots
281318|2|4|Bouquet of Auberdine Flowers
281319|3|4|Golem War Cloak
281320|3|4|Rune-Etched Ring
281321|3|4|Giantstone Medallion
281322|1|4|Frosthowl's Footwarmers
281323|2|4|Spirit-buckle Belt
281324|2|4|Sailing Tunic
281328|0|15|Valory Family Crest
281330|1|12|Message from the Supreme Magister
281331|1|12|Windshaper Ritual Dagger
281347|1|15|Torn Page
281348|1|15|Parchment of Chaos
281349|1|15|Parchment of Darkness
281350|2|13|Keystone Fragment
281352|1|13|Ancient Runestone
281356|1|15|Burnt Page
281358|1|13|Stone Key
281359|1|13|Dormant Runestone
281371|2|15|Elemental Attractor
281473|1|15|Guild Charter
281538|2|4|Matriarch's Mantle
281539|2|4|Bear Fur Cowl
281586|3|2|Elderwild Construction Hammer
281587|3|2|Greatflank Flayer
281588|3|2|Nature's Cull
281628|3|2|Blade of Bandarion
281629|1|12|Patrol Orders
281630|1|12|Scarlet Keyring
281631|1|4|Collector's Edition Tabard
281634|3|4|Field Researcher's Loop
281635|3|4|Philanthropist's Ring
281636|3|4|Museum Keeper's Chain
281637|3|4|Antique Bulwark
281657|3|4|Corrupted Riverglades Pendant
281660|2|2|Iron Star
281673|2|4|Loop of Sacrifice
281675|2|4|Lakeshire Firefighter's Headband
281680|2|15|Customer Service Care Package
281685|2|4|Restored Cloth Helm
281686|2|4|Restored Cloth Shoulders
281687|2|4|Restored Cloth Vest
281688|2|4|Restored Cloth Bracers
281689|2|4|Restored Cloth Handwraps
281690|2|4|Restored Cloth Belt
281691|2|4|Restored Cloth Pants
281692|2|4|Restored Cloth Shoes
281693|2|4|Restored Leather Hood
281694|2|4|Restored Leather Spaulders
281695|2|4|Restored Leather Tunic
281696|2|4|Restored Leather Wristcuffs
281697|2|4|Restored Leather Gloves
281698|2|4|Restored Leather Strap
281699|2|4|Restored Leather Chaps
281700|2|4|Restored Leather Boots
281701|2|4|Restored Mail Coif
281702|2|4|Restored Mail Shoulderguards
281703|2|4|Restored Mail Chestpiece
281704|2|4|Restored Mail Wristguards
281705|2|4|Restored Mail Clasps
281706|2|4|Restored Mail Belt
281707|2|4|Restored Mail Legguards
281708|2|4|Restored Mail Boots
281709|2|4|Restored Plate Helm
281710|2|4|Restored Plate Shoulders
281711|2|4|Restored Plate Chestguard
281712|2|4|Restored Plate Wristguards
281713|2|4|Restored Plate Handguards
281714|2|4|Restored Plate Belt
281715|2|4|Restored Plate Legs
281716|2|4|Restored Plate Boots
281717|2|4|Restored Cloak
281718|2|4|Restored Ring
281719|2|4|Restored Necklace
281720|2|2|Restored Chopper
281721|2|2|Restored Cleaver
281722|2|2|Restored Dagger
281723|2|2|Restored Basher
281724|2|2|Restored Smasher
281725|2|2|Restored Spear
281727|2|2|Restored Greatstaff
281728|2|2|Restored Shortsword
281729|2|2|Restored Longsword
281730|2|4|Restored Bauble
281731|2|4|Restored Buckler
281732|2|2|Restored Bow
281733|2|2|Restored Wand
281927|2|4|Boulderheart Band
282006|1|0|Crumbling Hearthstone
282011|1|0|Restored Healing Potion
282013|1|0|Restored Mana Potion
282015|1|1|Restored Small Brown Pouch
282016|1|1|Restored Brown Leather Satchel
282017|1|1|Restored Heavy Brown Bag
282018|1|0|Restorative Bread
282026|2|4|Unyielding Battle Signet
282028|1|12|Broken Frond of Celastrus
282046|0|15|Gnome Skull
282064|2|2|Tim's Lost Rib
282065|1|12|Sealed Letter
282080|2|4|Flame Seared Signet
282283|3|4|Malignant Root
282284|2|2|Webwood Slicer
282285|1|0|Clearcutter Key
282286|1|1|Shipwright's Satchel
282294|1|4|Guild Tabard
282338|1|12|Hallowed Memorandum
282346|1|12|Tainted Tablet
282380|1|12|Glyphic Parchment
282400|1|12|Archaic Rune
282416|1|12|Glowing Recall Crystal
282418|1|12|Humming Recall Crystal
282419|1|12|Crumpled Note
282420|1|12|Folded Parchment
282421|1|12|Scribbled Note
282422|1|12|Simple Note
282423|1|12|Consecrated Scroll
282559|0|15|Fallen Adventurer's Femur
283389|1|12|Skonk's List
284092|3|15|Keystone Fragment
284093|4|15|Keystone Fragment
284146|1|12|Essene's Waterskin
284150|1|12|Essene's Spellbook
284151|1|12|Essene's Note
284271|1|15|Emergency Cache
284583|1|15|Coin Pouch
284584|1|15|Coin Pouch
284585|1|15|Coin Pouch
284586|1|15|Coin Pouch
284664|2|15|Packmule Treat
284705|1|12|Essene's Necklace
284844|1|12|Dragonmaw Dispatch
284845|1|12|Thicket Raptor Hide
284868|1|0|Holy Hand Grenade of Alterac
284869|1|0|Unsanctified Grenade
284870|1|9|Schematic: Unsanctified Grenade
284871|1|9|Recipe: Transmute Legionite
285168|1|0|Theramore Basic Care Package
285169|1|0|Theramore Standard Care Package
285170|1|0|Theramore Advanced Care Package
285171|1|0|Darkspear Basic Care Package
285172|1|0|Darkspear Standard Care Package
285173|1|0|Darkspear Advanced Care Package
285275|2|2|Satchel of Copper Bombs
285276|2|2|Satchel of Bronze Bombs
285277|2|2|Satchel of Iron Bombs
285278|2|2|Satchel of Dark Iron Bombs
285279|2|2|Cracked Blacksmith Hammer
285280|2|2|Mithril Blacksmith Hammer
285281|3|2|Arcanite Blacksmith Hammer
285285|2|9|Schematic: Satchel of Copper Bombs
285286|2|9|Schematic: Satchel of Bronze Bombs
285287|2|9|Schematic: Satchel of Iron Bombs
285288|2|9|Schematic: Satchel of Dark Iron Bombs
285289|2|9|Plans: Cracked Blacksmith Hammer
285290|2|9|Plans: Mithril Blacksmith Hammer
285291|3|9|Plans: Arcanite Blacksmith Hammer
285327|1|4|Kirin Tor Tabard
285352|4|4|Tabard of Eternal Exploration
285353|3|4|Eternal Explorer's Backpack
285354|4|15|Azurky
285356|1|12|Advisor Emerson's Instructions
285357|1|12|Advisor Nazgrel's Instructions
285808|1|12|Eye of Blackhand
285868|1|12|Eye of Drakkisath
285872|1|12|Mantle of the Grand Crusader
285873|1|12|Shattered Pauldron of Rivendare
285949|1|12|Blood of Immol'thar
285951|1|12|Direhorn Matriarch's Heart
285952|1|12|Stone Heart of the Watcher
285953|1|12|Crown Jewels of Eldre'Thalas
285960|1|12|Everfrost Sample
285962|1|12|Gandling's Signet Ring
285963|1|12|Mote of Corruption
286008|1|12|Naga Spinefin
286009|1|12|Aggor's Belt
286010|1|12|Broken Bone Trident
286011|1|12|Banner Scrap
286012|1|12|Orcish Dagger
286017|1|12|Dewy Lasher Frond
286069|1|12|Lashwater Salve
286075|1|12|Herak's Head
286076|2|9|Schematic: Small Purple Rocket
286077|2|9|Schematic: Small White Rocket
286078|2|9|Schematic: Small Yellow Rocket
286079|2|9|Schematic: Large Purple Rocket
286080|2|9|Schematic: Large White Rocket
286081|2|9|Schematic: Large Yellow Rocket
286082|2|9|Schematic: Purple Rocket Cluster
286083|2|9|Schematic: White Rocket Cluster
286084|2|9|Schematic: Yellow Rocket Cluster
286085|2|9|Schematic: Large Purple Rocket Cluster
286086|2|9|Schematic: Large White Rocket Cluster
286087|2|9|Schematic: Large Yellow Rocket Cluster
286104|1|12|Longwalker Malah's Report
286152|1|0|Plated Armorfish
286153|1|9|Recipe: Plated Armorfish
286176|1|12|Executor's Motivator
286200|1|12|Dillinger's Report
286201|1|12|Kristof's Report
286202|1|12|Gordo's Report
286204|1|12|Tomb Weed
286205|1|12|Half-Eaten Fish
286209|1|12|Shiny Junk
286210|1|15|A Winter Veil Gift
286214|1|12|Duskweed Petal
286215|1|12|Vial of Animal Blood
286259|1|12|Faintly Glowing Bone
286263|0|15|Muradin Bronzebeard's Silver Coin
286264|0|15|Aegwynn's Silver Coin
286265|0|15|Alleria's Silver Coin
286266|0|15|Antonidas' Silver Coin
286267|0|15|Arcanist Doan's Silver Coin
286268|0|15|Fandral Staghelm's Silver Coin
286269|1|12|Glowing Crystal Fragment
286270|0|15|High Tinker Mekkatorque's Silver Coin
286271|0|15|Khadgar's Silver Coin
286272|0|15|King Terenas Menethil's Silver Coin
286273|0|15|Maiev Shadowsong's Silver Coin
286274|0|15|Medivh's Silver Coin
286275|0|15|Prince Magni Bronzebeard's Silver Coin
286279|0|15|Anduin Wrynn's Gold Coin
286280|0|15|Uther Lightbringer's Gold Coin
286281|0|15|Arthas' Gold Coin
286283|0|15|Arugal's Gold Coin
286284|0|15|Brann Bronzebeard's Gold Coin
286287|0|15|Kel'Thuzad's Gold Coin
286288|0|15|Lady Jaina Proudmoore's Gold Coin
286290|0|15|Lady Katrana Prestor's Gold Coin
286291|0|15|Sylvanas Windrunner's Gold Coin
286292|0|15|Tirion Fordring's Gold Coin
286293|0|15|Archimonde's Gold Coin
286294|0|15|Valdrus Blackthorne's Gold Coin
286298|0|15|Umbrinoth's Gold Coin
286299|0|15|Thrall's Gold Coin
286300|0|15|Sonya Darkhallow's Gold Coin
286302|0|15|Zarla Ober's Gold Coin
286304|0|15|A Footman's Copper Coin
286306|0|15|Vargoth's Copper Coin
286307|0|15|Ansirem's Copper Coin
286308|0|15|Attumen's Copper Coin
286309|0|15|Danath's Copper Coin
286310|0|15|Elling Trias' Copper Coin
286311|0|15|Falstad Wildhammer's Copper Coin
286312|0|15|Inigo's Copper Coin
286313|0|15|Landro Longshot's Copper Coin
286314|0|15|Squire Rowan's Copper Coin
286315|0|15|Rath'mael's Copper Coin
286316|0|15|Mason's Copper Coin
286317|0|15|Ofalo's Copper Coin
286318|0|15|Sair's Copper Coin
286325|1|12|Avala's Core
286326|1|12|Riptear's Heart
286327|0|15|Rhonin's Gold Coin
286328|0|15|Elaadrin Evengale's Silver Coin
286339|1|12|Mostly Dry Firewood
286355|1|12|Crate of Candles
286358|1|12|Coalbeard's Rifle
286359|1|12|Sunhammer's Rifle
286360|1|12|Stoneanvil's Rifle
286405|1|0|Blooming Heart
286411|0|15|Plant Stem
286415|4|12|Reliquary of Tyr
286426|2|4|Honorbound Cloak
286427|2|4|Cloak of the Honored Guest
286647|1|12|Depleted Crystal Heart
286648|1|12|Depleted Crystal Heart
286724|4|15|Verdant Sea Turtle
286727|4|15|Crimson Rooster
286737|1|4|Avala's Binding
286756|4|15|Spectral Wolf Pack
287090|1|4|Letter Opener
287416|1|0|Truskis' Cheesecake Slice
287505|1|12|Tender Strider Meat
287620|3|4|Rugged Totemic Backpack
287621|3|4|Gilded Blademaster's Chestpiece
287622|3|4|Gilded Blademaster's Belt
287623|3|4|Gilded Blademaster's Legguards
287624|3|4|Gilded Blademaster's Boots
287625|3|4|Gilded Blademaster's Gloves
287626|3|4|Gilded Blademaster's Banner
287627|3|4|Gilded Blademaster's Collar
287628|3|4|Gilded Blademaster's Shoulders
287647|3|0|Ensemble: Gilded Blademaster's Armor
287648|3|2|Gilded Blademaster's Greatsword
287958|1|12|Titan Relic
287959|1|12|Titan Relic
287963|1|0|Roasted Quail
287964|1|0|Morning Glory Dew
287966|1|0|Minor Healing Potion
287967|1|0|Lesser Healing Potion
287968|1|0|Minor Mana Potion
287969|1|0|Lesser Mana Potion
287971|1|1|Woolen Bag
287972|1|0|Rumsey Rum Dark
287973|1|0|Tender Wolf Steak
287974|1|0|Grilled Squid
287975|1|0|Swiftness Potion
287976|1|0|Free Action Potion
287977|1|0|Greater Healing Potion
287978|1|0|Rough Sharpening Stone
287979|1|7|Lesser Wizard Oil
287980|2|0|Elemental Sharpening Stone
287992|1|13|Old Key
288185|1|15|Adventurer's Tent
288336|1|0|Blue Firework
288337|1|0|Green Firework
288338|1|0|Red Firework
288339|1|0|Red Streaks Firework
288340|1|0|Yellow Rose Firework
288896|1|0|Superior Healing Potion
288897|1|0|Superior Mana Potion
288898|1|0|Swiftness Potion
288900|4|2|Earthshaker
288926|4|4|Choker of the Fire Lord
288927|4|4|Quick Strike Ring
288928|4|4|Heavy Dark Iron Ring
288929|4|4|Band of Sulfuras
288930|4|4|Cauterizing Band
288931|4|4|Ring of Spell Power
289081|1|0|Noggenfogger Elixir
289082|1|0|Elixir of Endless Intellect
289083|1|0|Elixir of Endless Power
289084|1|0|Elixir of Endless Healing
289086|1|0|Elixir of Endless Rapidity
289087|1|0|Elixir of Endless Opportunity
289088|1|0|Scroll of Endless Fortitude
289292|4|2|Hammer of Bestial Fury
289294|5|2|Thunderfury, Blessed Blade of the Windseeker
289295|5|2|Sulfuras, Hand of Ragnaros
289296|4|2|Benediction
289297|4|2|Anathema
289303|4|2|Rhok'delar, Longbow of the Ancient Keepers
289321|1|0|Elixir of Endless Mana
289329|1|0|Elixir of Endless Growth
289330|1|0|Scroll of Endless Speed
289334|1|0|Elixir of Endless Experience
289439|3|15|Pouch of Violet Dust
289559|1|0|Enchant Boots - Speed
289560|2|9|Formula: Enchant Boots - Speed
290333|2|2|Berdun's Trusty Rifle
]==],
}
