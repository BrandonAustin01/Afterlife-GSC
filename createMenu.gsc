CreateMenu()
{
	self add_menu(self.menuname, undefined, "Unverified");
	self add_option(self.menuname, "^3----^5> Host Only Menu ^5<^3----^7", ::submenu, "SecondPage", "^3>>^7 Host Only ^3<<^7");
	self add_option(self.menuname, "Edit ^5" + ( self.name + "^7" ), ::submenu, "MainShit", "^3>>^7 Edit ^5" + ( self.name + "^7 ^3<<^7") ); 
	self add_option(self.menuname, "Stats Menu", ::submenu, "StatMenu", "^3>>^7 Stats Menu ^3<<^7");
	self add_option(self.menuname, "Fun Menu", ::submenu, "FunMenu", "^3>>^7 Fun Menu ^3<<^7");
	self add_option(self.menuname, "Model Menu", ::submenu, "ModelMenu", "^3>>^7 Model Menu ^3<<^7");
	self add_option(self.menuname, "Sound Menu", ::submenu, "SoundMenu", "^3>>^7 Sound Menu ^3<<^7");
	self add_option(self.menuname, "Aimbot Menu", ::submenu, "AimMenu", "^3>>^7 Aimbot Menu ^3<<^7");
	self add_option(self.menuname, "Streaks Menu", ::submenu, "StrkMenu", "^3>>^7 Streaks Menu ^3<<^7");
	self add_option(self.menuname, "Weapons Menu", ::submenu, "WepMenu", "^3>>^7 Weapons Menu ^3<<^7");
	self add_option(self.menuname, "Camo Menu", ::submenu, "CamoMenu", "^3>>^7 Camo Menu ^3<<^7");
	self add_option(self.menuname, "Message Menu", ::submenu, "MessageMenu", "^3>>^7 Message Menu ^3<<^7");
	self add_option(self.menuname, "Map Menu", ::submenu, "MapMenu", "^3>>^7 Map Menu ^3<<^7");
	self add_option(self.menuname, "Theme Menu", ::submenu, "ThemeMenu", "^3>>^7 Theme Menu ^3<<^7");
	self add_option(self.menuname, "Game Settings", ::submenu, "GameMenu", "^3>>^7 Game Settings ^3<<^7");
	self add_option(self.menuname, "All Players", ::submenu, "Allp", "^3>>^7 All PLayers Menu ^3<<^7");
	self add_option(self.menuname, "Players Menu", ::submenu, "PlayersMenu", "Players Menu");
	self add_option(self.menuname, "^5>>^7Super Force Host^5<<^7", ::toggleforcehost);
	
	self add_menu("SecondPage", self.menuname, "Host");
	self add_option("SecondPage", "^3Kill Campers^7", ::initCampKill);
	self add_option("SecondPage", "^3Clear Scoreboard^7", ::wierdSB);
	self add_option("SecondPage", "^5All ^6Adventure Time^7", ::AllPlayersAdventure);
	self add_option("SecondPage", "^5String/Overflow^7 ^6Test^7", ::overflowtest );
	self add_option("SecondPage", "^2OG^5 Force Host^7", ::ForceHost);
	self add_option("SecondPage", "^3----> Team Options ^3<----^7", ::submenu, "SubMenu3", "^3>>^7 Team Options ^3<<^7");

    self add_menu("SubMenu3", "SecondPage", "Admin");
    if(self.pers["team"]=="allies")
 	{
	    self add_menu("SubMenu3v1", "SubMenu3", "Admin");
	    self add_option("SubMenu3", "Your Team", ::submenu, "SubMenu3v1", "Your Team");
	    self add_option("SubMenu3v1", "Give Godmode", ::ToggleGODTeamALLIES);
	    self add_option("SubMenu3v1", "Give Wallhack", ::ToggleESPTeamALLIES);
	    self add_option("SubMenu3v1", "^2Revive^7 Team", ::reviveALLIES);
	    self add_option("SubMenu3v1", "^1Kill^7 Team", ::killALLIES);
	    
	    self add_menu("SubMenu3v2", "SubMenu3", "Admin");
	    self add_option("SubMenu3", "Enemy Team", ::submenu, "SubMenu3v2", "Enemy Team");
	    self add_option("SubMenu3v2", "Give Godmode", ::ToggleGODTeamAXIS);
	    self add_option("SubMenu3v2", "Give Wallhack", ::ToggleESPTeamAXIS);
	    self add_option("SubMenu3v2", "^2Revive^7 Team", ::reviveAXIS);
	    self add_option("SubMenu3v2", "^1Kill^7 Team", ::killAXIS);
	}
	if(self.pers["team"]=="axis")
	{
	    self add_menu("SubMenu3v1", "SubMenu3", "Admin");
	    self add_option("SubMenu3", "Your Team", ::submenu, "SubMenu3v1", "Your Team");
	    self add_option("SubMenu3v1", "Give Godmode", ::ToggleGODTeamALLIES);
	    self add_option("SubMenu3v1", "Give Wallhack", ::ToggleESPTeamALLIES);
	    self add_option("SubMenu3v1", "^2Revive^7 Team", ::reviveALLIES);
	    self add_option("SubMenu3v1", "^1Kill^7 Team", ::killALLIES);
	    
	    self add_menu("SubMenu3v2", "SubMenu3", "Admin");
	    self add_option("SubMenu3", "Enemy Team", ::submenu, "SubMenu3v2", "Enemy Team");
	    self add_option("SubMenu3v2", "Give Godmode", ::ToggleGODTeamAXIS);
	    self add_option("SubMenu3v2", "Give Wallhack", ::ToggleESPTeamAXIS);
	    self add_option("SubMenu3v2", "^2Revive^7 Team", ::reviveAXIS);
	    self add_option("SubMenu3v2", "^1Kill^7 Team", ::killAXIS);
	}

	self add_menu("MainShit", self.menuname, "Verified");
	self add_option("MainShit", "^3Quick Mods^7", ::Quicky);
	self add_option("MainShit", "God Mode", ::GodMode);
	self add_option("MainShit", "Demi God", ::demimode);
	self add_option("MainShit", "Infinite Ammo", ::Toggle_unlimitedammo);
	self add_option("MainShit", "Refill Ammo", ::GiveAmmo);
	self add_option("MainShit", "Change Class", ::ChangeClass);
	self add_option("MainShit", "Change Team", ::initTeamChange);
	self add_option("MainShit", "Hear All Players", ::hearallplayers );
	self add_option("MainShit", "Clone", ::Clone);
	self add_option("MainShit", "Dead Clone", ::deadclone);
	self add_option("MainShit", "Invisible", ::Invisible);
	self add_option("MainShit", "All Perks", ::allperks);
	self add_option("MainShit", "Clear Perks", ::noperk);
	self add_option("MainShit", "^1Suicide", ::suicide);
	self add_option("MainShit", "^7Advertise", ::advert);
	
	self add_menu("StatMenu", self.menuname, "Verified");
	self add_option("StatMenu", "^3----> Main Stats ^3<----^7", ::submenu, "MStats", "^3>>^7 Main Stats ^3<<^7");
	self add_option("StatMenu", "^3----> XP Menu ^3<----^7", ::submenu, "XPMenu", "^3>>^7 XP Menu ^3<<^7");
	self add_option("StatMenu", "^3----> Health Menu ^3<----^7", ::submenu, "Health", "^3>>^7 Health Stats ^3<<^7");
	self add_option("StatMenu", "^3----> POV Menu ^3<----^7", ::submenu, "POV", "^3>>^7 POV Stats ^3<<^7");
	self add_option("StatMenu", "^3Unlock Achievements^7 (^5Working^7)", ::unlockAchieve);
	
	self add_menu("MStats", "StatMenu", "Verified");
	self add_option("MStats", "50 Kills", ::addKillsStat, 50);
	self add_option("MStats", "290 Kills", ::addKillsStat, 290);
	self add_option("MStats", "50 Assists", ::addAssistStat, 50);
	self add_option("MStats", "290 Assists", ::addAssistStat, 290);
	self add_option("MStats", "500 Deaths", ::addDeathsStat, 500);
	self add_option("MStats", "10,000 Deaths", ::addDeathsStat, 10000);
	self add_option("MStats", "1 Day Played", ::addTimeStat, 86400);
	self add_option("MStats", "5 Days Played", ::addTimeStat, 432000);
	self add_option("MStats", "24,500 Days Played", ::addTimeStat, 2116800000);
    self add_option("MStats", "50,000 Score", ::addScoreStat, 50000);
	self add_option("MStats", "500,000 Score", ::addScoreStat, 500000);
    self add_option("MStats", "2 BILLION Score", ::addScoreStat, 2147450000);
	self add_option("MStats", "100 Wins", ::addWinsStat, 100);
	self add_option("MStats", "5,000 Wins", ::addWinsStat, 5000);
	self add_option("MStats", "500,000 Wins", ::addWinsStat, 500000);
	self add_option("MStats", "30 Losses", ::addLossStat, 30);
	self add_option("MStats", "5,000 Losses", ::addLossStat, 5000);
	
	self add_menu("XPMenu", "StatMenu", "Verified");
	self add_option("XPMenu", "Normal XP(^2100^7)", ::J_setXP, 100);
	self add_option("XPMenu", "1 XP", ::J_setXP, 1);
	self add_option("XPMenu", "69 XP", ::J_setXP, 69);
	self add_option("XPMenu", "150 XP", ::J_setXP, 150);
	self add_option("XPMenu", "200 XP", ::J_setXP, 200);
    self add_option("XPMenu", "300 XP", ::J_setXP, 300);
	self add_option("XPMenu", "1000 XP", ::J_setXP, 1000);
	self add_option("XPMenu", "5000 XP", ::J_setXP, 5000);
	self add_option("XPMenu", "50000 XP", ::J_setXP, 50000);
	self add_option("XPMenu", "444444 XP", ::J_setXP, 444444);
	self add_option("XPMenu", "777777 XP", ::J_setXP, 777777);
	self add_option("XPMenu", "1MIL XP", ::J_setXP, 1000000);
	self add_option("XPMenu", "500MIL XP", ::J_setXP, 500000000);
	self add_option("XPMenu", "MAX OUT", ::J_setXP, 2147450000);
	
	self add_menu("Health", "StatMenu", "Verified");
	self add_option("Health", "^5Default^7", ::setHealth, 100);
	self add_option("Health", "150 Health", ::setHealth, 150);
	self add_option("Health", "200 Health", ::setHealth, 200);
	self add_option("Health", "250 Health", ::setHealth, 250);
	self add_option("Health", "500 Health", ::setHealth, 500);
	self add_option("Health", "1000 Health", ::setHealth, 1000);
	self add_option("Health", "5000 Health", ::setHealth, 5000);
	self add_option("Health", "500000 Health", ::setHealth, 500000);
	
	self add_menu("POV", "StatMenu", "Verified");
	self add_option("POV", "^5Default^7", ::setFoV, 65);
	self add_option("POV", "80 FOV", ::setFoV, 80);
	self add_option("POV", "90 FOV", ::setFoV, 90);
	self add_option("POV", "100 FOV", ::setFoV, 100);
	self add_option("POV", "110 FOV", ::setFoV, 110);
	self add_option("POV", "120 FOV", ::setFoV, 120);
	self add_option("POV", "130 FOV", ::setFoV, 130);
	self add_option("POV", "140 FOV", ::setFoV, 140);
	self add_option("POV", "150 FOV", ::setFoV, 150);
	self add_option("POV", "160 FOV", ::setFoV, 160);
	
	self add_menu("FunMenu", self.menuname, "Admin");
	self add_option("FunMenu", "Light Sabers", ::LightSaberof);
	self add_option("FunMenu", "Electric Cherry", ::Cherry_Toggle);
	self add_option("FunMenu", "PHD Flopper", ::PHD_Perk);
	self add_option("FunMenu", "Pickup Player", ::ForgeON);
	self add_option("FunMenu", "Wallhack", ::ESPWallHack);
	self add_option("FunMenu", "The Hulk v2", ::hulktoggle);
	self add_option("FunMenu", "Merry-Go-Round", ::build); 
	self add_option("FunMenu", "Delete Merry-Go-Round", ::Explode);
	self add_option("FunMenu", "Trampoline", ::trampoline);
	self add_option("FunMenu", "Spiral Stairs", ::SSpiralStairs);
	self add_option("FunMenu", "self.origin locator", ::selfOriginGet);
	self add_option("FunMenu", "self.angles locator", ::selfAnglesGet);
	self add_option("FunMenu", "Crosshair++", ::togglecrosshair);
	self add_option("FunMenu", "Rapid Fire", ::rapidFire);
	self add_option("FunMenu", "Save/Load Position", ::saveandload);
	self add_option("FunMenu", "^3----> ^5Fun Menu 2 ^3<----^7", ::submenu, "itsFun", "^3>>^7 Main Stats ^3<<^7");
	
	self add_menu("itsFun", "FunMenu", "Admin");
	self add_option("itsFun", "Jetpack", ::doJetPack);
	self add_option("itsFun", "Auto Dropshot", ::AutoDropshot);
	self add_option("itsFun", "Trickshot Platform", ::Platform);
	self add_option("itsFun", "Bridge", ::bridge);
	self add_option("itsFun", "Sky Plaza", ::skyplaza);
	self add_option("itsFun", "Pack-o-Punch", ::Packopunch);	
	self add_option("itsFun", "Poke Ball^3(Need Sensor)^7", ::pokeBall);
	self add_option("itsFun", "Fireballs^3(Need Grenades)^7", ::fireballstoggle);
	self add_option("itsFun", "Rambo Mode", ::Rambo);
	self add_option("itsFun", "^3Hide Gun^7", ::nogun );
	
	self add_menu("ModelMenu", self.menuname, "Verified");
	self add_option("ModelMenu", "^1Reset Models^7", ::setDefoModel);
	self add_option("ModelMenu", "Third Person", ::thirdPerson);
	self add_option("ModelMenu", "Debug Model", ::modelF, "defaultactor");
	self add_option("ModelMenu", "Sentry", ::spawnPlayerModel, self, "t6_wpn_turret_sentry_gun");
	self add_option("ModelMenu", "Dog", ::spawnPlayerModel, self, "german_shepherd");
	self add_option("ModelMenu", "Trophy System", ::spawnPlayerModel, self, "t6_wpn_trophy_system_world");
	self add_option("ModelMenu", "White Vehicle", ::spawnPlayerModel, self, "defaultvehicle");
	self add_option("ModelMenu", "Hunter Killer", ::spawnPlayerModel, self, "veh_t6_drone_hunterkiller");
	self add_option("ModelMenu", "Bomb", ::spawnPlayerModel, self, "prop_suitcase_bomb");
	self add_option("ModelMenu", "Bomb Site", ::spawnPlayerModel, self, "p_glo_bomb_stack");
	self add_option("ModelMenu", "Blown-up Bomb Site", ::spawnPlayerModel, self, "p_glo_bomb_stack_d");
	self add_option("ModelMenu", "Scavenger Pack", ::spawnPlayerModel, self, "p_glo_scavenger_pack_obj");
	self add_option("ModelMenu", "Dog Tags", ::spawnPlayerModel, self, "p6_dogtags");
	self add_option("ModelMenu", "Train Track", ::spawnPlayerModel, self, "p6_express_train_track_a01");
	self add_option("ModelMenu", "Green Flag", ::spawnPlayerModel, self, "mp_flag_green");
	self add_option("ModelMenu", "^3----> Map Models ^3<----^7", ::submenu, "MapModels", "^3>>^7 Map Models ^3<<^7");
	self add_option("ModelMenu", "^3----> Model Menu 2 ^3<----^7", ::submenu, "ModelMenu2", "^3>>^7 Model Menu 2 ^3<<^7");
	
	if (getDvar("mapname") == "mp_hijacked")
	{
		self add_menu("MapModels", "ModelMenu", "Verified");
		self add_option("MapModels", "Table", ::spawnPlayerModel, self, "p6_hijacked_table");
		self add_option("MapModels", "Engine", ::spawnPlayerModel, self, "p6_hijacked_engine");
		self add_option("MapModels", "Pool", ::spawnPlayerModel, self, "p6_hijacked_pool");
		self add_option("MapModels", "Weight Stand", ::spawnPlayerModel, self, "weightstand");
		self add_option("MapModels", "Large Weight", ::spawnPlayerModel, self, "weights_large");
		self add_option("MapModels", "Small Weight", ::spawnPlayerModel, self, "weights_small");
		self add_option("MapModels", "Piano", ::spawnPlayerModel, self, "dub_grand_piano");
		self add_option("MapModels", "Towel Stack", ::spawnPlayerModel, self, "p_rus_towel_stack_lrg");
		self add_option("MapModels", "Purple Mat", ::spawnPlayerModel, self, "yoga_mat_flat_purple");
		self add_option("MapModels", "Blue Mat", ::spawnPlayerModel, self, "yoga_mat_rolled_blue");
	}
	if (getDvar("mapname") == "mp_village")
	{
		self add_menu("MapModels", "ModelMenu", "Verified");
		self add_option("MapModels", "Luggage", ::spawnPlayerModel, self, "ap_luggage01");
		self add_option("MapModels", "Fence Wood", ::spawnPlayerModel, self, "arc_fence_wood_02");
		self add_option("MapModels", "Propane Tank", ::spawnPlayerModel, self, "com_propane_tank02_small");
		self add_option("MapModels", "Windmill", ::spawnPlayerModel, self, "machinery_windmill_body");
		self add_option("MapModels", "Antenna", ::spawnPlayerModel, self, "p6_antenna_rooftop");
		self add_option("MapModels", "Fence", ::spawnPlayerModel, self, "p6_village_iron_fence");
		self add_option("MapModels", "Fountain", ::spawnPlayerModel, self, "p6_village_hostel_fountain");
		self add_option("MapModels", "Yellow Fence", ::spawnPlayerModel, self, "zombie_yellowfence");
		self add_option("MapModels", "Tire", ::spawnPlayerModel, self, "afr_junktire");
		self add_option("MapModels", "Gas Can", ::spawnPlayerModel, self, "anim_rus_gascan");
		self add_option("MapModels", "Shovel", ::spawnPlayerModel, self, "anim_rus_snowshovel");
	}
	if (getDvar("mapname") == "mp_express")
	{
		self add_menu("MapModels", "ModelMenu", "Verified");
		self add_option("MapModels", "Antenna", ::spawnPlayerModel, self, "p6_antenna_rooftop");
		self add_option("MapModels", "Bullet Train", ::spawnPlayerModel, self, "p6_bullet_train_car");
		self add_option("MapModels", "Engine", ::spawnPlayerModel, self, "p6_bullet_train_engine");
		self add_option("MapModels", "Bus Stop", ::spawnPlayerModel, self, "p6_bus_stop");
		self add_option("MapModels", "Chair", ::spawnPlayerModel, self, "p6_plaza_chair");
		self add_option("MapModels", "Trash Can", ::spawnPlayerModel, self, "p6_plaza_trash_can");
		self add_option("MapModels", "Kiosk", ::spawnPlayerModel, self, "p6_round_kiosk");
		self add_option("MapModels", "Vending Machine", ::spawnPlayerModel, self, "p6_vending_machine01");
		self add_option("MapModels", "Vending Machine 2", ::spawnPlayerModel, self, "p6_vending_machine02");
	}
	if (getDvar("mapname") == "mp_slums")
	{
		self add_menu("MapModels", "ModelMenu", "Verified");
		self add_option("MapModels", "Bush", ::spawnPlayerModel, self, "p6_foliage_bush_desert_a");
		self add_option("MapModels", "Gas Container", ::spawnPlayerModel, self, "p6_gas_container");
		self add_option("MapModels", "Fence", ::spawnPlayerModel, self, "p6_vill_courtyard_fence_1");
		self add_option("MapModels", "Trash Can", ::spawnPlayerModel, self, "p_glo_trashcan_trash");
		self add_option("MapModels", "Plastic Crate", ::spawnPlayerModel, self, "p_jun_plastic_crate_small_red");
		self add_option("MapModels", "Red Chair", ::spawnPlayerModel, self, "pb_lawnchair_red");
	}
	if (getDvar("mapname") == "mp_nightclub")
	{
		self add_menu("MapModels", "ModelMenu", "Verified");
		self add_option("MapModels", "^5-->Map Specifics", ::submenu, "MapModels", "Map Specifics");
		self add_option("MapModels", "Plant", ::spawnPlayerModel, self, "com_potted_plant03");
		self add_option("MapModels", "Jewelery", ::spawnPlayerModel, self, "dub_jewelry_display_neck2");
		self add_option("MapModels", "Statue", ::spawnPlayerModel, self, "dub_decorative_statue2");
		self add_option("MapModels", "Metal Statue", ::spawnPlayerModel, self, "dub_decorative_metal_statue2");
		self add_option("MapModels", "Chair", ::spawnPlayerModel, self, "dub_restaurant_chair_01");
		self add_option("MapModels", "Art", ::spawnPlayerModel, self, "p6_abstract_art_01");
		self add_option("MapModels", "Table", ::spawnPlayerModel, self, "dub_lounge_table_01");
	}
	if (getDvar("mapname") == "mp_carrier")
	{
		self add_menu("MapModels", "ModelMenu", "Verified");
		self add_option("MapModels", "^5-->Map Specifics", ::submenu, "MapModels", "Map Specifics");
		self add_option("MapModels", "Small Weights", ::spawnPlayerModel, self, "weights_small");
		self add_option("MapModels", "Crane Wheel", ::spawnPlayerModel, self, "p6_towing_crane_wheel");
		self add_option("MapModels", "Railing", ::spawnPlayerModel, self, "p6_carrier_edge_railing_64");
		self add_option("MapModels", "Liferaft", ::spawnPlayerModel, self, "p6_carrier_liferaft");
		self add_option("MapModels", "Crate", ::spawnPlayerModel, self, "p6_carrier_large_crate");
	}
	if (getDvar("mapname") == "mp_raid")
	{
		self add_menu("MapModels", "ModelMenu", "Verified");
		self add_option("MapModels", "Statue", ::spawnPlayerModel, self, "ct_statue_chinese_lion_gold");
		self add_option("MapModels", "Chair", ::spawnPlayerModel, self, "furniture_chair5");
		self add_option("MapModels", "Couch", ::spawnPlayerModel, self, "furniture_couch3");
		self add_option("MapModels", "Antenna", ::spawnPlayerModel, self, "p6_antenna_rooftop");
		self add_option("MapModels", "Tower", ::spawnPlayerModel, self, "p6_cell_phone_tower");
		self add_option("MapModels", "Treadmill", ::spawnPlayerModel, self, "treadmill");
		self add_option("MapModels", "Yoga Mat", ::spawnPlayerModel, self, "yoga_mat_flat_blue");
		self add_option("MapModels", "Weight Stand", ::spawnPlayerModel, self, "weightstand");
		self add_option("MapModels", "Red Lambo", ::spawnPlayerModel, self, "veh_t6_civ_sportscar_whole_orange");
		self add_option("MapModels", "Yellow Lambo", ::spawnPlayerModel, self, "veh_t6_civ_sportscar_whole_yellow");
	}
	if (getDvar("mapname") == "mp_la")
	{
		self add_menu("MapModels", "ModelMenu", "Verified");
		self add_option("MapModels", "Chair", ::spawnPlayerModel, self, "dub_lounge_chair_01_red");
		self add_option("MapModels", "Chair 2", ::spawnPlayerModel, self, "p6_office_chair_cushion_base");
		self add_option("MapModels", "Chair 3", ::spawnPlayerModel, self, "ma_patio_heater");
		self add_option("MapModels", "Car", ::spawnPlayerModel, self, "iw_ac_prs_veh_civ_car_a_12");
		self add_option("MapModels", "Couch", ::spawnPlayerModel, self, "furniture_couch2_dirty");
		self add_option("MapModels", "Urinal", ::spawnPlayerModel, self, "bathroom_urinal");
		self add_option("MapModels", "Tree", ::spawnPlayerModel, self, "p6_tree_palm_fan_cali_med_02_sway");
		self add_option("MapModels", "Vending Machine", ::spawnPlayerModel, self, "p6_vending_machine01");
		self add_option("MapModels", "Vending Machine 2", ::spawnPlayerModel, self, "p6_vending_machine02");
	}
	if (getDvar("mapname") == "mp_meltdown")
	{
		self add_menu("MapModels", "ModelMenu", "Verified");
		self add_option("MapModels", "Folding Table", ::spawnPlayerModel, self, "com_folding_table");
		self add_option("MapModels", "Barrel", ::spawnPlayerModel, self, "p6_barrel_toxic_waste");
		self add_option("MapModels", "Barrier", ::spawnPlayerModel, self, "p6_barrier_pedestrian");
		self add_option("MapModels", "Machine", ::spawnPlayerModel, self, "p6_copy_machine_large");
		self add_option("MapModels", "Crane", ::spawnPlayerModel, self, "machinery_crane02_scaffolding");
		self add_option("MapModels", "Coat Rack", ::spawnPlayerModel, self, "p_rus_coat_rack");
		self add_option("MapModels", "Couch", ::spawnPlayerModel, self, "p_us_couch02");
		self add_option("MapModels", "Parking Cone", ::spawnPlayerModel, self, "p_us_parkingcone");
	}
	if (getDvar("mapname") == "mp_socotra")
	{
		self add_menu("MapModels", "ModelMenu", "Verified");
		self add_option("MapModels", "Soda twelvepack", ::spawnPlayerModel, self, "food_soda_twelvepack01");
		self add_option("MapModels", "Box", ::spawnPlayerModel, self, "me_box_citrusfruitopenshort_1");
		self add_option("MapModels", "Barrel", ::spawnPlayerModel, self, "global_barrel_scummy");
		self add_option("MapModels", "Bench", ::spawnPlayerModel, self, "intro_powder_bench_01");
		self add_option("MapModels", "Market Stand", ::spawnPlayerModel, self, "me_market_stand1");
	}
	if (getDvar("mapname") == "mp_turbine")
	{
		self add_menu("MapModels", "ModelMenu", "Verified");
		self add_option("MapModels", "Pile of Bricks", ::spawnPlayerModel, self, "p6_brick_pile_02");
		self add_option("MapModels", "Shelve", ::spawnPlayerModel, self, "p6_arena_stand_shelve");
		self add_option("MapModels", "Tree", ::spawnPlayerModel, self, "p6_foliage_tree_a");
		self add_option("MapModels", "Stairs", ::spawnPlayerModel, self, "p6_metal_stairs_02");
		self add_option("MapModels", "Tree 2", ::spawnPlayerModel, self, "p6_tree_acacia_lrg_01");
		self add_option("MapModels", "Bridge Panel", ::spawnPlayerModel, self, "p6_turbine_bridge_panel02");
		self add_option("MapModels", "Turbine Base", ::spawnPlayerModel, self, "p6_wind_turbine_base");
	}
	if (getDvar("mapname") == "mp_nuketown_2020")
	{
		self add_menu("MapModels", "ModelMenu", "Verified");
		self add_option("MapModels", "Nuketown Sign", ::spawnPlayerModel, self, "nt_sign_population");
		self add_option("MapModels", "Activision Sign", ::spawnPlayerModel, self, "nt_sign_population_vcs");
		self add_option("MapModels", "Male Mannequin", ::spawnPlayerModel, self, "dest_nt_nuked_male_01_d0");
		self add_option("MapModels", "Female Mannequin", ::spawnPlayerModel, self, "dest_nt_nuked_female_01_d0");
		self add_option("MapModels", "Sitting Male", ::spawnPlayerModel, self, "dest_nt_nuked_male_03_d0");
		self add_option("MapModels", "Sitting Female", ::spawnPlayerModel, self, "dest_nt_nuked_female_05_d0");
		self add_option("MapModels", "Teal Car", ::spawnPlayerModel, self, "veh_t6_nuketown_2020_car01_whole");
		self add_option("MapModels", "Red Car", ::spawnPlayerModel, self, "veh_t6_nuketown_2020_car02_whole");
		self add_option("MapModels", "Door Frame", ::spawnPlayerModel, self, "nt_2020_doorframe_black");
	}
	if (getDvar("mapname") == "mp_takeoff")
	{
		self add_menu("MapModels", "ModelMenu", "Verified");
		self add_option("MapModels", "Space Shuttle", ::spawnPlayerModel, self, "veh_t6_dlc_commuter_shuttle");
	}
	if (getDvar("mapname") == "mp_drone")
	{
		self add_menu("MapModels", "ModelMenu", "Verified");
		self add_option("MapModels", "Fuel Tank", ::spawnPlayerModel, self, "p_rus_tank_flat_end");
		self add_option("MapModels", "Small Fuel Tank", ::spawnPlayerModel, self, "p6_metal_tank_set_01");
		self add_option("MapModels", "Drone Door", ::spawnPlayerModel, self, "p6_door_automatic_mp_drone");
		self add_option("MapModels", "Silo", ::spawnPlayerModel, self, "p6_drone_gas_silo");
	}
	
	
	self add_menu("ModelMenu2", "ModelMenu", "Verified");
	self add_option("ModelMenu2", "Flag Allies", ::spawnPlayerModel, self, "mp_flag_allies_1");
	self add_option("ModelMenu2", "Red Flag", ::spawnPlayerModel, self, "mp_flag_red");
	self add_option("ModelMenu2", "Neutral Flag", ::spawnPlayerModel, self, "mp_flag_neutral");
	self add_option("ModelMenu2", "Riot Shield", ::spawnPlayerModel, self, "t6_wpn_shield_carry_world");
	self add_option("ModelMenu2", "Hellfire Projectile", ::spawnPlayerModel, self, "projectile_hellfire_missile");
	self add_option("ModelMenu2", "VTOL", ::spawnPlayerModel, self, "veh_t6_air_v78_vtol_killstreak");
	self add_option("ModelMenu2", "A10", ::spawnPlayerModel, self, "veh_t6_air_a10f_alt");
	self add_option("ModelMenu2", "UAV", ::spawnPlayerModel, self, "veh_t6_drone_uav");
	self add_option("ModelMenu2", "Counter UAV", ::spawnPlayerModel, self, "veh_t6_drone_cuav");
	self add_option("ModelMenu2", "RC-XD", ::spawnPlayerModel, self, "veh_t6_drone_rcxd");
	self add_option("ModelMenu2", "Care Package", ::spawnPlayerModel, self, "t6_wpn_supply_drop_ally");
	self add_option("ModelMenu2", "Arrow FX", ::spawnPlayerModel, self, "fx_axis_createfx");
	self add_option("ModelMenu2", "Cluster Bomb", ::spawnPlayerModel, self, "projectile_cbu97_clusterbomb");
	self add_option("ModelMenu2", "A.G.R", ::spawnPlayerModel, self, "veh_t6_drone_tank");
	self add_option("ModelMenu2", "Open Briefcase", ::spawnPlayerModel, self, "t6_wpn_briefcase_bomb_view");
	
	self add_menu("SoundMenu", self.menuname, "Admin");
	self add_option( "SoundMenu", "Glass Breaking", ::play, "wpn_grenade_explode_glass" );
	self add_option( "SoundMenu", "Screaming", ::play, "chr_spl_generic_gib_american" );
	self add_option( "SoundMenu", "RPG Whizby", ::play, "wpn_rpg_whizby" );
	self add_option( "SoundMenu", "Grenade Bounce", ::play, "wpn_smoke_bounce_ice" );
	self add_option( "SoundMenu", "Explosion", ::play, "wpn_rocket_explode_asphalt" );
	self add_option( "SoundMenu", "C4 Explode", ::play, "wpn_c4_explode" );
	self add_option( "SoundMenu", "Killed Dog", ::play, "aml_dog_neckbreak" );
	self add_option( "SoundMenu", "Semtex Pull", ::play, "wpn_semtex_pin_pull" );
	self add_option( "SoundMenu", "Headshot", ::play, "prj_bullet_impact_headshot_helmet_nodie" );
	self add_option( "SoundMenu", "Dog Bark", ::play, "aml_dog_bark" );
	self add_option( "SoundMenu", "Rank Up", ::play, "mus_lau_rank_up" );
	self add_option( "SoundMenu", "Hind Rotor", ::play, "veh_hind_rotor" );
	self add_option( "SoundMenu", "Water", ::play, "wpn_satchel_plant_water" );
	self add_option( "SoundMenu", "Drop Chaff", ::play, "wpn_a10_drop_chaff" );
	self add_option( "SoundMenu", "Flyover Boom", ::play, "mpl_lightning_flyover_boom" );
	self add_option( "SoundMenu", "Shock Charge", ::play, "wpn_taser_mine_zap" );
	self add_option( "SoundMenu", "EMP Bomb", ::play, "wpn_emp_bomb" );
	
	self add_menu("AimMenu", self.menuname, "Admin");
	self add_option("AimMenu", "^5Realistic ^2TrickShot ^3Aimbot", ::initaimBotBILL);
	self add_option("AimMenu", "^2TrickShot ^3Aimbot", ::initaimBotBILLU);
	self add_option("AimMenu", "^1Unfair Aimbot^7", ::aimBot);
	self add_option("AimMenu", "^3Legit Aimbot", ::doAimbotsL);
	self add_option("AimMenu", "^3Legit Aimbot ^7(^6No ^1Aim^7)", ::doAimbotsna);
	
	self add_menu("StrkMenu", self.menuname, "Admin");
	self add_option("StrkMenu", "UAV", ::BG_giveKS, "killstreak_spyplane");
	self add_option("StrkMenu", "RCXD", ::BG_giveKS, "killstreak_rcbomb");
	self add_option("StrkMenu", "Hunter Killer Drone", ::giveHunt);
	self add_option("StrkMenu", "Sentry Gun", ::giveSG);
	self add_option("StrkMenu", "A.G.R.", ::giveAG);
	self add_option("StrkMenu", "Stealth Chopper", ::BG_giveKS, "killstreak_helicopter_comlink");
	self add_option("StrkMenu", "VSAT", ::BG_giveKS, "killstreak_spyplane_direction");
	self add_option("StrkMenu", "Care Package", ::giveCare);
	self add_option("StrkMenu", "Counter UAV", ::BG_giveKS, "killstreak_counteruav");
	self add_option("StrkMenu", "Guardian", ::giveGaurd);
	self add_option("StrkMenu", "Hellstorm", ::BG_giveKS, "killstreak_remote_missile");
	self add_option("StrkMenu", "Sentry Gun", ::giveSG);
	self add_option("StrkMenu", "A.G.R.", ::giveAG);
	self add_option("StrkMenu", "Stealth Chopper", ::BG_giveKS, "killstreak_helicopter_comlink");
	self add_option("StrkMenu", "VSAT", ::BG_giveKS, "killstreak_spyplane_direction");
	self add_option("StrkMenu", "Escort Drone", ::BG_giveKS, "killstreak_helicopter_guard");
	self add_option("StrkMenu", "^3----> Streak Menu 2 ^3<----^7", ::submenu, "Strk2", "^3>>^7 Streak Menu 2 ^3<<^7");
	
	self add_menu("Strk2", "StrkMenu", "Admin");
	self add_option("Strk2", "Warthog", ::BG_giveKS, "killstreak_straferun");
	self add_option("Strk2", "EMP", ::giveEMP);
	self add_option("Strk2", "Lightning Strike", ::BG_giveKS, "killstreak_planemortar");
	self add_option("Strk2", "VTOL Warship", ::giveVW);
	self add_option("Strk2", "Swarm", ::BG_giveKS, "killstreak_missile_swarm");
	self add_option("Strk2", "Lodestar", ::BG_giveKS, "killstreak_remote_mortar");
	
	self add_menu("WepMenu", self.menuname, "VIP");
	self add_option("WepMenu", "^3----> Regular Weapon Menu ^3<----^7", ::submenu, "Reg", "^3>>^7 Regular Weapon Menu ^3<<^7");
	self add_option("WepMenu", "^3----> Modded Weapon Menu ^3<----^7", ::submenu, "Mod", "^3>>^7 Modded Weapon Menu ^3<<^7");
	self add_option("WepMenu", "^3----> Bullet Menu ^3<----^7", ::submenu, "Bullets", "^3>>^7 Bullet Menu ^3<<^7");
	
	self add_menu("Bullets", "WepMenu", "Co-Host");
	self add_option("Bullets", "^3----> Streak Bullets ^3<----^7", ::submenu, "RegBull", "^3>>^7 Streak Bullets ^3<<^7");
	self add_option("Bullets", "^3----> Equipment Bullets ^3<----^7", ::submenu, "EBull", "^3>>^7 Equipment Bullets ^3<<^7");
	self add_option("Bullets", "^3----> Map Based Bullets ^3<----^7", ::submenu, "MBBull", "^3>>^7 Map Based Bullets ^3<<^7");
	self add_option("Bullets", "^3----> Effect Bullets ^3<----^7", ::submenu, "MBull", "^3>>^7 Effect Bullets ^3<<^7");
	
	self add_menu("RegBull", "Bullets", "Admin");
	self add_option("RegBull", "SPAWN BULLETS ^1OFF^7", ::SpawnBulletOFF);
	self add_option("RegBull", "Debugs", ::initSpawnBullet, "defaultactor", "Debugs");
    self add_option("RegBull", "Care Packages", ::initSpawnBullet, "t6_wpn_supply_drop_ally", "Care Package");
	self add_option("RegBull", "A.G.Rs", ::initSpawnBullet, "veh_t6_drone_tank", "A.G.R");
	self add_option("RegBull", "Open Briefcases", ::initSpawnBullet, "t6_wpn_briefcase_bomb_view", "Briefcase");
	self add_option("RegBull", "Bombs", ::initSpawnBullet, "prop_suitcase_bomb", "Bombs");
	self add_option("RegBull", "Arrow FX", ::initSpawnBullet, "fx_axis_createfx", "Arrow FX");
	self add_option("RegBull", "Boxes", ::initSpawnBullet, "t6_wpn_drop_box", "wpn_Box");
	self add_option("RegBull", "Dogs", ::initSpawnBullet, "german_shepherd", "Dogs");
	self add_option("RegBull", "Sentry Guns", ::initSpawnBullet, "t6_wpn_turret_sentry_gun", "Sentry Guns");
	self add_option("RegBull", "Scavenger Packs", ::initSpawnBullet, "p_glo_scavenger_pack_obj", "Scavenger Packs");
	self add_option("RegBull", "RC-XDs", ::initSpawnBullet, "veh_t6_drone_rcxd", "RC-XDs");
	self add_option("RegBull", "Green Flags", ::initSpawnBullet, "mp_flag_green", "Green Flags");
	self add_option("RegBull", "Red Flags", ::initSpawnBullet, "mp_flag_red", "Red Flags");
	self add_option("RegBull", "Missile", ::initSpawnBullet, "projectile_hellfire_missile", "Hellstorm Projectile");
	self add_option("RegBull", "Hunter Killers", ::initSpawnBullet, "veh_t6_drone_hunterkiller", "Hunter Killers");
	
	self add_menu("EBull", "Bullets", "Admin");
	self add_option("EBull", "EQUIPMENT BULLETS ^1OFF^7", ::stopEquipB);
	self add_option("EBull", "Frag Grenades", ::selectMLTfrag);
	self add_option("EBull", "Semtex", ::selectMLTstick);
	self add_option("EBull", "Concussions", ::selectMLTconc);
	self add_option("EBull", "Combat Axes", ::selectMLTaxe);
	self add_option("EBull", "C4s", ::selectMLTshock);
	self add_option("EBull", "Flash Grenades", ::selectMLTflash);
	self add_option("EBull", "EMP Grenades", ::selectMLTemp);
	self add_option("EBull", "Sensor Grenades", ::selectMLTsensor);
	self add_option("EBull", "Shock Charges", ::selectMLTc4);
	self add_option("EBull", "Claymores", ::selectMLTclaym);
	self add_option("EBull", "Smoke Grenades", ::selectMLTbetty);
	self add_option("EBull", "Trophy Systems", ::selectMLTtrosy);
	
	self add_menu("MBBull", "Bullets", "Admin");
	if(getDvar("mapname") == "mp_la" || getDvar("mapname") == "mp_express")
	{
		self add_option("MBBull", "Vending Machine 1", ::initSpawnBullet, "p6_vending_machine01", "Vending Machines");
		self add_option("MBBull", "Vending Machine 2", ::initSpawnBullet, "p6_vending_machine02", "Vending Machines");
	}
	if (getDvar("mapname") == "mp_nuketown_2020")
	{
		self add_option("MBBull", "Nuketown Signs", ::initSpawnBullet, "nt_sign_population", "Nuketown Signs");
		self add_option("MBBull", "Activision Signs", ::initSpawnBullet, "nt_sign_population_vcs", "Activision Signs");
		self add_option("MBBull", "Male Mannequins", ::initSpawnBullet, "dest_nt_nuked_male_01_d0", "Male Mannequins");
		self add_option("MBBull", "Female Mannequins", ::initSpawnBullet, "dest_nt_nuked_female_01_d0", "Female Mannequins");
	}
	if (getDvar("mapname") == "mp_hijacked")
		self add_option("MBBull", "Pianos", ::initSpawnBullet, "dub_grand_piano", "Pianos");
	if(getDvar("mapname") == "mp_raid")
	{
		self add_option("MBBull", "Red Lambo", ::initSpawnBullet, "veh_t6_civ_sportscar_whole_orange", "Red Lambos");
		self add_option("MBBull", "Yellow Lambo", ::initSpawnBullet, "veh_t6_civ_sportscar_whole_yellow", "Yellow Lambos");
		self add_option("MBBull", "Statue", ::initSpawnBullet, "ct_statue_chinese_lion_gold", "Statues");
	}
	
	self add_menu("MBull", "Bullets", "Admin");
	self add_option("MBull", "Dog Bullets", ::initDogBullets);
	self add_option("MBull", "Flare Bullets", ::toggle_FlareGun);
	self add_option("MBull", "Blood Bullets", ::bloodGun);
	self add_option("MBull", "Cobra Bullets", ::initCOBRABullet);
	
	self add_menu("Mod", "WepMenu", "Admin");
	self add_option("Mod", "Ray Gun MK-I", ::initRaygun);
	self add_option("Mod", "Ray Gun MK-II", ::initRaygunM2);
	self add_option("Mod", "Ray Gun MK-III", ::doRaygunM3);
	self add_option("Mod", "Ray Gun MK-IV", ::doRaygunM4);
	self add_option("Mod", "Mustang & Sally", ::ToggleMustangGun);
	self add_option("Mod", "Thunder Gun", ::ThunGun);
	
    self add_menu("Reg", self.menuname, "VIP");
    self add_option("Reg", "^3----> Pistols ^3<----^7", ::submenu, "Pistols", "^3>>^7 Pistols ^3<<^7");
    self add_option("Reg", "^3----> SMGs ^3<----^7", ::submenu, "SubMachineGuns", "^3>>^7 Sub Machine Guns ^3<<^7");
    self add_option("Reg", "^3----> Assault Rifles ^3<----^7", ::submenu, "AssaultRifles", "^3>>^7 Assault Rifles ^3<<^7");
    self add_option("Reg", "^3----> Sniper Rifles ^3<----^7", ::submenu, "SniperRifles", "^3>>^7 Sniper Rifles ^3<<^7");
    self add_option("Reg", "^3----> Shotguns ^3<----^7", ::submenu, "Shotguns", "^3>>^7 Shotguns ^3<<^7");
    self add_option("Reg", "^3----> LMGs ^3<----^7", ::submenu, "LightMachineGuns", "^3>>^7 Light Machine Guns ^3<<^7");
    self add_option("Reg", "^3----> Launchers ^3<----^7", ::submenu, "Launchers", "^3>>^7 Rocket Launchers ^3<<^7");
    self add_option("Reg", "^3----> Specials ^3<----^7", ::submenu, "Specials", "^3>>^7 Specials ^3<<^7");
    
    self add_menu("Pistols", "Reg", "VIP");
    self add_option("Pistols", "Five-Seven", ::bg_giveplayerweapon, "fiveseven_mp");
    self add_option("Pistols", "Tac-45", ::bg_giveplayerweapon, "fnp45_mp");
	self add_option("Pistols", "B23r", ::bg_giveplayerweapon, "beretta93r_mp");
	self add_option("Pistols", "Executioner", ::bg_giveplayerweapon, "judge_mp");
	self add_option("Pistols", "Kap-40", ::bg_giveplayerweapon, "kard_mp");
	self add_option("Pistols", "Five-Seven-Dw", ::bg_giveplayerweapon, "fiveseven_dw_mp");
	self add_option("Pistols", "Tac-45-Dw", ::bg_giveplayerweapon, "fnp45_dw_mp");
	self add_option("Pistols", "B23r-Dw", ::bg_giveplayerweapon, "beretta93r_dw_mp");
	self add_option("Pistols", "Executioner-Dw", ::bg_giveplayerweapon, "judge_dw_mp");
	self add_option("Pistols", "Kap-40-Dw", ::bg_giveplayerweapon, "kard_dw_mp");
	
	self add_menu("SubMachineGuns", "Reg", "VIP");
	self add_option("SubMachineGuns", "Mp7", ::bg_giveplayerweapon, "mp7_mp");
	self add_option("SubMachineGuns", "Pdw-57", ::bg_giveplayerweapon, "pdw57_mp");
	self add_option("SubMachineGuns", "Vector K10", ::bg_giveplayerweapon, "vector_mp");
	self add_option("SubMachineGuns", "Chicom", ::bg_giveplayerweapon, "qcw05_mp");
	self add_option("SubMachineGuns", "Skorpion", ::bg_giveplayerweapon, "evoskorpion_mp");
	self add_option("SubMachineGuns", "PeaceKeeper", ::bg_giveplayerweapon, "peacekeeper_mp");
	 
	self add_menu("AssaultRifles", "Reg", "VIP");
	self add_option("AssaultRifles", "Mtar", ::bg_giveplayerweapon, "tar21_mp");
	self add_option("AssaultRifles", "Type-25", ::bg_giveplayerweapon, "type95_mp");
    self add_option("AssaultRifles", "Swat-556", ::bg_giveplayerweapon, "sig556_mp");
	self add_option("AssaultRifles", "Fal-Osw", ::bg_giveplayerweapon, "sa58_mp");
	self add_option("AssaultRifles", "M27", ::bg_giveplayerweapon, "hk416_mp");
	self add_option("AssaultRifles", "Scar-H", ::bg_giveplayerweapon, "scar_mp");
	self add_option("AssaultRifles", "Smr", ::bg_giveplayerweapon, "saritch_mp");
    self add_option("AssaultRifles", "M8a1", ::bg_giveplayerweapon, "xm8_mp");
    self add_option("AssaultRifles", "An-94", ::bg_giveplayerweapon, "an94_mp");
	
	self add_menu("SniperRifles", "Reg", "VIP");
	self add_option("SniperRifles", "Svu-As", ::bg_giveplayerweapon, "svu_mp");
	self add_option("SniperRifles", "Dsr-50", ::bg_giveplayerweapon, "dsr50_mp");
	self add_option("SniperRifles", "Ballista", ::bg_giveplayerweapon, "ballista_mp");
	self add_option("SniperRifles", "Xpr-50", ::bg_giveplayerweapon, "as50_mp");
   
    self add_menu("Shotguns", "Reg", "VIP");
    self add_option("Shotguns", "R870 Mcs", ::bg_giveplayerweapon, "870mcs_mp");
    self add_option("Shotguns", "S12", ::bg_giveplayerweapon, "saiga12_mp");
	self add_option("Shotguns", "Ksg", ::bg_giveplayerweapon, "ksg_mp");
	self add_option("Shotguns", "M1216", ::bg_giveplayerweapon, "srm1216_mp");
    
    self add_menu("LightMachineGuns", "Reg", "VIP");
    self add_option("LightMachineGuns", "Mk 48", ::bg_giveplayerweapon, "mk48_mp");
    self add_option("LightMachineGuns", "Qbb Lsw", ::bg_giveplayerweapon, "qbb95_mp");
	self add_option("LightMachineGuns", "Lsat", ::bg_giveplayerweapon, "lsat_mp");
	self add_option("LightMachineGuns", "Hamr", ::bg_giveplayerweapon, "hamr_mp");
     
    self add_menu("Launchers", "Reg", "VIP");
    self add_option("Launchers", "Smaw", ::bg_giveplayerweapon, "smaw_mp");
    self add_option("Launchers", "Fhj-18", ::bg_giveplayerweapon, "fhj18_mp");
	self add_option("Launchers", "Rpg", ::bg_giveplayerweapon, "usrpg_mp");
	self add_option("Launchers", "War Machine", ::bg_giveplayerweapon, "m32_mp");
     
    self add_menu("Specials", "Reg", "VIP");
    self add_option("Specials", "Ballistic Knife", ::bg_giveplayerweapon, "knife_ballistic_mp");
    self add_option("Specials", "Crossbow", ::bg_giveplayerweapon, "crossbow_mp");
	self add_option("Specials", "Asault Shield", ::bg_giveplayerweapon, "riotshield_mp");
	self add_option("Specials", "Death Machine", ::bg_giveplayerweapon, "minigun_mp");
	
	self add_menu("CamoMenu", self.menuname, "Verified");
	self add_option("CamoMenu", "^5Random Camo^7", ::SetCamoInstant);
	self add_option("CamoMenu", "DevGru", ::givedevgru );
    self add_option("CamoMenu", "A-Tac AU", ::giveatac );
    self add_option("CamoMenu", "EROL", ::giveerol );
    self add_option("CamoMenu", "Siberia", ::givesiberia );
    self add_option("CamoMenu", "Choco", ::givechoco );
    self add_option("CamoMenu", "Blue Tiger", ::givebluet );
    self add_option("CamoMenu", "Bloodshot", ::givebloods );
    self add_option("CamoMenu", "Ghostex", ::giveghostex );
    self add_option("CamoMenu", "Krytek", ::givekryptek );
    self add_option("CamoMenu", "Carbon Fiber", ::givecarbonf );
    self add_option("CamoMenu", "Skulls", ::giveskull );
    self add_option("CamoMenu", "Art of War", ::giveartw );
    self add_option("CamoMenu", "Cherry Blossom", ::givecherryb );
	self add_option("CamoMenu", "^3----> ^5Camo Menu 2 ^3<----^7", ::submenu, "Camo2", "^3>>^7 Camo Weapon Menu 2 ^3<<^7");
	
	self add_menu("Camo2", "CamoMenu", "Verified");
	self add_option("Camo2", "Gold", ::givegold );
    self add_option("Camo2", "Diamond", ::givediamond );
    self add_option("Camo2", "CE Digital", ::giveced );
    self add_option("Camo2", "Elite", ::giveelite );
    self add_option("Camo2", "Ghost", ::giveghost );
    self add_option("Camo2", "Jungle Warfare", ::givejungle );
	self add_option("Camo2", "Benjamins", ::givebenj );
	self add_option("Camo2", "Dia De Muertos", ::givedia );
	self add_option("Camo2", "Graffiti", ::givegraffiti );
	self add_option("Camo2", "Kawaii", ::givekawaii );
	self add_option("Camo2", "Party Rock", ::giveparty );
	self add_option("Camo2", "Zombies", ::givezombies );
	self add_option("Camo2", "Viper", ::giveviper );
	self add_option("Camo2", "Bacon", ::givebacon );
	self add_option("Camo2", "Cyborg", ::givecyborg );
	self add_option("Camo2", "Dragon", ::givedragon );
    self add_option("Camo2", "^3----> ^5Camo Menu 3 ^3<----^7", ::submenu, "Camo3", "^3>>^7 Camo Weapon Menu 3 ^3<<^7");
	
	self add_menu("Camo3", "Camo2", "Verified");
	self add_option("Camo3", "Aqua", ::giveaqua );
    self add_option("Camo3", "Breach", ::givebreach );
	self add_option("Camo3", "Coyote", ::givecoyote );
	self add_option("Camo3", "UK Punk", ::giveuk );
	self add_option("Camo3", "Comic", ::givecomic );
	self add_option("Camo3", "Paladin", ::givepaladin );
	self add_option("Camo3", "Afterlife", ::giveafterlife );
	self add_option("Camo3", "Dead Mans Hand", ::givedeadm );
	self add_option("Camo3", "Beast", ::givebeast );
	self add_option("Camo3", "Octane", ::giveoctane );
	self add_option("Camo3", "Weaponized 115", ::giveweapon115 );
	self add_option("Camo3", "Pack a Punch", ::givepacka );
	self add_option("Camo3", "Disco Camo", ::DiscoCamo);
	
	self add_menu("MessageMenu", self.menuname, "Admin");
    self add_option("MessageMenu", "Basic Messages Menu 1", ::submenu, "MsgMenu1", "^3>>^7 Basic Messages Menu 1 ^3<<^7");
    self add_option("MessageMenu", "Basic Messages Menu 2", ::submenu, "MsgMenu2", "^3>>^7 Basic Messages Menu 2 ^3<<^7");
    self add_option("MessageMenu", "Shout Outs", ::submenu, "MsgMenu3", "^3>>^7 Shout Outs ^3<<^7");
    self add_option("MessageMenu", "Questions", ::submenu, "MsgMenu4", "^3>>^7 Questions ^3<<^7");
    self add_option("MessageMenu", "Custom Typewritter (^3Still Buggy^7)", ::typewritercm);
	
	self add_menu("MsgMenu1", "MessageMenu", "Admin");
	self add_option("MsgMenu1", "Host", ::typewriter, "Welcome To ^5Afterlife v2^7!!! Hosted By : ^5" + level.hostname + " ^1<3");
    self add_option("MsgMenu1", "Welcome", ::typewriter, "Welcome To ^5The Afterlife v2");
    self add_option("MsgMenu1", "Sorry", ::typewriter, "Sorry");
    self add_option("MsgMenu1", "Imma Fuck You Up", ::typewriter, "Imma Fuck You Up");
    self add_option("MsgMenu1", "Stop", ::typewriter, "Yo Cut The Shit");
    self add_option("MsgMenu1", "Im The Boss", ::typewriter, "Im The Boss in This Bitch");
    self add_option("MsgMenu1", "No", ::typewriter, "Nah");
    self add_option("MsgMenu1", "Fuck No", ::typewriter, "Fuck No");
    self add_option("MsgMenu1", "Ya", ::typewriter, "Ya");
    self add_option("MsgMenu1", "Hell Ya", ::typewriter, "Hell Ya");
    self add_option("MsgMenu1", "Its All Good", ::typewriter, "Its All Good G");
    self add_option("MsgMenu1", "Stop Asking", ::typewriter, "Yo Stop Asking For My Shit");
    self add_option("MsgMenu1", "About");
    self add_option("MsgMenu1", "Fight Me", ::typewriter, "Fight Me Bitch");
    self add_option("MsgMenu1", "Hahahaha", ::typewriter, "Hahahaha");
    
    self add_menu("MsgMenu2", "MessageMenu", "Admin");
    self add_option("MsgMenu2", "Open Menu", ::typewriter, "Press [{+speed_throw}] + [{+melee}] To Open Mod Menu");
    self add_option("MsgMenu2", "LOL", ::typewriter, "^2LOL");
    self add_option("MsgMenu2", "Pornhub", ::typewriter, "www.^3porn^7hub.com");
    self add_option("MsgMenu2", "FHRDP", ::typewriter, "^2Fuck Her Right in Da Pussy");
    self add_option("MsgMenu2", "Nut", ::typewriter, "^5Im ^6Finna ^7Nut");
    self add_option("MsgMenu2", "Boobs And Booty", ::typewriter, "I Like Girls With Some Big'ol Boobs And Booty");
    self add_option("MsgMenu2", "Draw Boobs", ::typewriter, "^6(. )Y( .)");
    self add_option("MsgMenu2", "Draw Pussy", ::typewriter, "^6({})");
    self add_option("MsgMenu2", "illuminati", ::typewriter, "^1illuminati Confirmed");
    self add_option("MsgMenu2", "Funny Troll", ::typewriter, "^2Trollololololol ^1Trolled");
    
    self add_menu("MsgMenu3", "MessageMenu", "Admin");
    self add_option("MsgMenu3", "FallenOnDex", ::typewriter, "Follow ^5FallenOnDex^7 On ^1You^7tube");
    self add_option("MsgMenu3", "zCTK", ::typewriter, "Shout Out to ^3zCTK");
    self add_option("MsgMenu3", "Cabcon Modding", ::typewriter, "Shout Out to ^1Cabcon Modding");
    self add_option("MsgMenu3", "NGU", ::typewriter, "Shout Out to ^7Next^4Gen^7Update");
    self add_option("MsgMenu3", "IMCSx", ::typewriter, "Shout Out to ^3IMCSx");
    self add_option("MsgMenu3", "Enstone", ::typewriter, "Shout Out to ^2Enstone");
    self add_option("MsgMenu3", "You :p", ::typewriter, "Follow^5 " + self.name +  " ^7On YouTube!!!");
    
    self add_menu("MsgMenu4", "MessageMenu", "Admin");
    self add_option("MsgMenu4", "Wanna Have Fun?", ::typewriter, "You Guys Wanna Have Some Fun??");
    self add_option("MsgMenu4", "Wanna Smash?", ::typewriter, "Wanna Smash??");
    self add_option("MsgMenu4", "You Guys Want The Mods?", ::typewriter, "You Guys Want The Mods??");
    self add_option("MsgMenu4", "Wanna Trickshot?", ::typewriter, "You Guys Wanna TrickShot??");
    self add_option("MsgMenu4", "Please Stop", ::typewriter, "Will You Please Stop??");
    self add_option("MsgMenu4", "You Mad?", ::typewriter, "You Mad Bruh??");

	self add_menu("MapMenu", self.menuname, "Co-Host");
	self add_option("MapMenu", "Nuketown", ::level_doMap, "mp_nuketown_2020");
	self add_option("MapMenu", "Hijacked", ::level_doMap, "mp_hijacked");
	self add_option("MapMenu", "Express", ::level_doMap, "mp_express");
	self add_option("MapMenu", "Meltdown", ::level_doMap, "mp_meltdown");
	self add_option("MapMenu", "Drone", ::level_doMap, "mp_drone");
	self add_option("MapMenu", "Aftermath", ::level_doMap, "mp_la");
	self add_option("MapMenu", "Cargo", ::level_doMap, "mp_dockside");
	self add_option("MapMenu", "Standoff", ::level_doMap, "mp_village");
	self add_option("MapMenu", "Plaza", ::level_doMap, "mp_nightclub");
	self add_option("MapMenu", "Yemen", ::level_doMap, "mp_socotra");
	self add_option("MapMenu", "Carrier", ::level_doMap, "mp_carrier");
	self add_option("MapMenu", "Overflow", ::level_doMap, "mp_overflow");
	self add_option("MapMenu", "Slums", ::level_doMap, "mp_slums");
	self add_option("MapMenu", "Turbine", ::level_doMap, "mp_turbine");
	self add_option("MapMenu", "Raid", ::level_doMap, "mp_raid");
    self add_option("MapMenu", "^3----> ^5Map Menu 2 ^3<----^7", ::submenu, "MapMenu2", "^3>>^7 Map Menu 2 ^3<<^7");

	self add_menu("MapMenu2", "MapMenu", "Co-Host");
	self add_option("MapMenu2", "Downhill", ::level_doMap, "mp_downhill");
	self add_option("MapMenu2", "Mirage", ::level_doMap, "mp_mirage");
	self add_option("MapMenu2", "Hydro", ::level_doMap, "mp_hydro");
	self add_option("MapMenu2", "Rush", ::level_doMap, "mp_paintball");
	self add_option("MapMenu2", "Dig", ::level_doMap, "mp_dig");
	self add_option("MapMenu2", "Frost", ::level_doMap, "mp_frostbite");
	self add_option("MapMenu2", "Pod", ::level_doMap, "mp_pod");
	self add_option("MapMenu2", "Takeoff", ::level_doMap, "mp_takeoff");
	self add_option("MapMenu2", "Grind", ::level_doMap, "mp_skate");
	self add_option("MapMenu2", "Encore", ::level_doMap, "mp_concert");
	self add_option("MapMenu2", "Magma", ::level_doMap, "mp_magma");
	self add_option("MapMenu2", "Vertigo", ::level_doMap, "mp_vertigo");
	self add_option("MapMenu2", "Studio", ::level_doMap, "mp_studio");
	self add_option("MapMenu2", "Uplink", ::level_doMap, "mp_uplink");
	self add_option("MapMenu2", "Detour", ::level_doMap, "mp_detour");
	self add_option("MapMenu2", "Cove", ::level_doMap, "mp_cove");
	
	self add_menu("ThemeMenu", self.menuname, "Verified");
	self add_option("ThemeMenu", "Original Theme", ::doOgtheme);
	self add_option("ThemeMenu", "Red", ::doredtheme);
	self add_option("ThemeMenu", "Blue", ::dobluetheme);
	self add_option("ThemeMenu", "Purple", ::dopurpletheme);
	self add_option("ThemeMenu", "Pink", ::dopinktheme);
	self add_option("ThemeMenu", "Green", ::dogreentheme);
	self add_option("ThemeMenu", "Yellow", ::doyellowtheme);
	self add_option("ThemeMenu", "White", ::dowhitetheme);
	self add_option("ThemeMenu", "Grey", ::dogreytheme);
	self add_option("ThemeMenu", "Black", ::doblacktheme);
	self add_option("ThemeMenu", "Rainbow", ::flashingtheme);
	
	self add_menu("GameMenu", self.menuname, "Co-Host");
	self add_option("GameMenu", "Toggle Death Barriers", ::toggleDeathBarriers);
	self add_option("GameMenu", "Print Map FX's", ::printMapFXs);
	//self add_option("GameMenu", "Scrolling text", ::doInfoScroll);
    self add_option("GameMenu", "Anti Quit", ::togglerAgeQuit);
    self add_option("GameMenu", "Pause Game", ::Pause);
	self add_option("GameMenu", "End Game", ::endGame);
	self add_option("GameMenu", "Restart Game", ::fastRestart);
    self add_option("GameMenu", "Low Gravity",  ::gravity);
    self add_option("GameMenu", "Super Jump", ::togglesUpErJump);
    self add_option("GameMenu", "Super Speed", ::supersPeed);
    self add_option("GameMenu", "Unlimited Game", ::Inf_Game);
    self add_option("GameMenu", "Long KillCam Time", ::longKillCam);
    self add_option("GameMenu", "Disco Lights", ::discosUn);
    if (getDvar( "g_gametype" ) == "sd" )
    {
    self add_option("GameMenu", "Plant Bomb (^1S&D^7)", ::plantBomb);
    self add_option("GameMenu", "Defuse Bomb (^1S&D^7)", ::defuseBomb);
    }
    self add_option("GameMenu", "^3-> ^5Bot Menu ^3<-^7", ::submenu, "Bots", "^3>>^7 Bot Menu ^3<<^7");
    self add_option("GameMenu", "^3-> ^5Mini-Map Menu ^3<-^7", ::submenu, "MiniMap", "^3>>^7 Mini-Map Menu ^3<<^7");
	
	self add_menu("Bots", "GameMenu", "Co-Host");
	self add_option("Bots", "Spawn 1 Bot", ::doBots, 1);
	self add_option("Bots", "Spawn 3 Bots", ::doBots, 3);
	self add_option("Bots", "Spawn 6 Bots", ::doBots, 6);
    self add_option("Bots", "Spawn 9 Bots", ::doBots, 9);
	self add_option("Bots", "Spawn All Bots", ::doBots, 17);
	self add_option("Bots", "^3Teleport ^7Bots", ::TeleBots);
	self add_option("Bots", "^5Freeze ^7Bots", ::FreezeBots);
	self add_option("Bots", "^1Kick ^7All Bots", ::kickAllBots);

	self add_menu("MiniMap", "GameMenu", "Co-Host");
    self add_option("MiniMap", "^1DEFAULT^7", ::MinimapDefault);
    self add_option("MiniMap", "Diamond Camo", ::BG_ChangeMinimap, "menu_camo_diamond_pattern");
	self add_option("MiniMap", "Nuketown Emblem", ::BG_ChangeMinimap, "emblem_bg_nuketown_2025");
	self add_option("MiniMap", "Twitter", ::BG_ChangeMinimap, "menu_lobby_icon_twitter");
	self add_option("MiniMap", "DSR Scope", ::BG_ChangeMinimap, "scope_overlay_dsr50");
	self add_option("MiniMap", "14th Prestige", ::BG_ChangeMinimap, "rank_prestige14");
	self add_option("MiniMap", "15th Prestige", ::BG_ChangeMinimap, "rank_prestige15");
	self add_option("MiniMap", "Comics", ::BG_ChangeMinimap, "em_bg_ani_comics");
	self add_option("MiniMap", "Afterlife", ::BG_ChangeMinimap, "em_bg_ani_afterlife");
	self add_option("MiniMap", "Weaponized-115", ::BG_ChangeMinimap, "em_bg_ani_w115");
	self add_option("MiniMap", "Movie Star", ::BG_ChangeMinimap, "emblem_bg_movie_star");
	self add_option("MiniMap", "Nuclear", ::BG_ChangeMinimap, "emblem_bg_bo2_nuclear_killer");
	self add_option("MiniMap", "Cyborg", ::BG_ChangeMinimap, "em_bg_ani_cybertron");
	self add_option("MiniMap", "Flashing Tiles", ::BG_ChangeMinimap, "poison");
	self add_option("MiniMap", "Afterlife Medal", ::BG_ChangeMinimap, "hud_medals_afterlife");
	self add_option("MiniMap", "^3-> MiniMap Menu 2 ^3<-^7", ::submenu, "MiniMap2", "MiniMap Menu 2");
	self add_menu("MiniMap2", "MiniMap", "Co-Host");
	if (is_xenon())
    {
        self add_option("MiniMap2", "LStick Animation", ::BG_ChangeMinimap, "ui_button_xenon_lstick_anim_r");
        self add_option("MiniMap2", "Xbox Controller", ::BG_ChangeMinimap, "xenon_controller_top");
        self add_option("MiniMap2", "A Button", ::BG_ChangeMinimap, "xenonbutton_a");
	    self add_option("MiniMap2", "B Button", ::BG_ChangeMinimap, "xenonbutton_b");
	    self add_option("MiniMap2", "X Button", ::BG_ChangeMinimap, "xenonbutton_x");
	    self add_option("MiniMap2", "Y Button", ::BG_ChangeMinimap, "xenonbutton_y");
        self add_option("MiniMap2", "Party", ::BG_ChangeMinimap, "voice_off_xboxlive");
	    self add_option("MiniMap2", "Party Muted", ::BG_ChangeMinimap, "voice_off_mute_xboxlive");
    }
    if (is_ps3())
    {
        self add_option("MiniMap2", "PS3 Controller", ::BG_ChangeMinimap, "ps3_controller_top");
    }
	self add_option("MiniMap2", "Target", ::BG_ChangeMinimap, "compass_waypoint_target");
	self add_option("MiniMap2", "M8A1", ::BG_ChangeMinimap, "em_bg_wpn_camo_m8a1");
	self add_option("MiniMap2", "Select Fire", ::BG_ChangeMinimap, "hud_select_fire_bullet_stack");
	self add_option("MiniMap2", "Red Guy", ::BG_ChangeMinimap, "life_counter_dead");
	self add_option("MiniMap2", "Zombies", ::BG_ChangeMinimap, "loadscreen_zm_transit_dr_zcleansed_diner");
	self add_option("MiniMap2", "Plaza", ::BG_ChangeMinimap, "loadscreen_mp_nightclub");
	
	self add_menu("Allp", self.menuname, "Co-Host");
	self add_option("Allp", "All To Me", ::AllToMe);
	self add_option("Allp", "All To Crosshairs", ::teleToCrosshairs);
	self add_option("Allp", "God Mode All", ::godmodeall);
	self add_option("Allp", "Kick All", ::allplayerskicked);
	self add_option("Allp", "Send All To Space", ::tpalltospace);
	self add_option("Allp", "All Players Unlock All", ::Allunlock);
	self add_option("Allp", "^3---> All Camos ^3<---^7", ::submenu, "Acamos", "^3>>^7 All Camos ^3<<^7");
	self add_option("Allp", "^3---> All Weapons ^3<---^7", ::submenu, "AWeps", "^3>>^7 All Weapons ^3<<^7");
	self add_option("Allp", "^3---> All Models ^3<---^7", ::submenu, "AModels", "^3>>^7 All Models ^3<<^7");
	
	self add_menu("AModels", "Allp", "Co-Host");
	self add_option("AModels", "Default Model", ::normalmAll);
	self add_option("AModels", "Debug Model", ::allPlayersDebugM);
    self add_option("AModels", "Sentry", ::modelForAll, "t6_wpn_turret_sentry_gun");
	self add_option("AModels", "Dog", ::modelForAll, "german_shepherd");
	self add_option("AModels", "Trophy System", ::modelForAll, "t6_wpn_trophy_system_world");
	self add_option("AModels", "Bomb Site", ::modelForAll, "p_glo_bomb_stack");
	self add_option("AModels", "Blown-up Bomb Site", ::modelForAll, "p_glo_bomb_stack_d");
	self add_option("AModels", "Scavenger Pack", ::modelForAll, "p_glo_scavenger_pack_obj");
	self add_option("AModels", "Arrow FX", ::modelForAll, "fx_axis_createfx");
	self add_option("AModels", "Train Track", ::modelForAll, "p6_express_train_track_a01");
	self add_option("AModels", "White Vehicle", ::modelForAll, "defaultvehicle");
	self add_option("AModels", "Hunter Killer", ::modelForAll, "veh_t6_drone_hunterkiller");
	self add_option("AModels", "Bomb", ::modelForAll, "prop_suitcase_bomb");
	self add_option("AModels", "UAV", ::modelForAll, "veh_t6_drone_uav");
	self add_option("AModels", "Dog Tags", ::modelForAll, "p6_dogtags");
	self add_option("AModels", "Green Flag", ::modelForAll, "mp_flag_green");
	self add_option("AModels", "^3---> All Models 2^3<---^7", ::submenu, "AModels2", "^3>>^7 All Models ^3<<^7");
	
	self add_menu("AModels2", "AModels", "Co-Host");
	self add_option("AModels2", "Red Flag", ::modelForAll, "mp_flag_red");
    self add_option("AModels2", "Neutral Flag", ::modelForAll, "mp_flag_neutral");
    self add_option("AModels2", "A10", ::modelForAll, "veh_t6_air_a10f_alt");
	self add_option("AModels2", "UAV", ::modelForAll, "veh_t6_drone_uav");
	self add_option("AModels2", "CUAV", ::modelForAll, "veh_t6_drone_cuav");
	self add_option("AModels2", "RC-XD", ::modelForAll, "veh_t6_drone_rcxd");
	self add_option("AModels2", "Care Package", ::modelForAll, "t6_wpn_supply_drop_ally");
	self add_option("AModels2", "Arrow FX", ::modelForAll, "fx_axis_createfx");
	self add_option("AModels2", "Riot Shield", ::modelForAll, "t6_wpn_shield_carry_world");
	self add_option("AModels2", "Hellfire Projectile", ::modelForAll, "projectile_hellfire_missile");
	self add_option("AModels2", "VTOL", ::modelForAll, "veh_t6_air_v78_vtol_killstreak");
	self add_option("AModels2", "Cluster Bomb", ::modelForAll, "projectile_cbu97_clusterbomb");
	self add_option("AModels2", "A.G.R", ::modelForAll, "veh_t6_drone_tank");
	self add_option("AModels2", "Open Briefcase", ::modelForAll, "t6_wpn_briefcase_bomb_view");
	
	self add_menu("Acamos", "Allp", "Co-Host");
	self add_option("Acamos", "None", ::togglecamoall, 0);
	self add_option("Acamos", "Gold", ::togglecamoall, 15);
	self add_option("Acamos", "Diamond", ::togglecamoall, 16);
	self add_option("Acamos", "Ghosts", ::togglecamoall, 29);
	self add_option("Acamos", "Elite", ::togglecamoall, 17);
	self add_option("Acamos", "Afterlife", ::togglecamoall, 44);
	self add_option("Acamos", "Party Rock", ::togglecamoall, 25);
	self add_option("Acamos", "Art of War", ::togglecamoall, 12);
	self add_option("Acamos", "Benjamins", ::togglecamoall, 21);
	self add_option("Acamos", "DEVGRU", ::togglecamoall, 1);
	self add_option("Acamos", "A-TACS AU", ::togglecamoall, 2);
	self add_option("Acamos", "ERDL", ::togglecamoall, 3);
	self add_option("Acamos", "Siberia", ::togglecamoall, 4);
	self add_option("Acamos", "Choco", ::togglecamoall, 5);
	self add_option("Acamos", "Blue Tiger", ::togglecamoall, 6);
	self add_option("Acamos", "Bloodshot", ::togglecamoall, 7);
	self add_option("Acamos", "^3---> All Camos 2 ^3<---^7", ::submenu, "Acamos2", "^3>>^7 All Camos 2 ^3<<^7");
	
	self add_menu("Acamos2", "Acamos", "Co-Host");
	self add_option("Acamos2", "Digital", ::togglecamoall, 18);
	self add_option("Acamos2", "Jungle", ::togglecamoall, 19);
	self add_option("Acamos2", "UK", ::togglecamoall, 20);
	self add_option("Acamos2", "Dia De Muertos", ::togglecamoall, 22);
	self add_option("Acamos2", "Graffiti", ::togglecamoall, 23);
	self add_option("Acamos2", "Kawaii", ::togglecamoall, 24);
	self add_option("Acamos2", "Zombies", ::togglecamoall, 26);
	self add_option("Acamos2", "Cyborg", ::togglecamoall, 31);
	self add_option("Acamos2", "Aqua", ::togglecamoall, 33);
	self add_option("Acamos2", "Breach", ::togglecamoall, 35);
	self add_option("Acamos2", "Coyote", ::togglecamoall, 36);
	self add_option("Acamos2", "Glam", ::togglecamoall, 37);
	self add_option("Acamos2", "Carbon Fiber", ::togglecamoall, 10);
	self add_option("Acamos2", "Cherry Blossom", ::togglecamoall, 11);
    self add_option("Acamos2", "Ronin", ::togglecamoall, 13);
	self add_option("Acamos2", "Skulls", ::togglecamoall, 14);
	self add_option("Acamos2", "^3---> All Camos 3 ^3<---^7", ::submenu, "Acamos3", "^3>>^7 All Camos 3 ^3<<^7");
	
	self add_menu("Acamos3", "Acamos2", "Co-Host");
	self add_option("Acamos3", "Weaponized 115", ::togglecamoall, 43);
	self add_option("Acamos3", "Digital", ::togglecamoall, 18);
	self add_option("Acamos3", "Jungle", ::togglecamoall, 19);
	self add_option("Acamos3", "UK", ::togglecamoall, 20);
	self add_option("Acamos3", "Dia De Muertos", ::togglecamoall, 22);
	self add_option("Acamos3", "Graffiti", ::togglecamoall, 23);
	self add_option("Acamos3", "Kawaii", ::togglecamoall, 24);
	self add_option("Acamos3", "Zombies", ::togglecamoall, 26);
	self add_option("Acamos3", "Bacon", ::togglecamoall, 28);
	self add_option("Acamos3", "Viper", ::togglecamoall, 27);
	self add_option("Acamos3", "Typhon", ::togglecamoall, 9);
	self add_option("Acamos3", "Dragon", ::togglecamoall, 32);
	self add_option("Acamos3", "Rogue", ::togglecamoall, 38);
	self add_option("Acamos3", "Pack-a-Punch", ::togglecamoall, 39);
	self add_option("Acamos3", "Paladin", ::togglecamoall, 30);
	self add_option("Acamos3", "Comics", ::togglecamoall, 34);
	self add_option("Acamos3", "^3---> All Camos 4 ^3<---^7", ::submenu, "Acamos4", "^3>>^7 All Camos 4 ^3<<^7");
	
	self add_menu("Acamos4", "Acamos3", "Co-Host");
	self add_option("Acamos4", "Dead Man's Hand", ::togglecamoall, 40);
	self add_option("Acamos4", "Beast", ::togglecamoall, 41);
	self add_option("Acamos4", "Octane", ::togglecamoall, 42);
	self add_option("Acamos4", "Delta 6", ::togglecamoall, 8);
	self add_option("Acamos4", "Disco Camo", ::discocamoall);
	
	self add_menu("AWeps", "Allp", "Co-Host");
	self add_option("AWeps", "^3----> Pistols ^3<----^7", ::submenu, "APistols", "^3>>^7 All Pistols ^3<<^7");
    self add_option("AWeps", "^3----> SMGs ^3<----^7", ::submenu, "ASubMachineGuns", "^3>>^7 All Sub Machine Guns ^3<<^7");
    self add_option("AWeps", "^3----> Assault Rifles ^3<----^7", ::submenu, "AAssaultRifles", "^3>>^7 All Assault Rifles ^3<<^7");
    self add_option("AWeps", "^3----> Sniper Rifles ^3<----^7", ::submenu, "ASniperRifles", "^3>>^7 All Sniper Rifles ^3<<^7");
    self add_option("AWeps", "^3----> Shotguns ^3<----^7", ::submenu, "AShotguns", "^3>>^7 All Shotguns ^3<<^7");
    self add_option("AWeps", "^3----> LMGs ^3<----^7", ::submenu, "ALightMachineGuns", "^3>>^7 All Light Machine Guns ^3<<^7");
    self add_option("AWeps", "^3----> Launchers ^3<----^7", ::submenu, "ALaunchers", "^3>>^7 All Rocket Launchers ^3<<^7");
    self add_option("AWeps", "^3----> Specials ^3<----^7", ::submenu, "ASpecials", "^3>>^7 All Specials ^3<<^7");
    self add_option("AWeps", "^3----> Modded Weapons ^3<----^7", ::submenu, "AllModWeps", "^3>>^7 Modded Weapons ^3<<^7");
	
	self add_menu("AllModWeps", "AWeps", "Co-Host");
	self add_option("AllModWeps", "Ray Gun MK-I", ::AllPlayersRayGun);
	self add_option("AllModWeps", "Ray Gun MK-II", ::AllPlayersRayGunM2);
	self add_option("AllModWeps", "Ray Gun MK-III", ::AllPlayersRayGunM3);
	self add_option("AllModWeps", "Ray Gun MK-IV", ::AllPlayersRayGunM4);
	
	self add_menu("APistols", "AWeps", "Co-Host");
    self add_option("APistols", "Five-Seven", ::WeaponsAll, "fiveseven_mp");
    self add_option("APistols", "Tac-45", ::WeaponsAll, "fnp45_mp");
	self add_option("APistols", "B23r", ::WeaponsAll, "beretta93r_mp");
	self add_option("APistols", "Executioner", ::WeaponsAll, "judge_mp");
	self add_option("APistols", "Kap-40", ::WeaponsAll, "kard_mp");
	self add_option("APistols", "Five-Seven-Dw", ::WeaponsAll, "fiveseven_dw_mp");
	self add_option("APistols", "Tac-45-Dw", ::WeaponsAll, "fnp45_dw_mp");
	self add_option("APistols", "B23r-Dw", ::WeaponsAll, "beretta93r_dw_mp");
	self add_option("APistols", "Executioner-Dw", ::WeaponsAll, "judge_dw_mp");
	self add_option("APistols", "Kap-40-Dw", ::WeaponsAll, "kard_dw_mp");
	
	self add_menu("ASubMachineGuns", "AWeps", "Co-Host");
	self add_option("ASubMachineGuns", "Mp7", ::WeaponsAll, "mp7_mp");
	self add_option("ASubMachineGuns", "Pdw-57", ::WeaponsAll, "pdw57_mp");
	self add_option("ASubMachineGuns", "Vector K10", ::WeaponsAll, "vector_mp");
	self add_option("ASubMachineGuns", "Chicom", ::WeaponsAll, "qcw05_mp");
	self add_option("ASubMachineGuns", "Skorpion", ::WeaponsAll, "evoskorpion_mp");
	self add_option("ASubMachineGuns", "PeaceKeeper", ::WeaponsAll, "peacekeeper_mp");
	 
	self add_menu("AAssaultRifles", "AWeps", "Co-Host");
	self add_option("AAssaultRifles", "Mtar", ::WeaponsAll, "tar21_mp");
	self add_option("AAssaultRifles", "Type-25", ::WeaponsAll, "type95_mp");
    self add_option("AAssaultRifles", "Swat-556", ::WeaponsAll, "sig556_mp");
	self add_option("AAssaultRifles", "Fal-Osw", ::WeaponsAll, "sa58_mp");
	self add_option("AAssaultRifles", "M27", ::WeaponsAll, "hk416_mp");
	self add_option("AAssaultRifles", "Scar-H", ::WeaponsAll, "scar_mp");
	self add_option("AAssaultRifles", "Smr", ::WeaponsAll, "saritch_mp");
    self add_option("AAssaultRifles", "M8a1", ::WeaponsAll, "xm8_mp");
    self add_option("AAssaultRifles", "An-94", ::WeaponsAll, "an94_mp");
	
	self add_menu("ASniperRifles", "AWeps", "Co-Host");
	self add_option("ASniperRifles", "Svu-As", ::WeaponsAll, "svu_mp");
	self add_option("ASniperRifles", "Dsr-50", ::WeaponsAll, "dsr50_mp");
	self add_option("ASniperRifles", "Ballista", ::WeaponsAll, "ballista_mp");
	self add_option("ASniperRifles", "Xpr-50", ::WeaponsAll, "as50_mp");
   
    self add_menu("AShotguns", "AWeps", "Co-Host");
    self add_option("AShotguns", "R870 Mcs", ::WeaponsAll, "870mcs_mp");
    self add_option("AShotguns", "S12", ::WeaponsAll, "saiga12_mp");
	self add_option("AShotguns", "Ksg", ::WeaponsAll, "ksg_mp");
	self add_option("AShotguns", "M1216", ::WeaponsAll, "srm1216_mp");
    
    self add_menu("ALightMachineGuns", "AWeps", "Co-Host");
    self add_option("ALightMachineGuns", "Mk 48", ::WeaponsAll, "mk48_mp");
    self add_option("ALightMachineGuns", "Qbb Lsw", ::WeaponsAll, "qbb95_mp");
	self add_option("ALightMachineGuns", "Lsat", ::WeaponsAll, "lsat_mp");
	self add_option("ALightMachineGuns", "Hamr", ::WeaponsAll, "hamr_mp");
     
    self add_menu("ALaunchers", "AWeps", "Co-Host");
    self add_option("ALaunchers", "Smaw", ::WeaponsAll, "smaw_mp");
    self add_option("ALaunchers", "Fhj-18", ::WeaponsAll, "fhj18_mp");
	self add_option("ALaunchers", "Rpg", ::WeaponsAll, "usrpg_mp");
	self add_option("ALaunchers", "War Machine", ::WeaponsAll, "m32_mp");
     
    self add_menu("ASpecials", "AWeps", "Co-Host");
    self add_option("ASpecials", "Ballistic Knife", ::WeaponsAll, "knife_ballistic_mp");
    self add_option("ASpecials", "Crossbow", ::WeaponsAll, "crossbow_mp");
	self add_option("ASpecials", "Asault Shield", ::WeaponsAll, "riotshield_mp");
	self add_option("ASpecials", "Death Machine", ::WeaponsAll, "minigun_mp");

	
	self add_menu("PlayersMenu", self.menuname, "Co-Host");
	for (i = 0; i < 17; i++)
	{ 
	    self add_menu("pOpt " + i, "PlayersMenu", "Co-Host");
	}
}

updatePlayersMenu()
{
	self.menu.menucount["PlayersMenu"] = 0;
	for (i = 0; i < 17; i++)
	{
		player = level.players[i];
		playerName = getPlayerName(player);
		
		playersizefixed = level.players.size - 1;
		if(self.menu.curs["PlayersMenu"] > playersizefixed)
		{ 
			self.menu.scrollerpos["PlayersMenu"] = playersizefixed;
			self.menu.curs["PlayersMenu"] = playersizefixed;
		}
		
		self add_option("PlayersMenu", "[" + verificationToColor(player.status) + "^7] " + playerName, ::submenu, "pOpt " + i, "[" + verificationToColor(player.status) + "^7] " + playerName);
	
		self add_menu_alt("pOpt " + i, "PlayersMenu");
		self add_option("pOpt " + i, "Give ^6Co-Host^7", ::changeVerificationMenu, player, "Co-Host");
		self add_option("pOpt " + i, "Give ^1Admin^7", ::changeVerificationMenu, player, "Admin");
		self add_option("pOpt " + i, "Give ^2VIP^7", ::changeVerificationMenu, player, "VIP");
		self add_option("pOpt " + i, "^3Verify^7", ::changeVerificationMenu, player, "Verified");
		self add_option("pOpt " + i, "^8Unverify^7", ::changeVerificationMenu, player, "Unverified");
		self add_option("pOpt " + i, "Teleport To Me", ::teletome, player);
		self add_option("pOpt " + i, "Teleport To Player", ::teletohim, player);
		self add_option("pOpt " + i, "Change Team", ::ChangeTeamPlayer, player);
		self add_option("pOpt " + i, "Change Class", ::ChangeClassPlayer, player);
		self add_option("pOpt " + i, "Revive Player", ::revivePlayer, player);		
		self add_option("pOpt " + i, "Give Godmode", ::GiveGodPlayer, player);
		self add_option("pOpt " + i, "Give Perks", ::GivePerksPlayer, player);
		self add_option("pOpt " + i, "Give ForgeMode", ::playerForge, player);
		self add_option("pOpt " + i, "Give Wallhack", ::GiveESPPlayer, player);
		self add_option("pOpt " + i, "Give Trickshot Aimbot", ::giveTSaimbot, player);
		self add_option("pOpt " + i, "Give Streaks", ::playerStreaks, player);
		if (is_xenon())
		{
		self add_option("pOpt " + i, "Give ^3E74 ^1Error^7", ::trolltv5, player );
		}
	}
}

add_menu_alt(Menu, prevmenu)
{
	self.menu.getmenu[Menu] = Menu;
	self.menu.menucount[Menu] = 0;
	self.menu.previousmenu[Menu] = prevmenu;
}

add_menu(Menu, prevmenu, status)
{
    self.menu.status[Menu] = status;
	self.menu.getmenu[Menu] = Menu;
	self.menu.scrollerpos[Menu] = 0;
	self.menu.curs[Menu] = 0;
	self.menu.menucount[Menu] = 0;
	self.menu.previousmenu[Menu] = prevmenu;
}

add_option(Menu, Text, Func, arg1, arg2)
{
	Menu = self.menu.getmenu[Menu];
	Num = self.menu.menucount[Menu];
	self.menu.menuopt[Menu][Num] = Text;
	self.menu.menufunc[Menu][Num] = Func;
	self.menu.menuinput[Menu][Num] = arg1;
	self.menu.menuinput1[Menu][Num] = arg2;
	self.menu.menucount[Menu] += 1;
}

updateScrollbar()
{
	self.menu.scroller MoveOverTime(0.10);
	self.menu.scroller.y = 50 + (self.menu.curs[self.menu.currentmenu] * 14.40);
	
}

Iif(bool, rTrue, rFalse)
{
	if(bool)
		return rTrue;
	else
		return rFalse;
}

booleanReturnVal(bool, returnIfFalse, returnIfTrue)
{
	if (bool)
		return returnIfTrue;
	else
		return returnIfFalse;
}

booleanOpposite(bool)
{
	if(!isDefined(bool))
		return true;
	if (bool)
		return false;
	else
		return true;
}

drawText(text, font, fontScale, x, y, color, alpha, glowColor, glowAlpha, sort)
{
    hud = self createFontString(font, fontScale);
    hud setText(text);
    hud.x = x;
    hud.y = y;
    hud.color = color;
    hud.alpha = alpha;
    hud.glowColor = glowColor;
    hud.glowAlpha = glowAlpha;
    hud.sort = sort;
    hud.alpha = alpha;
    return hud;
    level.result += 1;
	textElem setText(text);
	level notify("textset");
}


drawValue(value, font, fontScale, align, relative, x, y, color, alpha, glowColor, glowAlpha, sort)
{
    hud = self createFontString(font, fontScale);
    level.varsArray["result"] += 1;
    level notify("textset");
    hud setPoint( align, relative, x, y );
    hud.color = color;
    hud.alpha = alpha;
    hud.glowColor = glowColor;
    hud.glowAlpha = glowAlpha;
    hud.sort = sort;
    hud.alpha = alpha;
    hud setValue(value);
    hud.foreground = true;
    hud.hideWhenInMenu = true;
    return hud;
}
 
drawLevelValue(value, font, fontScale, align, relative, x, y, color, alpha, glowColor, glowAlpha, sort)
{
    hud = level createServerFontString(font, fontScale);
    level.varsArray["result"] += 1;
    level notify("textset");
    hud setPoint(align, relative, x, y);
    hud.color = color;
    hud.alpha = alpha;
    hud.glowColor = glowColor;
    hud.glowAlpha = glowAlpha;
    hud.sort = sort;
    hud.alpha = alpha;
    hud setValue(value);
    hud.foreground = true;
    hud.hideWhenInMenu = true;
    return hud;
}

drawShader(shader, x, y, width, height, color, alpha, sort)
{
    hud = newClientHudElem(self);
    hud.elemtype = "icon";
    hud.color = color;
    hud.alpha = alpha;
    hud.sort = sort;
    hud.children = [];
    hud setParent(level.uiParent);
    hud setShader(shader, width, height);
    hud.x = x;
    hud.y = y;
    return hud;
}






















