state("QfG5") {
   int charPtr : 0x168088, 0x80;
   byte100 flags : 0x168088, 0x90;
   int day : 0x168088, 0x104;
   int loadedRoom : 0x1680B0, 0x20; // Excludes world map (900)
   //int dstRoom : 0x1665B8, 0xD0; // Seems to be a logical ID that doesn't always match loadedRoom, and doesn't always get set
}

startup {
   var allOptions = new List<ValueTuple<int, string, string, string, bool, string>>();

   allOptions.Add(ValueTuple.Create(-1, "group", "common", "Common split events", true, (string)null));
   {
      allOptions.Add(ValueTuple.Create(-1, "group", "common_rite_start", "Start Rite", false, "common"));
      {
         allOptions.Add(ValueTuple.Create(394, "flag", "flag_start_freedom",   "Rite of Freedom",   false, "common_rite_start"));
         allOptions.Add(ValueTuple.Create(411, "flag", "flag_start_conquest",  "Rite of Conquest",  false, "common_rite_start"));
         allOptions.Add(ValueTuple.Create(406, "flag", "flag_start_valor",     "Rite of Valor",     false, "common_rite_start"));
         allOptions.Add(ValueTuple.Create(386, "flag", "flag_start_destiny",   "Rite of Destiny",   false, "common_rite_start"));
         allOptions.Add(ValueTuple.Create(382, "flag", "flag_start_courage",   "Rite of Courage",   false, "common_rite_start"));
         allOptions.Add(ValueTuple.Create(403, "flag", "flag_start_peace",     "Rite of Peace",     false, "common_rite_start"));
         allOptions.Add(ValueTuple.Create(401, "flag", "flag_start_justice",   "Rite of Justice",   false, "common_rite_start"));
      }

      allOptions.Add(ValueTuple.Create(-1, "group", "common_rite_finish", "Finish Rite", false, "common"));
      {
         allOptions.Add(ValueTuple.Create(395, "flag", "flag_finish_freedom",  "Rite of Freedom",   false, "common_rite_finish"));
         allOptions.Add(ValueTuple.Create(412, "flag", "flag_finish_conquest", "Rite of Conquest",  false, "common_rite_finish"));
         allOptions.Add(ValueTuple.Create(407, "flag", "flag_finish_valor",    "Rite of Valor",     false, "common_rite_finish"));
         allOptions.Add(ValueTuple.Create(387, "flag", "flag_finish_destiny",  "Rite of Destiny",   false, "common_rite_finish"));
         allOptions.Add(ValueTuple.Create(383, "flag", "flag_finish_courage",  "Rite of Courage",   false, "common_rite_finish"));
         allOptions.Add(ValueTuple.Create(404, "flag", "flag_finish_peace",    "Rite of Peace",     false, "common_rite_finish"));
         allOptions.Add(ValueTuple.Create(402, "flag", "flag_finish_justice",  "Rite of Justice",   false, "common_rite_finish"));
      }

      allOptions.Add(ValueTuple.Create(712, "flag", "deed_king_me", "Accept/Decline Throne", true, "common"));
   }

   allOptions.Add(ValueTuple.Create(-1, "group", "rooms", "Split on room entered", false, (string)null));
   {
      allOptions.Add(ValueTuple.Create(-1, "group", "rooms_silmaria", "Silmaria", false, "rooms"));
      {
         allOptions.Add(ValueTuple.Create(-1, "group", "rooms_silmaria_north", "North", false, "rooms_silmaria"));
         {
            allOptions.Add(ValueTuple.Create(220, "room", "room_nob_hill",           "Nob Hill",                   false, "rooms_silmaria_north"));
            allOptions.Add(ValueTuple.Create(415, "room", "room_erasmus_guardian",   "Erasmus' guardian",          false, "rooms_silmaria_north"));
            allOptions.Add(ValueTuple.Create(410, "room", "room_erasmus_exterior",   "Erasmus' tower (exterior)",  false, "rooms_silmaria_north"));
            allOptions.Add(ValueTuple.Create(420, "room", "room_erasmus_interior",   "Erasmus' tower (interior)",  false, "rooms_silmaria_north"));
            allOptions.Add(ValueTuple.Create(350, "room", "room_arena_antechamber",  "Arena (antechamber)",        false, "rooms_silmaria_north"));
            allOptions.Add(ValueTuple.Create(355, "room", "room_arena_stadium",      "Arena (stadium)",            false, "rooms_silmaria_north"));
            allOptions.Add(ValueTuple.Create(360, "room", "room_breakin_house",      "Break-in house",             false, "rooms_silmaria_north"));
            allOptions.Add(ValueTuple.Create(240, "room", "room_hall_of_kings",      "Hall of Kings",              false, "rooms_silmaria_north"));
         }

         allOptions.Add(ValueTuple.Create(-1, "group", "rooms_silmaria_central", "Central", false, "rooms_silmaria"));
         {
            allOptions.Add(ValueTuple.Create(200, "room", "room_town_square",  "Town Square", false, "rooms_silmaria_central"));
            allOptions.Add(ValueTuple.Create(340, "room", "room_bank",         "Bank",        false, "rooms_silmaria_central"));
            allOptions.Add(ValueTuple.Create(320, "room", "room_magic_shop",   "Magic shop",  false, "rooms_silmaria_central"));
            allOptions.Add(ValueTuple.Create(310, "room", "room_apothecary",   "Apothecary",  false, "rooms_silmaria_central"));
         }

         allOptions.Add(ValueTuple.Create(-1, "group", "rooms_silmaria_south", "South", false, "rooms_silmaria"));
         {
            allOptions.Add(ValueTuple.Create(210, "room", "room_docks",           "Docks",                false, "rooms_silmaria_south"));
            allOptions.Add(ValueTuple.Create(250, "room", "room_dead_parrot",     "Dead Parrot Inn",      false, "rooms_silmaria_south"));
            allOptions.Add(ValueTuple.Create(270, "room", "room_facs",            "FACS",                 false, "rooms_silmaria_south"));
            allOptions.Add(ValueTuple.Create(390, "room", "room_science_island",  "Science Island",       false, "rooms_silmaria_south"));
            allOptions.Add(ValueTuple.Create(400, "room", "room_science_academy", "Academy of Science",   false, "rooms_silmaria_south"));
         }

         allOptions.Add(ValueTuple.Create(-1, "group", "rooms_silmaria_west", "West", false, "rooms_silmaria"));
         {
            allOptions.Add(ValueTuple.Create(230, "room", "room_west_gate",          "West Gate",            false, "rooms_silmaria_west"));
            allOptions.Add(ValueTuple.Create(380, "room", "room_adventurers_guild",  "Adventurer's Guild",   false, "rooms_silmaria_west"));
            allOptions.Add(ValueTuple.Create(280, "room", "room_thieves_guild",      "Thieves' Guild",       false, "rooms_silmaria_west"));
            allOptions.Add(ValueTuple.Create(290, "room", "room_inn",                "Gnome Ann's Land Inn", false, "rooms_silmaria_west"));
            allOptions.Add(ValueTuple.Create(300, "room", "room_inn_room",           "Your room",            false, "rooms_silmaria_west"));
            allOptions.Add(ValueTuple.Create(750, "room", "room_silmaria_exterior",  "Silmaria entrance",    false, "rooms_silmaria_west"));
         }

         //allOptions.Add(ValueTuple.Create(260, "room", "room_unknown_260", "???? (260)", false, "rooms_silmaria_????"));
         //allOptions.Add(ValueTuple.Create(370, "room", "room_unknown_370", "???? (370)", false, "rooms_silmaria_????"));
      }

      allOptions.Add(ValueTuple.Create(-1, "group", "rooms_marete", "Marete", false, "rooms"));
      {
         allOptions.Add(ValueTuple.Create(730, "room", "room_pool",                  "Dragon Blood Pool",                false, "rooms_marete"));
         allOptions.Add(ValueTuple.Create(735, "room", "room_dragon_1",              "Dragon battle (phase 1)",          false, "rooms_marete"));
         allOptions.Add(ValueTuple.Create(740, "room", "room_dragon_2",              "Dragon battle (phase 2)",          false, "rooms_marete"));
         allOptions.Add(ValueTuple.Create(551, "room", "room_hades_exterior_closed", "Hades (exterior, closed)",         false, "rooms_marete"));
         allOptions.Add(ValueTuple.Create(550, "room", "room_hades_exterior_open",   "Hades (exterior, open)",           false, "rooms_marete"));
         allOptions.Add(ValueTuple.Create(565, "room", "room_hades_interior_1",      "Hades (interior, entrance)",       false, "rooms_marete"));
         allOptions.Add(ValueTuple.Create(560, "room", "room_hades_interior_2",      "Hades (interior, skeleton)",       false, "rooms_marete"));
         allOptions.Add(ValueTuple.Create(570, "room", "room_hades_interior_3",      "Hades (interior, Styx/Guardian)",  false, "rooms_marete"));
         allOptions.Add(ValueTuple.Create(720, "room", "room_pegasus",               "Pegasus Peak",                     false, "rooms_marete"));
         allOptions.Add(ValueTuple.Create(620, "room", "room_ios",                   "Ios",                              false, "rooms_marete"));
         allOptions.Add(ValueTuple.Create(610, "room", "room_keros",                 "Keros",                            false, "rooms_marete"));
         allOptions.Add(ValueTuple.Create(600, "room", "room_naxos",                 "Naxos",                            false, "rooms_marete"));
         allOptions.Add(ValueTuple.Create(590, "room", "room_paros",                 "Paros",                            false, "rooms_marete"));
         allOptions.Add(ValueTuple.Create(580, "room", "room_tinos",                 "Tinos",                            false, "rooms_marete"));
      }

      allOptions.Add(ValueTuple.Create(-1, "group", "rooms_other", "Other islands", false, "rooms"));
      {
         allOptions.Add(ValueTuple.Create(440, "room", "room_atlantis_exterior",  "Atlantis (exterior)",  false, "rooms_other"));
         allOptions.Add(ValueTuple.Create(450, "room", "room_atlantis_interior",  "Atlantis (interior)",  false, "rooms_other"));
         allOptions.Add(ValueTuple.Create(460, "room", "room_atlantis_court",     "Atlantis (court)",     false, "rooms_other"));
         allOptions.Add(ValueTuple.Create(470, "room", "room_dryads",             "Delos (Dryad grove)",  false, "rooms_other"));
         allOptions.Add(ValueTuple.Create(480, "room", "room_oracle",             "Delos (Oracle)",       false, "rooms_other"));
         allOptions.Add(ValueTuple.Create(530, "room", "room_hydra",              "Hydra",                false, "rooms_other"));
         allOptions.Add(ValueTuple.Create(540, "room", "room_hydra_cave",         "Hydra (cave)",         false, "rooms_other"));
         allOptions.Add(ValueTuple.Create(770, "room", "room_limnos",             "Limnos (Erana)",       false, "rooms_other"));
         allOptions.Add(ValueTuple.Create(500, "room", "room_minos_exterior",     "Minos (exterior)",     false, "rooms_other"));
         allOptions.Add(ValueTuple.Create(510, "room", "room_minos_interior",     "Minos (interior)",     false, "rooms_other"));
         allOptions.Add(ValueTuple.Create(520, "room", "room_minos_chamber",      "Minos (chamber)",      false, "rooms_other"));
         allOptions.Add(ValueTuple.Create(680, "room", "room_sifnos_exterior",    "Sifnos (exterior)",    false, "rooms_other"));
         allOptions.Add(ValueTuple.Create(690, "room", "room_sifnos_interior",    "Sifnos (interior)",    false, "rooms_other"));
         allOptions.Add(ValueTuple.Create(780, "room", "room_zante",              "Zante (Katrina)",      false, "rooms_other"));
      }
   }

   allOptions.Add(ValueTuple.Create(-1, "group", "deeds", "Split on deed completed", false, (string)null));
   {
      allOptions.Add(ValueTuple.Create( 27, "flag", "deed_apprehend_arestes",        "Apprehend Arestes",                         false, "deeds"));
      allOptions.Add(ValueTuple.Create(602, "flag", "deed_buy_brazier",              "Buy Brazier",                               false, "deeds"));
      allOptions.Add(ValueTuple.Create(637, "flag", "deed_buy_healing_pills",        "Buy Healing Pills",                         false, "deeds"));
      allOptions.Add(ValueTuple.Create(653, "flag", "deed_buy_mana_potion",          "Buy Mana Potion",                           false, "deeds"));
      allOptions.Add(ValueTuple.Create(654, "flag", "deed_buy_map",                  "Buy Map",                                   false, "deeds"));
      allOptions.Add(ValueTuple.Create(652, "flag", "deed_buy_magnets",              "Buy Mystic Magnets",                        false, "deeds"));
      allOptions.Add(ValueTuple.Create(593, "flag", "deed_buy_painting",             "Buy Painting",                              false, "deeds"));
      allOptions.Add(ValueTuple.Create(668, "flag", "deed_buy_poison_pills",         "Buy Poison Cure Pills",                     false, "deeds"));
      allOptions.Add(ValueTuple.Create(707, "flag", "deed_buy_stamina_pills",        "Buy Stamina Pills",                         false, "deeds"));
      allOptions.Add(ValueTuple.Create(674, "flag", "deed_resistance_pool",          "Cast Resistance at Dragon Blood Pool",      false, "deeds"));
      allOptions.Add(ValueTuple.Create(706, "flag", "deed_create_staff",             "Create Magic Staff",                        false, "deeds"));
      allOptions.Add(ValueTuple.Create(631, "flag", "deed_dance_inn",                "Dance at the Inn",                          false, "deeds"));
      allOptions.Add(ValueTuple.Create(606, "flag", "deed_dance_dryads",             "Dance with the Dryads",                     false, "deeds"));
      allOptions.Add(ValueTuple.Create( 94, "flag", "deed_defeat_assassin",          "Defeat Assassin",                           false, "deeds"));
      allOptions.Add(ValueTuple.Create(611, "flag", "deed_defeat_dragon",            "Defeat Dragon",                             false, "deeds"));
      allOptions.Add(ValueTuple.Create(655, "flag", "deed_enter_mansion",            "Enter Minos' mansion",                      false, "deeds"));
      allOptions.Add(ValueTuple.Create(390, "flag", "deed_enter_rites",              "Enter Rites of Rulership",                  false, "deeds"));
      allOptions.Add(ValueTuple.Create(617, "flag", "deed_enter_academy",            "Enter Science Academy",                     false, "deeds"));
      allOptions.Add(ValueTuple.Create(235, "flag", "deed_free_ios",                 "Free Ios",                                  false, "deeds"));
      allOptions.Add(ValueTuple.Create(246, "flag", "deed_free_keros",               "Free Keros",                                false, "deeds"));
      allOptions.Add(ValueTuple.Create(312, "flag", "deed_free_naxos",               "Free Naxos",                                false, "deeds"));
      allOptions.Add(ValueTuple.Create(660, "flag", "deed_no_naxos_alarm",           "Free Naxos without alarm",                  false, "deeds"));
      allOptions.Add(ValueTuple.Create(333, "flag", "deed_free_paros",               "Free Paros",                                false, "deeds"));
      allOptions.Add(ValueTuple.Create(516, "flag", "deed_free_tinos",               "Free Tinos",                                false, "deeds"));
      allOptions.Add(ValueTuple.Create(592, "flag", "deed_get_augment",              "Get Augment scroll",                        false, "deeds"));
      allOptions.Add(ValueTuple.Create(645, "flag", "deed_get_lotus",                "Get Black Lotus",                           false, "deeds"));
      allOptions.Add(ValueTuple.Create(616, "flag", "deed_get_drugged_chocolate",    "Get Drugged Chocolate from Fenrus",         false, "deeds"));
      allOptions.Add(ValueTuple.Create(698, "flag", "deed_get_generals_shield",      "Get General's Shield",                      false, "deeds"));
      allOptions.Add(ValueTuple.Create(632, "flag", "deed_get_goo",                  "Get Goo",                                   false, "deeds"));
      allOptions.Add(ValueTuple.Create(638, "flag", "deed_get_hippocrene",           "Get Hippocrene Water",                      false, "deeds"));
      allOptions.Add(ValueTuple.Create(639, "flag", "deed_get_scales",               "Get Hydra Scales",                          false, "deeds"));
      allOptions.Add(ValueTuple.Create(640, "flag", "deed_get_teeth",                "Get Hydra Teeth",                           false, "deeds"));
      allOptions.Add(ValueTuple.Create(625, "flag", "deed_get_toolkit",              "Get Interesting Toolkit",                   false, "deeds"));
      allOptions.Add(ValueTuple.Create(643, "flag", "deed_get_lethe",                "Get Lethe Water",                           false, "deeds"));
      allOptions.Add(ValueTuple.Create(651, "flag", "deed_get_wood",                 "Get Magic Wood",                            false, "deeds"));
      allOptions.Add(ValueTuple.Create(671, "flag", "deed_get_statue",               "Get Peace Statue",                          false, "deeds"));
      allOptions.Add(ValueTuple.Create(620, "flag", "deed_get_feathers",             "Get Pegasus Feathers",                      false, "deeds"));
      allOptions.Add(ValueTuple.Create(609, "flag", "deed_get_proof",                "Get Proof of Destiny",                      false, "deeds"));
      allOptions.Add(ValueTuple.Create(696, "flag", "deed_get_sewn_sheets",          "Get Sewn Sheets",                           false, "deeds"));
      allOptions.Add(ValueTuple.Create(618, "flag", "deed_get_sheets",               "Get Sheets",                                false, "deeds"));
      allOptions.Add(ValueTuple.Create(703, "flag", "deed_get_sigil",                "Get Sigil",                                 false, "deeds"));
      allOptions.Add(ValueTuple.Create(709, "flag", "deed_get_styx",                 "Get Styx Water",                            false, "deeds"));
      allOptions.Add(ValueTuple.Create(711, "flag", "deed_get_blast",                "Get Thermonuclear Blast scroll",            false, "deeds"));
      allOptions.Add(ValueTuple.Create(603, "flag", "deed_get_waterbreathing",       "Get Waterbreathing Amulet",                 false, "deeds"));
      allOptions.Add(ValueTuple.Create(720, "flag", "deed_get_wax",                  "Get Wax",                                   false, "deeds"));
      allOptions.Add(ValueTuple.Create(185, "flag", "deed_give_aa_pizza",            "Give A&A Pizza to Pretorius",               false, "deeds"));
      allOptions.Add(ValueTuple.Create(177, "flag", "deed_give_basket",              "Give Basket to Sarra",                      false, "deeds"));
      allOptions.Add(ValueTuple.Create(183, "flag", "deed_give_lotus",               "Give Black Lotus to Salim/Julanar",         false, "deeds"));
      allOptions.Add(ValueTuple.Create(178, "flag", "deed_give_drugged_chocolate",   "Give Chocolate to Salim/Julanar",           false, "deeds"));
      allOptions.Add(ValueTuple.Create(628, "flag", "deed_give_deed",                "Give Deed to Ann",                          false, "deeds"));
      allOptions.Add(ValueTuple.Create(181, "flag", "deed_give_hippocrene",          "Give Hippocrene Water to FA",               false, "deeds"));
      allOptions.Add(ValueTuple.Create(182, "flag", "deed_give_lethe",               "Give Lethe Water to Salim/Julanar",         false, "deeds"));
      allOptions.Add(ValueTuple.Create(184, "flag", "deed_give_pj_pizza",            "Give P&J Pizza to Mobius",                  false, "deeds"));
      allOptions.Add(ValueTuple.Create(176, "flag", "deed_give_seeds",               "Give Seeds to Ann",                         false, "deeds"));
      allOptions.Add(ValueTuple.Create(192, "flag", "deed_gort_lives",               "Gort survives final battle",                false, "deeds"));
      allOptions.Add(ValueTuple.Create(692, "flag", "deed_heal_gort",                "Heal Gort during final battle",             false, "deeds"));
      allOptions.Add(ValueTuple.Create(601, "flag", "deed_learn_boom",               "Learn Boom",                                false, "deeds"));
      allOptions.Add(ValueTuple.Create(619, "flag", "deed_learn_fascination",        "Learn Fascination",                         false, "deeds"));
      allOptions.Add(ValueTuple.Create(675, "flag", "deed_learn_rip",                "Learn Rip",                                 false, "deeds"));
      allOptions.Add(ValueTuple.Create(700, "flag", "deed_learn_shrink",             "Learn Shrink",                              false, "deeds"));
      allOptions.Add(ValueTuple.Create(705, "flag", "deed_learn_erana_katrina",      "Learn spell from Erana/Katrina",            false, "deeds"));
      allOptions.Add(ValueTuple.Create(722, "flag", "deed_learn_whirlwind",          "Learn Whirlwind",                           false, "deeds"));
      allOptions.Add(ValueTuple.Create(646, "flag", "deed_make_wings",               "Make Icarus wings",                         false, "deeds"));
      allOptions.Add(ValueTuple.Create(286, "flag", "deed_marry_elsa",               "Marry Elsa",                                false, "deeds"));
      allOptions.Add(ValueTuple.Create(287, "flag", "deed_marry_erana",              "Marry Erana",                               false, "deeds"));
      allOptions.Add(ValueTuple.Create(237, "flag", "deed_marry_katrina",            "Marry Katrina",                             false, "deeds"));
      allOptions.Add(ValueTuple.Create(288, "flag", "deed_marry_nawar",              "Marry Nawar",                               false, "deeds"));
      allOptions.Add(ValueTuple.Create(349, "flag", "deed_science_aptitude",         "Pass Science aptitude test",                false, "deeds"));
      allOptions.Add(ValueTuple.Create(572, "flag", "deed_feather_wings",            "Put Feather on wings",                      false, "deeds"));
      allOptions.Add(ValueTuple.Create(563, "flag", "deed_wax_wings",                "Put Wax on wings",                          false, "deeds"));
      allOptions.Add(ValueTuple.Create(608, "flag", "deed_reach_delos",              "Reach Delos Island",                        false, "deeds"));
      allOptions.Add(ValueTuple.Create(591, "flag", "deed_reach_hydra",              "Reach Hydra Island",                        false, "deeds"));
      allOptions.Add(ValueTuple.Create(694, "flag", "deed_reach_science",            "Reach Science Island",                      false, "deeds"));
      allOptions.Add(ValueTuple.Create(701, "flag", "deed_reach_sifnos",             "Reach Sifnos",                              false, "deeds"));
      allOptions.Add(ValueTuple.Create(710, "flag", "deed_read_manual",              "Read Swimming Manual",                      false, "deeds"));
      allOptions.Add(ValueTuple.Create(614, "flag", "deed_restore_pillar",           "Restore pillar during final battle",        false, "deeds"));
      allOptions.Add(ValueTuple.Create(199, "flag", "deed_winged_gondola",           "Retrieve winged gondola",                   false, "deeds"));
      allOptions.Add(ValueTuple.Create(644, "flag", "deed_sign_logbook",             "Sign logbook",                              false, "deeds"));
      allOptions.Add(ValueTuple.Create(519, "flag", "deed_toro_lives",               "Toro survives final battle",                false, "deeds"));
      allOptions.Add(ValueTuple.Create(626, "flag", "deed_fireproof_pool",           "Use Fireproof Potion at Dragon Blood Pool", false, "deeds"));
      allOptions.Add(ValueTuple.Create(672, "flag", "deed_fireproof_final",          "Use Fireproof Potion during final battle",  false, "deeds"));
      allOptions.Add(ValueTuple.Create(719, "flag", "deed_use_magnet",               "Use Mystic Magnet",                         false, "deeds"));
      allOptions.Add(ValueTuple.Create(554, "flag", "deed_visit_erana",              "Visit Erana",                               false, "deeds"));
      allOptions.Add(ValueTuple.Create( 23, "flag", "deed_visit_erasmus",            "Visit Erasmus",                             false, "deeds"));
      allOptions.Add(ValueTuple.Create(557, "flag", "deed_visit_katrina",            "Visit Katrina",                             false, "deeds"));
      allOptions.Add(ValueTuple.Create(642, "flag", "deed_warn_guards",              "Warn guards about Kokeeno's death",         false, "deeds"));
   }

   allOptions.Add(ValueTuple.Create(-1, "group", "items", "Split on item acquired", false, (string)null));
   {
      allOptions.Add(ValueTuple.Create(-1, "group", "items_weapons", "Weapons", false, "items"));
      {
         allOptions.Add(ValueTuple.Create(0x18B73, "item", "item_barbed_spear",         "Barbed Spear",         false, "items_weapons"));
         allOptions.Add(ValueTuple.Create(0x18B27, "item", "item_blackjack",            "Blackjack",            false, "items_weapons"));
         allOptions.Add(ValueTuple.Create(0x18AFA, "item", "item_bow",                  "Bow",                  false, "items_weapons"));
         allOptions.Add(ValueTuple.Create(0x18AF6, "item", "item_dagger",               "Dagger",               false, "items_weapons"));
         allOptions.Add(ValueTuple.Create(0x18B05, "item", "item_dragon_slayer_sword",  "Dragon Slayer Sword",  false, "items_weapons"));
         allOptions.Add(ValueTuple.Create(0x18B5E, "item", "item_fine_axe",             "Fine Axe",             false, "items_weapons"));
         allOptions.Add(ValueTuple.Create(0x18B04, "item", "item_ice_diamond_sword",    "Ice Diamond Sword",    false, "items_weapons"));
         allOptions.Add(ValueTuple.Create(0x18B52, "item", "item_lit_torch",            "Lit Torch",            false, "items_weapons"));
         allOptions.Add(ValueTuple.Create(0x18B07, "item", "item_magic_axe",            "Magic Axe",            false, "items_weapons"));
         allOptions.Add(ValueTuple.Create(0x18AFB, "item", "item_magic_bow",            "Magic Bow",            false, "items_weapons"));
         allOptions.Add(ValueTuple.Create(0x18AF7, "item", "item_magic_dagger",         "Magic Dagger",         false, "items_weapons"));
         allOptions.Add(ValueTuple.Create(0x18AFF, "item", "item_magic_spear",          "Magic Spear",          false, "items_weapons"));
         allOptions.Add(ValueTuple.Create(0x18B75, "item", "item_magic_staff",          "Magic Staff",          false, "items_weapons"));
         allOptions.Add(ValueTuple.Create(0x18B02, "item", "item_magic_sword",          "Magic Sword",          false, "items_weapons"));
         allOptions.Add(ValueTuple.Create(0x18B08, "item", "item_minotaur_axe",         "Minotaur Axe",         false, "items_weapons"));
         allOptions.Add(ValueTuple.Create(0x18B03, "item", "item_paladin_sword",        "Paladin Sword",        false, "items_weapons"));
         allOptions.Add(ValueTuple.Create(0x18AF8, "item", "item_poisoned_dagger",      "Poisoned Dagger",      false, "items_weapons"));
         allOptions.Add(ValueTuple.Create(0x18AF9, "item", "item_slasher_dagger",       "Slasher Dagger",       false, "items_weapons"));
         allOptions.Add(ValueTuple.Create(0x18AFD, "item", "item_spear",                "Spear",                false, "items_weapons"));
         allOptions.Add(ValueTuple.Create(0x18B01, "item", "item_sword",                "Sword",                false, "items_weapons"));
         allOptions.Add(ValueTuple.Create(0x18AFE, "item", "item_throwing_spear",       "Throwing Spear",       false, "items_weapons"));
         allOptions.Add(ValueTuple.Create(0x18B51, "item", "item_torch",                "Torch",                false, "items_weapons"));
         allOptions.Add(ValueTuple.Create(0x18B06, "item", "item_trident",              "Trident",              false, "items_weapons"));
         allOptions.Add(ValueTuple.Create(0x18B00, "item", "item_wurmbane_spear",       "Wurmbane Spear",       false, "items_weapons"));
      }

      allOptions.Add(ValueTuple.Create(-1, "group", "items_armor", "Armor", false, "items"));
      {
         allOptions.Add(ValueTuple.Create(0x18AF0, "item", "item_chain_mail",           "Chain Mail",           false, "items_armor"));
         allOptions.Add(ValueTuple.Create(0x18AEF, "item", "item_generals_shield",      "General's Shield",     false, "items_armor"));
         allOptions.Add(ValueTuple.Create(0x18AF4, "item", "item_helm",                 "Helm",                 false, "items_armor"));
         allOptions.Add(ValueTuple.Create(0x18AF2, "item", "item_leather_armor",        "Leather Armor",        false, "items_armor"));
         allOptions.Add(ValueTuple.Create(0x18AF1, "item", "item_magic_chain_mail",     "Magic Chain Mail",     false, "items_armor"));
         allOptions.Add(ValueTuple.Create(0x18AF5, "item", "item_magic_helm",           "Magic Helm",           false, "items_armor"));
         allOptions.Add(ValueTuple.Create(0x18AF3, "item", "item_magic_leather_armor",  "Magic Leather Armor",  false, "items_armor"));
         allOptions.Add(ValueTuple.Create(0x18AEE, "item", "item_magic_shield",         "Magic Shield",         false, "items_armor"));
         allOptions.Add(ValueTuple.Create(0x18B74, "item", "item_ornate_shield",        "Ornate Shield",        false, "items_armor"));
         allOptions.Add(ValueTuple.Create(0x18AED, "item", "item_shield",               "Shield",               false, "items_armor"));
      }

      allOptions.Add(ValueTuple.Create(-1, "group", "items_accessories", "Accessories", false, "items"));
      {
         allOptions.Add(ValueTuple.Create(0x18B3B, "item", "item_amulet_of_attack",        "Amulet of Attack",        false, "items_accessories"));
         allOptions.Add(ValueTuple.Create(0x18B3A, "item", "item_amulet_of_defense",       "Amulet of Defense",       false, "items_accessories"));
         allOptions.Add(ValueTuple.Create(0x18B3D, "item", "item_atlas_armband",           "Atlas Armband",           false, "items_accessories"));
         allOptions.Add(ValueTuple.Create(0x18B36, "item", "item_gold_ring",               "Gold Ring",               false, "items_accessories"));
         allOptions.Add(ValueTuple.Create(0x18B3C, "item", "item_good_luck_charm",         "Good Luck Charm",         false, "items_accessories"));
         allOptions.Add(ValueTuple.Create(0x18B37, "item", "item_heras_ring",              "Hera's Ring",             false, "items_accessories"));
         allOptions.Add(ValueTuple.Create(0x18B40, "item", "item_katta_pin",               "Katta Pin",               false, "items_accessories"));
         allOptions.Add(ValueTuple.Create(0x18B38, "item", "item_kings_ring",              "King's Ring",             false, "items_accessories"));
         allOptions.Add(ValueTuple.Create(0x18B3F, "item", "item_magic_bracelet",          "Magic Bracelet",          false, "items_accessories"));
         allOptions.Add(ValueTuple.Create(0x18B39, "item", "item_ring_of_truth",           "Ring of Truth",           false, "items_accessories"));
         allOptions.Add(ValueTuple.Create(0x18B3E, "item", "item_stealth_charm",           "Stealth Charm",           false, "items_accessories"));
         allOptions.Add(ValueTuple.Create(0x18B41, "item", "item_waterbreathing_amulet",   "Waterbreathing Amulet",   false, "items_accessories"));
      }

      allOptions.Add(ValueTuple.Create(-1, "group", "items_scrolls", "Scrolls", false, "items"));
      {
         allOptions.Add(ValueTuple.Create(0x18B68, "item", "item_augment_scroll",             "Augment Scroll",             false, "items_scrolls"));
         allOptions.Add(ValueTuple.Create(0x18B6C, "item", "item_boom_scroll",                "Boom Scroll",                false, "items_scrolls"));
         allOptions.Add(ValueTuple.Create(0x18B6F, "item", "item_dazzle_scroll",              "Dazzle Scroll",              false, "items_scrolls"));
         allOptions.Add(ValueTuple.Create(0x18B71, "item", "item_fascination_scroll",         "Fascination Scroll",         false, "items_scrolls"));
         allOptions.Add(ValueTuple.Create(0x18B6D, "item", "item_juggling_lights_scroll",     "Juggling Lights Scroll",     false, "items_scrolls"));
         allOptions.Add(ValueTuple.Create(0x18B6E, "item", "item_resistance_scroll",          "Resistance Scroll",          false, "items_scrolls"));
         allOptions.Add(ValueTuple.Create(0x18B6B, "item", "item_rip_scroll",                 "RIP Scroll",                 false, "items_scrolls"));
         allOptions.Add(ValueTuple.Create(0x18B43, "item", "item_scroll",                     "Scroll",                     false, "items_scrolls"));
         allOptions.Add(ValueTuple.Create(0x18B69, "item", "item_shrink_scroll",              "Shrink Scroll",              false, "items_scrolls"));
         allOptions.Add(ValueTuple.Create(0x18B6A, "item", "item_thermonuclear_blast_scroll", "Thermonuclear Blast Scroll", false, "items_scrolls"));
         allOptions.Add(ValueTuple.Create(0x18B70, "item", "item_zap_scroll",                 "Zap Scroll",                 false, "items_scrolls"));
      }

      allOptions.Add(ValueTuple.Create(-1, "group", "items_potions", "Potions/Pills", false, "items"));
      {
         allOptions.Add(ValueTuple.Create(0x18B10, "item", "item_fire_proofing_potion", "Fire Proofing Potion", false, "items_potions"));
         allOptions.Add(ValueTuple.Create(0x18B09, "item", "item_healing_pills",        "Healing Pills",        false, "items_potions"));
         allOptions.Add(ValueTuple.Create(0x18B0D, "item", "item_health_potion",        "Health Potion",        false, "items_potions"));
         allOptions.Add(ValueTuple.Create(0x18B0F, "item", "item_mana_potion",          "Mana Potion",          false, "items_potions"));
         allOptions.Add(ValueTuple.Create(0x18B0C, "item", "item_mana_pills",           "Mana Pills",           false, "items_potions"));
         allOptions.Add(ValueTuple.Create(0x18B0A, "item", "item_poison_cure_pills",    "Poison Cure Pills",    false, "items_potions"));
         allOptions.Add(ValueTuple.Create(0x18B0B, "item", "item_stamina_pills",        "Stamina Pills",        false, "items_potions"));
         allOptions.Add(ValueTuple.Create(0x18B0E, "item", "item_vitality_potion",      "Vitality Potion",      false, "items_potions"));
      }

      allOptions.Add(ValueTuple.Create(-1, "group", "items_misc", "Miscellaneous", false, "items"));
      {
         allOptions.Add(ValueTuple.Create(0x18B1F, "item", "item_aa_pizza",             "A&A Pizza",               false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B28, "item", "item_acme_toolkit",         "ACME Toolkit",            false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B16, "item", "item_alabaster_amphora",    "Alabaster Amphora",       false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B63, "item", "item_ale_drink",            "Ale (drink)",             false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B60, "item", "item_amphora_with_water",   "Amphora with Water",      false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B11, "item", "item_amphora",              "Amphora",                 false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B1E, "item", "item_anchovies",            "Anchovies",               false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B5D, "item", "item_arrowhead",            "Arrowhead",               false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18AFC, "item", "item_arrows",               "Arrows",                  false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B1D, "item", "item_artichoke_pizza",      "Artichoke Pizza",         false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B4F, "item", "item_basket",               "Basket",                  false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B35, "item", "item_bead_necklace",        "Bead Necklace",           false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B57, "item", "item_beeswax",              "Beeswax",                 false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B2B, "item", "item_black_lotus",          "Black Lotus",             false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B32, "item", "item_blackbird",            "Blackbird",               false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B59, "item", "item_brazier",              "Brazier",                 false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B19, "item", "item_chocolate_box",        "Chocolate Box",           false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B44, "item", "item_deed",                 "Deed",                    false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B47, "item", "item_drachmas",             "Drachmas",                false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B2A, "item", "item_flowers",              "Flowers",                 false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B20, "item", "item_fruit",                "Fruit",                   false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B15, "item", "item_goo",                  "Goo",                     false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B22, "item", "item_grapnel",              "Grapnel",                 false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B64, "item", "item_greek_coffee_drink",   "Greek Coffee (drink)",    false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B17, "item", "item_gyro",                 "Gyro",                    false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B46, "item", "item_handbook_of_swimming", "Handbook of Swimming",    false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B13, "item", "item_hippocrene_water",     "Hippocrene Water",        false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B49, "item", "item_hydra_scale",          "Hydra Scale",             false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B48, "item", "item_hydra_teeth",          "Hydra Teeth",             false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B66, "item", "item_imitation_blackbird",  "Imitation Blackbird",     false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B72, "item", "item_interesting_toolkit",  "Interesting Toolkit",     false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B1B, "item", "item_jalapeno_peppers",     "Jalapeno Peppers",        false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B42, "item", "item_jewelry",              "Jewelry",                 false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B58, "item", "item_key",                  "Key",                     false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B12, "item", "item_lethe_water",          "Lethe Water",             false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B23, "item", "item_magic_grapnel",        "Magic Grapnel",           false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B5F, "item", "item_magic_seeds",          "Magic Seeds",             false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B34, "item", "item_magic_statue",         "Magic Statue",            false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B4E, "item", "item_magic_wood",           "Magic Wood",              false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B45, "item", "item_map",                  "Map",                     false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B5B, "item", "item_mug",                  "Mug",                     false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B4A, "item", "item_mystic_magnet_blue",   "Mystic Magnet (Blue)",    false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B4B, "item", "item_mystic_magnet_red",    "Mystic Magnet (Red)",     false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B61, "item", "item_ouzo_drink",           "Ouzo (drink)",            false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B1C, "item", "item_pj_pizza",             "P&J Pizza",               false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B55, "item", "item_painting",             "Painting",                false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B31, "item", "item_peace_statue",         "Peace Statue",            false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B56, "item", "item_pegasus_feather",      "Pegasus Feather",         false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B1A, "item", "item_pepperoni_pizza",      "Pepperoni Pizza",         false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B21, "item", "item_pick_pocket_knife",    "Pick-Pocket Knife",       false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B4C, "item", "item_proof_of_destiny",     "Proof of Destiny",        false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B62, "item", "item_retsina_drink",        "Retsina (drink)",         false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B4D, "item", "item_rocks",                "Rocks",                   false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B25, "item", "item_rope_grapnel",         "Rope & Grapnel",          false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B24, "item", "item_rope",                 "Rope",                    false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B54, "item", "item_sewn_sheet",           "Sewn Sheet",              false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B53, "item", "item_sheet",                "Sheet",                   false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B5A, "item", "item_shell",                "Shell",                   false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B2C, "item", "item_sigil_of_ios",         "Sigil of Ios",            false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B2D, "item", "item_sigil_of_keros",       "Sigil of Keros",          false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B2E, "item", "item_sigil_of_naxos",       "Sigil of Naxos",          false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B2F, "item", "item_sigil_of_paros",       "Sigil of Paros",          false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B30, "item", "item_sigil_of_tinos",       "Sigil of Tinos",          false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B18, "item", "item_sokolatak_ya",         "Sokolatak-ya",            false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B5C, "item", "item_spearhead",            "Spearhead",               false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B26, "item", "item_stealth_oil",          "Stealth Oil",             false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B14, "item", "item_styx_water",           "Styx Water",              false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B29, "item", "item_tinderbox",            "Tinderbox",               false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B65, "item", "item_todays_special_drink", "Today's Special (drink)", false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B67, "item", "item_windproof_sheet",      "Windproof Sheet",         false, "items_misc"));
         allOptions.Add(ValueTuple.Create(0x18B33, "item", "item_winged_lion_statue",   "Winged Lion Statue",      false, "items_misc"));
      }
   }

   allOptions.Add(ValueTuple.Create(-1, "group", "spells", "Split on spell learned", false, (string)null));
   {
      allOptions.Add(ValueTuple.Create(0x18C91, "item", "spell_augment",             "Augment",              false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C8C, "item", "spell_aura",                "Aura",                 false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C93, "item", "spell_boom",                "Boom",                 false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C84, "item", "spell_calm",                "Calm",                 false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C83, "item", "spell_dazzle",              "Dazzle",               false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C87, "item", "spell_detect_magic",        "Detect Magic",         false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C96, "item", "spell_dragon_fire",         "Dragon Fire",          false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C94, "item", "spell_fascination",         "Fascination",          false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C7D, "item", "spell_fetch",               "Fetch",                false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C97, "item", "spell_first_aid",           "First Aid",            false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C80, "item", "spell_flame_dart",          "Flame Dart",           false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C7F, "item", "spell_force_bolt",          "Force Bolt",           false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C81, "item", "spell_frost_bite",          "Frost Bite",           false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C86, "item", "spell_glide",               "Glide",                false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C85, "item", "spell_hide",                "Hide",                 false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C8D, "item", "spell_juggling_lights",     "Juggling Lights",      false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C88, "item", "spell_levitate",            "Levitate",             false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C82, "item", "spell_lightning_ball",      "Lightning Ball",       false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C7C, "item", "spell_open",                "Open",                 false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C8A, "item", "spell_protection",          "Protection",           false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C8B, "item", "spell_resistance",          "Resistance",           false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C89, "item", "spell_reversal",            "Reversal",             false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C92, "item", "spell_rip",                 "RIP",                  false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C98, "item", "spell_shrink",              "Shrink",               false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C8E, "item", "spell_summon_staff",        "Summon Staff",         false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C95, "item", "spell_thermonuclear_blast", "Thermonuclear Blast",  false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C7E, "item", "spell_trigger",             "Trigger",              false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C90, "item", "spell_whirlwind",           "Whirlwind",            false, "spells"));
      allOptions.Add(ValueTuple.Create(0x18C8F, "item", "spell_zap",                 "Zap",                  false, "spells"));
   }

   allOptions.Add(ValueTuple.Create(-1, "group", "abilities", "Split on Paladin ability learned", false, (string)null));
   {
      allOptions.Add(ValueTuple.Create(0x18CE7, "item", "ability_awe",            "Awe",            false, "abilities"));
      allOptions.Add(ValueTuple.Create(0x18CE3, "item", "ability_destroy_undead", "Destroy Undead", false, "abilities"));
      allOptions.Add(ValueTuple.Create(0x18CE0, "item", "ability_heal",           "Heal",           false, "abilities"));
      allOptions.Add(ValueTuple.Create(0x18CE6, "item", "ability_holy_strength",  "Holy Strength",  false, "abilities"));
      allOptions.Add(ValueTuple.Create(0x18CE1, "item", "ability_honor_shield",   "Honor Shield",   false, "abilities"));
      allOptions.Add(ValueTuple.Create(0x18CE2, "item", "ability_magic_ward",     "Magic Ward",     false, "abilities"));
      allOptions.Add(ValueTuple.Create(0x18CE4, "item", "ability_peace",          "Peace",          false, "abilities"));
      allOptions.Add(ValueTuple.Create(0x18CE5, "item", "ability_sense_aura",     "Sense Aura",     false, "abilities"));
   }

   vars.allRooms = new List<ValueTuple<int, string>>();
   vars.allFlags = new List<ValueTuple<int, string>>();
   vars.allItems = new List<ValueTuple<int, string>>();

   foreach (var option in allOptions) {
      int code = option.Item1;
      string type = option.Item2;
      string name = option.Item3;
      string text = option.Item4;
      bool enabled = option.Item5;
      string parent = option.Item6;

      settings.CurrentDefaultParent = parent;
      settings.Add(name, enabled, text);

      switch (type) {
      case "room": vars.allRooms.Add(ValueTuple.Create(code, name)); break;
      case "flag": vars.allFlags.Add(ValueTuple.Create(code, name)); break;
      case "item": vars.allItems.Add(ValueTuple.Create(code, name)); break;
      }
   }

   vars.pendingRoomCodes = new HashSet<int>();
   vars.pendingItemCodes = new HashSet<int>();
   vars.pendingFlagCodes = new HashSet<int>();
   vars.queuedSplits = 0;
}

onReset {
   vars.pendingRoomCodes.Clear();
   vars.pendingItemCodes.Clear();
   vars.pendingFlagCodes.Clear();
   vars.queuedSplits = 0;
}

start {
   // Reallocated on game start, though less reliable if game isn't rebooted between attempts
   if (current.charPtr != old.charPtr) {
      return true;
   }
}

onStart {
   foreach (var room in vars.allRooms) {
      if (settings[room.Item2]) {
         vars.pendingRoomCodes.Add(room.Item1);
      }
   }

   foreach (var item in vars.allItems) {
      if (settings[item.Item2]) {
         vars.pendingItemCodes.Add(item.Item1);
      }
   }

   foreach (var flag in vars.allFlags) {
      if (settings[flag.Item2]) {
         vars.pendingFlagCodes.Add(flag.Item1);
      }
   }
}

split {
   if (current.loadedRoom != old.loadedRoom && vars.pendingRoomCodes.Remove(current.loadedRoom)) {
      ++vars.queuedSplits;
   }

   if (vars.pendingItemCodes.Count > 0) {
      // Inventory is a linked list that we must walk
      // @TODO: Find a way to detect inventory change so we don't do this every frame

      int invAddr = new DeepPointer(0x167394, 0xC7C).Deref<int>(game);
      int invCount = 0; // Safety valve so we don't loop infinitely
      while (invAddr != 0 && invCount < 500) {
         int container = memory.ReadValue<int>(IntPtr.Zero + invAddr + 0x1C);

         if (container == 0) {
            int itemCode = memory.ReadValue<int>(IntPtr.Zero + invAddr + 0x14);
            if ((itemCode & 0xfffff000) != 0x18000) {
               // Invalid item code, so we're looking at bad memory
               break;
            }

            if (vars.pendingItemCodes.Remove(itemCode)) {
               ++vars.queuedSplits;
            }
         }

         int nextPtr = memory.ReadValue<int>(IntPtr.Zero + invAddr + 0x08);
         invAddr = nextPtr;
         ++invCount;
      }
   }

   if (vars.pendingFlagCodes.Count > 0 && current.flags != null && old.flags != null) {
      List<int> detectedFlagCodes = null;
      foreach (var flagCode in vars.pendingFlagCodes) {
         int flagByteIdx = flagCode / 8;
         int flagBitIdx = flagCode % 8;

         bool flagWasSet = (old.flags[flagByteIdx] & (1 << flagBitIdx)) != 0;
         bool flagIsSet = (current.flags[flagByteIdx] & (1 << flagBitIdx)) != 0;
         if (!flagWasSet && flagIsSet) {
            if (detectedFlagCodes == null) {
               detectedFlagCodes = new List<int>();
            }

            detectedFlagCodes.Add(flagCode);
         }
      }

      if (detectedFlagCodes != null) {
         foreach (var flagCode in detectedFlagCodes) {
            vars.pendingFlagCodes.Remove(flagCode);
            ++vars.queuedSplits;
         }
      }
   }

   if (vars.queuedSplits > 0) {
      --vars.queuedSplits;
      return true;
   }
}
