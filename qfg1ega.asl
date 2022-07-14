state("DOSBox", "DOSBox 0.74-3") {
   // Set when the active room changes
   ushort currRoomID : 0x34D6D0, 0x17694;
   // Set when game initiates transition to a room
   ushort loadRoomID : 0x34D6D0, 0x17698;

   // Seems to behave the same as currRoomID, except it doesn't clear to 0 on restart
   //ushort aux1RoomID : 0x34D6D0, 0x145E6;
   // Seems to behave the same as currRoomID, except it gets set to 22612, then 0, then the actual room ID on each transition
   //ushort aux2RoomID : 0x34D6D0, 0x1DFC8;
}

startup {
   {
      vars.roomIDs = new Dictionary<int, string>();
      settings.Add("rooms", true, "Split on room entered");

      settings.CurrentDefaultParent = "rooms";
      settings.Add("rooms_town", true, "Town rooms and environs");
      settings.Add("rooms_castle", true, "Castle rooms and environs");
      settings.Add("rooms_wilderness", true, "Wilderness rooms");
      settings.Add("rooms_brigand", true, "Brigand fortress rooms");

      settings.CurrentDefaultParent = "rooms_town";
      vars.roomIDs.Add(301, "heroes_tale_inn");       settings.Add("heroes_tale_inn",     false,   "Hero's Tale Inn");
      vars.roomIDs.Add(311, "adventurers_guild");     settings.Add("adventurers_guild",   false,   "Adventurer's Guild Hall");
      vars.roomIDs.Add(313, "house_old_lady");        settings.Add("house_old_lady",      false,   "Old lady's house");
      vars.roomIDs.Add(314, "magic_shop");            settings.Add("magic_shop",          false,   "Zara's magic shop");
      vars.roomIDs.Add(321, "house_sheriff");         settings.Add("house_sheriff",       false,   "Sheriff's house");
      vars.roomIDs.Add(322, "dry_goods_store");       settings.Add("dry_goods_store",     false,   "Dry goods store");
      vars.roomIDs.Add(331, "tavern");                settings.Add("tavern",              false,   "Tavern");
      vars.roomIDs.Add(332, "thieves_guild");         settings.Add("thieves_guild",       false,   "Thieves' Guild");
      vars.roomIDs.Add(53,  "centaurs_farm");         settings.Add("centaurs_farm",       false,   "Centaur's farm");
      vars.roomIDs.Add(54,  "healers_outside");       settings.Add("healers_outside",     false,   "Healer's house (outside)");
      vars.roomIDs.Add(55,  "healers_inside");        settings.Add("healers_inside",      false,   "Healer's house (inside)");
      vars.roomIDs.Add(64,  "graveyard");             settings.Add("graveyard",           false,   "Graveyard");
      vars.roomIDs.Add(73,  "archery_range");         settings.Add("archery_range",       false,   "Archery range");

      settings.CurrentDefaultParent = "rooms_castle";
      vars.roomIDs.Add(37,  "castle_gate");           settings.Add("castle_gate",         false,   "Castle (gate)");
      vars.roomIDs.Add(38,  "castle_barracks");       settings.Add("castle_barracks",     false,   "Castle (barracks)");
      vars.roomIDs.Add(39,  "castle_courtyard");      settings.Add("castle_courtyard",    false,   "Castle (courtyard)");
      vars.roomIDs.Add(40,  "castle_stable");         settings.Add("castle_stable",       false,   "Castle (stable)");
      vars.roomIDs.Add(41,  "castle_keep");           settings.Add("castle_keep",         false,   "Castle (keep)");
      vars.roomIDs.Add(141, "castle_great_hall");     settings.Add("castle_great_hall",   false,   "Castle (great hall)");
      vars.roomIDs.Add(600, "victory");               settings.Add("victory",             true,    "So You've Become A Hero!");

      settings.CurrentDefaultParent = "rooms_wilderness";
      vars.roomIDs.Add(10,  "eranas_peace");          settings.Add("eranas_peace",        false,   "Erana's Peace");
      vars.roomIDs.Add(13,  "north_cave_outside");    settings.Add("north_cave_outside",  false,   "North cave (outside)");
      vars.roomIDs.Add(14,  "north_cave_bear");       settings.Add("north_cave_bear",     false,   "North cave (bear)");
      vars.roomIDs.Add(15,  "north_cave_kobold");     settings.Add("north_cave_kobold",   false,   "North cave (kobold)");
      vars.roomIDs.Add(16,  "spirea_cliff");          settings.Add("spirea_cliff",        false,   "Spirea cliff");
      vars.roomIDs.Add(21,  "baba_yaga_inside");      settings.Add("baba_yaga_inside",    false,   "Baba Yaga's hut (inside)");
      vars.roomIDs.Add(22,  "baba_yaga_outside");     settings.Add("baba_yaga_outside",   false,   "Baba Yaga's hut (outside)");
      vars.roomIDs.Add(28,  "zauberberg_base");       settings.Add("zauberberg_base",     false,   "Zauberberg (base)");
      vars.roomIDs.Add(29,  "zauberberg_summit");     settings.Add("zauberberg_summit",   false,   "Zauberberg (summit)");
      vars.roomIDs.Add(30,  "erasmus_lower");         settings.Add("erasmus_lower",       false,   "Erasmus's house (lower)");
      vars.roomIDs.Add(31,  "erasmus_upper");         settings.Add("erasmus_upper",       false,   "Erasmus's house (upper)");
      vars.roomIDs.Add(32,  "mages_maze");            settings.Add("mages_maze",          false,   "Mage's Maze");
      vars.roomIDs.Add(45,  "goblin_camp");           settings.Add("goblin_camp",         false,   "Goblin camp");
      vars.roomIDs.Add(58,  "brauggi");               settings.Add("brauggi",             false,   "Brauggi");
      vars.roomIDs.Add(60,  "meeps");                 settings.Add("meeps",               false,   "Meeps");
      vars.roomIDs.Add(67,  "trapped_fox");           settings.Add("trapped_fox",         false,   "Trapped fox");
      vars.roomIDs.Add(70,  "mushroom_ring");         settings.Add("mushroom_ring",       false,   "Mushroom ring");
      vars.roomIDs.Add(76,  "dryad");                 settings.Add("dryad",               false,   "Dryad");
      vars.roomIDs.Add(82,  "flying_falls");          settings.Add("flying_falls",        false,   "Flying Falls");
      vars.roomIDs.Add(83,  "henry_cave");            settings.Add("henry_cave",          false,   "Henry the Hermit");
      vars.roomIDs.Add(84,  "antwerp");               settings.Add("antwerp",             false,   "Antwerp");
      vars.roomIDs.Add(87,  "lake_miller");           settings.Add("lake_miller",         false,   "Lake Miller");

      settings.CurrentDefaultParent = "rooms_brigand";
      vars.roomIDs.Add(89,  "freds_cave");            settings.Add("freds_cave",          false,   "Fred's cave");
      vars.roomIDs.Add(88,  "freds_lair");            settings.Add("freds_lair",          false,   "Fred's lair");
      vars.roomIDs.Add(91,  "brigand_ambush");        settings.Add("brigand_ambush",      false,   "Brigand ambush");
      vars.roomIDs.Add(93,  "toro");                  settings.Add("toro",                false,   "Toro");
      vars.roomIDs.Add(94,  "trap_room");             settings.Add("trap_room",           false,   "Trap room");
      vars.roomIDs.Add(95,  "mess_hall");             settings.Add("mess_hall",           false,   "Mess hall");
      vars.roomIDs.Add(96,  "yorick");                settings.Add("yorick",              false,   "Yorick's maze");
      vars.roomIDs.Add(97,  "elsa");                  settings.Add("elsa",                false,   "Elsa's office");

      vars.roomsVisited = new List<int>();

      settings.CurrentDefaultParent = null;
   }

   {
      vars.itemIDs = new Dictionary<int, string>();
      settings.Add("items", true, "Split on item acquired");

      //vars.itemIDs.Add(0,  "food_ration");         settings.Add("food_ration",         false, "Food Ration");
      //vars.itemIDs.Add(3,  "broadsword");          settings.Add("broadsword",          false, "Broadsword");
      //vars.itemIDs.Add(4,  "dagger");              settings.Add("dagger",              false, "Dagger");
      //vars.itemIDs.Add(5,  "leather_armor");       settings.Add("leather_armor",       false, "Leather Armor");
      //vars.itemIDs.Add(6,  "shield");              settings.Add("shield",              false, "Shield");
      //vars.itemIDs.Add(7,  "piece_of_paper");      settings.Add("piece_of_paper",      false, "Piece of Paper");
      //vars.itemIDs.Add(8,  "apple");               settings.Add("apple",               false, "Small Apple");
      //vars.itemIDs.Add(9,  "vegetable");           settings.Add("vegetable",           false, "Vegetable");
      //vars.itemIDs.Add(18, "small_rock");          settings.Add("small_rock",          false, "Small Rock");
      //vars.itemIDs.Add(20, "lock_pick");           settings.Add("lock_pick",           false, "Lock Pick");
      //vars.itemIDs.Add(23, "flask_empty");         settings.Add("flask_empty",         false, "Empty Flask");
      //vars.itemIDs.Add(27, "mushroom");            settings.Add("mushroom",            false, "Mushroom");
      //vars.itemIDs.Add(28, "cheetaur_claw");       settings.Add("cheetaur_claw",       false, "Cheetaur Claw");
      //vars.itemIDs.Add(29, "troll_beard");         settings.Add("troll_beard",         false, "Troll Beard");
      //vars.itemIDs.Add(30, "chainmail_armor");     settings.Add("chainmail_armor",     false, "Chainmail Armor");
      //vars.itemIDs.Add(31, "potion_healing");      settings.Add("potion_healing",      false, "Healing Potion");
      //vars.itemIDs.Add(32, "potion_magic");        settings.Add("potion_magic",        false, "Magic Potion");
      //vars.itemIDs.Add(33, "potion_vigor");        settings.Add("potion_vigor",        false, "Vigor Potion");
      //vars.itemIDs.Add(34, "aa");                  settings.Add("aa",                  false, "aa");

      settings.CurrentDefaultParent = "items";
      settings.Add("items_dispel", true, "Dispel potion items");
      settings.Add("items_thief", true, "Thief items");
      settings.Add("items_other", true, "Other items");

      settings.CurrentDefaultParent = "items_dispel";
      vars.itemIDs.Add(17, "spirea_seed");         settings.Add("spirea_seed",         false, "Spirea Seed");
      vars.itemIDs.Add(19, "erana_flower");        settings.Add("erana_flower",        false, "Flower from Erana's Peace");
      vars.itemIDs.Add(24, "green_fur");           settings.Add("green_fur",           false, "Green Fur");
      vars.itemIDs.Add(25, "flask_fairy_dust");    settings.Add("flask_fairy_dust",    false, "Fairy Dust");
      vars.itemIDs.Add(26, "flask_water");         settings.Add("flask_water",         false, "Flying Water");
      vars.itemIDs.Add(38, "magic_acorn");         settings.Add("magic_acorn",         false, "Magic Acorn");
      vars.itemIDs.Add(35, "potion_dispel");       settings.Add("potion_dispel",       false, "Dispel Potion");

      settings.CurrentDefaultParent = "items_thief";
      vars.itemIDs.Add(11, "alabaster_vase");      settings.Add("alabaster_vase",      false, "Alabaster Vase");
      vars.itemIDs.Add(12, "candelabra");          settings.Add("candelabra",          false, "Candelabra");
      vars.itemIDs.Add(13, "music_box");           settings.Add("music_box",           false, "Music Box");
      vars.itemIDs.Add(14, "silver_candlestick");  settings.Add("silver_candlestick",  false, "Silver Candlestick");
      vars.itemIDs.Add(15, "string_of_pearls");    settings.Add("string_of_pearls",    false, "String of Pearls");
      vars.itemIDs.Add(21, "thief_tool_kit");      settings.Add("thief_tool_kit",      false, "Thief's Tool Kit");
      vars.itemIDs.Add(22, "thief_license");       settings.Add("thief_license",       false, "Thief's Guild License");

      settings.CurrentDefaultParent = "items_other";
      vars.itemIDs.Add(16, "gold_ring");           settings.Add("gold_ring",           false, "Gold Ring");
      vars.itemIDs.Add(2,  "kobold_key");          settings.Add("kobold_key",          false, "Kobold Key");
      vars.itemIDs.Add(10, "glowing_gem");         settings.Add("glowing_gem",         false, "Glowing Gem");
      vars.itemIDs.Add(36, "flask_unguent");       settings.Add("flask_unguent",       false, "Undead Unguent");
      vars.itemIDs.Add(1,  "mandrake_root");       settings.Add("mandrake_root",       false, "Mandrake Root");
      vars.itemIDs.Add(37, "hand_mirror");         settings.Add("hand_mirror",         false, "Hand Mirror");

      vars.inventoryItemCount = 39;
      vars.inventoryBase = new DeepPointer(0x34D6D0, 0x179F6);
      vars.oldInventoryBytes = null;

      settings.CurrentDefaultParent = null;
   }

   {
      vars.spellIDs = new Dictionary<int, string>();
      settings.Add("spells", true, "Split on spell learned");

      settings.CurrentDefaultParent = "spells";
      vars.spellIDs.Add(0, "spell_open");          settings.Add("spell_open",          false, "Open");
      vars.spellIDs.Add(1, "spell_detect_magic");  settings.Add("spell_detect_magic",  false, "Detect Magic");
      vars.spellIDs.Add(2, "spell_trigger");       settings.Add("spell_trigger",       false, "Trigger");
      vars.spellIDs.Add(3, "spell_dazzle");        settings.Add("spell_dazzle",        false, "Dazzle");
      //vars.spellIDs.Add(4, "spell_zap");           settings.Add("spell_zap",           false, "Zap");
      vars.spellIDs.Add(5, "spell_calm");          settings.Add("spell_calm",          false, "Calm");
      vars.spellIDs.Add(6, "spell_flame_dart");    settings.Add("spell_flame_dart",    false, "Flame Dart");
      vars.spellIDs.Add(7, "spell_fetch");         settings.Add("spell_fetch",         false, "Fetch");

      vars.spellCount = 8;
      vars.spellBase = new DeepPointer(0x34D6D0, 0x177B6);
      vars.oldSpellBytes = null;

      settings.CurrentDefaultParent = null;
   }

   vars.queuedSplits = 0;
   vars.tick = 0;
}

init {
   version = "DOSBox 0.74-3";

}

update {
   {
      if (current.currRoomID != old.currRoomID) {
         print("[QFG1EGA] @" + vars.tick + " currRoomID " + old.currRoomID + " -> " + current.currRoomID);
      }
      if (current.loadRoomID != old.loadRoomID) {
         print("[QFG1EGA] @" + vars.tick + " loadRoomID " + old.loadRoomID + " -> " + current.loadRoomID);
      }
      ++vars.tick;
   }

   if (current.loadRoomID == 9 || current.currRoomID == 9) {
      vars.roomsVisited.Clear();
   }
}

start {
   if (old.currRoomID == 203 && current.loadRoomID == 300) { return true; }
}

split {
   {
      string roomSettingName;

      // Sanity check - checking loadRoomID is sufficient, but checking currRoomID ensures we don't miss any transitions
      if (vars.roomIDs.TryGetValue(current.currRoomID, out roomSettingName) && settings[roomSettingName]) {
         if (!vars.roomsVisited.Contains(current.currRoomID)) {
            vars.roomsVisited.Add(current.currRoomID);
            ++vars.queuedSplits;
         }
      }

      if (vars.roomIDs.TryGetValue(current.loadRoomID, out roomSettingName) && settings[roomSettingName]) {
         if (!vars.roomsVisited.Contains(current.loadRoomID)) {
            vars.roomsVisited.Add(current.loadRoomID);
            ++vars.queuedSplits;
         }
      }
   }

   var inventoryBytes = vars.inventoryBase.DerefBytes(game, vars.inventoryItemCount * 2);
   if (vars.oldInventoryBytes != null) {
      for (int i = 0; i < vars.inventoryItemCount; ++i) {
         string itemSettingName;
         if (vars.itemIDs.TryGetValue(i, out itemSettingName) && settings[itemSettingName]) {
            if (vars.oldInventoryBytes[i * 2] == 0 && inventoryBytes[i * 2] > 0) { ++vars.queuedSplits; }
         }
      }
   }
   vars.oldInventoryBytes = inventoryBytes;

   var spellBytes = vars.spellBase.DerefBytes(game, vars.spellCount * 2);
   if (vars.oldSpellBytes != null) {
      for (int i = 0; i < vars.spellCount; ++i) {
         string spellSettingName;
         if (vars.spellIDs.TryGetValue(i, out spellSettingName) && settings[spellSettingName]) {
            if (vars.oldSpellBytes[i * 2] == 0 && spellBytes[i * 2] > 0) { ++vars.queuedSplits; }
         }
      }
   }
   vars.oldSpellBytes = spellBytes;

   if (vars.queuedSplits > 0) {
      --vars.queuedSplits;
      return true;
   }
}

reset {
   if (current.loadRoomID == 9 || current.currRoomID == 9) { return true; }
}
