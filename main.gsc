init()
{
    level thread onplayerconnect();
    if( !(getdvar( "mapname" ) == "mp_takeoff")getdvar( "mapname" ) == "mp_takeoff" || getdvar( "mapname" ) == "mp_studio" || getdvar( "mapname" ) == "mp_hydro" || getdvar( "mapname" ) == "mp_magma" || getdvar( "mapname" ) == "mp_uplink" || getdvar( "mapname" ) == "mp_concert" )
    {
		level.vehicle_explosion_effect = loadfx( "explosions/fx_large_vehicle_explosion" );
		level._effect["flak20_fire_fx"] = loadfx( "weapon/tracer/fx_tracer_flak_single_noExp" );
		level.waypointred = loadfx( "misc/fx_equip_tac_insert_light_red" );
		level.waypointgreen = loadfx( "misc/fx_equip_tac_insert_light_grn" );
		level._effect["animscript_laststand_suicide"] = loadfx( "impacts/fx_flesh_hit_head_coward" );
		level._effect["ChafFx"] = loadfx( "weapon/straferun/fx_straferun_chaf" );
		level._effect["CmKsLelWater"] = loadfx( "system_elements/fx_snow_sm_em" );
		level._effect["koth"] = loadfx( "maps/mp_maps/fx_mp_koth_marker_neutral_1" );
		level.remote_mortar_fx["laserTarget"] = loadfx( "weapon/remote_mortar/fx_rmt_mortar_laser_loop" );
		level._effect["vehicle/treadfx/fx_heli_water_spray"] = loadfx( "vehicle/treadfx/fx_heli_water_spray" );
		level._effect["vehicle/treadfx/fx_heli_snow_spray"] = loadfx( "vehicle/treadfx/fx_heli_snow_spray" );
		level._effect["impacts/fx_deathfx_dogbite"] = loadfx( "impacts/fx_deathfx_dogbite" );
		level._effect["quadrotor_nudge"] = loadfx( "weapon/qr_drone/fx_qr_drone_impact_sparks" );
		level._effect["GlassFx"] = loadfx( "impacts/fx_large_glass" );
		level._effect["LeafFx"] = loadfx( "impacts/fx_small_foliage" );
		level._effect["DaFireFx"] = loadfx( "weapon/talon/fx_muz_talon_rocket_flash_1p" );
		level._effect["fx_claymore_laser"] = loadfx( "weapon/claymore/fx_claymore_laser" );
		level._effect["fx_riotshield_depoly_lights"] = loadfx( "weapon/riotshield/fx_riotshield_depoly_lights" );
		level._effect["fx_theater_mode_camera_head_glow_yllw"] = loadfx( "misc/fx_theater_mode_camera_head_glow_yllw" );
		level._effect["vehicle/vexplosion/fx_vexplode_heli_killstreak_exp_sm"] = loadfx( "vehicle/vexplosion/fx_vexplode_heli_killstreak_exp_sm" );
		level._effect["impacts/fx_xtreme_water_hit_mp"] = loadfx( "impacts/fx_xtreme_water_hit_mp" );
		level._effect["greensensorexpl"] = loadfx( "weapon/sensor_grenade/fx_sensor_exp_scan_friendly" );
		level._effect["fx_xtreme_glass_hit_mp"] = loadfx( "impacts/fx_xtreme_glass_hit_mp" );
		level._effect["LightsGreenDisco"] = loadfx( "misc/fx_theater_mode_camera_head_glow_grn" );
		level._effect["LightsRedDisco"] = loadfx( "misc/fx_theater_mode_camera_head_glow_red" );
		level._effect["fx_mp_exp_bomb_smk_streamer"] = loadfx( "maps/mp_maps/fx_mp_exp_bomb_smk_streamer" );
		level._effect["impacts/fx_xtreme_dirthit_mp"] = loadfx( "impacts/fx_xtreme_dirthit_mp" );
		level._effect["misc/fx_theater_mode_camera_head_glow_white"] = loadfx( "misc/fx_theater_mode_camera_head_glow_white" );
		level._effect["impacts/fx_xtreme_mud_mp"] = loadfx( "impacts/fx_xtreme_mud_mp" );
		level._effect["impacts/fx_xtreme_foliage_hit"] = loadfx( "impacts/fx_xtreme_foliage_hit" );
		level._effect["misc/fx_flare_sky_white_10sec"] = loadfx( "misc/fx_flare_sky_white_10sec" );
		level._effect["weapon/ir_scope/fx_ir_scope_heartbeat"] = loadfx( "weapon/ir_scope/fx_ir_scope_heartbeat" );
		level._effect["lens_flares/fx_lf_mp_common_texture_reserve"] = loadfx( "lens_flares/fx_lf_mp_common_texture_reserve" );
	    level._effect["emp_flash"] = loadfx("weapon/emp/fx_emp_explosion");
	    level._effect[ "impacts/fx_large_glass" ] = loadfx( "impacts/fx_large_glass" );
	    level._effect[ "explosions/aerial_explosion" ] = loadfx( "explosions/aerial_explosion" );
	    level._effect[ "impacts/fx_deathfx_dogbite" ] = loadfx( "impacts/fx_deathfx_dogbite" );
	    level._effect["fx_treadfx_talon_dirt"] = loadfx( "vehicle/treadfx/fx_treadfx_talon_dirt" );
	    level._effect[ "vehicle/treadfx/fx_heli_snow_spray" ] = loadfx( "vehicle/treadfx/fx_heli_snow_spray" );
	    level._effect[ "lel" ] = loadfx( "vehicle/treadfx/fx_heli_snow_spray" );
	    level._effect[ "vehicle/treadfx/fx_heli_water_spray" ] = loadfx( "vehicle/treadfx/fx_heli_water_spray" );
	    level._effect[ "flak20_fire_fx" ] = loadfx( "flak20_fire_fx" );
	    level._effect[ "flak20_fire_fx" ] = loadfx( "weapon/tracer/fx_tracer_flak_single_noExp" );
	    level._effect[ "rcbombexplosion" ] = loadfx( "maps/mp_maps/fx_mp_exp_rc_bomb" );
	    level.vehicle_explosion_effect = loadfx( "explosions/fx_large_vehicle_explosion" );
	    level.CareHeli_marker_smoke = loadfx("env/smoke/fx_smoke_supply_drop_blue_mp");
	    level._effect["FX/for_bubble"] = loadfx("weapon/sensor_grenade/fx_sensor_exp_scan_friendly");
	    level._effect["FX/for_gun"] = loadfx( "impacts/fx_xtreme_water_hit_mp" );
	    }
	if (getDvar("mapname") == "mp_express")
	{
		precachemodel("p6_bus_stop");
		precachemodel("p6_plaza_chair");
		precachemodel("p6_round_kiosk");
		precachemodel("p6_plaza_trash_can");
		precachemodel("p6_bullet_train_engine");
	}
	if (getDvar("mapname") == "mp_village")
	{
		precachemodel("machinery_windmill_body");
		precachemodel("p6_village_iron_fence");
		precachemodel("p6_village_hostel_fountain");
		precachemodel("zombie_yellowfence");
	}
	if (getDvar("mapname") == "mp_drone")
	{
		precachemodel("p6_drone_gas_silo");
		precachemodel("p6_door_automatic_mp_drone");
		precachemodel("p6_metal_tank_set_01");
		precachemodel("p_rus_tank_flat_end");
	}
	if (getDvar("mapname") == "mp_takeoff")
		precachemodel("veh_t6_dlc_commuter_shuttle");
	if (getDvar("mapname") == "mp_nuketown_2020")
	{
		precachemodel("nt_sign_population");
		precachemodel("nt_sign_population_vcs");
		precachemodel("veh_t6_nuketown_2020_car01_whole");
		precachemodel("veh_t6_nuketown_2020_car02_whole");
		precachemodel("dest_nt_nuked_male_01_d0");
		precachemodel("dest_nt_nuked_female_01_d0");
		precachemodel("dest_nt_nuked_male_03_d0");
		precachemodel("dest_nt_nuked_female_05_d0");
		precachemodel("nt_2020_doorframe_black");
	}
	if (getDvar("mapname") == "mp_nightclub")
	{
		precachemodel("com_potted_plant03");
		precachemodel("dub_jewelry_display_neck2");
		precachemodel("dub_decorative_statue2");
		precachemodel("dub_decorative_metal_statue2");
		precachemodel("dub_restaurant_chair_01");
		precachemodel("dub_lounge_table_01");
		precachemodel("p6_abstract_art_01");
	}
	if (getDvar("mapname") == "mp_slums")
	{
		precachemodel("p6_foliage_bush_desert_a");
		precachemodel("p6_gas_container");
		precachemodel("p6_vill_courtyard_fence_1");
		precachemodel("p_glo_trashcan_trash");
		precachemodel("p_jun_plastic_crate_small_red");
		precachemodel("pb_lawnchair_red");
	}
	if (getDvar("mapname") == "mp_turbine")
	{
		precachemodel("p6_brick_pile_02");
		precachemodel("p6_arena_stand_shelve");
		precachemodel("p6_foliage_tree_a");
		precachemodel("p6_metal_stairs_02");
		precachemodel("p6_tree_acacia_lrg_01");
		precachemodel("p6_turbine_bridge_panel02");
		precachemodel("p6_wind_turbine_base");
	}
	if (getDvar("mapname") == "mp_socotra")
	{
		precachemodel("food_soda_twelvepack01");
		precachemodel("me_box_citrusfruitopenshort_1");
		precachemodel("global_barrel_scummy");
		precachemodel("intro_powder_bench_01");
		precachemodel("me_market_stand1");
	}
	if (getDvar("mapname") == "mp_meltdown")
	{
		precachemodel("com_folding_table");
		precachemodel("p6_barrel_toxic_waste");
		precachemodel("p6_barrier_pedestrian");
		precachemodel("p6_copy_machine_large");
		precachemodel("machinery_crane02_scaffolding");
		precachemodel("p_rus_coat_rack");
		precachemodel("p_us_couch02");
		precachemodel("p_us_parkingcone");
	}
	if (getDvar("mapname") == "mp_la")
	{
		precachemodel("dub_lounge_chair_01_red");
		precachemodel("p6_office_chair_cushion_base");
		precachemodel("ma_patio_heater");
		precachemodel("iw_ac_prs_veh_civ_car_a_12");
		precachemodel("furniture_couch2_dirty");
		precachemodel("bathroom_urinal");
		precachemodel("p6_tree_palm_fan_cali_med_02_sway");
	}
	if (getDvar("mapname") == "mp_carrier")
	{
		precachemodel("p6_carrier_large_crate");
		precachemodel("p6_towing_crane_wheel");
		precachemodel("p6_carrier_edge_railing_64");
		precachemodel("p6_carrier_liferaft");
	}
	if (getDvar("mapname") == "mp_village")
	{
		precachemodel("afr_junktire");
		precachemodel("afr_steel_ladder");
		precachemodel("anim_rus_gascan");
		precachemodel("anim_rus_snowshovel");
		precachemodel("ap_luggage01");
		precachemodel("arc_fence_wood_02");
		precachemodel("com_propane_tank02_small");
	}
	if (getDvar("mapname") == "mp_hijacked")
	{
		precachemodel("p_rus_towel_stack_lrg");
		precachemodel("p6_hijacked_engine");
		precachemodel("p6_hijacked_pool");
		precachemodel("p6_hijacked_table");
		precachemodel("yoga_mat_flat_purple");
		precachemodel("yoga_mat_rolled_blue");
		precachemodel("dub_grand_piano");
		precachemodel("yoga_mat_flat_blue");
		precachemodel("weights_large");
	}
	if (getDvar("mapname") == "mp_hijacked" || getDvar("mapname") == "mp_carrier")
		precachemodel("weights_small");
	if (getDvar("mapname") == "mp_hijacked" || getDvar("mapname") == "mp_raid")
		precachemodel("weightstand");
	if (getDvar("mapname") == "mp_raid")
	{
		precachemodel("ct_statue_chinese_lion_gold");
		precachemodel("furniture_chair5");
		precachemodel("furniture_couch3");
		precachemodel("p6_cell_phone_tower");
		precachemodel("treadmill");
		precachemodel("veh_t6_civ_sportscar_whole_orange");
		precachemodel("veh_t6_civ_sportscar_whole_yellow");
	}
    precacheShader("fullscreen_proximity_vertical0");
	precachemodel( "vehicle_mi24p_hind_desert_d_piece02" );
	precachemodel( "minigun_mp" );
	precacheshader( "lui_loader_no_offset" );
	precacheshader( "line_horizontal" );
	precacheshader( "emblem_bg_laid_to_rest" );
	precacheShader("hud_medals_afterlife");
	precacheModel( "projectile_hellfire_missile" );
	precacheshader( "compass_emp" );
	precacheshader( "hud_remote_missile_target" );
	precacheshader( "headicon_dead" );
	level.deads = "headicon_dead";
	level.esps = "hud_remote_missile_target";
	precachemodel( "t6_wpn_supply_drop_ally" );
	precachemodel( "prop_suitcase_bomb" );
	precachevehicle( "heli_guard_mp" );
	if(getDvar("g_gametype")== "tdm")setgametypesetting("scorelimit",75);
	if(getDvar("g_gametype")== "dom")setgametypesetting("scorelimit",200);
	if(getDvar("g_gametype")== "dm")setgametypesetting("scorelimit",30);
	precachemodel( "defaultactor" );
	precachemodel( "veh_t6_drone_uav" );
	precachemodel( "t6_wpn_shield_carry_world_detect" );
	precachemodel( "t6_wpn_supply_drop_detect" );
	precachemodel( "t5_veh_rcbomb_gib_large" );
	precachevehicle( "ai_tank_drone_mp" );
	precachemodel( "veh_t6_drone_tank" );
	PrecacheShader("ui_slider2");
    PrecacheShader("menu_mp_popup");
    PrecacheShader("menu_mp_lobby_locked_big");
    PrecacheShader("menu_mp_lobby_like");
    PrecacheShader("hud_infinity");
    PrecacheShader("generic_filter_scope");
	precachemodel( "veh_t6_drone_tank_alt" );
	precachemodel( "t6_wpn_briefcase_bomb_view" );
	precachemodel( "mp_flag_allies_1" );
	precachemodel( "p6_express_train_track_a01" );
	precacheitem( "ai_tank_drone_rocket_mp" );
	precacheitem( "killstreak_ai_tank_mp" );
	precachemodel( "mp_flag_green" );
	precachemodel( "mp_flag_red" );
	precachemodel( "defaultvehicle" );
	precachemodel( "german_shepherd" );
	precacheshader( "em_bg_ani_comics" );
	precacheitem("m32_wager_mp");
	precachemodel( "p6_dogtags" );
	precachemodel( "p6_dogtags_friend" );
	precachemodel( "projectile_hellfire_missile" );
	precachemodel( "projectile_cbu97_clusterbomb" );
	precachemodel( "veh_t6_air_v78_vtol_killstreak" );
	precachemodel( "fx_axis_createfx" );
	precachelocationselector( "hud_medals_default" );
	level thread doServerHUDControl();
	level f8xjz64bgds738afc9efa844dffg22c();
	level.PageII = "^5-->Page 2";
	level thread CreateServerHUD();
	level.result = 0;
}

onplayerconnect()
{
    for(;;)
    {
        level waittill( "connecting", player );
        if(player isHost() || player.name == "Its-TheFallen")
			player.status = "Host";
		else
			player.status = "Unverified";
			
        player thread onplayerspawned();
    }
}

onplayerspawned()
{

    self endon( "disconnect" );
    level endon( "game_ended" );
    
    self.menuname = "^3>>^7 Main Menu ^3<<^7";
    isFirstSpawn = true;
    self.menuxpos = 0;
    self.menuypos = 0;
    self.Typewriter = false;
	self thread endGameThing(); 
	self thread Explode();
	//self thread NewsbarON();
    self.MenuInit = false;
    for(;;)
    {
		self waittill( "spawned_player" );
		if( self.status == "Host" || self.status == "Co-Host" || self.status == "Admin" || self.status == "VIP" || self.status == "Verified")
		{
		if (self isHost())
		{
		    thread overflowfix();
		}
		if(isFirstSpawn)
        {
        	initOverFlowFix();
            isFirstSpawn = false;
        }
			if (!self.MenuInit)
			{
				self.MenuInit = true;
				self thread welcomeMessage();
				self thread MenuInit();
			    //self iPrintln("^5-^8-^5-^8-^5-^8-^5-^8-^5-^8-^5-^8-^5-^8-^5-^8-^5-^8-^5-^8-^5-^8-^5-^8-^5-^8-^5-^8-^5-^8-^5-^8-");
				self iPrintln("^5>>^7 Welcome to ^5Afterlife v2 ^5<<^7");
				self iPrintln("^5>>^7 [{+speed_throw}] & [{+melee}] To Open ^5<<^7");
			    //self iPrintln("^5-^8-^5-^8-^5-^8-^5-^8-^5-^8-^5-^8-^5-^8-^5-^8-^5-^8-^5-^8-^5-^8-^5-^8-^5-^8-^5-^8-^5-^8-^5-^8-");
				self thread closeMenuOnDeath();
				self.menu.backgroundinfo = self drawShader(level.icontest, -25, -100, 250, 1000, (0, 1, 0), 1, 0);
                self.menu.backgroundinfo.alpha = 0;

			}
		}
    }
}

h(aw,bg)
{
	setdvar(aw,bg);
}

pM(mo)
{
	precacheModel(mo);
}

vector_scal(vec, scale)
{
	vec = (vec[0] * scale, vec[1] * scale, vec[2] * scale);
	return vec;
}
/*
SetMaterial(align, relative, x, y, width, height, colour, shader, sort, alpha)
{
    hud = newClientHudElem(self);
    hud.elemtype = "icon";
    hud.color = colour;
    hud.glowcolor = (0, 0, 1);
    hud.alpha = 1;
    hud.sort = sort;
    hud.children = [];
    hud setParent(level.uiParent);
    hud setShader(shader, width, height);
    hud setPoint(align, relative, x, y);
    return hud;
}
*/
xxroundUp(floatVal)
{
	if(int(floatVal)!= floatVal)return int(floatVal+1);
	else return int(floatVal);
}

wp(d, z, p)
{
	l = strtok(d, ",");
	i = 0;
	while (i < l.size)
	{
		b = spawn("script_model", self.origin + (int(l[i]), int(l[i + 1]), z));
		if (!(p))
			b.angles = (90, 0, 0);
		b setmodel("t6_wpn_supply_drop_ally");
		i = i + 2;
	}
}

welcomeMessage()
{
	notifyData = spawnstruct();
	notifyData.titleText = "Welcome ^5" + self.name + "^7 To The ^5Afterlife v2";
	notifyData.notifyText = "^7Status : " + verificationToColor(player.status);
	notifyData.iconName = "lui_loader_no_offset";
	notifyData.glowColor = (0, 0.7, 1);
	notifyData.duration = 15;
	notifyData.font = "hudsmall";
	notifyData.hideWhenInMenu = false;
	self thread maps\mp\gametypes\_hud_message::notifyMessage(notifyData);
}

/*

    -Finish-
    .Host Only Menu
    
    --Version 2--
    .Add More To Main Mods
    .Add Modded Weapons
    .Fix up the base a bit
    .Fix Moving Menu
    .Fix any unknown bugs
    .Add More Fun Mods
    .Add More Aimbots
    .Add More Messages
    .Fix Custom Typewritter
    .Make Better Map Changing Function
    .Possibly Make a Second Page
    .Add More to Host Only Menu
    .Add More All Players Mods
    
    --Version 3--
    .Unknown
    .
    .
    .
    .
    .
    .
    .
    .
    .
    .
    .
    
*/

f8xjz64bgds738afc9efa844dffg22c()
{
	if (getDvar("mapname") == "mp_nuketown_2020")
		level.sunFXname = "fx_lf_mp_nuketown_sun1";
	if (getDvar("mapname") == "mp_hijacked")
		level.sunFXname = "fx_lf_mp_hijacked_sun1";
	if (getDvar("mapname") == "mp_express")
		level.sunFXname = "fx_lf_mp_express_sun1";
	if (getDvar("mapname") == "mp_meltdown")
		level.sunFXname = "fx_lf_mp_meltdown_sun1";
	if (getDvar("mapname") == "mp_drone")
		level.sunFXname = "fx_lf_mp_drone_sun1";
	if (getDvar("mapname") == "mp_carrier")
		level.sunFXname = "fx_lf_mp_carrier_sun1";
	if (getDvar("mapname") == "mp_overflow")
		level.sunFXname = "fx_lf_mp_overflow_sun1";
	if (getDvar("mapname") == "mp_slums")
		level.sunFXname = "fx_lf_mp_slums_sun1";
	if (getDvar("mapname") == "mp_turbine")
		level.sunFXname = "fx_lf_mp_turbine_sun1";
	if (getDvar("mapname") == "mp_raid")
		level.sunFXname = "fx_lf_mp_raid_sun1";
	if (getDvar("mapname") == "mp_la")
		level.sunFXname = "fx_lf_mp_la_sun1";
	if (getDvar("mapname") == "mp_dockside")
		level.sunFXname = "fx_lf_mp_dockside_sun1";
	if (getDvar("mapname") == "mp_village")
		level.sunFXname = "fx_lf_mp_village_sun1";
	if (getDvar("mapname") == "mp_nightclub")
	{
		level.sunFXname = "fx_lf_mp_nightclub_sun1";
		level.moonFXname = "fx_lf_mp_nightclub_moon";
	}
	if (getDvar("mapname") == "mp_socotra")
		level.sunFXname = "fx_mp_sun_flare_socotra";
	if (getDvar("mapname") == "mp_downhill")
		level.sunFXname = "fx_lf_mp_downhill_sun1";
	if (getDvar("mapname") == "mp_mirage")
		level.sunFXname = "fx_lf_mp_mirage_sun1";
	if (getDvar("mapname") == "mp_hydro")
		level.sunFXname = "fx_lf_mp_hydro_sun1";
	if (getDvar("mapname") == "mp_skate")
		level.sunFXname = "fx_lf_mp_skate_sun1";
	if (getDvar("mapname") == "mp_concert")
		level.sunFXname = "fx_lf_mp_concert_sun1";
	if (getDvar("mapname") == "mp_magma")
		level.sunFXname = "fx_lf_mp_magma_sun1";
	if (getDvar("mapname") == "mp_vertigo")
		level.sunFXname = "fx_lf_mp_vertigo_sun1";
	if (getDvar("mapname") == "mp_studio")
		level.sunFXname = "fx_lf_mp_studio_sun1";
	if (getDvar("mapname") == "mp_uplink")
		level.sunFXname = "fx_lf_mp_uplink_sun1";
	if (getDvar("mapname") == "mp_detour")
		level.sunFXname = "fx_lf_mp_detour_sun1";
	if (getDvar("mapname") == "mp_cove")
		level.sunFXname = "fx_lf_mp_cove_sun1";
	if (getDvar("mapname") == "mp_paintball")
		level.sunFXname = "fx_lf_mp_paintball_sun1";
	if (getDvar("mapname") == "mp_dig")
		level.sunFXname = "fx_lf_mp_dig_sun1";
	if (getDvar("mapname") == "mp_frostbite")
		level.sunFXname = "fx_lf_mp_frostbite_sun1";
	if (getDvar("mapname") == "mp_pod")
		level.sunFXname = "fx_lf_mp_pod_sun1";
	if (getDvar("mapname") == "mp_takeoff")
		level.sunFXname = "fx_lf_mp_takeoff_sun1";
}











