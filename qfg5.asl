state("QfG5") {
   int charPtr : 0x168088, 0x80;
   byte100 flags : 0x168088, 0x90;
   int day : 0x168088, 0x104;
   int loadedRoom : 0x1680B0, 0x20; // Excludes world map (900)
   //int dstRoom : 0x1665B8, 0xD0; // Seems to be a logical ID that doesn't always match loadedRoom, and doesn't always get set
}

startup {
   vars.roomMap = new Dictionary<int, string>();
   vars.flagMap = new Dictionary<int, string>();
   vars.itemMap = new Dictionary<int, string>();

   {
      settings.Add("common", true, "Common split events");

      settings.CurrentDefaultParent = "common";
      settings.Add("common_rite_start", false, "Start Rite");
      settings.CurrentDefaultParent = "common_rite_start";

      vars.flagMap.Add(394, "flag_start_freedom"); settings.Add("flag_start_freedom", false, "Rite of Freedom");
      vars.flagMap.Add(411, "flag_start_conquest"); settings.Add("flag_start_conquest", false, "Rite of Conquest");
      vars.flagMap.Add(406, "flag_start_valor"); settings.Add("flag_start_valor", false, "Rite of Valor");
      vars.flagMap.Add(386, "flag_start_destiny"); settings.Add("flag_start_destiny", false, "Rite of Destiny");
      vars.flagMap.Add(382, "flag_start_courage"); settings.Add("flag_start_courage", false, "Rite of Courage");
      vars.flagMap.Add(403, "flag_start_peace"); settings.Add("flag_start_peace", false, "Rite of Peace");
      vars.flagMap.Add(401, "flag_start_justice"); settings.Add("flag_start_justice", false, "Rite of Justice");

      settings.CurrentDefaultParent = "common";
      settings.Add("common_rite_finish", false, "Finish Rite");
      settings.CurrentDefaultParent = "common_rite_finish";

      vars.flagMap.Add(395, "flag_finish_freedom"); settings.Add("flag_finish_freedom", false, "Rite of Freedom");
      vars.flagMap.Add(412, "flag_finish_conquest"); settings.Add("flag_finish_conquest", false, "Rite of Conquest");
      vars.flagMap.Add(407, "flag_finish_valor"); settings.Add("flag_finish_valor", false, "Rite of Valor");
      vars.flagMap.Add(387, "flag_finish_destiny"); settings.Add("flag_finish_destiny", false, "Rite of Destiny");
      vars.flagMap.Add(383, "flag_finish_courage"); settings.Add("flag_finish_courage", false, "Rite of Courage");
      vars.flagMap.Add(404, "flag_finish_peace"); settings.Add("flag_finish_peace", false, "Rite of Peace");
      vars.flagMap.Add(258, "flag_finish_justice"); settings.Add("flag_finish_justice", false, "Rite of Justice");

      settings.CurrentDefaultParent = "common";

      vars.flagMap.Add(712, "deed_king_me"); settings.Add("deed_king_me", true, "Accept/Decline Throne");

      settings.CurrentDefaultParent = null;
   }

   {
      settings.Add("rooms", false, "Split on room entered");

      settings.CurrentDefaultParent = "rooms";
      settings.Add("rooms_silmaria", false, "Silmaria");

      settings.CurrentDefaultParent = "rooms_silmaria";
      settings.Add("rooms_silmaria_north", false, "North");
      settings.CurrentDefaultParent = "rooms_silmaria_north";

      vars.roomMap.Add(220, "room_nob_hill"); settings.Add("room_nob_hill", false, "Nob Hill");
      vars.roomMap.Add(415, "room_erasmus_guardian"); settings.Add("room_erasmus_guardian", false, "Erasmus' guardian");
      vars.roomMap.Add(410, "room_erasmus_exterior"); settings.Add("room_erasmus_exterior", false, "Erasmus' tower (exterior)");
      vars.roomMap.Add(420, "room_erasmus_interior"); settings.Add("room_erasmus_interior", false, "Erasmus' tower (interior)");
      vars.roomMap.Add(350, "room_arena_antechamber"); settings.Add("room_arena_antechamber", false, "Arena (antechamber)");
      vars.roomMap.Add(355, "room_arena_stadium"); settings.Add("room_arena_stadium", false, "Arena (stadium)");
      vars.roomMap.Add(360, "room_breakin_house"); settings.Add("room_breakin_house", false, "Break-in house");
      vars.roomMap.Add(240, "room_hall_of_kings"); settings.Add("room_hall_of_kings", false, "Hall of Kings");

      settings.CurrentDefaultParent = "rooms_silmaria";
      settings.Add("rooms_silmaria_central", false, "Central");
      settings.CurrentDefaultParent = "rooms_silmaria_central";

      vars.roomMap.Add(200, "room_town_square"); settings.Add("room_town_square", false, "Town Square");
      vars.roomMap.Add(340, "room_bank"); settings.Add("room_bank", false, "Bank");
      vars.roomMap.Add(320, "room_magic_shop"); settings.Add("room_magic_shop", false, "Magic shop");
      vars.roomMap.Add(310, "room_apothecary"); settings.Add("room_apothecary", false, "Apothecary");

      settings.CurrentDefaultParent = "rooms_silmaria";
      settings.Add("rooms_silmaria_south", false, "South");
      settings.CurrentDefaultParent = "rooms_silmaria_south";

      vars.roomMap.Add(210, "room_docks"); settings.Add("room_docks", false, "Docks");
      vars.roomMap.Add(250, "room_dead_parrot"); settings.Add("room_dead_parrot", false, "Dead Parrot Inn");
      vars.roomMap.Add(270, "room_facs"); settings.Add("room_facs", false, "FACS");
      vars.roomMap.Add(390, "room_science_island"); settings.Add("room_science_island", false, "Science Island");
      vars.roomMap.Add(400, "room_science_academy"); settings.Add("room_science_academy", false, "Academy of Science");

      settings.CurrentDefaultParent = "rooms_silmaria";
      settings.Add("rooms_silmaria_west", false, "West");
      settings.CurrentDefaultParent = "rooms_silmaria_west";

      vars.roomMap.Add(230, "room_west_gate"); settings.Add("room_west_gate", false, "West Gate");
      vars.roomMap.Add(380, "room_adventurers_guild"); settings.Add("room_adventurers_guild", false, "Adventurer's Guild");
      vars.roomMap.Add(280, "room_thieves_guild"); settings.Add("room_thieves_guild", false, "Thieves' Guild");
      vars.roomMap.Add(290, "room_inn"); settings.Add("room_inn", false, "Gnome Ann's Land Inn");
      vars.roomMap.Add(300, "room_inn_room"); settings.Add("room_inn_room", false, "Your room");
      vars.roomMap.Add(750, "room_silmaria_exterior"); settings.Add("room_silmaria_exterior", false, "Silmaria entrance");

      //vars.roomMap.Add(260, "room_unknown_260"); settings.Add("room_unknown_260", false, "???? (260)");
      //vars.roomMap.Add(370, "room_unknown_370"); settings.Add("room_unknown_370", false, "???? (370)");

      settings.CurrentDefaultParent = "rooms";
      settings.Add("rooms_marete", false, "Marete");
      settings.CurrentDefaultParent = "rooms_marete";

      vars.roomMap.Add(730, "room_pool"); settings.Add("room_pool", false, "Dragon Blood Pool");
      vars.roomMap.Add(735, "room_dragon_1"); settings.Add("room_dragon_1", false, "Dragon battle (phase 1)");
      vars.roomMap.Add(740, "room_dragon_2"); settings.Add("room_dragon_2", false, "Dragon battle (phase 2)");
      vars.roomMap.Add(551, "room_hades_exterior_closed"); settings.Add("room_hades_exterior_closed", false, "Hades (exterior, closed)");
      vars.roomMap.Add(550, "room_hades_exterior_open"); settings.Add("room_hades_exterior_open", false, "Hades (exterior, open)");
      vars.roomMap.Add(565, "room_hades_interior_1"); settings.Add("room_hades_interior_1", false, "Hades (interior, entrance)");
      vars.roomMap.Add(560, "room_hades_interior_2"); settings.Add("room_hades_interior_2", false, "Hades (interior, skeleton)");
      vars.roomMap.Add(570, "room_hades_interior_3"); settings.Add("room_hades_interior_3", false, "Hades (interior, Styx/Guardian)");
      vars.roomMap.Add(720, "room_pegasus"); settings.Add("room_pegasus", false, "Pegasus Peak");
      vars.roomMap.Add(620, "room_ios"); settings.Add("room_ios", false, "Ios");
      vars.roomMap.Add(610, "room_keros"); settings.Add("room_keros", false, "Keros");
      vars.roomMap.Add(600, "room_naxos"); settings.Add("room_naxos", false, "Naxos");
      vars.roomMap.Add(590, "room_paros"); settings.Add("room_paros", false, "Paros");
      vars.roomMap.Add(580, "room_tinos"); settings.Add("room_tinos", false, "Tinos");

      settings.CurrentDefaultParent = "rooms";
      settings.Add("rooms_other", false, "Other islands");
      settings.CurrentDefaultParent = "rooms_other";

      vars.roomMap.Add(440, "room_atlantis_exterior"); settings.Add("room_atlantis_exterior", false, "Atlantis (exterior)");
      vars.roomMap.Add(450, "room_atlantis_interior"); settings.Add("room_atlantis_interior", false, "Atlantis (interior)");
      vars.roomMap.Add(460, "room_atlantis_court"); settings.Add("room_atlantis_court", false, "Atlantis (court)");
      vars.roomMap.Add(470, "room_dryads"); settings.Add("room_dryads", false, "Delos (Dryad grove)");
      vars.roomMap.Add(480, "room_oracle"); settings.Add("room_oracle", false, "Delos (Oracle)");
      vars.roomMap.Add(530, "room_hydra"); settings.Add("room_hydra", false, "Hydra");
      vars.roomMap.Add(540, "room_hydra_cave"); settings.Add("room_hydra_cave", false, "Hydra (cave)");
      vars.roomMap.Add(770, "room_limnos"); settings.Add("room_limnos", false, "Limnos (Erana)");
      vars.roomMap.Add(500, "room_minos_exterior"); settings.Add("room_minos_exterior", false, "Minos (exterior)");
      vars.roomMap.Add(510, "room_minos_interior"); settings.Add("room_minos_interior", false, "Minos (interior)");
      vars.roomMap.Add(520, "room_minos_chamber"); settings.Add("room_minos_chamber", false, "Minos (chamber)");
      vars.roomMap.Add(680, "room_sifnos_exterior"); settings.Add("room_sifnos_exterior", false, "Sifnos (exterior)");
      vars.roomMap.Add(690, "room_sifnos_interior"); settings.Add("room_sifnos_interior", false, "Sifnos (interior)");
      vars.roomMap.Add(780, "room_zante"); settings.Add("room_zante", false, "Zante (Katrina)");

      settings.CurrentDefaultParent = null;
   }

   {
      settings.Add("deeds", false, "Split on deed completed");
      settings.CurrentDefaultParent = "deeds";

      vars.flagMap.Add( 27, "deed_apprehend_arestes"); settings.Add("deed_apprehend_arestes", false, "Apprehend Arestes");
      vars.flagMap.Add(602, "deed_buy_brazier"); settings.Add("deed_buy_brazier", false, "Buy Brazier");
      vars.flagMap.Add(637, "deed_buy_healing_pills"); settings.Add("deed_buy_healing_pills", false, "Buy Healing Pills");
      vars.flagMap.Add(653, "deed_buy_mana_potion"); settings.Add("deed_buy_mana_potion", false, "Buy Mana Potion");
      vars.flagMap.Add(654, "deed_buy_map"); settings.Add("deed_buy_map", false, "Buy Map");
      vars.flagMap.Add(652, "deed_buy_magnets"); settings.Add("deed_buy_magnets", false, "Buy Mystic Magnets");
      vars.flagMap.Add(593, "deed_buy_painting"); settings.Add("deed_buy_painting", false, "Buy Painting");
      vars.flagMap.Add(668, "deed_buy_poison_pills"); settings.Add("deed_buy_poison_pills", false, "Buy Poison Cure Pills");
      vars.flagMap.Add(707, "deed_buy_stamina_pills"); settings.Add("deed_buy_stamina_pills", false, "Buy Stamina Pills");
      vars.flagMap.Add(674, "deed_resistance_pool"); settings.Add("deed_resistance_pool", false, "Cast Resistance at Dragon Blood Pool");
      vars.flagMap.Add(706, "deed_create_staff"); settings.Add("deed_create_staff", false, "Create Magic Staff");
      vars.flagMap.Add(631, "deed_dance_inn"); settings.Add("deed_dance_inn", false, "Dance at the Inn");
      vars.flagMap.Add(606, "deed_dance_dryads"); settings.Add("deed_dance_dryads", false, "Dance with the Dryads");
      vars.flagMap.Add( 94, "deed_defeat_assassin"); settings.Add("deed_defeat_assassin", false, "Defeat Assassin");
      vars.flagMap.Add(611, "deed_defeat_dragon"); settings.Add("deed_defeat_dragon", false, "Defeat Dragon");
      vars.flagMap.Add(655, "deed_enter_mansion"); settings.Add("deed_enter_mansion", false, "Enter Minos' mansion");
      vars.flagMap.Add(390, "deed_enter_rites"); settings.Add("deed_enter_rites", false, "Enter Rites of Rulership");
      vars.flagMap.Add(617, "deed_enter_academy"); settings.Add("deed_enter_academy", false, "Enter Science Academy");
      vars.flagMap.Add(235, "deed_free_ios"); settings.Add("deed_free_ios", false, "Free Ios");
      vars.flagMap.Add(246, "deed_free_keros"); settings.Add("deed_free_keros", false, "Free Keros");
      vars.flagMap.Add(312, "deed_free_naxos"); settings.Add("deed_free_naxos", false, "Free Naxos");
      vars.flagMap.Add(660, "deed_no_naxos_alarm"); settings.Add("deed_no_naxos_alarm", false, "Free Naxos without alarm");
      vars.flagMap.Add(333, "deed_free_paros"); settings.Add("deed_free_paros", false, "Free Paros");
      vars.flagMap.Add(516, "deed_free_tinos"); settings.Add("deed_free_tinos", false, "Free Tinos");
      vars.flagMap.Add(592, "deed_get_augment"); settings.Add("deed_get_augment", false, "Get Augment scroll");
      vars.flagMap.Add(645, "deed_get_lotus"); settings.Add("deed_get_lotus", false, "Get Black Lotus");
      vars.flagMap.Add(616, "deed_get_drugged_chocolate"); settings.Add("deed_get_drugged_chocolate", false, "Get Drugged Chocolate from Fenrus");
      vars.flagMap.Add(698, "deed_get_generals_shield"); settings.Add("deed_get_generals_shield", false, "Get General's Shield");
      vars.flagMap.Add(632, "deed_get_goo"); settings.Add("deed_get_goo", false, "Get Goo");
      vars.flagMap.Add(638, "deed_get_hippocrene"); settings.Add("deed_get_hippocrene", false, "Get Hippocrene Water");
      vars.flagMap.Add(639, "deed_get_scales"); settings.Add("deed_get_scales", false, "Get Hydra Scales");
      vars.flagMap.Add(640, "deed_get_teeth"); settings.Add("deed_get_teeth", false, "Get Hydra Teeth");
      vars.flagMap.Add(625, "deed_get_toolkit"); settings.Add("deed_get_toolkit", false, "Get Interesting Toolkit");
      vars.flagMap.Add(643, "deed_get_lethe"); settings.Add("deed_get_lethe", false, "Get Lethe Water");
      vars.flagMap.Add(651, "deed_get_wood"); settings.Add("deed_get_wood", false, "Get Magic Wood");
      vars.flagMap.Add(671, "deed_get_statue"); settings.Add("deed_get_statue", false, "Get Peace Statue");
      vars.flagMap.Add(620, "deed_get_feathers"); settings.Add("deed_get_feathers", false, "Get Pegasus Feathers");
      vars.flagMap.Add(609, "deed_get_proof"); settings.Add("deed_get_proof", false, "Get Proof of Destiny");
      vars.flagMap.Add(696, "deed_get_sewn_sheets"); settings.Add("deed_get_sewn_sheets", false, "Get Sewn Sheets");
      vars.flagMap.Add(618, "deed_get_sheets"); settings.Add("deed_get_sheets", false, "Get Sheets");
      vars.flagMap.Add(703, "deed_get_sigil"); settings.Add("deed_get_sigil", false, "Get Sigil");
      vars.flagMap.Add(709, "deed_get_styx"); settings.Add("deed_get_styx", false, "Get Styx Water");
      vars.flagMap.Add(711, "deed_get_blast"); settings.Add("deed_get_blast", false, "Get Thermonuclear Blast scroll");
      vars.flagMap.Add(603, "deed_get_waterbreathing"); settings.Add("deed_get_waterbreathing", false, "Get Waterbreathing Amulet");
      vars.flagMap.Add(720, "deed_get_wax"); settings.Add("deed_get_wax", false, "Get Wax");
      vars.flagMap.Add(185, "deed_give_aa_pizza"); settings.Add("deed_give_aa_pizza", false, "Give A&A Pizza to Pretorius");
      vars.flagMap.Add(177, "deed_give_basket"); settings.Add("deed_give_basket", false, "Give Basket to Sarra");
      vars.flagMap.Add(183, "deed_give_lotus"); settings.Add("deed_give_lotus", false, "Give Black Lotus to Salim/Julanar");
      vars.flagMap.Add(178, "deed_give_drugged_chocolate"); settings.Add("deed_give_drugged_chocolate", false, "Give Chocolate to Salim/Julanar");
      vars.flagMap.Add(628, "deed_give_deed"); settings.Add("deed_give_deed", false, "Give Deed to Ann");
      vars.flagMap.Add(181, "deed_give_hippocrene"); settings.Add("deed_give_hippocrene", false, "Give Hippocrene Water to FA");
      vars.flagMap.Add(182, "deed_give_lethe"); settings.Add("deed_give_lethe", false, "Give Lethe Water to Salim/Julanar");
      vars.flagMap.Add(184, "deed_give_pj_pizza"); settings.Add("deed_give_pj_pizza", false, "Give P&J Pizza to Mobius");
      vars.flagMap.Add(176, "deed_give_seeds"); settings.Add("deed_give_seeds", false, "Give Seeds to Ann");
      vars.flagMap.Add(192, "deed_gort_lives"); settings.Add("deed_gort_lives", false, "Gort survives final battle");
      vars.flagMap.Add(692, "deed_heal_gort"); settings.Add("deed_heal_gort", false, "Heal Gort during final battle");
      vars.flagMap.Add(601, "deed_learn_boom"); settings.Add("deed_learn_boom", false, "Learn Boom");
      vars.flagMap.Add(619, "deed_learn_fascination"); settings.Add("deed_learn_fascination", false, "Learn Fascination");
      vars.flagMap.Add(675, "deed_learn_rip"); settings.Add("deed_learn_rip", false, "Learn Rip");
      vars.flagMap.Add(700, "deed_learn_shrink"); settings.Add("deed_learn_shrink", false, "Learn Shrink");
      vars.flagMap.Add(705, "deed_learn_erana_katrina"); settings.Add("deed_learn_erana_katrina", false, "Learn spell from Erana/Katrina");
      vars.flagMap.Add(722, "deed_learn_whirlwind"); settings.Add("deed_learn_whirlwind", false, "Learn Whirlwind");
      vars.flagMap.Add(646, "deed_make_wings"); settings.Add("deed_make_wings", false, "Make Icarus wings");
      vars.flagMap.Add(286, "deed_marry_elsa"); settings.Add("deed_marry_elsa", false, "Marry Elsa");
      vars.flagMap.Add(287, "deed_marry_erana"); settings.Add("deed_marry_erana", false, "Marry Erana");
      vars.flagMap.Add(237, "deed_marry_katrina"); settings.Add("deed_marry_katrina", false, "Marry Katrina");
      vars.flagMap.Add(288, "deed_marry_nawar"); settings.Add("deed_marry_nawar", false, "Marry Nawar");
      vars.flagMap.Add(349, "deed_science_aptitude"); settings.Add("deed_science_aptitude", false, "Pass Science aptitude test");
      vars.flagMap.Add(572, "deed_feather_wings"); settings.Add("deed_feather_wings", false, "Put Feather on wings");
      vars.flagMap.Add(563, "deed_wax_wings"); settings.Add("deed_wax_wings", false, "Put Wax on wings");
      vars.flagMap.Add(608, "deed_reach_delos"); settings.Add("deed_reach_delos", false, "Reach Delos Island");
      vars.flagMap.Add(591, "deed_reach_hydra"); settings.Add("deed_reach_hydra", false, "Reach Hydra Island");
      vars.flagMap.Add(694, "deed_reach_science"); settings.Add("deed_reach_science", false, "Reach Science Island");
      vars.flagMap.Add(701, "deed_reach_sifnos"); settings.Add("deed_reach_sifnos", false, "Reach Sifnos");
      vars.flagMap.Add(710, "deed_read_manual"); settings.Add("deed_read_manual", false, "Read Swimming Manual");
      vars.flagMap.Add(614, "deed_restore_pillar"); settings.Add("deed_restore_pillar", false, "Restore pillar during final battle");
      vars.flagMap.Add(199, "deed_winged_gondola"); settings.Add("deed_winged_gondola", false, "Retrieve winged gondola");
      vars.flagMap.Add(644, "deed_sign_logbook"); settings.Add("deed_sign_logbook", false, "Sign logbook");
      vars.flagMap.Add(519, "deed_toro_lives"); settings.Add("deed_toro_lives", false, "Toro survives final battle");
      vars.flagMap.Add(626, "deed_fireproof_pool"); settings.Add("deed_fireproof_pool", false, "Use Fireproof Potion at Dragon Blood Pool");
      vars.flagMap.Add(672, "deed_fireproof_final"); settings.Add("deed_fireproof_final", false, "Use Fireproof Potion during final battle");
      vars.flagMap.Add(719, "deed_use_magnet"); settings.Add("deed_use_magnet", false, "Use Mystic Magnet");
      vars.flagMap.Add(554, "deed_visit_erana"); settings.Add("deed_visit_erana", false, "Visit Erana");
      vars.flagMap.Add( 23, "deed_visit_erasmus"); settings.Add("deed_visit_erasmus", false, "Visit Erasmus");
      vars.flagMap.Add(557, "deed_visit_katrina"); settings.Add("deed_visit_katrina", false, "Visit Katrina");
      vars.flagMap.Add(642, "deed_warn_guards"); settings.Add("deed_warn_guards", false, "Warn guards about Kokeeno's death");

      settings.CurrentDefaultParent = null;
   }

   {
      settings.Add("items", false, "Split on item acquired");

      settings.CurrentDefaultParent = "items";
      settings.Add("items_weapons", false, "Weapons");
      settings.CurrentDefaultParent = "items_weapons";

      vars.itemMap.Add(0x18B73, "item_barbed_spear"); settings.Add("item_barbed_spear", false, "Barbed Spear");
      vars.itemMap.Add(0x18B27, "item_blackjack"); settings.Add("item_blackjack", false, "Blackjack");
      vars.itemMap.Add(0x18AFA, "item_bow"); settings.Add("item_bow", false, "Bow");
      vars.itemMap.Add(0x18AF6, "item_dagger"); settings.Add("item_dagger", false, "Dagger");
      vars.itemMap.Add(0x18B05, "item_dragon_slayer_sword"); settings.Add("item_dragon_slayer_sword", false, "Dragon Slayer Sword");
      vars.itemMap.Add(0x18B5E, "item_fine_axe"); settings.Add("item_fine_axe", false, "Fine Axe");
      vars.itemMap.Add(0x18B04, "item_ice_diamond_sword"); settings.Add("item_ice_diamond_sword", false, "Ice Diamond Sword");
      vars.itemMap.Add(0x18B52, "item_lit_torch"); settings.Add("item_lit_torch", false, "Lit Torch");
      vars.itemMap.Add(0x18B07, "item_magic_axe"); settings.Add("item_magic_axe", false, "Magic Axe");
      vars.itemMap.Add(0x18AFB, "item_magic_bow"); settings.Add("item_magic_bow", false, "Magic Bow");
      vars.itemMap.Add(0x18AF7, "item_magic_dagger"); settings.Add("item_magic_dagger", false, "Magic Dagger");
      vars.itemMap.Add(0x18AFF, "item_magic_spear"); settings.Add("item_magic_spear", false, "Magic Spear");
      vars.itemMap.Add(0x18B75, "item_magic_staff"); settings.Add("item_magic_staff", false, "Magic Staff");
      vars.itemMap.Add(0x18B02, "item_magic_sword"); settings.Add("item_magic_sword", false, "Magic Sword");
      vars.itemMap.Add(0x18B08, "item_minotaur_axe"); settings.Add("item_minotaur_axe", false, "Minotaur Axe");
      vars.itemMap.Add(0x18B03, "item_paladin_sword"); settings.Add("item_paladin_sword", false, "Paladin Sword");
      vars.itemMap.Add(0x18AF8, "item_poisoned_dagger"); settings.Add("item_poisoned_dagger", false, "Poisoned Dagger");
      vars.itemMap.Add(0x18AF9, "item_slasher_dagger"); settings.Add("item_slasher_dagger", false, "Slasher Dagger");
      vars.itemMap.Add(0x18AFD, "item_spear"); settings.Add("item_spear", false, "Spear");
      vars.itemMap.Add(0x18B01, "item_sword"); settings.Add("item_sword", false, "Sword");
      vars.itemMap.Add(0x18AFE, "item_throwing_spear"); settings.Add("item_throwing_spear", false, "Throwing Spear");
      vars.itemMap.Add(0x18B51, "item_torch"); settings.Add("item_torch", false, "Torch");
      vars.itemMap.Add(0x18B06, "item_trident"); settings.Add("item_trident", false, "Trident");
      vars.itemMap.Add(0x18B00, "item_wurmbane_spear"); settings.Add("item_wurmbane_spear", false, "Wurmbane Spear");

      settings.CurrentDefaultParent = "items";
      settings.Add("items_armor", false, "Armor");
      settings.CurrentDefaultParent = "items_armor";

      vars.itemMap.Add(0x18AF0, "item_chain_mail"); settings.Add("item_chain_mail", false, "Chain Mail");
      vars.itemMap.Add(0x18AEF, "item_generals_shield"); settings.Add("item_generals_shield", false, "General's Shield");
      vars.itemMap.Add(0x18AF4, "item_helm"); settings.Add("item_helm", false, "Helm");
      vars.itemMap.Add(0x18AF2, "item_leather_armor"); settings.Add("item_leather_armor", false, "Leather Armor");
      vars.itemMap.Add(0x18AF1, "item_magic_chain_mail"); settings.Add("item_magic_chain_mail", false, "Magic Chain Mail");
      vars.itemMap.Add(0x18AF5, "item_magic_helm"); settings.Add("item_magic_helm", false, "Magic Helm");
      vars.itemMap.Add(0x18AF3, "item_magic_leather_armor"); settings.Add("item_magic_leather_armor", false, "Magic Leather Armor");
      vars.itemMap.Add(0x18AEE, "item_magic_shield"); settings.Add("item_magic_shield", false, "Magic Shield");
      vars.itemMap.Add(0x18B74, "item_ornate_shield"); settings.Add("item_ornate_shield", false, "Ornate Shield");
      vars.itemMap.Add(0x18AED, "item_shield"); settings.Add("item_shield", false, "Shield");

      settings.CurrentDefaultParent = "items";
      settings.Add("items_accessories", false, "Accessories");
      settings.CurrentDefaultParent = "items_accessories";

      vars.itemMap.Add(0x18B3B, "item_amulet_of_attack"); settings.Add("item_amulet_of_attack", false, "Amulet of Attack");
      vars.itemMap.Add(0x18B3A, "item_amulet_of_defense"); settings.Add("item_amulet_of_defense", false, "Amulet of Defense");
      vars.itemMap.Add(0x18B3D, "item_atlas_armband"); settings.Add("item_atlas_armband", false, "Atlas Armband");
      vars.itemMap.Add(0x18B36, "item_gold_ring"); settings.Add("item_gold_ring", false, "Gold Ring");
      vars.itemMap.Add(0x18B3C, "item_good_luck_charm"); settings.Add("item_good_luck_charm", false, "Good Luck Charm");
      vars.itemMap.Add(0x18B37, "item_heras_ring"); settings.Add("item_heras_ring", false, "Hera's Ring");
      vars.itemMap.Add(0x18B40, "item_katta_pin"); settings.Add("item_katta_pin", false, "Katta Pin");
      vars.itemMap.Add(0x18B38, "item_kings_ring"); settings.Add("item_kings_ring", false, "King's Ring");
      vars.itemMap.Add(0x18B3F, "item_magic_bracelet"); settings.Add("item_magic_bracelet", false, "Magic Bracelet");
      vars.itemMap.Add(0x18B39, "item_ring_of_truth"); settings.Add("item_ring_of_truth", false, "Ring of Truth");
      vars.itemMap.Add(0x18B3E, "item_stealth_charm"); settings.Add("item_stealth_charm", false, "Stealth Charm");
      vars.itemMap.Add(0x18B41, "item_waterbreathing_amulet"); settings.Add("item_waterbreathing_amulet", false, "Waterbreathing Amulet");

      settings.CurrentDefaultParent = "items";
      settings.Add("items_scrolls", false, "Scrolls");
      settings.CurrentDefaultParent = "items_scrolls";

      vars.itemMap.Add(0x18B68, "item_augment_scroll"); settings.Add("item_augment_scroll", false, "Augment Scroll");
      vars.itemMap.Add(0x18B6C, "item_boom_scroll"); settings.Add("item_boom_scroll", false, "Boom Scroll");
      vars.itemMap.Add(0x18B6F, "item_dazzle_scroll"); settings.Add("item_dazzle_scroll", false, "Dazzle Scroll");
      vars.itemMap.Add(0x18B71, "item_fascination_scroll"); settings.Add("item_fascination_scroll", false, "Fascination Scroll");
      vars.itemMap.Add(0x18B6D, "item_juggling_lights_scroll"); settings.Add("item_juggling_lights_scroll", false, "Juggling Lights Scroll");
      vars.itemMap.Add(0x18B6E, "item_resistance_scroll"); settings.Add("item_resistance_scroll", false, "Resistance Scroll");
      vars.itemMap.Add(0x18B6B, "item_rip_scroll"); settings.Add("item_rip_scroll", false, "RIP Scroll");
      vars.itemMap.Add(0x18B43, "item_scroll"); settings.Add("item_scroll", false, "Scroll");
      vars.itemMap.Add(0x18B69, "item_shrink_scroll"); settings.Add("item_shrink_scroll", false, "Shrink Scroll");
      vars.itemMap.Add(0x18B6A, "item_thermonuclear_blast_scroll"); settings.Add("item_thermonuclear_blast_scroll", false, "Thermonuclear Blast Scroll");
      vars.itemMap.Add(0x18B70, "item_zap_scroll"); settings.Add("item_zap_scroll", false, "Zap Scroll");

      settings.CurrentDefaultParent = "items";
      settings.Add("items_potions", false, "Potions/Pills");
      settings.CurrentDefaultParent = "items_potions";

      vars.itemMap.Add(0x18B10, "item_fire_proofing_potion"); settings.Add("item_fire_proofing_potion", false, "Fire Proofing Potion");
      vars.itemMap.Add(0x18B09, "item_healing_pills"); settings.Add("item_healing_pills", false, "Healing Pills");
      vars.itemMap.Add(0x18B0D, "item_health_potion"); settings.Add("item_health_potion", false, "Health Potion");
      vars.itemMap.Add(0x18B0F, "item_mana_potion"); settings.Add("item_mana_potion", false, "Mana Potion");
      vars.itemMap.Add(0x18B0C, "item_mana_pills"); settings.Add("item_mana_pills", false, "Mana Pills");
      vars.itemMap.Add(0x18B0A, "item_poison_cure_pills"); settings.Add("item_poison_cure_pills", false, "Poison Cure Pills");
      vars.itemMap.Add(0x18B0B, "item_stamina_pills"); settings.Add("item_stamina_pills", false, "Stamina Pills");
      vars.itemMap.Add(0x18B0E, "item_vitality_potion"); settings.Add("item_vitality_potion", false, "Vitality Potion");

      settings.CurrentDefaultParent = "items";
      settings.Add("items_misc", false, "Miscellaneous");
      settings.CurrentDefaultParent = "items_misc";

      vars.itemMap.Add(0x18B1F, "item_aa_pizza"); settings.Add("item_aa_pizza", false, "A&A Pizza");
      vars.itemMap.Add(0x18B28, "item_acme_toolkit"); settings.Add("item_acme_toolkit", false, "ACME Toolkit");
      vars.itemMap.Add(0x18B16, "item_alabaster_amphora"); settings.Add("item_alabaster_amphora", false, "Alabaster Amphora");
      vars.itemMap.Add(0x18B63, "item_ale_drink"); settings.Add("item_ale_drink", false, "Ale (drink)");
      vars.itemMap.Add(0x18B60, "item_amphora_with_water"); settings.Add("item_amphora_with_water", false, "Amphora with Water");
      vars.itemMap.Add(0x18B11, "item_amphora"); settings.Add("item_amphora", false, "Amphora");
      vars.itemMap.Add(0x18B1E, "item_anchovies"); settings.Add("item_anchovies", false, "Anchovies");
      vars.itemMap.Add(0x18B5D, "item_arrowhead"); settings.Add("item_arrowhead", false, "Arrowhead");
      vars.itemMap.Add(0x18AFC, "item_arrows"); settings.Add("item_arrows", false, "Arrows");
      vars.itemMap.Add(0x18B1D, "item_artichoke_pizza"); settings.Add("item_artichoke_pizza", false, "Artichoke Pizza");
      vars.itemMap.Add(0x18B4F, "item_basket"); settings.Add("item_basket", false, "Basket");
      vars.itemMap.Add(0x18B35, "item_bead_necklace"); settings.Add("item_bead_necklace", false, "Bead Necklace");
      vars.itemMap.Add(0x18B57, "item_beeswax"); settings.Add("item_beeswax", false, "Beeswax");
      vars.itemMap.Add(0x18B2B, "item_black_lotus"); settings.Add("item_black_lotus", false, "Black Lotus");
      vars.itemMap.Add(0x18B32, "item_blackbird"); settings.Add("item_blackbird", false, "Blackbird");
      vars.itemMap.Add(0x18B59, "item_brazier"); settings.Add("item_brazier", false, "Brazier");
      vars.itemMap.Add(0x18B19, "item_chocolate_box"); settings.Add("item_chocolate_box", false, "Chocolate Box");
      vars.itemMap.Add(0x18B44, "item_deed"); settings.Add("item_deed", false, "Deed");
      vars.itemMap.Add(0x18B47, "item_drachmas"); settings.Add("item_drachmas", false, "Drachmas");
      vars.itemMap.Add(0x18B2A, "item_flowers"); settings.Add("item_flowers", false, "Flowers");
      vars.itemMap.Add(0x18B20, "item_fruit"); settings.Add("item_fruit", false, "Fruit");
      vars.itemMap.Add(0x18B15, "item_goo"); settings.Add("item_goo", false, "Goo");
      vars.itemMap.Add(0x18B22, "item_grapnel"); settings.Add("item_grapnel", false, "Grapnel");
      vars.itemMap.Add(0x18B64, "item_greek_coffee_drink"); settings.Add("item_greek_coffee_drink", false, "Greek Coffee (drink)");
      vars.itemMap.Add(0x18B17, "item_gyro"); settings.Add("item_gyro", false, "Gyro");
      vars.itemMap.Add(0x18B46, "item_handbook_of_swimming"); settings.Add("item_handbook_of_swimming", false, "Handbook of Swimming");
      vars.itemMap.Add(0x18B13, "item_hippocrene_water"); settings.Add("item_hippocrene_water", false, "Hippocrene Water");
      vars.itemMap.Add(0x18B49, "item_hydra_scale"); settings.Add("item_hydra_scale", false, "Hydra Scale");
      vars.itemMap.Add(0x18B48, "item_hydra_teeth"); settings.Add("item_hydra_teeth", false, "Hydra Teeth");
      vars.itemMap.Add(0x18B66, "item_imitation_blackbird"); settings.Add("item_imitation_blackbird", false, "Imitation Blackbird");
      vars.itemMap.Add(0x18B72, "item_interesting_toolkit"); settings.Add("item_interesting_toolkit", false, "Interesting Toolkit");
      vars.itemMap.Add(0x18B1B, "item_jalapeno_peppers"); settings.Add("item_jalapeno_peppers", false, "Jalapeno Peppers");
      vars.itemMap.Add(0x18B42, "item_jewelry"); settings.Add("item_jewelry", false, "Jewelry");
      vars.itemMap.Add(0x18B58, "item_key"); settings.Add("item_key", false, "Key");
      vars.itemMap.Add(0x18B12, "item_lethe_water"); settings.Add("item_lethe_water", false, "Lethe Water");
      vars.itemMap.Add(0x18B23, "item_magic_grapnel"); settings.Add("item_magic_grapnel", false, "Magic Grapnel");
      vars.itemMap.Add(0x18B5F, "item_magic_seeds"); settings.Add("item_magic_seeds", false, "Magic Seeds");
      vars.itemMap.Add(0x18B34, "item_magic_statue"); settings.Add("item_magic_statue", false, "Magic Statue");
      vars.itemMap.Add(0x18B4E, "item_magic_wood"); settings.Add("item_magic_wood", false, "Magic Wood");
      vars.itemMap.Add(0x18B45, "item_map"); settings.Add("item_map", false, "Map");
      vars.itemMap.Add(0x18B5B, "item_mug"); settings.Add("item_mug", false, "Mug");
      vars.itemMap.Add(0x18B4A, "item_mystic_magnet_blue"); settings.Add("item_mystic_magnet_blue", false, "Mystic Magnet (Blue)");
      vars.itemMap.Add(0x18B4B, "item_mystic_magnet_red"); settings.Add("item_mystic_magnet_red", false, "Mystic Magnet (Red)");
      vars.itemMap.Add(0x18B61, "item_ouzo_drink"); settings.Add("item_ouzo_drink", false, "Ouzo (drink)");
      vars.itemMap.Add(0x18B1C, "item_pj_pizza"); settings.Add("item_pj_pizza", false, "P&J Pizza");
      vars.itemMap.Add(0x18B55, "item_painting"); settings.Add("item_painting", false, "Painting");
      vars.itemMap.Add(0x18B31, "item_peace_statue"); settings.Add("item_peace_statue", false, "Peace Statue");
      vars.itemMap.Add(0x18B56, "item_pegasus_feather"); settings.Add("item_pegasus_feather", false, "Pegasus Feather");
      vars.itemMap.Add(0x18B1A, "item_pepperoni_pizza"); settings.Add("item_pepperoni_pizza", false, "Pepperoni Pizza");
      vars.itemMap.Add(0x18B21, "item_pick_pocket_knife"); settings.Add("item_pick_pocket_knife", false, "Pick-Pocket Knife");
      vars.itemMap.Add(0x18B4C, "item_proof_of_destiny"); settings.Add("item_proof_of_destiny", false, "Proof of Destiny");
      vars.itemMap.Add(0x18B62, "item_retsina_drink"); settings.Add("item_retsina_drink", false, "Retsina (drink)");
      vars.itemMap.Add(0x18B4D, "item_rocks"); settings.Add("item_rocks", false, "Rocks");
      vars.itemMap.Add(0x18B25, "item_rope_grapnel"); settings.Add("item_rope_grapnel", false, "Rope & Grapnel");
      vars.itemMap.Add(0x18B24, "item_rope"); settings.Add("item_rope", false, "Rope");
      vars.itemMap.Add(0x18B54, "item_sewn_sheet"); settings.Add("item_sewn_sheet", false, "Sewn Sheet");
      vars.itemMap.Add(0x18B53, "item_sheet"); settings.Add("item_sheet", false, "Sheet");
      vars.itemMap.Add(0x18B5A, "item_shell"); settings.Add("item_shell", false, "Shell");
      vars.itemMap.Add(0x18B2C, "item_sigil_of_ios"); settings.Add("item_sigil_of_ios", false, "Sigil of Ios");
      vars.itemMap.Add(0x18B2D, "item_sigil_of_keros"); settings.Add("item_sigil_of_keros", false, "Sigil of Keros");
      vars.itemMap.Add(0x18B2E, "item_sigil_of_naxos"); settings.Add("item_sigil_of_naxos", false, "Sigil of Naxos");
      vars.itemMap.Add(0x18B2F, "item_sigil_of_paros"); settings.Add("item_sigil_of_paros", false, "Sigil of Paros");
      vars.itemMap.Add(0x18B30, "item_sigil_of_tinos"); settings.Add("item_sigil_of_tinos", false, "Sigil of Tinos");
      vars.itemMap.Add(0x18B18, "item_sokolatak_ya"); settings.Add("item_sokolatak_ya", false, "Sokolatak-ya");
      vars.itemMap.Add(0x18B5C, "item_spearhead"); settings.Add("item_spearhead", false, "Spearhead");
      vars.itemMap.Add(0x18B26, "item_stealth_oil"); settings.Add("item_stealth_oil", false, "Stealth Oil");
      vars.itemMap.Add(0x18B14, "item_styx_water"); settings.Add("item_styx_water", false, "Styx Water");
      vars.itemMap.Add(0x18B29, "item_tinderbox"); settings.Add("item_tinderbox", false, "Tinderbox");
      vars.itemMap.Add(0x18B65, "item_todays_special_drink"); settings.Add("item_todays_special_drink", false, "Today's Special (drink)");
      vars.itemMap.Add(0x18B67, "item_windproof_sheet"); settings.Add("item_windproof_sheet", false, "Windproof Sheet");
      vars.itemMap.Add(0x18B33, "item_winged_lion_statue"); settings.Add("item_winged_lion_statue", false, "Winged Lion Statue");

      settings.CurrentDefaultParent = null;
   }

   {
      settings.Add("spells", false, "Split on spell learned");
      settings.CurrentDefaultParent = "spells";

      vars.itemMap.Add(0x18C91, "spell_augment"); settings.Add("spell_augment", false, "Augment");
      vars.itemMap.Add(0x18C8C, "spell_aura"); settings.Add("spell_aura", false, "Aura");
      vars.itemMap.Add(0x18C93, "spell_boom"); settings.Add("spell_boom", false, "Boom");
      vars.itemMap.Add(0x18C84, "spell_calm"); settings.Add("spell_calm", false, "Calm");
      vars.itemMap.Add(0x18C83, "spell_dazzle"); settings.Add("spell_dazzle", false, "Dazzle");
      vars.itemMap.Add(0x18C87, "spell_detect_magic"); settings.Add("spell_detect_magic", false, "Detect Magic");
      vars.itemMap.Add(0x18C96, "spell_dragon_fire"); settings.Add("spell_dragon_fire", false, "Dragon Fire");
      vars.itemMap.Add(0x18C94, "spell_fascination"); settings.Add("spell_fascination", false, "Fascination");
      vars.itemMap.Add(0x18C7D, "spell_fetch"); settings.Add("spell_fetch", false, "Fetch");
      vars.itemMap.Add(0x18C97, "spell_first_aid"); settings.Add("spell_first_aid", false, "First Aid");
      vars.itemMap.Add(0x18C80, "spell_flame_dart"); settings.Add("spell_flame_dart", false, "Flame Dart");
      vars.itemMap.Add(0x18C7F, "spell_force_bolt"); settings.Add("spell_force_bolt", false, "Force Bolt");
      vars.itemMap.Add(0x18C81, "spell_frost_bite"); settings.Add("spell_frost_bite", false, "Frost Bite");
      vars.itemMap.Add(0x18C86, "spell_glide"); settings.Add("spell_glide", false, "Glide");
      vars.itemMap.Add(0x18C85, "spell_hide"); settings.Add("spell_hide", false, "Hide");
      vars.itemMap.Add(0x18C8D, "spell_juggling_lights"); settings.Add("spell_juggling_lights", false, "Juggling Lights");
      vars.itemMap.Add(0x18C88, "spell_levitate"); settings.Add("spell_levitate", false, "Levitate");
      vars.itemMap.Add(0x18C82, "spell_lightning_ball"); settings.Add("spell_lightning_ball", false, "Lightning Ball");
      vars.itemMap.Add(0x18C7C, "spell_open"); settings.Add("spell_open", false, "Open");
      vars.itemMap.Add(0x18C8A, "spell_protection"); settings.Add("spell_protection", false, "Protection");
      vars.itemMap.Add(0x18C8B, "spell_resistance"); settings.Add("spell_resistance", false, "Resistance");
      vars.itemMap.Add(0x18C89, "spell_reversal"); settings.Add("spell_reversal", false, "Reversal");
      vars.itemMap.Add(0x18C92, "spell_rip"); settings.Add("spell_rip", false, "RIP");
      vars.itemMap.Add(0x18C98, "spell_shrink"); settings.Add("spell_shrink", false, "Shrink");
      vars.itemMap.Add(0x18C8E, "spell_summon_staff"); settings.Add("spell_summon_staff", false, "Summon Staff");
      vars.itemMap.Add(0x18C95, "spell_thermonuclear_blast"); settings.Add("spell_thermonuclear_blast", false, "Thermonuclear Blast");
      vars.itemMap.Add(0x18C7E, "spell_trigger"); settings.Add("spell_trigger", false, "Trigger");
      vars.itemMap.Add(0x18C90, "spell_whirlwind"); settings.Add("spell_whirlwind", false, "Whirlwind");
      vars.itemMap.Add(0x18C8F, "spell_zap"); settings.Add("spell_zap", false, "Zap");

      settings.CurrentDefaultParent = null;
   }

   {
      settings.Add("abilities", false, "Split on Paladin ability learned");
      settings.CurrentDefaultParent = "abilities";

      vars.itemMap.Add(0x18CE7, "ability_awe"); settings.Add("ability_awe", false, "Awe");
      vars.itemMap.Add(0x18CE3, "ability_destroy_undead"); settings.Add("ability_destroy_undead", false, "Destroy Undead");
      vars.itemMap.Add(0x18CE0, "ability_heal"); settings.Add("ability_heal", false, "Heal");
      vars.itemMap.Add(0x18CE6, "ability_holy_strength"); settings.Add("ability_holy_strength", false, "Holy Strength");
      vars.itemMap.Add(0x18CE1, "ability_honor_shield"); settings.Add("ability_honor_shield", false, "Honor Shield");
      vars.itemMap.Add(0x18CE2, "ability_magic_ward"); settings.Add("ability_magic_ward", false, "Magic Ward");
      vars.itemMap.Add(0x18CE4, "ability_peace"); settings.Add("ability_peace", false, "Peace");
      vars.itemMap.Add(0x18CE5, "ability_sense_aura"); settings.Add("ability_sense_aura", false, "Sense Aura");

      settings.CurrentDefaultParent = null;
   }

   vars.roomsVisited = new HashSet<int>();
   vars.itemsAcquired = new HashSet<int>();
   vars.flagsSet = new HashSet<int>();
   vars.activeRoomCodes = new List<int>();
   vars.activeItemCodes = new List<int>();
   vars.activeFlagCodes = new List<int>();
   vars.queuedSplits = 0;
   vars.startFlagSeenUnset = false;
}

onReset {
   vars.roomsVisited.Clear();
   vars.itemsAcquired.Clear();
   vars.flagsSet.Clear();
   vars.activeRoomCodes.Clear();
   vars.activeItemCodes.Clear();
   vars.activeFlagCodes.Clear();
   vars.queuedSplits = 0;
   vars.startFlagSeenUnset = false;
}

start {
   // Reallocated on game start, though less reliable if game isn't rebooted between attempts
   if (current.charPtr != old.charPtr) {
      return true;
   }
}

onStart {
   foreach (var roomPair in vars.roomMap) {
      if (settings[roomPair.Value]) {
         vars.activeRoomCodes.Add(roomPair.Key);
      }
   }

   foreach (var itemPair in vars.itemMap) {
      if (settings[itemPair.Value]) {
         vars.activeItemCodes.Add(itemPair.Key);
      }
   }

   foreach (var flagPair in vars.flagMap) {
      if (settings[flagPair.Value]) {
         vars.activeFlagCodes.Add(flagPair.Key);
      }
   }
}

split {
   if (current.loadedRoom != old.loadedRoom && !vars.roomsVisited.Contains(current.loadedRoom)) {
      vars.roomsVisited.Add(current.loadedRoom);
      if (vars.activeRoomCodes.Contains(current.loadedRoom)) {
         ++vars.queuedSplits;
      }
   }

   if (vars.activeItemCodes.Count > 0) {
      int invAddr = new DeepPointer(0x167394, 0xC7C).Deref<int>(game);
      int invCount = 0;
      while (invAddr != 0 && invCount < 500) {
         int container = memory.ReadValue<int>(IntPtr.Zero + invAddr + 0x1C);

         if (container == 0) {
            int itemCode = memory.ReadValue<int>(IntPtr.Zero + invAddr + 0x14);
            //int itemCount = memory.ReadValue<int>(IntPtr.Zero + invAddr + 0x18);

            if (!vars.itemsAcquired.Contains(itemCode)) {
               vars.itemsAcquired.Add(itemCode);

               if (vars.activeItemCodes.Contains(itemCode)) {
                  ++vars.queuedSplits;
               }
            }
         }

         int nextPtr = memory.ReadValue<int>(IntPtr.Zero + invAddr + 0x08);
         invAddr = nextPtr;
         ++invCount;
      }
   }

   foreach (var flagCode in vars.activeFlagCodes) {
      if (!vars.flagsSet.Contains(flagCode)) {
         int flagByteIdx = flagCode / 8;
         int flagBitIdx = flagCode % 8;

         bool flagWasSet = (old.flags[flagByteIdx] & (1 << flagBitIdx)) != 0;
         bool flagIsSet = (current.flags[flagByteIdx] & (1 << flagBitIdx)) != 0;
         if (!flagWasSet && flagIsSet) {
            vars.flagsSet.Add(flagCode);
            ++vars.queuedSplits;
         }
      }
   }

   if (vars.queuedSplits > 0) {
      --vars.queuedSplits;
      return true;
   }
}
