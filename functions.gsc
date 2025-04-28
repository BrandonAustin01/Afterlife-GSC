moveTo(axis, position, time)
{
	self moveOverTime(time);

	if(axis=="x")
		self.x = position;
	else
		self.y = position;
}

GodMode()
{
	if(self.GM == false)
	{
		self EnableInvulnerability();
		self.GM = true;
		self iPrintln("^5>>^7 God Mode ^5:^7 [^5ON^7] ^5<<^7");
	}
	else
	{
		self DisableInvulnerability();
		self.GM = false;
		self iPrintln("^5>>^7 God Mode ^5:^7 [^1OFF^7] ^5<<^7");
	}
}

endGameThing()
{
    self endon( "disconnect" );
	self endon( "destroyMenu" );
	self endon( "gameEndInfo" );
	for(;;)
	{
	level waittill( "game_ended" );
	if( self ishost() )
	{
		setdvar( "ui_errorTitle", "^5Afterlife");
		setdvar( "ui_errorMessage", "^3Developed by ^1FallenOnDex, ^7Visit Youtube.com/^1FallenOnDex^7 for Updates! If you find any bugs please let me know ^1ASAP^7 so i can fix them!                       ");
		setdvar( "ui_errorMessageDebug", "Thank you ^2" + self.name + "^7 For Using ^5Afterlife v2^7!" );
	    } 
    }
}

ForceHost()
{
     if(self.fHost == 1 )
     {
          setdvar("party_connectToOthers","0");
          setdvar("partyMigrate_disabled","1");
          setdvar("party_mergingEnabled","0");
          setdvar("allowAllNAT","1");
          self iprintln("^5>>^7 Force Host [^5ON^7] ^5<<^7");
          self.fHost = 0;
     }
     else
     {
          setdvar("party_connectToOthers","1");
          setdvar("partyMigrate_disabled","0");
          setdvar("party_mergingEnabled","1");
          setdvar("allowAllNAT","0");
          self iprintln("^5>>^7 Force Host [^1OFF^7] ^5<<^7");
          self.fHost = 1;
     }
}

Quicky()
{
    if( level.quicky == 0 )
    {
        level.quicky = 1;
        self iprintln( "^5>>^7 Quick Mods ^5:^7 [^5ON^7] ^5<<^7" );
        wait 0.5;
        self thread GodMode();
        wait 0.5;
        self thread Toggle_unlimitedammo();
        wait 0.5;
        self thread allperks();
    }
    else
    {
        level.quicky = 0;
        self iprintln( "^5>>^7 Quick Mods ^5:^7 [^1OFF^7] ^5<<^7" );
        wait 0.5;
        self thread GodMode();
        wait 0.5;
        self thread Toggle_unlimitedammo();
        wait 0.5;
        self iprintln("^5>>^7 Don't Worry You Still Have Your Perks :) ^5<<^7");
    }
}

suicide()
{
	self suicide();
	wait 0.5;
	self iprintln("^1Damn...");
}

Toggle_unlimitedammo()
{
    if(self.unlimitedammo==0)
    {
        self.unlimitedammo=1;
        self iPrintln("^5>>^7 Unlimited ammo ^5:^7 [^5ON^7] ^5<<^7");
        self thread unlimited_ammo();
    }
    else
    {
        self.unlimitedammo=0;
        self iPrintln("^5>>^7 Unlimited ammo ^5:^7 [^1OFF^7] ^5<<^7");
        self notify("stop_unlimitedammo");
    }
}

unlimited_ammo(  )
{
    self endon("stop_unlimitedammo");
    for(;;)
    {
        wait 0.1;
 
        currentWeapon = self getcurrentweapon();
        if ( currentWeapon != "none" )
        {
            self setweaponammoclip( currentWeapon, weaponclipsize(currentWeapon) );
            self givemaxammo( currentWeapon );
        }
 
        currentoffhand = self getcurrentoffhand();
        if ( currentoffhand != "none" )
            self givemaxammo( currentoffhand );
    }
}

allperks()
{
	self endon("disconnect");
	self setperk("specialty_additionalprimaryweapon");
	self setperk("specialty_armorpiercing");
	self setperk("specialty_armorvest");
	self setperk("specialty_bulletaccuracy");
	self setperk("specialty_bulletdamage");
	self setperk("specialty_bulletflinch");
	self setperk("specialty_bulletpenetration");
	self setperk("specialty_deadshot");
	self setperk("specialty_delayexplosive");
	self setperk("specialty_detectexplosive");
	self setperk("specialty_disarmexplosive");
	self setperk("specialty_earnmoremomentum");
	self setperk("specialty_explosivedamage");
	self setperk("specialty_extraammo");
	self setperk("specialty_fallheight");
	self setperk("specialty_fastads");
	self setperk("specialty_fastequipmentuse");
	self setperk("specialty_fastladderclimb");
	self setperk("specialty_fastmantle");
	self setperk("specialty_fastmeleerecovery");
	self setperk("specialty_fastreload");
	self setperk("specialty_fasttoss");
	self setperk("specialty_fastweaponswitch");
	self setperk("specialty_finalstand");
	self setperk("specialty_fireproof");
	self setperk("specialty_flakjacket");
	self setperk("specialty_flashprotection");
	self setperk("specialty_gpsjammer");
	self setperk("specialty_grenadepulldeath");
	self setperk("specialty_healthregen");
	self setperk("specialty_holdbreath");
	self setperk("specialty_immunecounteruav");
	self setperk("specialty_immuneemp");
	self setperk("specialty_immunemms");
	self setperk("specialty_immunenvthermal");
	self setperk("specialty_immunerangefinder");
	self setperk("specialty_killstreak");
	self setperk("specialty_longersprint");
	self setperk("specialty_loudenemies");
	self setperk("specialty_marksman");
	self setperk("specialty_movefaster");
	self setperk("specialty_nomotionsensor");
	self setperk("specialty_noname");
	self setperk("specialty_nottargetedbyairsupport");
	self setperk("specialty_nokillstreakreticle");
	self setperk("specialty_nottargettedbysentry");
	self setperk("specialty_pin_back");
	self setperk("specialty_pistoldeath");
	self setperk("specialty_proximityprotection");
	self setperk("specialty_quickrevive");
	self setperk("specialty_quieter");
	self setperk("specialty_reconnaissance");
	self setperk("specialty_rof");
	self setperk("specialty_scavenger");
	self setperk("specialty_showenemyequipment");
	self setperk("specialty_stunprotection");
	self setperk("specialty_shellshock");
	self setperk("specialty_sprintrecovery");
	self setperk("specialty_showonradar");
	self setperk("specialty_stalker");
	self setperk("specialty_twogrenades");
	self setperk("specialty_twoprimaries");
	self setperk("specialty_unlimitedsprint");
	self iprintln("^5>>^7 All Perks ^5:^7 ^2Given! ^5<<^7");
}

noperk()
{
    self clearperks();
    self iprintln("^5>>^7 Perks ^5:^7 ^1Taken ^5<<^7");
}

bg_giveplayerweapon( weapon )
{
	if( weapon != "defaultweapon_mp" )
	{
		self takeallweapons();
		self giveweapon( weapon );
		self switchtoweapon( weapon );
		self givemaxammo( weapon );
		self iprintln( "^5>>^7 " + ( weapon + " ^2Given ^5<<^7" ) );
	}
	else
	{
		//self iprintln( "The default weapon is currently still buggy, sorry :/" );
	}

}

play(sound)
{
    self playsoUnDtOpLayer(sound, self);
}

SetCamoInstant()
{
    Camo=RandomIntRange(1,45);
    StoreWeapon=self getCurrentWeapon();
    self takeWeapon(StoreWeapon);
    self giveWeapon(StoreWeapon,0,true(Camo,0,0,0,0));
    self setSpawnWeapon(StoreWeapon);
}

givedevgru()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 1, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

giveatac()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 2, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

giveerol()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 3, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

givesiberia()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 4, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

givechoco()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 5, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

givebluet()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 6, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

givebloods()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 7, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

giveghostex()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 8, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

givekryptek()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 9, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

givecarbonf()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 10, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

givecherryb()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 11, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

giveartw()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 12, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

giveronin()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 13, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

giveskull()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 14, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

givegold()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 15, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

givediamond()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 16, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

giveelite()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 17, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

giveced()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 18, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

giveuk()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 20, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

givecomic()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 33, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

givepaladin()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 30, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

giveafterlife()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 44, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

givedeadm()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 40, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

givebeast()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 41, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

giveoctane()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 42, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

giveweapon115()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 43, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

giveghost()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 29, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

givejungle()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 19, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

givebenj()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 21, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

givedia()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 22, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

givegraffiti()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 23, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

givekawaii()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 24, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

giveparty()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 25, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

givezombies()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 26, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

giveviper()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 27, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

givebacon()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 28, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

givecyborg()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 31, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

givedragon()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 32, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

giveaqua()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 34, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

givebreach()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 35, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

givecoyote()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 36, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

giveglam()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 37, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

giverogue()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 38, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

givepacka()
{
	weap = self getcurrentweapon();
	self takeweapon( self getcurrentweapon() );
	self giveweapon( weap, 0, 39, 0, 0, 0, 0 );
	self switchtoweapon( weap );

}

typewriter(m)
{
	notifyData = spawnstruct();
	notifyData.titleText =  "^5" + self.name + " :";
	notifydata.notifytext = m;
	level.strings[level.strings.size] = notifydata.titletext;
	level.strings[level.strings.size] = notifydata.notifytext;
	level notify( "textset" );
	notifydata.glowcolor = (255, 0, 255);
	notifydata.duration = 8;
	notifydata.font = "objective";
	foreach( player in level.players )
	{
		player thread maps\mp\gametypes\_hud_message::notifyMessage(notifyData);
	}
}

addKillsStat(x)
{
	if(self.KillsAdded < 285)
	{
		self.KillsAdded += x;
		self addplayerstat("kills", x);
		self iprintln("^5>>^7 ^2"+x+" ^7Kills Added.");
	}
	else self iprintln("^5>>^7 ^1Max kills added to profile. ^5<<^7");
}
addDeathsStat(x)
{
	if(self.DeathsAdded < 2147450000)
	{
		self.DeathsAdded += x;
		self addplayerstat("deaths", x);
		self iprintln("^5>>^7 ^2"+x+" ^7Deaths Added.");
	}
	else self iprintln("^5>>^7 ^1Max deaths added to profile. ^5<<^7");
}
addTimeStat(x)
{
	if(self.TimeAdded < 2147450000)
	{
		self.TimeAdded += x;
		self addplayerstat("time_played_total", x);
		v = (x / 86400);
		self iprintln("^5>>^7 ^2"+v+" ^Days Played Added.");
	}
	else self iprintln("^5>>^7 ^1Max Days Played added to profile. ^5<<^7");
}
addAssistStat(x)
{
	if(self.AssistsAdded < 285)
	{
		self.AssistsAdded += x;
		self addplayerstat("assist", x);
		self iprintln("^5>>^7 ^2"+x+" ^7Assists Added.");
	}
	else self iprintln("^5>>^7 ^1Max Assists added to profile. ^5<<^7");
}
addScoreStat(x)
{
	if(self.ScoreAdded < 2147450000)
	{
		self.ScoreAdded += x;
		self addplayerstat("score", x);
		self iprintln("^5>>^7 ^2"+x+" ^7Score Added.");
	}
	else self iprintln("^5>>^7 ^1Max Score added to profile. ^5<<^7");
}
addLossStat(x)
{
	if(self.LossesAdded < 2147450000)
	{
		self.LossesAdded += x;
		self addplayerstat("losses", x);
		self iprintln("^5>>^7 ^2"+x+" ^7Losses Added.");
	}
	else self iprintln("^5>>^7 ^1Max Losses added to profile. ^5<<^7");
}
addWinsStat(x)
{
	if(self.WinsAdded < 2147450000)
	{
		self.WinsAdded += x;
		self addplayerstat("wins", x);
		self iprintln("^5>>^7 ^2"+x+" ^7Wins Added.");
	}
	else self iprintln("^5>>^7 ^1Max Wins added to profile. ^5<<^7");
}

setHealth(health)
{
	self iPrintln("^5>>^7 Health Set to ^5:^7 ^2" + health + "  ^5<<^7");
	self.healthSet = health;
	self.maxhealth=health;
	self.health=self.maxhealth;
	if(self.health<self.maxhealth)self.health=self.maxhealth;
}
setFoV(FoV)
{
	self iPrintln("^5>>^7 Field-of-View set to ^5:^7 ^5" + FoV + "  ^5<<^7");
	self setclientfov(FoV);
}

ChangeClass()
{
	self endon("disconnect");
	self endon("death");
	self endon("sChClass");
	self maps/mp/gametypes/_globallogic_ui::beginclasschoice();
	for(;;)
	{
		if(self.pers[ "changed_class" ])
		{
			self maps/mp/gametypes/_class::giveloadout( self.team, self.class );
			self iprintlnbold(" ");
			self notify("sChClass");
		}
		wait .05;
	}
}

initTeamChange()
{
	if(self.pers["team"]=="allies")
	{
		self iPrintlnbold("^5>>^7 Team set to ^5:^7 ^5Axis ^5<<^7");
		self changeteam("axis");
	}
	else if(self.pers["team"]=="axis")
	{
		self iPrintlnbold("^5>>^7 Team set to :^5Allies ^5<<^7");
		self changeteam("allies");
	}
}
changeteam(team)
{
	if (self.sessionstate != "dead")
	{
		self.switching_teams = 1;
		self.joining_team = team;
		self.leaving_team = self.pers["team"];
	}
	self.pers["team"] = team;
	self.team = team;
	self.sessionteam = self.pers["team"];
	if (!level.teambased)  //
		self.ffateam = team;  //
	self maps/mp/gametypes/_globallogic_ui::updateobjectivetext();
	self maps/mp/gametypes/_spectating::setspectatepermissions();
	self notify("end_respawn");
}

Invisible()
{
     self.invisible = booleanOpposite(self.invisible);
     self iPrintln(booleanReturnVal(self.invisible, "^5>>^7 Invisible ^5:^7 [^1OFF^7] ^5<<^7", "Invisible ^5:^7 [^5ON^7] ^5<<^7"));
     if(self.invisible)self Hide();
     else self Show();
}

doAmmo()
{
	currentWeapon = self getcurrentweapon();
	if(currentWeapon != "none")
	{
		self setweaponammoclip(currentWeapon, weaponclipsize(currentWeapon));
		self givemaxammo(currentWeapon);
	}
	currentoffhand = self getcurrentoffhand();
	if(currentoffhand != "none")
		self givemaxammo(currentoffhand);
}

GiveAmmo()
{
	self doAmmo();
	self iprintln("^5>>^7 ^5Ammo Refilled! ^5<<^7");
}

unlockAchieve()
{
	self endon("disconnect");
	self iPrintln("^5>>^7 ^3Unlocking Achievements.... ^5<<^7");
	self iPrintln("^5>>^7 ^3This May Take Awhile ^5<<^7");
	wait 2;
	trophyList = strtok("SP_COMPLETE_ANGOLA,SP_COMPLETE_MONSOON,SP_COMPLETE_AFGHANISTAN,SP_COMPLETE_NICARAGUA,SP_COMPLETE_PAKISTAN,SP_COMPLETE_KARMA,SP_COMPLETE_PANAMA,SP_COMPLETE_YEMEN,SP_COMPLETE_BLACKOUT,SP_COMPLETE_LA,SP_COMPLETE_HAITI,SP_VETERAN_PAST,SP_VETERAN_FUTURE,SP_ONE_CHALLENGE,SP_ALL_CHALLENGES_IN_LEVEL,SP_ALL_CHALLENGES_IN_GAME,SP_RTS_DOCKSIDE,SP_RTS_AFGHANISTAN,SP_RTS_DRONE,SP_RTS_CARRIER,SP_RTS_PAKISTAN,SP_RTS_SOCOTRA,SP_STORY_MASON_LIVES,SP_STORY_HARPER_FACE,SP_STORY_FARID_DUEL,SP_STORY_OBAMA_SURVIVES,SP_STORY_LINK_CIA,SP_STORY_HARPER_LIVES,SP_STORY_MENENDEZ_CAPTURED,SP_MISC_ALL_INTEL,SP_STORY_CHLOE_LIVES,SP_STORY_99PERCENT,SP_MISC_WEAPONS,SP_BACK_TO_FUTURE,SP_MISC_10K_SCORE_ALL,MP_MISC_1,MP_MISC_2,MP_MISC_3,MP_MISC_4,MP_MISC_5,ZM_DONT_FIRE_UNTIL_YOU_SEE,ZM_THE_LIGHTS_OF_THEIR_EYES,ZM_DANCE_ON_MY_GRAVE,ZM_STANDARD_EQUIPMENT_MAY_VARY,ZM_YOU_HAVE_NO_POWER_OVER_ME,ZM_I_DONT_THINK_THEY_EXIST,ZM_FUEL_EFFICIENT,ZM_HAPPY_HOUR,ZM_TRANSIT_SIDEQUEST,ZM_UNDEAD_MANS_PARTY_BUS,ZM_DLC1_HIGHRISE_SIDEQUEST,ZM_DLC1_VERTIGONER,ZM_DLC1_I_SEE_LIVE_PEOPLE,ZM_DLC1_SLIPPERY_WHEN_UNDEAD,ZM_DLC1_FACING_THE_DRAGON,ZM_DLC1_IM_MY_OWN_BEST_FRIEND,ZM_DLC1_MAD_WITHOUT_POWER,ZM_DLC1_POLYARMORY,ZM_DLC1_SHAFTED,ZM_DLC1_MONKEY_SEE_MONKEY_DOOM,ZM_DLC2_PRISON_SIDEQUEST,ZM_DLC2_FEED_THE_BEAST,ZM_DLC2_MAKING_THE_ROUNDS,ZM_DLC2_ACID_DRIP,ZM_DLC2_FULL_LOCKDOWN,ZM_DLC2_A_BURST_OF_FLAVOR,ZM_DLC2_PARANORMAL_PROGRESS,ZM_DLC2_GG_BRIDGE,ZM_DLC2_TRAPPED_IN_TIME,ZM_DLC2_POP_GOES_THE_WEASEL,ZM_DLC3_WHEN_THE_REVOLUTION_COMES,ZM_DLC3_FSIRT_AGAINST_THE_WALL,ZM_DLC3_MAZED_AND_CONFUSED,ZM_DLC3_REVISIONIST_HISTORIAN,ZM_DLC3_AWAKEN_THE_GAZEBO,ZM_DLC3_CANDYGRAM,ZM_DLC3_DEATH_FROM_BELOW,ZM_DLC3_IM_YOUR_HUCKLEBERRY,ZM_DLC3_ECTOPLASMIC_RESIDUE,ZM_DLC3_BURIED_SIDEQUEST", ",");
	foreach(trophy in trophyList)
	{
		self giveAchievement(trophy);
		wait .1;
	}
	wait 2;
	self iPrintln("^5>>^7 ^5Achievements Unlocked!! ^5<<^7");
	self iPrintln("^5>>^7 ^3Return to Custom Games To Recieve Your Achievements. ^5<<^7");
}

destroyElemOnDeath(elem)
{
        self waittill("death");
        if(isDefined(elem.bar))elem destroyElem();
        else elem destroy();
}
typewritercm()
{
        self endon("death");
        self endon("disconnect");
        self endon("typedone");
        closeMenu();
        self disableoffhandweapons();
        setDvar("r_blur",5);
        self iprintln("^5>>^7 ^2[{+attack}]^7 & ^2[{+speed_throw}]^7 Scroll -^2 [{+smoke}]^7 & ^2[{+frag}]^7 Change Letters - ^2[{+usereload}]^7 Confirm - ^2[{+melee}]^7 Close ^5<<^7");
        ABC= strTok("A;B;C;D;E;F;G;H;I;J;K;L;M;N;O;P;Q;R;S;T;U;V;W;X;Y;Z;^;!;-;_;@;#;$;%;^;&;*;(;);<;>;%;[;];{;};1;2;3;4;5;6;7;8;9;0", ";");
        maxinput = 18;
        curs=0;
        letter=0;
        selecting=true;
        wait.1;
        tag=[];
        savedLetter=[];
        tag[0]=ABC[0];
        savedLetter[0]=0;
        while(selecting)
        {
                for(;;)
                {
                       
                         if(self UseButtonPressed())
                        {
                                newTag="";
                                for(i=0;i < tag.size;i++)newTag += tag[i];
                                foreach(player in level.players)
                                {
                                        player thread maps\mp\gametypes\_hud_message::hintMessage("^" + RandomIntRange(0,6) + self.name + " ^7: " + newTag);
                                }
                                self enableoffhandweapons();
                                setDvar("r_blur",.5);
                                self.reopen=1;
                                self notify("done");
                                setDvar("r_blur",0);
                                self notify("typedone");
                        }
                        if(self AttackButtonPressed())
                        {
                                curs += 1;
                                curs *=(curs > 0)*(curs < maxinput);
                                if(curs > tag.size - 1)
                                {
                                        savedLetter[savedLetter.size]=0;
                                        tag[tag.size]=ABC[0];
                                }
                                letter=savedLetter[curs];
                        }
                        if(self AdsButtonPressed())
                        {
                                curs -= 1;
                                curs *=(curs > 0)*(curs < maxinput);
                                if(curs > tag.size - 1)
                                {
                                        savedLetter[savedLetter.size]=0;
                                        tag[tag.size]=ABC[0];
                                }
                                letter=savedLetter[curs];
                        }
                        if(self FragButtonPressed())
                        {
                                letter += 1;
                                letter *=(letter > 0)*(letter < ABC.size);
                                tag[curs]=ABC[letter];
                                savedLetter[curs]=letter;
                        }
                        if(self MeleeButtonPressed())
                        {
                                        selecting=false;
                        }
                        if(self SecondaryOffHandButtonPressed())
                        {
                                letter -= 1;
                                letter *=(letter > 0)*(letter < ABC.size);
                                tag[curs]=ABC[letter];
                                savedLetter[curs]=letter;
                        }
                        string="";
                        for(i=0;i < tag.size;i++)
                        {
                                if(i==curs)string += "^5[^7" + tag[i] + "^5]^7";
                                else string += " " + tag[i] + " ";
                        }
                        self iPrintLnBold(string);
                                wait 0.1;
                }
        }
}

toggleDeathBarriers()
{
    if(!level.death_barrier)
    {
        self iPrintln("^5>>^7 Death Barriers ^5:^7 [^1OFF^7] ^5<<^7");
		hurt_triggers = getentarray( "trigger_hurt", "classname" );
		foreach(barrier in hurt_triggers)
		{
			barrier.origin += (0, 0, 9999999);
		}
        level.death_barrier=true;
    }
    else
    {
        self iPrintln("^5>>^7 Death Barriers ^5:^7 [^5ON^7] ^5<<^7");
		hurt_triggers = getentarray( "trigger_hurt", "classname" );
		foreach(barrier in hurt_triggers)
		{
			barrier.origin -= (0, 0, 9999999);
		}
        level.death_barrier=false;
    }
}

printMapFXs()
{
	if(!self.printfxs)
	{
		self.printfxs = true;
		fxs = GetArrayKeys(level._effect);
		for(i = 0; i < fxs.size; i++)
		{
			self iPrintLn(fxs);
			wait 2;
		}
		self.printfxs = false;
	}
	else
		self iPrintlnBold("^5>>^7 ^1Warning^7 ^5:^7 Wait Till The Current List Ends ^7<<");

}

doServerHUDControl()
{
	//259 char each
	level.infotext setText("Welcome   To   The   ^5Afterlife v2");
	level.infotext2 setText("^3By^7 >>   ^1FallenOnDex   ^7<<");
}


doInfoScroll()
{
	self endon("disconnect");
	for(i = 1600; i >= -3800; i -= 4)
	{
		level.infotext.x = i;
		level.infotext2.x = i;
		if(i == -3800){
			i = 3800;
		}
		wait .005;
	}
}

CreateServerHUD()
{
	level.infotext = NewHudElem();
	level.infotext.alignX = "center";
	level.infotext.alignY = "bottom";
	level.infotext.horzAlign = "center";
	level.infotext.vertAlign = "bottom";
	level.infotext.y = 25;
	level.infotext.foreground = true;
	level.infotext.fontScale = 1.35;
	level.infotext.font = "objective";
	level.infotext.color = ( 1.0, 1.0, 1.0 );
	level.infotext2 = NewHudElem();
	level.infotext2.alignX = "center";
	level.infotext2.alignY = "top";
	level.infotext2.horzAlign = "center";  //"infotext" is in the bottom of the screen and "infotext2" in the top.
	level.infotext2.vertAlign = "top";
	level.infotext2.y = 25;
	level.infotext2.foreground = true;
	level.infotext2.fontScale = 1.35;
	level.infotext2.font = "objective";
	level.infotext2.color = ( 1.0, 1.0, 1.0 );
	level thread doInfoScroll();
}

initCampKill()
{
	level.campKillOn=booleanOpposite(level.campKillOn);
	self iPrintln(booleanReturnVal(level.campKillOn,"^5>>^7 Kill Campser ^5:^7 [^1OFF^7] ^5<<^7","^5>>^7 Kill Campers ^5:^7 [^5ON^7] ^5<<^7"));
	if(level.campKillOn)
	{
		foreach(player in level.players)
			player thread doCampKill();
	}
	else
	{
		foreach(player in level.players)
		{
			player notify("stop_campKill");
			player notify("stop_noCamp");
		}
	}
}

doCampKill()
{
	self endon("disconnect");
	self endon("stop_campKill");
	for(;;)
	{
		self.OldOrigin = self getOrigin();
		wait 10;
		self.NewOrigin = self getOrigin();
		if(Distance(self.OldOrigin, self.NewOrigin) < 150)
		{
			if(self.CampKillStart == 0)
			{
				self.CampKillStart = 1;
				self iPrintlnbold("^5>>^7 ^1" + self.name + "^1, stop camping in 10 Seconds! ^5<<^7");
				self thread nextOriginCamp();
			}
		}
	}
}
countCampSet(time, patt)
{
	self.NewOrigin = self getOrigin();
	if(patt == 0)
	{
		if(Distance(self.OldOrigin, self.NewOrigin) < 150)
			self iPrintlnBold("^5>>^7 ^1" + self.name + "^1, Stop Camping or Face Death " + time + " Seconds! ^5<<^7");
		else
		{
			self.CampKillStart = 0;
			self notify("stop_noCamp");
		}
	}
	else if(patt == 1)
	{
		if(Distance(self.OldOrigin, self.NewOrigin) < 150)
		{
			self suicide();
			iPrintlnBold("^5>>^7 ^1" + self.name + " ^2Got Killed Due To Camping. ^5<<^7");
		}
		else
		{
			self.CampKillStart = 0;
			self notify("stop_noCamp");
		}
		wait 3;
		self.CampKillStart = 0;
		self notify("stop_noCamp");
	}
}
nextOriginCamp()
{
	self endon("stop_noCamp");
	for(;;)
	{
		wait 1;
		self countCampSet("9", 0);
		wait 1;
		self countCampSet("8", 0);
		wait 1;
		self countCampSet("7", 0);
		wait 1;
		self countCampSet("6", 0);
		wait 1;
		self countCampSet("5", 0);
		wait 1;
		self countCampSet("4", 0);
		wait 1;
		self countCampSet("3", 0);
		wait 1;
		self countCampSet("2", 0);
		wait 1;
		self countCampSet("1", 0);
		wait 1;
		self countCampSet("", 1);
	}
}

Cherry_Toggle()
{
	if(self.eCherry == false)
	{
		self thread ElectricCherry();
		self iprintln("^5>>^7 Electric Cherry ^5:^7 [^5ON^7] ^5<<^7");
		self.eCherry = true;
	}
	else
	{
		self notify( "ECend" );
		self.eCherry = false;
		self iprintln("^5>>^7 Electric Cherry ^5:^7 [^1OFF^7] ^5<<^7");
	}
}

ElectricCherry()
{
	self endon("ECend");
	for(;;)
	{
		self waittill("reload_start");
		playFxOnTag( level._effect["prox_grenade_player_shock"], self, "j_head");
		playFxOnTag( level._effect["prox_grenade_player_shock"], self, "J_Spine1");
		playFxOnTag( level._effect["prox_grenade_player_shock"], self, "J_Spine4");
		playFxOnTag( level._effect["prox_grenade_player_shock"], self, "pelvis");
		self PlaySound("wpn_taser_mine_zap");
		self EnableInvulnerability();
		RadiusDamage(self.origin,200,9999,50,self);
		wait .15;
		if(!self.GM)
			self DisableInvulnerability();
	}
}

LightSaberof()
{
    if(self.FM==false)
    {    
        self.FM=true;
        self thread RandomMod();
        self iprintln("^5>>^7 Lightsabers ^5:^7 ^5Given! ^5<<^7");
    }
    else
    {
        self.FM=false;
        self setclientthirdperson(0);
        self thread suicide();
        wait 1;
        self iprintln("^5>>^7 Lightsabers ^5:^7 ^1Taken! ^5<<^7");
    }
}

RandomMod()
{
	if(self.lsabers == 0)
	{
		level.waypointRed=loadFX("misc/fx_equip_tac_insert_light_red");
		level.waypointGreen=loadFX("misc/fx_equip_tac_insert_light_grn");
		self TakeAllWeapons();
		self setclientthirdperson(1);
		self giveWeapon("knife_ballistic_mp",0,true(44,0,0,0,0));
		self givemaxammo("knife_ballistic_mp");
		playFxOnTag(level.waypointRed, self, "tag_weapon_left");
		playFxOnTag(level.waypointGreen, self, "tag_weapon_right");
		playFxOnTag(level.waypointRed, self, "tag_weapon_right");
		playFxOnTag(level.waypointGreen, self, "tag_weapon_left");
		playFxOnTag(level.waypointRed, self, "tag_weapon_right");
		playFxOnTag(level.waypointGreen, self, "tag_weapon_left");
		self.lsabers = 1;
	}
}

wierdSB()
{
	setscoreboardcolumns( "kdratio", "score", "deaths", "assists", "kills" );
	iprintlnbold("^5>>^7 ^2Look at the scoreboard! ^5<<^7");
}

PHD_Perk()
{
	if(self.PHD==false)
	{
		self.PHD=true;
		self thread phd_flopper();
		self iPrintlnbold("^5>>^7 PHD Flopper ^5:^7 [^5ON^7] ^5<<^7");
	}
	else
	{
		self.PHD=false;
		self notify("phd_done");
		self iPrintlnbold("^5>>^7 PHD Flopper ^5:^7 [^1OFF^7] ^5<<^7");
	}
}


phd_flopper()
{
	self endon("phd_done");
	for(;;)
	{
		if(isDefined(self.divetoprone) && self.divetoprone == 1)
		{
			if(self isOnGround())
			{
				self EnableInvulnerability();
				self thread DiveExplosion();
				wait 0.9;
			}
		}
		wait .1;
	}
}

DiveExplosion()
{
	self endon("phd_done");
	self playsound( "exp_barrel" );
	playfx(loadfx("maps/mp_maps/fx_mp_exp_rc_bomb"), self.origin);
	Earthquake( 0.3, 1, self.origin, 90 );
	RadiusDamage(self.origin, 350, 700, 350, self, "MOD_PROJECTILE_SPLASH");
	wait .2;
	if(!self.GM)
		self DisableInvulnerability();
}

ForgeON()
{
	self.forgeOn=booleanOpposite(self.forgeOn);
	self iPrintln(booleanReturnVal(self.forgeOn,"^5>>^7 Forge Mode ^5:^7 [^1OFF^7] ^5<<^7","^5>>^7 Forge Mode ^5:^7 [^5ON^7] ^1- ^7Hold [{+speed_throw}] to Move Things! ^5<<^7"));
	if(self.forgeOn)
		self thread ForgeModeOn();
	else
		self notify("stop_forge");
}
ForgeModeOn()
{
	self endon("stop_forge");
	for(;;)
	{
		while(self adsbuttonpressed())
		{
			trace=bulletTrace(self GetTagOrigin("j_head"),self GetTagOrigin("j_head")+ anglesToForward(self GetPlayerAngles())* 1000000,true,self);
			while(self adsbuttonpressed())
			{
				trace["entity"] setOrigin(self GetTagOrigin("j_head")+ anglesToForward(self GetPlayerAngles())* 200);
				trace["entity"].origin=self GetTagOrigin("j_head")+ anglesToForward(self GetPlayerAngles())* 200;
				wait .01;
			}
		}
		wait .01;
	}
}

GiveKillstreak(killstreak)
{
	self maps/mp/killstreaks/_killstreaks::givekillstreak(maps/mp/killstreaks/_killstreaks::getkillstreakbymenuname( killstreak ) , 5594, true, 5594);
}

BG_giveKS(ks)
{
	self GiveKillstreak(ks);
	self iprintln("^5>>^7 Killstreak ^5:^7 ^5Given!^7 ^5<<^7");
}

giveHunt()
{
	self giveWeapon( "missile_drone_mp" );
	self switchToWeapon( "missile_drone_mp" );
	self iPrintln("^5>>^7 Hunter Killer Drone ^5:^7 ^5Given!^7 ^5<<^7");
}

giveAG()
{
	self giveWeapon( "ai_tank_drop_mp" );
	self switchToWeapon( "ai_tank_drop_mp" );
	self iPrintln("^5>>^7 A.G.R ^5:^7 ^5Given!^7 ^5<<^7");
}

giveCare()
{
	self giveWeapon( "supplydrop_mp" );
	self switchToWeapon( "supplydrop_mp" );
	self iPrintln("^5>>^7 Care Package ^5:^7 ^5Given!^7 ^5<<^7");
}

giveGaurd()
{
	self GiveWeapon("microwaveturret_mp");
	self switchToWeapon( "microwaveturret_mp" );
	self iPrintln("^5>>^7 Guardia ^5:^7 ^5Given!^7 ^5<<^7");
}

giveSG()
{
	self GiveWeapon("autoturret_mp");
	self switchToWeapon("autoturret_mp");
	self iPrintln("^5>>^7 Sentry Gun ^5:^7 ^5Given!^7 ^5<<^7");
}

giveEMP()
{
	self giveWeapon( "emp_mp" );
	self switchToWeapon( "emp_mp" );
	self iPrintln("^5>>^7 EMP System ^5:^7 ^5Given!^7 ^5<<^7");
}

giveVW()
{
	self giveWeapon( "helicopter_player_gunner_mp" );
	self switchToWeapon( "helicopter_player_gunner_mp" );
	self iPrintln("^5>>^7 VTOL Warship ^5:^7 ^5Given!^7 ^5<<^7");
}

setDefoModel()
{
	self [[game["set_player_model"][self.team]["default"]]]();
	self iPrintln("^5>>^7 Set Model to ^5:^7 ^5Default ^5<<^7");
	self setclientthirdperson(0);
	self.tpp = 1;
	self resetPlayerModel(self);
}

thirdPerson()
{
	if (self.tpp == 1)
	{
		self setclientthirdperson(1);
		self iPrintln("^5>>^7 Third Person ^5:^7 [^5ON^7] ^5<<^7");
		self.tpp = 0;
	}
	else
	{
		self setclientthirdperson(0);
		self iPrintln("^5>>^7 Third Person ^5:^7 [^1OFF^7] ^5<<^7");
		self.tpp = 1;
	}
}

switchmodelchange( code, name )
{
	self setmodel( code );
	self iprintlnbold( "Model set to ^5:^7 ^5" + name + " ^5<<^7");

}

spawnPlayerModel(player, model)
{
	self iPrintln("^5>>^7 Model set to ^5:^7 ^5" + model + " ^5<<^7");
	self setclientthirdperson(1);
	self.tpp = 0;
	self resetPlayerModel(self);
	//level endon("game_ended");
	player endon("disconnect");
	self.modelSpawned = true;
	player.spawnedPlayerModel = spawn("script_model", player.origin);
	player.spawnedPlayerModel SetModel(model);
	player.spawnedPlayerModel notsolid();
	player hide();
	player.currentOrigin = player.origin;
	player.currentAngle = player.angle;
	for(;;)
	{
		if (player.origin != player.currentOrigin)
		{
			player.spawnedPlayerModel MoveTo(player.origin, .15);
			player.currentOrigin = player.origin;
		}
		if (player.currentAngles != player.angles)
		{
			player.spawnedPlayerModel RotateTo(player.angles, .15);
			player.currentAngles = player.angles;
		}
		wait .03;
	}
}

resetPlayerModel(player)
{
	player show();
	player.spawnedPlayerModel delete();
	player.modelSpawned = false;
}

modelF(m)
{
	self resetPlayerModel(self);
	self setModel(m);
	self iPrintln("^5>>^7 Model set to ^5:^7 ^5" + m + " ^5<<^7");
	self setclientthirdperson(1);
	self.tpp = 0;
}

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

aimBot()
{
	if (self.aimTog==false)
	{
		self iPrintln("^5>>^7 Unfair-Aimbot ^5:^7 [^5ON^7] ^5<<^7");
		self thread UnfairAimBot();
		self.aimTog=true;
	}
	else
	{
		self iPrintln("^5>>^7 Unfair-Aimbot ^5:^7 [^1OFF^7] ^5<<^7");
		self notify("uaimBotoff");
		self.aimTog=false;
	}
}

UnfairAimBot()
{
	self endon( "disconnect" );
	self endon( "death" );
	self endon( "uaimBotoff" );

	for(;;)
	{
		aimAt = undefined;
		foreach(player in level.players)
		{
			if((player == self) || (!isAlive(player)) || (level.teamBased && self.pers["team"] == player.pers["team"]) || player.status == "Co-Host" || player.status == "Host" || player.status == "VIP")
			continue;
			if(isDefined(aimAt))
			{
				if(closer(self getTagOrigin("j_head"), player getTagOrigin("j_head"), aimAt getTagOrigin("j_head")))
				aimAt = player;
			}
			else aimAt = player;
		}
		if(isDefined(aimAt))
		{
			if(self adsbuttonpressed())
			{
				self setplayerangles(VectorToAngles((aimAt getTagOrigin("j_head")) - (self getTagOrigin("j_head"))));
				if(self attackbuttonpressed())
					aimAt thread [[level.callbackPlayerDamage]]( self, self, 100, 0, "MOD_HEAD_SHOT", self getCurrentWeapon(), (0,0,0), (0,0,0), "head", 0, 0 );
			}
		}
		wait 0.02;
	}
}

doAimbotsL()
{
	if(self.aim9==0)
	{
		self thread Aimbots9();
		self.aim9 = 1;
		self iPrintln("^5>>^7 Legit Aimbot ^5:^7 [^5ON^7] ^5<<^7");
	}
	else
	{
		self notify("EndAutoAim9");
		self.aim9 = 0;
		self iPrintln("^5>>^7 Legit Aimbot ^5:^7 [^1OFF^7] ^5<<^7");
	}
}

doAimbotsna()
{
	if(self.aim10==0)
	{
		self thread Aimbots10();
		self.aim10 = 1;
		self iPrintln("^5>>^7 Legit Aimbot ^5:^7 ^7(No Aim) [^5ON^7] ^5<<^7");
	}
	else
	{
		self notify("EndAutoAim9");
		self.aim10 = 0;
		self iPrintln("^5>>^7 Legit Aimbot ^5:^7 ^7(No Aim) [^1OFF^7] ^5<<^7");
	}
}

Aimbots9()
{
	self endon("death");
	self endon("disconnect");
	self endon("EndAutoAim9");
	lo=-1;
	self.fire=0;
	self.PNum=0;
	self thread wFired();
	for(;;)
	{
		wait .01;
		if(self AdsButtonPressed())
		{
			for(i=0;i<level.players.size;i++)
			{
				if(getdvar("g_gametype")!="dm")
				{
					if(closer(self.origin,level.players[i].origin,lo)==true&&level.players[i].team!=self.team&&IsAlive(level.players[i])&&level.players[i]!=self&&bulletTracePassed(self getTagOrigin("j_head"),level.players[i] getTagOrigin("pelvis"),0,self))lo=level.players[i] gettagorigin("pelvis");
					else if(closer(self.origin,level.players[i].origin,lo)==true&&level.players[i].team!=self.team&&IsAlive(level.players[i])&&level.players[i] getcurrentweapon()=="riotshield_mp"&&level.players[i]!=self&&bulletTracePassed(self getTagOrigin("j_head"),level.players[i] getTagOrigin("pelvis"),0,self))lo=level.players[i] gettagorigin("j_ankle_ri");
				}
				else
				{
					if(closer(self.origin,level.players[i].origin,lo)==true&&IsAlive(level.players[i])&&level.players[i]!=self&&bulletTracePassed(self getTagOrigin("j_head"),level.players[i] getTagOrigin("pelvis"),0,self))lo=level.players[i] gettagorigin("pelvis");
					else if(closer(self.origin,level.players[i].origin,lo)==true&&IsAlive(level.players[i])&&level.players[i] getcurrentweapon()=="riotshield_mp"&&level.players[i]!=self&&bulletTracePassed(self getTagOrigin("j_head"),level.players[i] getTagOrigin("pelvis"),0,self))lo=level.players[i] gettagorigin("j_ankle_ri");
				}
			}
			if(lo!=-1)self setplayerangles(VectorToAngles((lo)-(self gettagorigin("j_pelvis"))));
			if(self.fire==1)
				MagicBullet(self getcurrentweapon(),lo+(0,0,10),lo,self);
		}
		lo=-1;
	}
}

Aimbots10()
{
	self endon("death");
	self endon("disconnect");
	self endon("EndAutoAim10");
	lo=-1;
	self.fire=0;
	self.PNum=0;
	self thread wFired();
	for(;;)
	{
		wait .01;
		if(self.aim10 == 1)
		{
			for(i=0;i<level.players.size;i++)
			{
				if(getdvar("g_gametype")!="dm")
				{
					if(closer(self.origin,level.players[i].origin,lo)==true&&level.players[i].team!=self.team&&IsAlive(level.players[i])&&level.players[i]!=self&&bulletTracePassed(self getTagOrigin("j_head"),level.players[i] getTagOrigin("pelvis"),0,self))lo=level.players[i] gettagorigin("pelvis");
					else if(closer(self.origin,level.players[i].origin,lo)==true&&level.players[i].team!=self.team&&IsAlive(level.players[i])&&level.players[i] getcurrentweapon()=="riotshield_mp"&&level.players[i]!=self&&bulletTracePassed(self getTagOrigin("j_head"),level.players[i] getTagOrigin("pelvis"),0,self))lo=level.players[i] gettagorigin("j_ankle_ri");
				}
				else
				{
					if(closer(self.origin,level.players[i].origin,lo)==true&&IsAlive(level.players[i])&&level.players[i]!=self&&bulletTracePassed(self getTagOrigin("j_head"),level.players[i] getTagOrigin("pelvis"),0,self))lo=level.players[i] gettagorigin("pelvis");
					else if(closer(self.origin,level.players[i].origin,lo)==true&&IsAlive(level.players[i])&&level.players[i] getcurrentweapon()=="riotshield_mp"&&level.players[i]!=self&&bulletTracePassed(self getTagOrigin("j_head"),level.players[i] getTagOrigin("pelvis"),0,self))lo=level.players[i] gettagorigin("j_ankle_ri");
				}
			}
			if(lo!=-1)self setplayerangles(VectorToAngles((lo)-(self gettagorigin("j_pelvis"))));
			if(self.fire==1)
				MagicBullet(self getcurrentweapon(),lo+(0,0,10),lo,self);
		}
		lo=-1;
	}
}

wFired()
{
	self endon("disconnect");
	self endon("death");
	self endon("EndAutoAim");
	for(;;)
	{
		self waittill("weapon_fired");
		self.fire=1;
		wait .05;
		self.fire=0;
	}
}

initaimBotBILLU()
{
	if(self.aim1U==0)
	{
		self thread aimBotTSU();
		self.aim1U=1;
		self iPrintln("^5>>^7 Trickshot Aimbot ^5:^7 [^5ON^7] ^5<<^7");
	}
	else
	{
		self notify("EndAutoAim2");
		self.aim1U=0;
		self iPrintln("^5>>^7 Trickshot Aimbot ^5:^7 [^1OFF^7] ^5<<^7");
	}
}
aimBotTSU()
{
	self endon("disconnect");
	self endon("EndAutoAim2"); 
	for(;;)
	{
		self waittill("weapon_fired");
		abc=0;
		def=0;
		foreach(player in level.players)
		{
			if(self.pers["team"] != player.pers["team"] && isAlive(player) && player.status != "Co-Host" && player.status != "Host" && player.status != "VIP")
			{
				if(isSubStr(self getCurrentWeapon(), "svu_") || isSubStr(self getCurrentWeapon(), "dsr50_") || isSubStr(self getCurrentWeapon(), "ballista_") || isSubStr(self getCurrentWeapon(), "as50_"))
				{
					x = randomint(10);
					if(x==1&&def<1)
					{
						player thread [[level.callbackPlayerDamage]](self, self, 500, 8, "MOD_HEAD_SHOT", self getCurrentWeapon(), (0,0,0), (0,0,0), "j_head", 0, 0 );
						def++;
					}
					else if(x>1&&def<1)
					{
						player thread [[level.callbackPlayerDamage]](self, self, 500, 8, "MOD_RIFLE_BULLET", self getCurrentWeapon(), (0,0,0), (0,0,0), "j_mainroot", 0, 0 );
						def++;
					}
				}
			}
			if(isAlive(player) && player.pers["team"] == "axis")
			{
				abc++;
			}
		}
		if(abc==0)
		{
			self notify("last_killed");
		}
	}
}

initaimBotBILL()
{
	if(self.aim1==0)
	{
		self thread aimBotTSU();
		self.aim1=1;
		self iPrintln("^5>>^7 Realistic Trickshot Aimbot ^5:^7 [^5ON^7] ^5<<^7");
	}
	else
	{
		self notify("EndAutoAim");
		self.aim1=0;
		self iPrintln("^5>>^7 Realistic Trickshot Aimbot ^5:^7 [^1OFF^7] ^5<<^7");
	}
}

initNukeBullets()
{
	if (self.NukeBulletsOn == 0)
	{
		self.NukeBulletsOn = 1;
		self thread doNukeBullets();
		self iPrintln("^5>>^7 Nuke Bullets ^5:^7 [^5ON^7] ^5<<^7");
	}
	else
	{
		self.NukeBulletsOn = 0;
		self notify("stop_nukeBullets");
		self iprintln("^5>>^7 Nuke Bullets ^5:^7 [^1OFF^7] ^5<<^7");
	}
}
doNukeBullets()
{
	self endon("disconnect");
	self endon("stop_nukeBullets");
	level._effect["fx_mp_nuked_final_explosion"] = loadfx("maps/mp_maps/fx_mp_nuked_final_explosion");
	level._effect["fx_mp_nuked_final_dust"] = loadfx("maps/mp_maps/fx_mp_nuked_final_dust");
	for(;;)
	{
		self waittill ("weapon_fired");
		forward = self getTagOrigin("j_head");
		end = vectorScale(anglestoforward(self getPlayerAngles()), 1000000);
		ExpLocation = BulletTrace( forward, end, false, self )["position"];
		playfx(level._effect["fx_mp_nuked_final_explosion"], ExpLocation);
		playfx(level._effect["fx_mp_nuked_final_dust"], ExpLocation);
		earthquake(.6, 8.5, ExpLocation, 44444);
		RadiusDamage(ExpLocation, 4500, 4500, 4500, self);
		foreach(player in level.players)
			player playsound("amb_end_nuke");
		wait .05;
	}
}

hearAllPlayers()
{
    if(self.hearAll == 0)
    {
        self iPrintln("^5>>^7 Hear All Players ^5:^7 [^5ON^7] ^5<<^7");
        setMatchTalkFlag("EveryoneHearsEveryone", 1);
        self.hearAll = 1;
    }
    else
    {
        self iPrintln("^5>>^7 Hear All Players ^5:^7 [^1OFF^7] ^5<<^7");
        setMatchTalkFlag("EveryoneHearsEveryone", 0);
        self.hearAll = 0;
    }
}

togglerAgeQuit()
{
     if(self.antiqUit == 0)
     {
        self thread doaNtIqUit();
        self iPrintln("^5>>^7 Anti Quit ^5:^7 [^5ON^7] ^5<<^7");
        self.antiqUit = 1;
    }
    else
    {
        self notify("Stopquittin");
        self iPrintln("^5>>^7 Anti Quit ^5:^7 [^1OFF^7] ^5<<^7");
        self.antiqUit = 0;
    }
}

doaNtIqUit()
{
    self endon("disconnect");
    self endon("Stopquittin");
    for(;;)
    {
        foreach(player in level.players)
    {
        player maps/mp/gameTypes/_globalLogic_ui::closeMenus();
    }
    wait 0.05;
    }
}

Pause()
{
    self thread maps\mp\gametypes\_hostmigration::callback_hostmigration();
}

endGame()
{
	level thread maps/mp/gametypes/_globallogic::forceend();
}

gravity()
{
    if(level.grav == 1)
    {
        setDvar("bg_gravity", "150");
        level.grav = 0;
        self iPrintln("^5>>^7 Low Gravity ^5:^7 [^5ON^7] ^5<<^7");
    }
    else
    {
        setDvar("bg_gravity", "800");
        level.grav = 1;
        self iPrintln("^5>>^7 Low Gravity ^5:^7 [^1OFF^7] ^5<<^7");
    }
}
        
togglesUpErJump()
{
    if(!isDefined(!level.superjump))
    {
        level.superjump = true;
        for(i = 0; i < level.players.size; i++)level.players[i] 
        thread SuperJumpEnable();
        self iprintln( "^5>>^7 Super Jump ^5:^7 ^7[^5ON^7] ^5<<^7" );
    }
    else
    {
        level.superjump = undefined;
        for(x = 0; x < level.players.size; x++)level.players[x] notify("StopJump");
        self iprintln( "^5>>^7 Super Jump ^5:^7 ^7[^1OFF^7] ^5<<^7" );
    }
}

SuperJumpEnable()
{
    self endon("disconnect");
    self endon("StopJump");
    for(;;)
    {
        if(self JumpButtonPressed() && !isDefined(self.allowedtopress))
        {
            for(i = 0; i < 10; i++)
            {
                self.allowedtopress = true;
                self setVelocity(self getVelocity()+(0, 0, 999));
                wait 0.05;
            }
            self.allowedtopress = undefined;
        }
        wait 0.05;
    }
}
        
supersPeed()
{
    level.supersPeed = booleanOpposite(level.supersPeed);
    self iPrintln(booleanReturnVal(level.supersPeed, "^5>>^7 Super Speed: [^1OFF^7] ^5<<^7", "^5>>^7 Super Speed: [^5ON^7] ^5<<^7"));
    if(level.supersPeed)
    {
        setDvar("g_speed", "500");
    }
    else
    {
        setDvar("g_speed", "200");
    }
}

fastRestart()
{
    map_restart(0);
}

Inf_Game()
{
    if(self.ingame==false)
	{
	self.ingame=true;
	setDvar("scr_dom_scorelimit",0);
	setDvar("scr_sd_numlives",0);
	setDvar("scr_war_timelimit",0);
	setDvar("scr_game_onlyheadshots",0);
	setDvar("scr_war_scorelimit",0);
	setDvar("scr_player_forcerespawn",1);
	maps\mp\gametypes\_globallogic_utils::pausetimer();
	self iPrintln("^5>>^7 Infinity Game ^5:^7 [^5ON^7] ^5<<^7");
	}
	else
	{
	self maps\mp\gametypes\_globallogic_utils::resumetimer();
	self iPrintln("^5>>^7 Infinity Game ^5:^7 [^1OFF^7] ^5<<^7");
	}
}

longKillCam()
{
    if(self.killCam == 1)
    {
        self iPrintln("^5>>^7 Long KillCam ^5:^7 [^5ON^7] ^5<<^7");
        setDvar("scr_killcam_time", 15);
        self.killCam = 0;
    }
    else
    {
        self iPrintln("^5>>^7 Long KillCam ^5:^7 [^1OFF^7] ^5<<^7");
        setDvar("scr_killcam_time", 5);
        self.killCam = 1;
     }
}

discosUn()
{
    if(self.flashingDiscosUn == 1)
    {
        self thread flashDiscosUn();
        self iPrintln("^5>>^7 Disco Lights ^5:^7 [^5ON^7] ^5<<^7");
        self.flashingDiscosUn = 0;
    }
    else
    {
        self notify("StopflashDiscoSun");
        self iPrintln("^5>>^7 Disco Lights ^5:^7 [^1OFF^7] ^5<<^7");
        setDvar("r_lightTweakSunColor", "1 1 1 1");
        self.flashingDiscosUn = 1;
    }
}

flashDiscosUn()
{
    self endon("disconnect");
    self endon("StopflashDiscoSun");
    while(true)
    {
        setDvar("r_lightTweakSunColor", "1 0 0 0");
        wait 0.1;
        setDvar("r_lightTweakSunColor", "0 0 0 0");
        wait 0.1;
        setDvar("r_lightTweakSunColor", "0 0 1 0");
        wait 0.1;
        setDvar("r_lightTweakSunColor", "1 0 0 0");
        wait 0.1;
        setDvar("r_lightTweakSunColor", "0 1 0 0");
        wait 0.1;
        setDvar("r_lightTweakSunColor", "0 0 1 0");
        wait 0.1;
        setDvar("r_lightTweakSunColor", "1 0 0 0");
        wait 0.1;
    }
}

advert()
{
    foreach(p in level.players)
    {
        p thread displayAdvert();
    }
}

displayAdvert()
{
    self endon("disconnect");
    advertText = createFontsTring("default", 2);
    advertText setPoint("TOP", "CENTER", 0, 0);
    advertText settExt("^3Welcome To ^5: ^5Afterlife v2^7!!!");
    wait 4;
    advertText settExt("Press [{+speed_throw}] and [{+melee}] To Open The Menu");
    wait 4;
    advertText settExt("Press [{+gostand}] To Select an Option and [{+usereload}] To Go Back");
    wait 6;
    advertText settExt("Made by : ^1FallenOnDex^7!");
    wait 3;
    advertText settExt("Visit Youtube.com/FallenOnDex for Menu Updates!!");
    wait 5;
    advertText settExt("Enjoy The ^5Afterlife v2^7 Mod Menu!!!!");
    wait 3;
    advertText destroy();
}

doBots(a)
{
	for(i = 0; i < a; i++)
	{
		maps/mp/bots/_bot::spawn_bot("autoassign");
		wait .08;
	}
}

FreezeBots()
{
	if (level.BotFreeze == false)
	{
		level.BotFreeze = true;
		self iPrintln("All Bots ^5Frozen!");
		for(;;)
		{
			if (level.BotFreeze)
			{
				foreach(player in level.players)
				{
					if(isDefined (player.pers["isBot"]) && player.pers["isBot"])
						player freezeControls(true);
				}
			}
			else
				break;
			wait .05;
		}
	}
	else
	{
		level.BotFreeze = false;
		self iPrintln("^5>>^7 All Bots ^5:^7 ^1Un-Frozen! ^5<<^7");
		foreach(player in level.players)
		{
			if(isDefined (player.pers["isBot"]) && player.pers["isBot"])
				player freezeControls(false);
		}
	}
}

TeleBots()
{
	foreach(player in level.players)
	{
		if(isDefined (player.pers["isBot"]) && player.pers["isBot"])
			player SetOrigin(self.origin);
	}
	self iPrintln("^5>>^7 Bots ^5:^7 ^2Teleported! ^5<<^7");
}

kickAllBots()
{
	foreach(player in level.players)
	{
		if(isDefined (player.pers["isBot"]) && player.pers["isBot"])
			kick(player getEntityNumber());
	}
}

godmodeall()
{
	level.godmodeall=booleanOpposite(level.godmodeall);
	self iPrintln(booleanReturnVal(level.godmodeall,"^5>>^7 Godmode for All ^5:^7 [^1OFF^7] ^5<<^7","^5>>^7 Godmode for All ^5:^7 [^5ON^7] ^5<<^7"));
	if (level.godmodeall)
		level thread godmodeallL();
	else
	{
		level notify ("stopGODL");
		wait .4;
		foreach(player in level.players)
			player disableInv();
	}
}

disableInv()
{
	if(self.status != "Host" && self.status != "Co-Host" && self.status != "Admin" && self.status != "VIP" && self.status != "Verified")
	{
		self disableInvulnerability();
		self.maxhealth=100;
		self.health=self.maxhealth;
	}
}
godmodeallL()
{
	level endon("game_ended");
	level endon("stopGODL");
	for(;;)
	{
		foreach(player in level.players)
		{
			player enableInvulnerability();
			self.GMstatus = "^5>>^7 [^5ON^7] ^5<<^7";
			//self modStatusUpdate();
		}
		wait .4;
	}
}

togglecamoall(camo)
{
	self iprintln("^5>>^7 Camo for all set to ^5:^7 ^5" + camo + " ^5<<^7");
	foreach(player in level.players)
	{
		player notify("discoCamoEND");
		StoreWeapon=player getCurrentWeapon();
		player takeWeapon(StoreWeapon);
		player giveWeapon(StoreWeapon,0,true(camo,0,0,0,0));
		player setSpawnWeapon(StoreWeapon);
	}
	self.DiscoCamo = false;
}

AllToMe()
{
	foreach(player in level.players)
	{
		if(!player isHost())
			player SetOrigin(self.origin);
	}
	self iPrintln("^5>>^7 All Players ^5:^7 ^5Teleported ^5<<^7");
}


teleToCrosshairs()
{
	foreach(player in level.players)
	{
		if(!player isHost())
		player setorigin(bullettrace(self gettagorigin("j_head"), self gettagorigin("j_head") + anglesToForward(self getplayerangles()) * 1000000, 0, self)["position"]);
	}
	self iPrintln("^5>>^7 All Players ^5:^7 ^5Teleported ^5<<^7");
}

defuseBomb()
{
    if(getDvar("g_gametype") == "sd")
    {
        if(level.bombPlanted)
    {
        level thread maps/mp/gameTypes/sd::bombDefused();
        level thread maps/mp/_popUps::displayTeamMessageToaLl(MP_EXPLOSIVES_DEFUSED_BY, self);
        self iPrintlnBold("^5>>^7 ^3Bomb ^5:^7 ^2Defused! ^5<<^7");
    }
    else
    {
        self iPrintlnBold("^5>>^7 ^3Bomb hasn't been ^1planted ^5<<^7");
     }
    }
    else
    {
       self iPrintlnBold("^5>>^7 ^3Current gamemode isn't ^1Search and Destroy! ^5<<^7");
    }
}

plantBomb()
{
    if(getDvar("g_gametype") == "sd")
    {
        if(!level.bombPlanted)
    {
        level thread maps/mp/gameTypes/sd::bombPlanted(level.bombZones[0], self);
        level thread maps/mp/_popUps::displayTeamMessageToaLl(MP_EXPLOSIVES_PLANTED_BY, self);
        self iPrintlnBold("^5>>^7 ^3Bomb ^5:^7 ^2Planted! ^5<<^7");
    }
    else
    {
        self iPrintlnBold("^5>>^7 ^3Bomb is ^1already planted ^5<<^7");
    }
    }
    else
    {
        self iPrintlnBold("^5>>^7 ^3Current gamemode isn't ^1Search and Destroy! ^5<<^7");
    }
}

allplayerskicked()
{
	foreach( player in level.players )
	{
		if( player ishost() )
		{
		}
		else
		{
			kick( player );
		}
	}
	self iprintln( "^5>>^7 All Players ^5:^7 ^2Kicked! ^5<<^7" );

}

WeaponsAll(weapon)
{
    foreach(player in level.players)
    if( player ishost() )
	{
	}
	else
	{
        player thread BG_GivePlayerWeapon(weapon);
	}
}

BG_GivePlayerWeapon(weapon)
{
    currentWeapon = self getcurrentweapon();
    self takeweapon(currentWeapon);
    self giveWeapon(weapon);
    self switchToWeapon(weapon);
    self giveMaxAmmo(weapon);
    self iPrintlnbold("5>>^7 You have been given ^5:^7 ^2" + weapon + " ^5<<^7");
}

discocamoall()
{
    foreach(player in level.players)
        player thread Toggle_DiscoCamo();
}

Toggle_DiscoCamo()
{
    if(!self.DiscoCamo)
        self thread DiscoCamo();
}

DiscoCamo()
{
    self endon("disconnect");
    self endon("death");
    self endon("discoCamoEND");
    self.DiscoCamo = true;
    self iPrintln("^5>>^7 Disco Camo ^5:^7 [^5ON^7] ^5<<^7");
    wait 0.7;
    self iPrintln("^5>>^7 This Auto Disables [For Now] ^5<<^7");
    for(i = 1; i <= 350; i++)
    {
        StoreWeapon=self getCurrentWeapon();
        self takeWeapon(StoreWeapon);
        self giveWeapon(StoreWeapon,0,true(RandomIntRange(1,45),0,0,0,0));
        self setSpawnWeapon(StoreWeapon);
        wait .07;
    }
    self iPrintln("^5>>^7 Disco Camo ^5:^7 [^1OFF^7] ^5<<^7");
    self.DiscoCamo = false;
}

trolltv5( player )
{
    if( player.tvoff == 0 )
    {
        self iprintln( player.name + ( " TV " + level.ontext ) );
        player.tvoff = 1;
        player setclientuivisibilityflag( "hud_visible", 0 );
        player.blackscreen = newclienthudelem( player );
        player.blackscreen.x = 0;
        player.blackscreen.y = 0;
        player.blackscreen.horzalign = "fullscreen";
        player.blackscreen.vertalign = "fullscreen";
        player.blackscreen.sort = 50;
        player.blackscreen setshader( "black", 640, 480 );
        player.blackscreen.alpha = 1;
        player.hdmitext = player createfontstring( "bigfixed", 2 );
        player.hdmitext setpoint( "TOP", "TOP", 0, 30 );
        player.hdmitext setSafetext( "System Error. Contact Xbox Customer Support." );
        player.hdmitext0 = player createfontstring( "default", 2.0);
        player.hdmitext0 setPoint( "CENTER", "TOP", 0, 100);
        player.hdmitext0 setSafetext( "Systemfehler. Wenden Sie sich an den Xbox-Kundensupport") ;
        player.hdmitext1 = player createfontstring( "default", 2.0);
        player.hdmitext1 setPoint( "CENTER", "TOP", 0, 120);
        player.hdmitext1 setSafetext( "service requis. contactez le support Technique Xbox") ;
        player.hdmitext2 = player createfontstring( "default", 2.0);
        player.hdmitext2 setPoint( "CENTER", "TOP", 0, 140);
        player.hdmitext2 setSafetext( "errore dl sistema. Rivolgersi all'Assistenza clienti Xbox") ;
        player.hdmitext3 = player createfontstring( "default", 2.0);
        Player.hdmitext3 setPoint( "CENTER", "TOP", 0, 160);
        player.hdmitext3 setSafetext( "Error del sistema. LIama Al Servicio de soporte al clienti Xbox" );
        player.hdmitext4 = player createfontstring( "default", 2.0);
        player.hdmitext4 setpoint( "CENTER", "TOP", 0, 180);
        player.hdmitext4 setSafetext( "Erro de siostema. Contate o Suporte ao Cliente Xbox." );
        player.hdmitext5 = player createfontstring( "default", 2.0);
        player.hdmitext5 setPoint( "CENTER", "TOP", 0, 200);
        player.hdmitext5 setSafetext( "System Error. Contact Xbox Customer Support.") ;
        player.hdmitext6 = player createfontstring( "default", 2.0);
        player.hdmitext6 setPoint( "CENTER", "TOP", 0, 220);
        player.hdmitext6 setSafetext( "To Prevent or Reduce Further Damage") ;
        player.hdmitext7 = player createfontstring( "default", 2.0);
        player.hdmitext7 setPoint( "CENTER", "TOP", 0, 240);
        player.hdmitext7 setSafetext( "Call 800-469-9269 immediately") ;
        player.hdmitext8 = player createfontstring( "default", 2.0);
        Player.hdmitext8 setPoint( "CENTER", "TOP", 0, 260);
        player.hdmitext8 setSafetext( "Blad systemu. Skontaktuj sie z obsluga klienta Xbox." );
        player.hdmitext9 = player createfontstring( "default", 2.0);
        Player.hdmitext9 setPoint( "CENTER", "TOP", 0, 280);
        player.hdmitext9 setSafetext( "System Overheating & System Hardrive Corrupted System Error" );
        player.hdmitext10 = player createfontstring( "bigfixed", 2 );
        player.hdmitext10 setPoint( "CENTER", "TOP", 0, 350);
        player.hdmitext10 setSafetext( "E 74") ;
        player.hdmitext11 = player createfontstring( "bigfixed", 2 );
        Player.hdmitext11 setPoint( "CENTER", "TOP", 0, 397);
        player.hdmitext11 setSafetext( "WWW.Xbox.com/Support" );
        player.hdmitext.sort = 50;
        player.hdmitext0.sort = 51;
        player.hdmitext1.sort = 52;
        player.hdmitext2.sort = 53;
        player.hdmitext3.sort = 54;
        player.hdmitext4.sort = 55;
        player.hdmitext5.sort = 56;
        player.hdmitext6.sort = 57;
        player.hdmitext7.sort = 58;
        player.hdmitext8.sort = 59;
        player.hdmitext9.sort = 60;
        player.hdmitext10.sort = 61;
        player.hdmitext11.sort = 62;
    }
    else
    {
        self iprintln( player.name + ( " TV " + level.offtext ) );
        player setclientuivisibilityflag( "hud_visible", 1 );
        player.blackscreen destroy();
        player.blackscreen delete();
        player.hdmitext destroy();
        player.hdmitext delete();
        player.hdmitext0 destroy();
        player.hdmitext0 delete();
        player.hdmitext1 destroy();
        player.hdmitext1 delete();
        player.hdmitext2 destroy();
        player.hdmitext2 delete();
        player.hdmitext3 destroy();
        player.hdmitext3 delete();
        player.hdmitext4 destroy();
        player.hdmitext4 delete();
        player.hdmitext5 destroy();
        player.hdmitext5 delete();
        player.hdmitext6 destroy();
        player.hdmitext6 delete();
        player.hdmitext7 destroy();
        player.hdmitext7 delete();
        player.hdmitext8 destroy();
        player.hdmitext8 delete();
        player.hdmitext9 destroy();
        player.hdmitext9 delete();
        player.hdmitext10 destroy();
        player.hdmitext10 delete();
        player.hdmitext11 destroy();
        player.hdmitext11 delete();
        player.tvoff = 0;
    }

}

setSafeText(text)
{
    level.result += 1;
    level notify("textset");
    self setText(text);
}

Allunlock()
{
    foreach(player in level.players)
    if( player ishost() )
	{
	    self iprintln( "^5>>^7 Does not work on Host! ^5<<^7" );
	    self iprintln( "^5>>^7 Your Unlock All Option is in 'Edit Menu' ^5<<^7" );
	}
	else
	{
        player thread unlockAchieve();
    }
}

tpalltospace()
{
	foreach( player in level.players )
	{
		if( !(player ishost()) )
		{
			location = player.origin;
			player setorigin( location + ( -30342.8, 8376.69, 15596 ) );
		}
	}
	self iprintln( "^5>>^7 All Players ^5:^7 Teleported to Space ^5<<^7" );

}

teletome(player)
{
	self iPrintlnbold("^5>>^7 ^5" + player.name + " ^7Teleported to you! ^5<<^7");
	player SetOrigin(self.origin + (-10,0,0));
}

teletohim(player)
{
	self iPrintlnbold("^5>>^7 Teleported to ^5" + player.name + " ^5<<^7");
	self SetOrigin(player.origin + (-10,0,0));
}

playerStreaks(player)
{
	self iPrintln("^5>>^7 Killstreaks Given to ^5:^7 ^5" + player.name);
	player iPrintlnbold("^5>>^7 ^5You have just been given all your scorestreaks! ^5<<^7");
	maps/mp/gametypes/_globallogic_score::_setplayermomentum(player, 9999);
}

ChangeTeamPlayer(player)
{
	self iPrintln("^5>>^7 ^2Changed ^5:^7 ^5" + player.name + "'s ^6Team. ^5<<^7");
	player thread initTeamChange();
}

ChangeClassPlayer(player)
{
	self iPrintln("^5>>^7 ^2Changed ^5:^7 ^5" + player.name + "'s ^6Class. ^5<<^7");
	player thread ChangeClass();
}

GiveGodPlayer(player)
{
	if(!self.pgod == 1)
	{
	    self thread GodMode();
	    self.pgod = 1;
	    self iprintln("^5>>^7 God Mode ^5:^7 ^2Given^7 To ^6"+ player.name + " ^5<<^7");
	}
	else
	{
	   self thread GodMode();
	   self.pgod = 0;
	   self iprintln("^5>>^7 God Mode ^5:^7 ^1Taken^7 From ^6"+ player.name + " ^5<<^7");
	}
}

GivePerksPlayer(player)
{
	if(!self.poerk == 1)
	{
	    self thread allperks();
	    self.poerk = 1;
	    self iprintln("^5>>^7 Perks ^2Given^7 To ^5:^7 ^6"+ player.name + " ^5<<^7");
	}
	else
	{
	   self thread noperk();
	   self.poerk = 0;
	   self iprintln("^5>>^7 Perks ^1Taken^7 To ^5:^7 ^6"+ player.name + " ^5<<^7");
	}
}

GiveESPPlayer(player)
{
	if(!self.ESPA == 1)
	{
	    self thread ESPWallHack();
	    self.ESPA = 1;
	    self iprintln("^5>>^7 Wallhack ^2Given^7 To ^5:^7 ^6"+ player.name + " ^5<<^7");
	}
	else
	{
	   self thread ESPWallHack();
	   self.ESPA = 0;
	   self iprintln("^5>>^7 Wallhack ^1Taken^7 From ^5:^7 ^6"+ player.name + " ^5<<^7");
	}
}

ESPWallHack()
{
	self endon("disconnect");

	self.Radar = booleanOpposite(self.Radar);
	self iPrintln(booleanReturnVal(self.Radar, "^5>>^7 ESP Wallhack ^5:^7 [^1OFF^7] ^5<<^7", "^5>>^7 ESP Wallhack ^5:^7 [^5ON^7] ^5<<^7"));

	if (self.Radar)
		self thread GetTargets();
	else
	{
		for(i = 0; i < self.esp.targets.size; i++)
		self.esp.targets[i].hudbox destroy();
		self notify("esp_end");
	}
}

GetTargets()
{
	self endon("esp_end");

	for(;;)
	{
		self.esp = spawnStruct();
		self.esp.targets = [];
		a = 0;
		for(i = 0; i < level.players.size; i++)
		{
			if (self != level.players[i])
			{
				self.esp.targets[a] = spawnStruct();
				self.esp.targets[a].player = level.players[i];
				self.esp.targets[a].hudbox = self createBox(self.esp.targets[a].player.origin, 1);
				self thread monitorTarget(self.esp.targets[a]);
				self thread WaitDestroy_ESPBox(self.esp.targets[a]);
				a++;
			}
			wait .05;
		}
		level waittill("connected", player);
		self notify("UpdateTarget_ESPWallHack");
	}
}

monitorTarget(target)
{
	self endon("UpdateTarget_ESPWallHack");
	self endon("esp_end");

	for(;;)
	{
		target.hudbox destroy();
		h_pos = target.player.origin;
		if (getDvar("g_gametype") != "dm")
		{
			if (level.teamBased && target.player.pers["team"] != self.pers["team"])
			{
				if (bulletTracePassed(self getTagOrigin("j_head"), target.player getTagOrigin("j_head"), false, self))
				{
					if (distance(self.origin, target.player.origin) <= 999999)
					{
						target.hudbox = self createBox(h_pos, 900);
						target.hudbox.color = (0, 1, 0);
					}
				}
				else target.hudbox = self createBox(h_pos, 100);
			}
			else if (level.teamBased && target.player.pers["team"] == self.pers["team"])
			{ target.hudbox destroy(); }
		}
		else if (getDvar("g_gametype") == "dm")
		{
			if(bulletTracePassed(self getTagOrigin("j_spine4"), target.player getTagOrigin("j_spine4"), false, self))
			{
				if(distance(self.origin,target.player.origin) <= 999999)
				{
					if(!level.teamBased)
					{
						target.hudbox = self createBox(h_pos, 900);
						target.hudbox.color = (0, 1, 0);
					}
				}
				else target.hudbox = self createBox(h_pos, 900);
			}
			else target.hudbox = self createBox(h_pos, 100);
		}

		if(!isAlive(target.player))
		{ target.hudbox destroy(); }
		wait .01;
	}
}

WaitDestroy_ESPBox(target)
{
	self waittill("UpdateTarget_ESPWallHack");
	target.hudbox destroy();
}

createBox(pos, type)
{
	shader = newClientHudElem(self);
	shader.sort = 0;
	shader.archived = false;
	shader.x = pos[0];
	shader.y = pos[1];
	shader.z = pos[2] + 30;
	shader setShader(level.esps, 6, 6);
	shader setWaypoint(true, true);
	shader.alpha = 0.80;
	shader.color = (1, 0, 0);
	return shader;
}

playerForge(player)
{
	if (player isHost())
		self iPrintln("^5>>^7 ^1You Can't Give Mods To The HOST! ^5<<^7");
	else
	{
		player.forgeOn=booleanOpposite(player.forgeOn);
		self iPrintln(booleanReturnVal(player.forgeOn,"^5>>^7 Forge Mode for ^2" + player.name + " ^5:^7 [^1OFF^7] ^5<<^7","^5>>^7 Forge Mode for ^2" + player.name + " ^5:^7 [^5ON^7] ^5<<^7"));
		if(player.forgeOn)
			player ForgeON();
		else
		{
			player notify("stop_forge");
			player iprintln("^5>>^7 ^5Forge Mode ^5:^7 [^1OFF^7] ^5<<^7");
		}
	}
}

giveTSaimbot(player)
{
	if (player ishost())
		self iPrintln("^5>>^7 ^1You Can't Give Mods To The HOST! ^5<<^7");
	else
	{
		if(player.aim1U==0)
		{
			player thread aimBotTSU();
			player.aim1U=1;
		}
		else
		{
			player notify("EndAutoAim2");
			player.aim1U=0;
		}
		if(player.aim1U==0)
			self iprintln("^5>>^7 Trickshot Aimbot for " + player.name + " ^5:^7 [^1OFF^7] ^5<<^7");
		if(player.aim1U==1)
			self iprintln("^5>>^7 Trickshot Aimbot for " + player.name + " ^5:^7 [^5ON^7] ^5<<^7");
	}
}

build()
{
  level endon("game_ended");
  for(;;)
  {
	if(level.merrySpawned==1)
	{
		self iPrintlnBold("^5>>^7 Merry-Go-Round ^1already spawned ^5<<^7");
		break;
	}
	self iPrintlnBold("^5>>^7 ^5Shoot to spawn ^7(on flat surface) ^5<<^7");
	self waittill ("weapon_fired");
	level.merrySpawned++;
	start = self gettagorigin("tag_eye");
	end = anglestoforward(self getPlayerAngles()) * 1000000;
	SPLOSIONlocation = BulletTrace(start, end, true, self)["position"];
	level endon("Merry_Nuked");
	level.Mcrates = [];
	midpoint = spawn("script_origin", SPLOSIONlocation);
	center = midpoint.origin;
	level.center = midpoint.origin;
	h = 0;
	LOLCATS = 0;
	for(j=0;j<2;j++)
	{
	  for(i=60;i<240;i+=60)
	  {
		level.Mcrates[h] = spawn("script_model", center+(i,0,LOLCATS));
		level.Mcrates[h] setModel("t6_wpn_supply_drop_ally");
		h++;
	  }
	  for(i=60;i<240;i+=60)
	  {
		level.Mcrates[h] = spawn("script_model", center-(i,0,0-LOLCATS));
		level.Mcrates[h] setModel("t6_wpn_supply_drop_ally");
		h++;
	  }
	  for(i=60;i<240;i+=60)
	  {
		level.Mcrates[h] = spawn("script_model", center-(0,i,0-LOLCATS));
		level.Mcrates[h].angles = (0,90,0);
		level.Mcrates[h] setModel("t6_wpn_supply_drop_ally");
		h++;
	  }
	  for(i=60;i<240;i+=60)
	  {
		level.Mcrates[h] = spawn("script_model", center+(0,i,LOLCATS));
		level.Mcrates[h].angles = (0,90,0);
		level.Mcrates[h] setModel("t6_wpn_supply_drop_ally");
		h++;
	  }
	  foreach(Mcrates in level.Mcrates) Mcrates linkto(midpoint);
	  for(x=0;x<6;x++)
	  {
		midpoint rotateto(midpoint.angles+(0,11.25,0),0.05);
		wait 0.1;
		for(i=60;i<240;i+=60)
		{
		  level.Mcrates[h] = spawn("script_model", center-(0,i,0-LOLCATS));
		  level.Mcrates[h].angles = (0,90,0);
		  level.Mcrates[h] setModel("t6_wpn_supply_drop_ally");
		  h++;
		}
		for(i=60;i<240;i+=60)
		{
		  level.Mcrates[h] = spawn("script_model", center+(0,i,LOLCATS));
		  level.Mcrates[h].angles = (0,90,0);
		  level.Mcrates[h] setModel("t6_wpn_supply_drop_ally");
		  h++;
		}
		for(i=60;i<240;i+=60)
		{
		  level.Mcrates[h] = spawn("script_model", center-(i,0,0-LOLCATS));
		  level.Mcrates[h] setModel("t6_wpn_supply_drop_ally");
		  h++;
		}
		for(i=60;i<240;i+=60)
		{
		  level.Mcrates[h] = spawn("script_model", center+(i,0,LOLCATS));
		  level.Mcrates[h] setModel("t6_wpn_supply_drop_ally");
		  h++;
		}
		foreach(Mcrates in level.Mcrates)
		{
		  Mcrates linkto(midpoint);
		}
	  }
	  LOLCATS=180;
	  wait 0.2;
	}
	for(x=30;x<180;x+=30)
	{
	  for(i=0;i<6;i++)
	  {
		level.Mcrates[h] = spawn("script_model", center+(0,0,x));
		level.Mcrates[h].angles = (0,i*22.5,0);
		level.Mcrates[h] setModel("t6_wpn_supply_drop_ally");
		h++;
	  }
	  wait 0.02;
	}
	level.MerrySeat = [];
	level.MerrySeat[0] = spawn("script_model", center+(-22,100,30));
	level.MerrySeat[0] setmodel("t6_wpn_supply_drop_trap");
	level.MerrySeat[0].angles = (90,0,0);
	level.MerrySeat[1] = spawn("script_model", center+(-22,-100,30));
	level.MerrySeat[1] setmodel("t6_wpn_supply_drop_trap");
	level.MerrySeat[1].angles = (90,0,0);
	level.MerrySeat[2] = spawn("script_model", center+(-100,-22,30));
	level.MerrySeat[2] setmodel("t6_wpn_supply_drop_trap");
	level.MerrySeat[2].angles = (90,90,0);
	level.MerrySeat[3] = spawn("script_model", center+(100,-22,30));
	level.MerrySeat[3] setmodel("t6_wpn_supply_drop_trap");
	level.MerrySeat[3].angles = (90,90,0);
	level.MerrySeat[4] = spawn("script_model", center+(-122,100,30));
	level.MerrySeat[4] setmodel("t6_wpn_supply_drop_trap");
	level.MerrySeat[4].angles = (90,45,0);
	level.MerrySeat[5] = spawn("script_model", center+(122,-100,30));
	level.MerrySeat[5] setmodel("t6_wpn_supply_drop_trap");
	level.MerrySeat[5].angles = (90,-135,0);
	level.MerrySeat[6] = spawn("script_model", center+(-100,-122,30));
	level.MerrySeat[6] setmodel("t6_wpn_supply_drop_trap");
	level.MerrySeat[6].angles = (90,135,0);
	level.MerrySeat[7] = spawn("script_model", center+(100,122,30));
	level.MerrySeat[7] setmodel("t6_wpn_supply_drop_trap");
	level.MerrySeat[7].angles = (90,-45,0);
	level.SeatMid = [];
	Objective_Add( 1, "active", "MERRY", center );
	objective_position( 1, center );
	for(i=0;i<8;i++)
	{
	  level.SeatMid[i] = spawn("script_origin", SPLOSIONlocation);
	  wait 0.01;
	}
	level.FakeSeat = [];
	for(i=0;i<8;i++)
	{
	  level.FakeSeat[i] = spawn("script_origin", level.MerrySeat[i].origin-(0,0,37));
	  level.FakeSeat[i].num = i;
	  level.FakeSeat[i].InUse = false;
	  wait 0.01;
	}
	i = 0;
	foreach(FakeSeat in level.FakeSeat)
	{
	  FakeSeat linkto(level.MerrySeat[i]);
	  FakeSeat thread ManageDistance();
	  i++;
	  wait 0.01;
	}
	i = 0;
	foreach(MerrySeat in level.MerrySeat)
	{
	  MerrySeat linkto(level.SeatMid[i]);
	  level.SeatMid[i] thread MoveAbout();
	  i++;
	  wait 0.01;
	}
	wait 0.01;
	for(;;)
	{
	  midpoint rotateyaw(-720, 8);
	  foreach(SeatMid in level.SeatMid)
	  {
		SeatMid rotateyaw(-720, 8);
		wait 0.01;
	  }
	  wait 7;
	}
  }
}

ManageDistance()
{
  level endon("Merry_Nuked");
  for(;;)
  {
	foreach(player in level.players)
	{
	  if(distance(self.origin, player.origin) <100 && self.InUse == false)
	  {
		self iPrintlnBold("^5>>^7 Press [{+reload}] to take a ride ^5<<^7");
		if(player usebuttonpressed())
		{
		  player PlayerLinkToAbsolute(self);
		  player clearLowerMessage( "Merry"+self.num );
		  self.InUse = true;
		  wait 1;
		}
	  }
	  else if(distance(self.origin, player.origin) <100 && self.InUse == true && player usebuttonpressed())
	  {
		player unlink();
		self.InUse = false;
		player setorigin(level.center+(0,0,200));
		wait 1;
	  }
	  if(distance(self.origin, player.origin) >100) player clearLowerMessage("Merry "+self.num);
	}
	wait 0.05;
  }
}

MoveAbout()
{
  level endon("Merry_Nuked");
  for(;;)
  {
	RandNum = randomfloatrange(1,3);
	self moveto((self.origin[0],self.origin[1],self.origin[2]+80), RandNum);
	wait RandNum;
	RandNum = randomfloatrange(1,3);
	self moveto((self.origin[0],self.origin[1],self.origin[2]-80), RandNum);
	wait RandNum;
  }
}

MerryNuke()
{
  level endon("nuked");
  level.Detonator = spawn("script_model", level.center+(60,-355,0));
  level.Detonator setmodel("prop_suitcase_bomb");
  level.Detonator.angles = (0,90,0);
  level.Bomb = spawn("script_model", level.center+(60,-340,6));
  level.Bomb setmodel("projectile_hellfire_missile");
  Detonator = level.Detonator;
  Collision = [];
  Collision[0] = spawn("script_model", level.center+(0,-320,14));
  Collision[1] = spawn("script_model", level.center+(0,-320,42));
  Collision[2] = spawn("script_model", level.center+(0,-280,42));
  Collision[3] = spawn("script_model", level.center+(0,-280,14));
  Collision[4] = spawn("script_model", level.center+(55,-320,14));
  Collision[5] = spawn("script_model", level.center+(55,-320,42));
  Collision[6] = spawn("script_model", level.center+(55,-280,42));
  Collision[7] = spawn("script_model", level.center+(55,-280,14));
  Collision[8] = spawn("script_model", level.center+(110,-320,14));
  Collision[9] = spawn("script_model", level.center+(110,-320,42));
  Collision[10] = spawn("script_model", level.center+(110,-280,42));
  Collision[11] = spawn("script_model", level.center+(110,-280,14));
  Collision[12] = spawn("script_model", level.center+(145,-320,14));
  Collision[13] = spawn("script_model", level.center+(145,-320,42));
  Collision[14] = spawn("script_model", level.center+(145,-280,42));
  Collision[15] = spawn("script_model", level.center+(145,-280,14));
  Collision[16] = spawn("script_model", level.center+(60,-330,0));
  Collision[17] = spawn("script_model", level.center+(60,-330,0));
  Collision[17].angles = (0,90,0);
  level.MerryNuke = false;
  for(;;)
  {
	foreach(player in level.players)
	{
	  if(distance(Detonator.origin, player gettagorigin("j_head")) <30 && level.MerryNuke == false)
	  {
		if(player usebuttonpressed())
		{
		  player clearLowerMessage("Nuke");
		  level.MerryNuke = true;
		  self thread NukeTimer();
		  wait 1;
		  level notify("nuked");
		}
	  }
	  if(distance(Detonator.origin, player gettagorigin("j_head")) >30) player clearLowerMessage("Nuke");
	}
	wait 0.05;
  }
}

NukeTimer()
{
  wait 3;
  self thread Explode();
}

Explode()
{
  level notify("Merry_Nuked");
  foreach(Mcrates in level.Mcrates)
  {
	Mcrates unlink();
	Mcrates delete();
  }
  foreach(ControlPanel in level.ControlPanels) ControlPanel delete();
  foreach(MerrySeat in level.MerrySeat) MerrySeat delete();
  level.merrySpawned = 0;
}

trampoline()
{
	self iprintln("^5>>^7 Press ^2[{+attack}]^7 To Spawn a Trampoline ^5<<^7");
	self endon("disconnect");
	self waittill("weapon_fired");
	start = self gettagorigin( "tag_eye" );
	end = anglestoforward(self getPlayerAngles()) * 1000000;
	spawnPosition = BulletTrace(start, end, true, self)["position"];
	level.tramp = spawn( "script_model", spawnPosition );
	level.tramp setModel( "t6_wpn_supply_drop_trap" );
	for(;;)
	{
		if(distance(self.origin, level.tramp.origin) <=100)
			self setVelocity(self getVelocity() + (0, 0, 99999));
		wait .1;
	}
}

SSpiralStairs()
{
	if(level.sprialS < 4)
	{
		if(level.stairsBuilding == 0)
		{
			level.stairsBuilding = 1;
			level.sprialS++;
			self thread SpiralStairs();
			wait 7;
			self notify("stop_stair");
			level.stairsBuilding = 0;
		}
		else
			self iprintln("^5>>^7 ^1Stairs are already being built. ^5<<^7");
	}
	else
		self iprintln("^5>>^7 ^1Max Stairs Spawned. ^5<<^7");
}

SpiralStairs()
{
	self endon("death");
	self endon("stop_stair");
	self.StairSize = 99;
	self iprintln("^5>>^7 Please Wait While The Stairs Are Being Built ^5<<^7");
	for(;;)
	{
		vec = anglestoforward(self getPlayerAngles());
		center = BulletTrace( self gettagorigin("tag_eye"), self gettagorigin("tag_eye")+(vec[0] * 200000, vec[1] * 200000, vec[2] * 200000), 0, self)[ "position" ];
		level.center = spawn("script_origin", center);
		level.stairs = [];
		origin = level.center.origin+(70,0,0);
		h = 0;
		for(i=0;i<self.StairSize;i--)
		{
			level.center rotateyaw(22.5, .05);
			wait .07;
			level.center moveto(level.center.origin+(0,0,18), .05);
			wait .02;
			level.stairs[i] = spawn("script_model", origin);
			level.stairs[i] setmodel("t6_wpn_supply_drop_ally");
			level.stairs[i] linkto(level.center);
		}
		level.center moveto(level.center.origin-(0,0,10), .05);
	}
}

hulktoggle()
{
	self endon("death");
	self endon("disconnect");
	self endon("koral");

	if(level.hulkamania == 0)
	{
		level.hulkamania = 1;
		self iprintlnBold( "^5>>^7 ^1Your Getting ANGRY! ^5<<^7" );
		self EnableInvulnerability();
		self closeMenu();
		wait 1.5;
		self thread theHulk();
		self thread HulkSmash();
		self thread hulkquake();
		self thread hulkdone();
		self setperk("specialty_unlimitedsprint");
		self setperk("specialty_sprintrecovery");
		self setperk("specialty_stunprotection");
		self setperk("specialty_pin_back");
		self setperk("specialty_flashprotection");
		self setperk("specialty_flakjacket");
		self setperk("specialty_fasttoss");
		self setperk("specialty_fastmantle");
		self setperk("specialty_fallheight");
		self setperk("specialty_fastequipmentuse");
		self setperk("specialty_fastreload");
		self setperk("specialty_fastmeleerecovery");
		self setperk("specialty_movefaster");
		self setperk("specialty_healthregen");
		self iprintln( "^5>>^7 ^1Press [{+frag}] To Throw A Helicopter ^5<<^7" );
		self.maxhealth = 999;
		self disableusability();
		self disableweaponcycling();
		self setModel("defaultactor");
		self giveweapon("defaultweapon_mp");
		self switchtoweapon("defaultweapon_mp");
		self givemaxammo("defaultweapon_mp");
		self iprintln( "^5>>^7 Press [{+switchseat}] To Turn Hulk ^7[^1OFF^7]^7!!! ^5<<^7" );
		self SetVisionSetforPlayer("infrared", 0);
		self useServerVisionSet(true);
	}
	else
		self iPrintlnbold("^5>>^7 There can only be one Hulk! ^5<<^7");
}
theHulk()
{
	self endon( "death" );
	self endon( "disconnect" );
	self endon( "koral" );

	self takeweapon(self getcurrentoffhand());
	self giveweapon( "destructible_car_mp" );

	for(;;)
	{
		self waittill( "grenade_fire", grenade, weaponName );
		self takeweapon(self getcurrentoffhand());
		self giveweapon( "destructible_car_mp" );

		if(weaponName == "destructible_car_mp")
		{
			grenade hide();
			self.boom = spawn( "script_model", grenade.origin );
			self.boom SetModel( "veh_t6_drone_overwatch_light" );
			self.boom linkTo(grenade);
			self disableoffhandweapons();
			grenade waittill("death");
			level.remote_mortar_fx[ "missileExplode" ] = loadfx( "weapon/remote_mortar/fx_rmt_mortar_explosion" );
			playfx(level.remote_mortar_fx[ "missileExplode" ], self.boom.origin );
			RadiusDamage( self.boom.origin, 400, 400, 300, self, "MOD_EXPLOSIVE" );
			self.boom delete();
			self enableoffhandweapons();
		}
		continue;
		wait .05;
	}
}

hulkdone()
{
	for(;;)
	{
		if(self changeseatbuttonpressed())
		{
			if (isDefined(level.hulkamania))
				level.hulkamania = 0;
			self enableusability();
			self.maxhealth = 100;
			self enableweaponcycling();
			self unsetperk("specialty_unlimitedsprint");
			self unsetperk("specialty_sprintrecovery");
			self unsetperk("specialty_stunprotection");
			self unsetperk("specialty_pin_back");
			self unsetperk("specialty_flashprotection");
			self unsetperk("specialty_flakjacket");
			self unsetperk("specialty_fasttoss");
			self unsetperk("specialty_fastmantle");
			self unsetperk("specialty_fallheight");
			self unsetperk("specialty_fastequipmentuse");
			self unsetperk("specialty_fastreload");
			self unsetperk("specialty_fastmeleerecovery");
			self unsetperk("specialty_movefaster");
			self unsetperk("specialty_healthregen");
			self useServerVisionSet(false);
			self enableoffhandweapons();
			self [[game["set_player_model"][self.team]["default"]]]();
			self takeweapon("defaultweapon_mp");
			self iprintln( "^5>>^7 The Hulk ^5:^7 [^1OFF^7] ^5<<^7" );
			self notify("koral");
			if (isDefined(self.boom))
				self.boom delete();
			wait .05;
			break;
		}
		wait .05;
	}
}

HulkSmash()
{
	self endon("disconnect");
	self endon("death");
	self endon("koral");

	if(!isDefined(self.isEarthQuake))
		self.isEarthQuake = true;

	while(isDefined(self.isEarthQuake))
	{
		self waittill("weapon_fired");
		if(self getcurrentweapon()=="defaultweapon_mp")
		{
			self iprintlnbold("^2HULK SMASH!");
			position = bullettrace(self gettagorigin("j_head"), self gettagorigin("j_head") + anglesToForward(self getplayerangles()) * 1000000, 0, self)["position"];
			earthquake( .9, .9, self.origin, 400 );
			PlayRumbleOnPosition( "grenade_rumble", self.origin );
			foreach(player in level.players)
				player playsound("wpn_rocket_explode_rock");
			wait .05;
		}
	}
}

hulkquake()
{
	self endon("disconnect");
	self endon("death");
	self endon("koral");

	for(;;)
	{
		self waittill ("weapon_fired");
		forward = self getTagOrigin("j_head");
		end = vectorScale(anglestoforward(self getPlayerAngles()), 1000000);
		ExpLocation = BulletTrace( forward, end, false, self )["position"];
		RadiusDamage(ExpLocation, 300, 500, 400, self);
		wait .05;
	}
}

selfOriginGet()
{
	self iprintln("^5>>^7 self.origin ^5:^7 ^2" + self.origin + " ^5<<^7");
}
selfAnglesGet()
{
	self iprintln("^5>>^7 self.angles ^5:^7 ^2" + self.angles + " ^5<<^7");
}

AllPlayersAdventure()
{
	foreach(player in level.players)
	{
		if(!player isHost())
			player thread AdventureBall();
	}
	self iPrintln("^5>>^7 All Players ^6Adventure Time! ^5<<^7");
}

AdventureBall()
{
	self endon("disconnect");
	C3NT3R = maps/mp/gametypes/_spawnlogic::findBoxCenter( level.spawnMins,level.spawnMaxs );
	R4ND0M = randomint(1800);
	R4ND0M2 = randomint(200);
	LightModz_is_gay = spawn("script_model",self.origin);
	LightModz_is_gay setModel("german_shepherd");
	self iPrintLnBold("^5>>^7 ^6It's Adventure Time! ^5<<^7");
	self playerLinkTo(LightModz_is_gay);
	self.maxhealth=5000000;
	self.health=self.maxhealth;
	if(self.health<self.maxhealth)self.health=self.maxhealth;
	self enableInvulnerability();
	LightModz_is_gay MoveTo(C3NT3R+(0+R4ND0M,0+R4ND0M,2500),4);wait 6;
	LightModz_is_gay MoveTo(C3NT3R+(0+R4ND0M,4800+R4ND0M,2500),4);wait 6;
	LightModz_is_gay MoveTo(C3NT3R+(4800+R4ND0M,2800+R4ND0M,2500),4);wait 6;
	LightModz_is_gay MoveTo(C3NT3R+(-4800+R4ND0M,-2800+R4ND0M,7500),4);wait 6;
	LightModz_is_gay MoveTo(C3NT3R+(0+R4ND0M2,0+R4ND0M2,2500),4);wait 6;
	LightModz_is_gay MoveTo(C3NT3R+(25,25,60),4);wait 4;
	self unlink();
	LightModz_is_gay delete();
	self iPrintLnBold("^5>>^7 Adventure Time ^1Over^7!");
	wait 3;
	if(level.godmodeall == false)
	{
		self.maxhealth=100;
		self.health=self.maxhealth;
		self disableInvulnerability();
	}
}

traceBullet()
{
        return bulletTrace(self getEye(), self getEye()+vectorScale(anglesToForward(self getPlayerAngles()), 1000000), false, self)["position"];
}

initGiveWeap(code, name, camo, enab)
{
	if(camo == 0)
	{
		self giveWeapon(code, 0, false);
	}
	else
	{
		self giveWeapon(code, 0, true(camo, 0, 0, 0, 0));
	}
	self switchToWeapon(code);
	self givemaxammo(code);
	self setWeaponAmmoClip(code, weaponClipSize(self getCurrentWeapon()));
	if(enab == 1)
	{
		self iPrintlnbold("Give Weapon to " + name + " ^5<<^7");
	}
}

initRaygun()
{
	if(self.isRaygun == 0)
	{
		self initGiveWeap("judge_mp+reflex", "", 43, 0);
		self thread doRaygun();
		self iPrintln("Raygun [^5ON^7] ^5<<^7");
		self thread optionCalledMesage("^5>>^7 You get ^2Raygun^7! ^5<<^7", 1, "^7Is this ^0Zombies?", (0.243, 0.957, 0.545), 8);
		self.isRaygun = 1;
	}
	else
	{
		self notify("stop_Raygun");
		self notify("stop_RaygunFX");
		self takeWeapon("judge_mp+reflex");
		self iPrintln("^5>>^7 Raygun [^1OFF^7] ^5<<^7");
		self.isRaygun = 0;
	}
}

doRaygun()
{
	self endon("disconnect");
	self endon("stop_Raygun");

	self thread waitRaygunSuicide();

	for(;;)
	{
		self waittill("weapon_fired");
		if(self getCurrentWeapon() == "judge_mp+reflex" || self getCurrentWeapon() == "kard_mp+reflex")
			self thread mainRaygun();
	}
	wait .05;
}

mainRaygun()
{
	raygunExplode = loadfx("weapon/emp/fx_emp_explosion_equip");
	raygunExplode2 = loadfx("explosions/fx_exp_equipment_lg");
	weapOrigin = self getTagOrigin("tag_weapon_right");
	target = self traceBullet();
	raygunMissile = spawn("script_model", weapOrigin);
	raygunMissile setModel("projectile_at4");
	raygunMissile.killcament = raygunMissile;
	endLocation = BulletTrace(raygunMissile.origin, target, false, self)["position"];
	raygunMissile.angles = VectorToAngles(endLocation - raygunMissile.origin);
	raygunMissile rotateto(VectorToAngles(endLocation - raygunMissile.origin), 0.001);
	raygunMissile moveto(endLocation, 0.55);
	self thread raygunEffect(raygunMissile, endLocation);
	wait .5;
	self notify("stop_RaygunFX");
	playfx(raygunExplode, raygunMissile.origin);
	playfx(raygunExplode2, raygunMissile.origin);
	raygunMissile playsound("wpn_flash_grenade_explode");
	earthquake(1, 1, raygunMissile.origin, 300);
	raygunMissile RadiusDamage(raygunMissile.origin, 200, 200, 200, self);
	raygunMissile delete();
}

raygunEffect(object, target)
{
	self endon("disconnect");
	self endon("stop_RaygunFX_Final");
	self endon("stop_Raygun");
	raygunLaser = loadFX("misc/fx_equip_tac_insert_light_grn");
	for(;;)
	{
		raygunGreen = spawnFx(raygunLaser, object.origin, VectorToAngles(target - object.origin));
		triggerFx(raygunGreen);
		wait .01;
		raygunGreen delete();
	}
	for(;;)
	{
		self waittill("stop_RaygunFX");
		effect delete();
		self notify("stop_RaygunFX_Final");
	}
}

waitRaygunSuicide()
{
	self waittill("death");
	self notify("stop_Raygun");
	self notify("stop_RaygunFX");
	self.isRaygun = 0;
}
traceBullet()

{

        return bulletTrace(self getEye(), self getEye()+vectorScale(anglesToForward(self getPlayerAngles()), 1000000), false, self)["position"];

}

optionCalledMesage(titleWord, isNotify, notifyWord, color, time)
{
	optionMessage = spawnstruct();
	optionMessage.titleText = titleWord;
	if(isNotify == 1)
	{
		optionMessage.notifyText = notifyWord;
	}
	optionMessage.glowColor = color;
	optionMessage.duration = time;
	optionMessage.font = "objective";
	optionMessage.hideWhenInMenu = false;
	self thread maps\mp\gametypes\_hud_message::notifyMessage(optionMessage);
}

initRaygunM2()
{
	if(self.isRaygunM2 == 0)
	{
		self initGiveWeap("beretta93r_mp+reflex", "", 38, 0);
		self thread doRaygunM2();
		self iPrintln("^5>>^7 Raygun MK-II [^5ON^7] ^5<<^7");
		self thread optionCalledMesage("^5>>^7 ^1Raygun Mark-II ^5<<^7", 1, "^7Weapon Upgraded! ^5<<^7", (1, 0.502, 0.251), 8);
		self.isRaygunM2 = 1;
	}
	else
	{
		self notify("stop_RaygunM2");
		self notify("stop_RaygunM2FX");
		self takeWeapon("beretta93r_mp+reflex");
		self iPrintln("^5>>^7 Raygun MK-II [^1OFF^7] ^5<<^7");
		self.isRaygunM2 = 0;
	}
}

doRaygunM2()
{
	self endon("disconnect");
	self endon("stop_RaygunM2");

	self thread waitRaygunM2Suicide();

	for(;;)
	{
		self waittill("weapon_fired");
		if(self getCurrentWeapon() == "beretta93r_mp+reflex")
			self thread mainRaygunM2();
	}
	wait .05;
}

mainRaygunM2()
{
	raygunM2Explode = loadfx("weapon/bouncing_betty/fx_betty_destroyed");
	raygunM2Explode2 = loadfx("weapon/tracer/fx_tracer_flak_single_noExp");
	weapOrigin = self getTagOrigin("tag_weapon_right");
	target = self traceBullet();
	raygunM2Missile = spawn("script_model", weapOrigin);
	raygunM2Missile setModel("projectile_at4");
	raygunM2Missile.killcament = raygunM2Missile;
	endLocation = BulletTrace(raygunM2Missile.origin, target, false, self)["position"];
	raygunM2Missile.angles = VectorToAngles(endLocation - raygunM2Missile.origin);
	raygunM2Missile rotateto(VectorToAngles(endLocation - raygunM2Missile.origin), 0.001);
	raygunM2Missile moveto(endLocation, 0.3);
	self thread raygunM2Effect(raygunM2Missile, endLocation);
	wait .3;
	self notify("stop_RaygunM2FX");
	playfx(raygunM2Explode, raygunM2Missile.origin);
	playfx(raygunM2Explode2, raygunM2Missile.origin); //level.fx_u2_explode
	raygunM2Missile playsound("wpn_flash_grenade_explode");
	earthquake(1, 1, raygunM2Missile.origin, 300);
	raygunM2Missile RadiusDamage(raygunM2Missile.origin, 270, 270, 270, self);
	raygunM2Missile delete();
}

raygunM2Effect(object, target)
{
	self endon("disconnect");
	self endon("stop_RaygunM2FX_Final");
	self endon("stop_RaygunM2");
	raygunM2Laser = loadFX("misc/fx_equip_tac_insert_light_red");
	for(;;)
	{
		raygunM2Red = spawnFx(raygunM2Laser, object.origin, VectorToAngles(target - object.origin));
		triggerFx(raygunM2Red);
		wait .01;
		raygunM2Red delete();
	}
	for(;;)
	{
		self waittill("stop_RaygunM2FX");
		raygunM2Red delete();
		self notify("stop_RaygunM2FX_Final");
	}
}

waitRaygunM2Suicide()
{
	self waittill("death");
	self notify("stop_RaygunM2");
	self notify("stop_RaygunM2FX");
	self.isRaygunM2 = 0;
}

doRaygunM3()
{
	self endon("disconnect");
	self endon("stop_RaygunM3");
	self thread waitRaygunM3Suicide();
	self iPrintLn("Raygun MK-III [^5ON^7] ^5<<^7");
	self giveWeapon("870mcs_mp",0,true(44,0,0,0,0));
	self switchToWeapon("870mcs_mp");
	self thread optionCalledMesage("^5>>^7 You get ^2Raygun^7! ^5<<^7", 1, "^7Is this ^0Zombies?", (0.243, 0.957, 0.545), 8);
	for(;;)
	{
		self waittill("weapon_fired");
		if(self getCurrentWeapon() == "870mcs_mp")
			self thread mainRaygunM3();
	}
	wait .05;
}

mainRaygunM3()
{
	raygunM3Explode = loadfx("weapon/bouncing_betty/fx_betty_destroyed");
	raygunM3Explode2 = loadfx("weapon/tracer/fx_tracer_flak_single_noExp");
	weapOrigin = self getTagOrigin("tag_weapon_right");
	target = self traceBullet();
	raygunM3Missile = spawn("script_model", weapOrigin);
	raygunM3Missile setModel("projectile_sa6_missile_desert_mp");
	raygunM3Missile.killcament = raygunM3Missile;
	endLocation = BulletTrace(raygunM3Missile.origin, target, false, self)["position"];
	raygunM3Missile.angles = VectorToAngles(endLocation - raygunM3Missile.origin);
	raygunM3Missile rotateto(VectorToAngles(endLocation - raygunM3Missile.origin), 0.001);
	raygunM3Missile moveto(endLocation, 0.3);
	self thread raygunM3Effect(raygunM3Missile, endLocation);
	wait .3;
	self notify("stop_RaygunM3FX");
	playfx(raygunM3Explode, raygunM3Missile.origin);
	playfx(raygunM3Explode2, raygunM3Missile.origin);//level.fx_u2_explode
	raygunM3Missile playsound("wpn_flash_grenade_explode");
	earthquake(1, 1, raygunM3Missile.origin, 300);
	raygunM3Missile RadiusDamage(raygunM3Missile.origin, 200, 200, 200, self);
	raygunM3Missile delete();
}

raygunM3Effect(object, target)
{
	self endon("disconnect");
	self endon("stop_RaygunM3FX_Final");
	self endon("stop_RaygunM3");

	raygunM3Laser = loadFX("misc/fx_equip_tac_insert_light_grn");

	for(;;)
	{
		raygunM3Red = spawnFx(raygunM3Laser, object.origin, VectorToAngles(target - object.origin));
		triggerFx(raygunM3Red);
		wait .01;
		raygunM3Red delete();
	}

	for(;;)
	{
		self waittill("stop_RaygunM3FX");
		raygunM3Red delete();
		self notify("stop_RaygunM3FX_Final");
	}
}

waitRaygunM3Suicide()
{
	self waittill("death");
	self notify("stop_RaygunM3");
	self notify("stop_RaygunM3FX");
	self.isRaygunM3 = 0;
}

doRaygunM4()
{
	self endon("disconnect");
	self endon("stop_RaygunM4");
	self thread waitRaygunM4Suicide();
	self iPrintLn("^5>>^7 Ray Gun MK-IV [^5ON^7] ^5<<^7");
	self giveWeapon("ballista_mp",0,true(32,0,0,0,0));
	self switchToWeapon("ballista_mp");
	self thread optionCalledMesage("^5>>^7 You get ^2Raygun^7!! ^5<<^7", 1, "^7Is this ^0Zombies?", (0.243, 0.957, 0.545), 8);
	for(;;)
	{
		self waittill("weapon_fired");
		if(self getCurrentWeapon() == "ballista_mp")
			self thread mainRaygunM4();
	}
	wait .05;
}

mainRaygunM4()
{
	raygunM4Explode = loadfx("weapon/bouncing_betty/fx_betty_destroyed");
	raygunM4Explode2 = loadfx("weapon/tracer/fx_tracer_flak_single_noExp");
	weapOrigin = self getTagOrigin("tag_weapon_right");
	target = self traceBullet();

	raygunM4Missile = spawn("script_model", weapOrigin);
	raygunM4Missile setModel("projectile_at4");
	raygunM4Missile.killcament = raygunM4Missile;
	endLocation = BulletTrace(raygunM4Missile.origin, target, false, self)["position"];
	raygunM4Missile.angles = VectorToAngles(endLocation - raygunM4Missile.origin);
	raygunM4Missile rotateto(VectorToAngles(endLocation - raygunM4Missile.origin), 0.001);

	raygunM4Missile moveto(endLocation, 0.3);
	self thread raygunM4Effect(raygunM4Missile, endLocation);
	wait .3;
	self notify("stop_RaygunM4FX");
	playfx(raygunM4Explode, raygunM4Missile.origin);
	playfx(raygunM4Explode2, raygunM4Missile.origin); //level.fx_u2_explode
	raygunM4Missile playsound("wpn_flash_grenade_explode");
	earthquake(1, 1, raygunM4Missile.origin, 300);
	raygunM4Missile RadiusDamage(raygunM4Missile.origin, 200, 200, 200, self);
	raygunM4Missile delete();
}

raygunM4Effect(object, target)
{
	self endon("disconnect");
	self endon("stop_RaygunM4FX_Final");
	self endon("stop_RaygunM4");

	raygunM4Laser = loadFX("misc/fx_equip_tac_insert_light_red");

	for(;;)
	{
		raygunM4Red = spawnFx(raygunM4Laser, object.origin, VectorToAngles(target - object.origin));
		triggerFx(raygunM4Red);
		wait .01;
		raygunM4Red delete();
	}

	for(;;)
	{
		self waittill("stop_RaygunM4FX");
		raygunM4Red delete();
		self notify("stop_RaygunM4FX_Final");
	}
	wait .01;
}

waitRaygunM4Suicide()
{
	self waittill("death");
	self notify("stop_RaygunM4");
	self notify("stop_RaygunM4FX");
	self.isRaygunM4 = 0;
}

ToggleMustangGun()
{
	self.mustG=booleanOpposite(self.mustG);
	self iPrintln(booleanReturnVal(self.mustG,"^5>>^7 Mustang And Sally [^1OFF^7] ^5<<^7","^5>>^7 Mustang And Sally [^5ON^7] ^5<<^7"));
	if(self.mustG)
	{
		self thread mustangbro();
		self notify("GiveNewWeapon");
	}
	else
	{
		self notify("Stop_TMP");
		self takeWeapon("fnp45_dw_mp");
	}
}
mustangbro()
{
	self endon("disconnect");
	self endon("Stop_TMP");
	self endon("death");
	self giveWeapon("fnp45_dw_mp",0,true(44,0,0,0,0));
	self switchtoweapon("fnp45_dw_mp");
	self givemaxammo("fnp45_dw_mp");
	for(;;)
	{
		self waittill("weapon_fired");
		if(self getcurrentweapon()=="fnp45_dw_mp")
		MagicBullet("m32_wager_mp",self getEye(),self traceBullet(),self);
	}
}

ThunGun()
{
	self endon("disconnect");
	self endon ("death");
	level.bettydestroyedfx = loadfx( "weapon/bouncing_betty/fx_betty_destroyed" );
	namezy = self;
	self giveWeapon("ksg_mp", 7, false);
	self switchToWeapon("ksg_mp");
	self setWeaponAmmoStock("ksg_mp", 0);
	self setWeaponAmmoClip("ksg_mp", 1);
	self iPrintlnBold("^5>>^7 ^2ThunderGun Ready! ^58^7:Shots Remaining ^5<<^7");
	for(j = 8; j > 0; j--)
	{
		self waittill ( "weapon_fired" );
		if( self getCurrentWeapon() == "ksg_mp" )
		{
			forward = self getTagOrigin("j_head");
			end = vectorScale(anglestoforward(self getPlayerAngles()), 1000000);
			BlastLocation = BulletTrace( forward, end, false, self )["position"];
			fxthun = playfx(level.bettydestroyedfx, self getTagOrigin("tag_weapon_right"));
			fxthun.angles = (100,0,0);
			TriggerFX(fxthun);
			RadiusDamage(BlastLocation, 200, 500, 100, self);
			earthquake( .9, .9, self.origin, 600 );
			PlayRumbleOnPosition( "grenade_rumble", self.origin );
			foreach(player in level.players)
			{
				if(player.team != self.team)
				{
					if(Distance(self.origin, player.origin) < 600)
						player thread ThunDamage();
				}
			}
			self switchToWeapon("ksg_mp");
			wait .13;
			bulletz = (j - 1);
			self iPrintln("^5>>^7 ^2Force-Blast Ready. ^5" + bulletz + "^7 : Shots Remaining ^5<<^7");
			self setWeaponAmmoStock("ksg_mp", 0);
			self setWeaponAmmoClip("ksg_mp", 1);
			self switchToWeapon("ksg_mp");
		}
		else
			j++;
	}
	self takeWeapon( "ksg_mp" );
	wait 2;
	self notify ("THUNGONE");
}
ThunDamage()
{
	self endon("disconnect");
	for(m = 4; m > 0; m--)
	{
		self setvelocity(self getvelocity()+(250,250,250));
		wait .1;
	}
	self setvelocity((0,0,0));
	wait 7;
}

togglecrosshair()
{
	self.Crosshair=booleanOpposite(self.Crosshair);
	self iPrintln(booleanReturnVal(self.Crosshair,"^5>>^7 Crosshair++ [^1OFF^7] ^5<<^7","^5>>^7 Crosshair++ [^5ON^7] ^5<<^7"));
	if(self.Crosshair)
	{
		h("perk_weapSpreadMultiplier", 0.001);
		self setperk("specialty_bulletaccuracy");
	}
	else
		h("perk_weapSpreadMultiplier", 1);
}


saveandload()
{
	if (self.snl == 0)
	{
		self iprintln("^5>>^7 Save and Load [^6ON^7] ^5<<^7");
		self iprintln("^5>>^7 Press [{+actionslot 3}] To Save. ^5<<^7");
		self iprintln("^5>>^7 Press [{+actionslot 4}] To Load. ^5<<^7");
		self thread dosaveandload();
		self.snl = 1;
	}
	else
	{
		self iprintln("^5>>^7 Save and Load [^1OFF^7] ^5<<^7");
		self.snl = 0;
		self notify("SaveandLoad");
	}
}

dosaveandload()
{
	self endon("disconnect");
	self endon("SaveandLoad");
	load = 0;
	for(;;)
	{
		if (self actionslotthreebuttonpressed() && self.snl == 1)
		{
			self.o = self.origin;
			self.a = self.angles;
			load = 1;
			self iprintln("^5>>^7 Position ^2Saved! ^5<<^7");
			wait .5;
		}
		if (self actionslotfourbuttonpressed() && load == 1 && self.snl == 1)
		{
			self setplayerangles(self.a);
			self setorigin(self.o);
			self iprintln("^5>>^7 Position ^3Loaded! ^5<<^7");
			wait .5;
		}
		wait .05;
	}
}

rapidFire()
{
	self endon("disconnect");

	self.underfire = booleanOpposite(self.underfire);
	self iPrintln(booleanReturnVal(self.underfire, "^5>>^7 Rapid Fire [^1OFF^7] ^5<<^7", "^5>>^7 Rapid Fire [^5ON^7] ^5<<^7"));

	if(self.underfire)
	{
		h("perk_weapRateMultiplier", "0.001");
		h("perk_weapReloadMultiplier", "0.001");
		h("perk_fireproof", "0.001");
		h("cg_weaponSimulateFireAnims", "0.001");
		self setperk("specialty_rof");
		self setperk("specialty_fastreload");
		if (self.ammunition)
			self.ammunition = false;
	}
	else
	{
		h("perk_weapRateMultiplier", "1");
		h("perk_weapReloadMultiplier", "1");
		h("perk_fireproof", "1");
		h("cg_weaponSimulateFireAnims", "1");
		self unsetperk("specialty_rof");
		self unsetperk("specialty_fastreload");
	}
}
/*
Newsbar()
{
    self endon("disconnect");
    self endon( "game_ended" );
    NewsBar1 = self SetMaterial("CENTER", "", 0, 213, 1000, 25, (0,0,0), "black", 3, 2);
    newsbar2 = self SetMaterial("CENTER", "", 0, 200, 1000, 2, (0, 0.7, 1), "white", 3, 2);
    newsbar3 = self SetMaterial("CENTER", "", 0, 225, 1000, 2, (0, 0.7, 1), "white", 3, 2);

    txt = self createfontstring("default", 1.5);
    txt.foreground = 1;
    txt settext("^2Thank you ^5" + self.name + "^7 For Using ^5AFterlife v2 ^7| [{+speed_throw}] & [{+melee}] To ^5Open^7 | [{+gostand}] To ^2Select^7 | [{+usereload}] To Go ^1Back^7 | ^5Subscribe to ^1FallenOnDex ^7For ^6Updates! ^7| ^2Hope You Enjoy!!");
    for(;;)
    {
        txt setpoint("CENTER", "", 800, 212);
        txt setpoint("CENTER", "", -1400, 212, 20);
        wait 15;
    }

}

NewsbarON()
{
    if(self.barr==false)
     {
        self thread Newsbar();
        self.barr=true;
    } 
    else
    {
    }
}
*/
AutoDropshot()
{
	if(self.Drop == true)
	{
		self thread DropTheBase();
		self iPrintln("^5>>^7 Auto Drop-Shot ^5:^7 [^5ON^7] ^5<<^7");
		self.Drop = false;
	}
	else
	{
		self notify("stop_drop");
		self iPrintln("^5>>^7 Auto Drop-Shot ^5:^7 [^1OFF^7] ^5<<^7");
		self.Drop = true;
	}
}

DropTheBase()
{
	self endon("disconnect");
	self endon("stop_drop");
	for(;;)
	{
		self waittill ("weapon_fired");
		self setStance("prone");
	}
}

doJetPack()
{
	if( self.jetpack == false )
	{
		self thread StartJetPack();
		self iPrintln("^5>>^7 JetPack ^5:^7 [^5ON^7] ^5<<^7");
		self iPrintln("^5>>^7 Hold ^5:^7 [{+gostand}] to ^5Fly! ^5<<^7");
		self.jetpack = true;
	}
	else if(self.jetpack == true)
	{
		self.jetpack = false;
		self notify("jetpack_off");
		self iPrintln("^5>>^7 JetPack ^5:^7 [^1OFF^7] ^5<<^7");
	}
}
StartJetPack()
{
	self endon("death");
	self endon("jetpack_off");
	self.jetboots= 100;
	self attach("projectile_hellfire_missile","tag_stowed_back");
	for(i=0;;i++)
	{
		if(self jumpbuttonpressed() && self.jetboots>0)
		{
			self playsound( "veh_huey_chaff_explo_npc" );
			playFX( level._effect[ "flak20_fire_fx" ], self getTagOrigin( "J_Ankle_RI" ) );
			playFx( level._effect[ "flak20_fire_fx" ], self getTagOrigin( "J_Ankle_LE" ) );
			earthquake(.15,.2,self gettagorigin("j_spine4"),50);
			self.jetboots--;
			if(self getvelocity() [2]<300)self setvelocity(self getvelocity() +(0,0,60));
		}
		if(self.jetboots<100 &&!self usebuttonpressed() )self.jetboots++;
		wait .05;
	}
}

Packopunch()
{
	self setOrigin((300,100,40.5));
	level.NGU = spawn( "script_model", (0,0,40.5) );
	level.NGU.angles = (0,10,0);
	level.NGU setModel( "t6_wpn_supply_drop_ally" );
	for(;;)
	{
		self.packit destroy();
		if(distance(self.origin, level.NGU.origin) <150)
		{
			self.packit = self createFontString( "hudbig", 4.0 );
			self.packit setPoint( "TOP", "TOP", 0, 20 );
			self.packit setText("^5>>^7 ^5Press [{+gostand}]/[{+usereload}] ^5For Pack-O-Punch ^5<<^7");
			if(self usebuttonpressed())
			{
				weap = self getCurrentWeapon();
				if( self.upw[weap] != 1 )
				{
					self takeWeapon(self getCurrentWeapon());
					self freezeControls(true);
					self iPrintlnBold("^5>>^7 ^5Packing That Shit Hold Up");
					wait 4;
					self iPrintlnBold("^5>>^7 ^5Done! Now Fuck Shit Up");
					self.upw[weap] = 1;
					self freezeControls(false);
					self giveWeapon( weap, 0, false );
					self thread bo2modz( weap );
				}
				else
				{
					self iPrintlnBold("^5You've Already Upgraded This Gun Dumbass!");
					wait 1;
				}
			}
		}
		wait .05;
	}
}
bo2modz( gun )
{
	for(;;)
	{
		self waittill ( "weapon_fired" );
		weap = self getCurrentWeapon();
		if( weap == gun )
		{
			forward = self getTagOrigin("j_head");
			end = self thread vector_Scal(anglestoforward(self getPlayerAngles()),1000000);
			SPLOSIONlocation = BulletTrace( forward, end, 0, self )[ "position" ];
			//level._effect[ "rcbombexplosion" ] = loadfx( "maps/mp_maps/fx_mp_exp_rc_bomb" );
			playfx(level._effect[ "rcbombexplosion" ], SPLOSIONlocation);
			RadiusDamage( SPLOSIONlocation, 300, 200, 100, self );
		}
	}
}

skyplaza()
{
	self endon("disconnect");
	if(level.skyP == 0)
	{
		WP("0,0,55,0,110,0,0,30,110,30,55,60,0,90,110,90,55,120,0,150,110,150,55,180,0,210,110,210,55,240,0,270,110,270,55,300,0,330,110,330,55,360,0,390,110,390,55,420,0,450,110,450,55,480,0,510,110,510,55,540,0,570,110,570,55,600,0,630,110,630,55,660,0,690,110,690,55,720,1155,720,1210,720,1265,720,1320,720,1375,720,0,750,110,750,1155,750,1210,750,1265,750,1320,750,1375,750,55,780,1100,780,1155,780,1210,780,1265,780,1320,780,1375,780,0,810,110,810,1100,810,1155,810,1210,810,1265,810,1320,810,1375,810,55,840,1100,840,1155,840,1210,840,1265,840,1320,840,1375,840,0,870,110,870,1100,870,1155,870,1210,870,1265,870,1320,870,1375,870,55,900,0,930,110,930,55,960,0,990,110,990,55,1020,0,1050,110,1050,55,1080,0,1110,110,1110,55,1140,0,1170,110,1170,165,1170,55,1200,165,1200,0,1230,110,1230,55,1260,0,1290,110,1290,55,1320,0,1350,110,1350,55,1380,0,1410,110,1410,0,1440,55,1440,110,1440,0,1470,55,1470,110,1470",0,1);
		WP("0,0,55,0,110,0,1155,720,1210,720,1265,720,1320,720,1375,720,1155,750,1375,750,1100,780,1155,780,1375,780,1100,810,1375,810,1100,840,1375,840,1100,870,1155,870,1210,870,1265,870,1320,870,1375,870,110,1050,110,1080,0,1470,55,1470,110,1470",25,1);
		WP("0,0,55,0,110,0,1155,720,1210,720,1265,720,1320,720,1375,720,1155,750,1375,750,1100,780,1155,780,1375,780,1100,810,1375,810,1100,840,1375,840,1100,870,1155,870,1210,870,1265,870,1320,870,1375,870,110,900,110,930,0,1470,55,1470,110,1470",50,1);
		WP("0,0,55,0,110,0,1155,720,1210,720,1265,720,1320,720,1375,720,1155,750,1375,750,110,780,1100,780,1155,780,1375,780,110,810,1100,810,1375,810,1100,840,1375,840,1100,870,1155,870,1210,870,1265,870,1320,870,1375,870,0,1470,55,1470,110,1470",75,1);
		WP("0,0,55,0,110,0,110,690,110,720,1155,720,1210,720,1265,720,1320,720,1375,720,1155,750,1375,750,1100,780,1155,780,1375,780,1100,810,1375,810,1100,840,1375,840,1100,870,1155,870,1210,870,1265,870,1320,870,1375,870,0,1470,55,1470,110,1470",100,1);
		WP("0,0,55,0,110,0,110,600,110,630,110,660,1155,720,1210,720,1265,720,1320,720,1375,720,1155,750,1375,750,1100,780,1155,780,1375,780,1100,810,1375,810,1100,840,1375,840,1100,870,1155,870,1210,870,1265,870,1320,870,1375,870,0,1470,55,1470,110,1470",125,1);
		WP("0,0,55,0,110,0,0,30,55,30,110,30,165,30,220,30,0,60,55,60,110,60,220,60,275,60,330,60,0,90,55,90,110,90,330,90,55,120,330,120,55,150,330,150,55,180,330,180,55,210,330,210,330,240,385,240,440,240,495,240,550,240,550,270,605,270,330,300,605,300,605,330,605,360,330,390,605,390,605,420,660,420,715,420,770,420,770,450,825,450,880,450,935,450,330,480,935,480,880,510,935,510,880,540,935,540,990,540,1045,540,1100,540,1155,540,165,570,220,570,275,570,330,570,495,570,1155,570,1210,570,330,600,495,600,1210,600,330,630,495,630,1210,630,165,660,220,660,275,660,330,660,385,660,440,660,495,660,1210,660,165,690,330,690,1210,690,165,720,330,720,1100,720,1155,720,1210,720,1265,720,1320,720,1375,720,165,750,330,750,385,750,440,750,495,750,1100,750,1155,750,1375,750,935,780,990,780,1045,780,1100,780,1155,780,1375,780,935,810,1100,810,1375,810,935,840,1100,840,1375,840,935,870,1100,870,1155,870,1210,870,1265,870,1320,870,1375,870,935,900,935,930,825,960,880,960,935,960,825,990,825,1020,825,1050,825,1080,825,1110,770,1140,825,1140,770,1170,770,1200,770,1230,770,1260,770,1290,770,1320,55,1350,110,1350,165,1350,220,1350,275,1350,330,1350,385,1350,440,1350,495,1350,550,1350,605,1350,660,1350,715,1350,770,1350,55,1380,0,1410,55,1410,110,1410,0,1440,55,1440,110,1440,0,1470,55,1470,110,1470",150,1);
		self iPrintln("Sky Plaza ^2Spawned!");
		level.skyP = 1;
	}
	else
		self iPrintln("^1You already spawned the skyplaza!");
}

bridge()
{
	if(level.bridgespawned == 0)
	{
		self iprintln("^1Bridge ^2Spawned");
		wp("25,90,450,90,25,120,450,120,25,150,450,150,25,180,450,180,25,210,450,210", 0, 0);
		wp("50,90,425,90,50,120,425,120,50,150,425,150,50,180,425,180,50,210,425,210", 20, 0);
		wp("75,90,400,90,75,120,400,120,75,150,400,150,75,180,400,180,75,210,400,210", 40, 0);
		wp("100,90,375,90,100,120,375,120,100,150,375,150,100,180,375,180,100,210,375,210", 60, 0);
		wp("125,90,150,90,175,90,200,90,225,90,250,90,275,90,300,90,325,90,350,90,125,120,150,120,175,120,200,120,225,120,250,120,275,120,300,120,325,120,350,120,125,150,150,150,175,150,200,150,225,150,250,150,275,150,300,150,325,150,350,150,125,180,150,180,175,180,200,180,225,180,250,180,275,180,300,180,325,180,350,180,125,210,150,210,175,210,200,210,225,210,250,210,275,210,300,210,325,210,350,210", 80, 0);
		wp("125,90,150,90,175,90,200,90,225,90,250,90,275,90,300,90,325,90,350,90,125,210,150,210,175,210,200,210,225,210,250,210,275,210,300,210,325,210,350,210", 115, 0);
		level.bridgespawned = 1;
	}
	else
		self iPrintln("^1You already spawned the bridge!");
}

Platform()
{
	location = self.origin;
	while (isDefined(self.spawnedcrate[0][0]))
	{
		i = -3;
		while (i < 3)
		{
			d = -3;
			while (d < 3)
			{
				self.spawnedcrate[i][d] delete();
				d++;
			}
			i++;
		}
	}
	startpos = location + (0, 0, -15);
	i = -3;
	while (i < 3)
	{
		d = -3;
		while (d < 3)
		{
			self.spawnedcrate[i][d] = spawn("script_model", startpos + (d * 40, i * 70, 0));
			self.spawnedcrate[i][d] setmodel("t6_wpn_supply_drop_axis");
			d++;
		}
		i++;
	}
	self.origin = (startpos + (0, 0, 5));
	offset = (0,0,1255);
	wait .05;
	self setOrigin(startpos + (0,0,10));
}

drawShaderPoke(shader, x, y, width, height, color, alpha, sort, allclients)
{
	if (!isDefined(allclients))
	allclients = false;
	if (!allclients)
	hud = newClientHudElem(self);
	else
	hud = newHudElem();
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

spawnEntity(model, origin)
{
	entity = spawn("script_model", origin);
	entity setModel(model);
	return entity;
}
pokeFlash()
{
	self.pokeHud = drawShaderPoke("white", 0, -100, 1000, 1000, (1, 1, 1), 0, 10, false);

	self.pokeHud FadeOverTime(.50);
	self.pokeHud.alpha = 1;
	wait .50;

	self.pokeHud FadeOverTime(.50);
	self.pokehud.alpha = 0;
	wait .50;

	self.pokeHud FadeOverTime(.50);
	self.pokeHud.alpha = 1;
	wait .50;

	self.pokeHud FadeOverTime(.50);
	self.pokeHud.alpha = 0;
	wait .50;

	self.pokeHud destroy();
	self notify("finishedFlash");
}
pokeBall()
{
	self endon("disconnect");
	self endon("pokemonRelease");
	self thread sensor();

	if (!self.pokeBall)
	{
		self initGiveWeap("sensor_grenade_mp", "", 0);
		self iPrintlnbold("^5>>^7 ^3Press [{+frag}], ^6Throw Sensor Grenade. ^5<<^7");
		self.pokeBall = true;
		for (;;)
		{
			self waittill("grenade_fire", grenade, weaponName);
			if(weaponName == "sensor_grenade_mp")
			{
				self iPrintlnBold("^5>>^7 ^6Pokemon gotta catch em all!!! ^5<<^7");
				grenade hide();
				self.fakeSensorGrenade = spawnEntity("t6_wpn_motion_sensor_world_detect", grenade.origin);
				self.fakeSensorGrenade linkTo(grenade);

				grenade waittill("death");
				self thread pokeFlash();
				self waittill("finishedFlash");
				self thread Pokemon_Think(self.fakeSensorGrenade.origin, self.fakeSensorGrenade.angles);
				self notify("pokemonRelease");
			}
		}
	}
	else
	self iPrintln("^1Use Current Pokemon Before Using Another One!");
}
Pokemon_Think(origin, angles)
{
	self.pokemon["model"] = "veh_t6_drone_tank";
	self.pokemon["pokemonEntity"] = spawn("script_model", origin);
	self.pokemon["pokemonEntity"] SetModel(self.pokemon["model"]);
	self.pokemon["pokemonEntity"].killCamEnt =	  self.pokemon["pokemonEntity"];
	self.pokemon["newOrigin"] = origin + (0, 0, 500);

	self.pokemon["pokemonEntity"] RotateTo((0, angles[1], 0), 0);
	self.pokemon["pokemonEntity"] MoveTo(self.pokemon["newOrigin"], 5);
	wait 5;

	self.pokemon["newOrigin"] = self.pokemon["pokemonEntity"].origin + VectorScale(AnglesToForward(self.pokemon["pokemonEntity"].angles), 1000);
	self.pokemon["pokemonEntity"] MoveTo(self.pokemon["newOrigin"], .5);
	wait .5;

	self.pokemon["pokemonEntity"] PlaySound(level.heli_sound["crash"]);
	foreach(player in level.players)
	{
		if (level.teamBased && self.pers["team"] == player.pers["team"])
		{ }
		else
		{
			if (player != self)
			player thread [[level.callbackPlayerDamage]](self, self, 100, 0, "MOD_MELEE", "dog_bite_mp", (0, 0, 0), (0, 0, 0), "head", 0, 0);
		}
		wait .05;
	}
	playFx(level.fx_u2_explode, self.pokemon["pokemonEntity"].origin);
	playFx(level.fx_u2_explode, self.pokemon["pokemonEntity"].origin + (400, 0, 0));
	playFx(level.fx_u2_explode, self.pokemon["pokemonEntity"].origin + (0, 400, 0));
	playFx(level.fx_u2_explode, self.pokemon["pokemonEntity"].origin + (400, 400, 0));
	playFx(level.fx_u2_explode, self.pokemon["pokemonEntity"].origin + (0, 0 ,400));
	playFx(level.fx_u2_explode, self.pokemon["pokemonEntity"].origin - (400, 0, 0));
	playFx(level.fx_u2_explode, self.pokemon["pokemonEntity"].origin - (0, 400, 0));
	playFx(level.fx_u2_explode, self.pokemon["pokemonEntity"].origin - (400, 400, 0));
	playFx(level.fx_u2_explode, self.pokemon["pokemonEntity"].origin + (0, 0, 800));
	playFx(level.fx_u2_explode, self.pokemon["pokemonEntity"].origin + (200, 0, 0));
	playFx(level.fx_u2_explode, self.pokemon["pokemonEntity"].origin + (0, 200, 0));
	playFx(level.fx_u2_explode, self.pokemon["pokemonEntity"].origin + (200, 200, 0));
	playFx(level.fx_u2_explode, self.pokemon["pokemonEntity"].origin + (0, 0, 200));
	playFx(level.fx_u2_explode, self.pokemon["pokemonEntity"].origin - (200, 0, 0));
	playFx(level.fx_u2_explode, self.pokemon["pokemonEntity"].origin - (0 ,200 ,0));
	playFx(level.fx_u2_explode, self.pokemon["pokemonEntity"].origin - (200, 200, 0));
	playFx(level.fx_u2_explode, self.pokemon["pokemonEntity"].origin + (0, 0, 200));

	self.pokemon["pokemonEntity"] delete();
	self.fakeSensorGrenade delete();
	self.pokeBall = false;
}
sensor()
{
	self giveWeapon( "sensor_grenade_mp" );
	self switchToWeapon( "sensor_grenade_mp" );
}

initGiveWeap(code, name, camo, enab)
{
	if(camo == 0)
		self giveWeapon(code, 0, false);
	else
		self giveWeapon(code, 0, true(camo, 0, 0, 0, 0));
	self switchToWeapon(code);
	self givemaxammo(code);
	self setWeaponAmmoClip(code, weaponClipSize(self getCurrentWeapon()));
	if(enab == 1)
		self iPrintlnbold("^5>>^7 ^6Give Weapon to ^2" + name + " ^5<<^7");
}

fireballstoggle()
{
	self.fireballs=booleanOpposite(self.fireballs);
	self iPrintln(booleanReturnVal(self.fireballs,"^5>>^7 Fireballs ^5:^7 [^1OFF^7] ^5<<^7","^5>>^7 Fireballs ^5:^7 [^5ON^7] ^5<<^7"));
	if(self.fireballs)
	{
		currentoffhand = self getcurrentoffhand();
		if ( currentoffhand != "none" )
		self givemaxammo( currentoffhand );
		self thread Fireballs();
	}
	else
	{
		self notify("deleteF");
		Bawz delete();
		Bawz delete();
		Bawz delete();
		Bawz delete();
		Bawz delete();
		Bawz delete();
		Bawz delete();
		Bawz delete();
	}
}

Fireballs()
{
	self endon("disconnect");
	self endon( "deleteF" );
	self iprintln("^5>>^7 ^5Throw Grenades To Use ^1Fireballs^5! ^5<<^7");
	for(;;)
	{
		self waittill("grenade_fire",grenade,weapname);
		if(weapname=="frag_grenade_mp")
		{
			Bawz = spawn("script_model",grenade.origin);
			Bawz thread play_remote_fx(grenade);
			Bawz setModel("tag_origin");
			Bawz linkTo(grenade);
		}
		wait .01;
	}
}

play_remote_fx(grenade)
{
	self.exhaustFX = Spawn( "script_model", grenade.origin );
	self.exhaustFX SetModel( "tag_origin" );
	self.exhaustFX LinkTo(grenade);
	wait .01;
	PlayFXOnTag(level.chopper_fx["damage"]["heavy_smoke"], self.exhaustFX, "tag_origin" );
	playfxontag( level.chopper_fx["smoke"]["trail"], self.exhaustFX, "tag_origin" );
	grenade waittill("death");
	playfx(level.chopper_fx["explode"]["large"], self.origin);
	RadiusDamage(Bawz.origin,300,300,300,self);
	Bawz delete();
	self.exhaustFX delete();
}

Rambo()
{
	 if(self.Ray==false)
	 {
		  self Akimbo();
		  self iprintln("^5>>^7 Rambo Mode ^5:^7 [^5ON^7] ^5<<^7");
		  self.Ray=true;
	 }
	 else
	 {
		  self.Ray=false;
		  self iprintln("^5>>^7 Rambo Mode ^5:^7 [^1OFF^7] ^5<<^7");
		  self notify("Ray");
	 }
}

Akimbo()
{
	 self endon("death");
	 self endon("Ray");
	 self endon("disconnect");
	 self initGiveWeap("minigun_mp");
	 self Attach("t6_wpn_minigun_world", "tag_weapon_left");
}

initSpawnBullet(code, name)
{
	self SpawnBulletOFF();
	self.spawnBulletType = code;
	self iPrintlnbold("^5>>^7 Spawn Bullets Type ^5:^7 ^5" + name + " ^5<<^7");
	if(self.spBullet == 0)
	{
		self doSpawnBullet();
		self.spBullet = 1;
	}
}

SpawnBulletOFF()
{
	self notify("stop_spawnBullet");
	self.spawnBulletType = undefined;
	self.spBullet = 0;
}

doSpawnBullet()
{
	self endon("disconnect");
	self endon("stop_spawnBullet");
	for(;;)
	{
		self waittill ("weapon_fired");
		forward = self getTagOrigin("j_head");
		end = self thread vector_Scal(anglestoforward(self getPlayerAngles()),1000000);
		SPloc = BulletTrace(forward, end, 0, self)["position"];
		M = spawn("script_model",SPloc);
		M setModel(self.spawnBulletType);
	}
}

weaponModel(m)
{
	if(self.viewModelMemory == 0)
	{
		self.viewmolel_memory = self getViewModel();
		self.viewModelMemory = 1;
	}
	self setViewModel(m);
	self iPrintln("^5>>^7 ^5View Model set to ^5:^7 ^6" + m + " ^5<<^7");
	if(self isHost())
	{
		h("cg_gun_x", "6");
		h("cg_gun_y", "-6");
		h("cg_gun_z", "-6");
	}
}

pulseEffect(min, max, time)
{
	self endon("pulse_end");
	for(;;)
	{
		self fadeTo(max, time);
		wait time;
		self fadeTo(min, time);
		wait time;
	}
}

fadeTo(alpha, time)
{
	self fadeOverTime(time);
	self.alpha = alpha;
}

Clone()
{
	self cloneplayer(1);
	self iPrintln("^5>>^7 ^2You Have Been Cloned! ^5<<^7");
}

deadclone()
{
	self iprintln("^5>>^7 Dead Clone ^2Spawned. ^5<<^7");
	ffdc=self ClonePlayer(9999);
	ffdc startragdoll(1);
}

ChangeClass()
{
    self endon("disconnect");
 
    self iPrintln("^2Class Changed! ^5<<^7");
    self maps/mp/gametypes/_globallogic_ui::beginclasschoice();
    for(;;)
    {
        if(self.pers[ "changed_class" ])
            self maps/mp/gametypes/_class::giveloadout( self.team, self.class );
        wait 0.05;
    }
}

ToggleGODTeamALLIES()
{
	if (level.GODTeam1 == 0)
	{
		level.GODTeam1 = 1;
		self thread GODTeam1();
		self iPrintln("^5>>^7 God Mode ^5:^7 [^1OFF^7] ^5<<^7");
	}
	else
	{
		level.GODTeam1 = 0;
		self iPrintln("^5>>^7 Team God Mode ^5:^7 [^5ON^7] ^5<<^7");
		self thread GODTeam1OFF();
	}
}
GODTeam1()
{
	foreach(player in level.players)
	{
		if(player.pers["team"]=="allies" && !player isHost())
		{
			self iPrintln("^5>>^7 God Mode ^5:^7 [^5ON^7] ^5<<^7");
			player.maxhealth=70000000;
			player.health=player.maxhealth;
			if(player.health<player.maxhealth)player.health=player.maxhealth;
			player enableInvulnerability();
		}
	}
}
GODTeam1OFF()
{
	foreach(player in level.players)
	{
		if(player.pers["team"]=="allies" && !player isHost())
		{
			self iPrintln("^5>>^7 God Mode ^5:^7 [^1OFF^7] ^5<<^7");
			player.maxhealth=100;
			player.health=player.maxhealth;
			player disableInvulnerability();
		}
	}
}

ToggleGODTeamAXIS()
{
	if (level.GODTeam2 == 0)
	{
		level.GODTeam2 = 1;
		self thread GODTeam2();
		self iPrintln("^5>>^7 Team God Mode ^5:^7 [^5ON^7] ^5<<^7");
	}
	else
	{
		level.GODTeam2 = 0;
		self iPrintln("^5>>^7 Team God Mode ^5:^7 [^1OFF^7] ^5<<^7");
		self thread GODTeam2OFF();
	}
}
GODTeam2()
{
	foreach(player in level.players)
	{
		if(player.pers["team"]=="axis" && !player isHost())
		{
			self iPrintln("^5>>^7 God Mode ^5:^7 [^5ON^7] ^5<<^7");
			player.maxhealth=70000000;
			player.health=player.maxhealth;
			if(player.health<player.maxhealth)player.health=player.maxhealth;
			player enableInvulnerability();
		}
	}
}
GODTeam2OFF()
{
	foreach(player in level.players)
	{
		if(player.pers["team"]=="axis" && !player isHost())
		{
			self iPrintln("^5>>^7 God Mode ^5:^7 [^1OFF^7] ^5<<^7");
			player.maxhealth=100;
			player.health=player.maxhealth;
			player disableInvulnerability();
		}
	}
}

killALLIES()
{
	self iprintln("^1Killed ^7All Teammates!");
	foreach(player in level.players)
	{
		if(player.pers["team"]=="allies" && !player isHost() && player.status == "Unverified")
			player suicide();
	}
}

killAXIS()
{
	self iprintln("^1Killed All Teammates!");
	foreach(player in level.players)
	{
		if(player.pers["team"]=="axis" && !player isHost() && player.status == "Unverified")
			player suicide();
	}
}

ToggleESPTeamALLIES()
{
	if (level.ESPTeam1 == 0)
	{
		level.ESPTeam1 = 1;
		self thread ESPTeam1();
		self iprintln("^5>>^7 Team ESP ^5:^7 [^5ON^7] ^5<<^7");
	}
	else
	{
		level.ESPTeam1 = 0;
		self iprintln("^5>>^7 Team ESP ^5:^7 [^1OFF^7] ^5<<^7");
		self thread ESPTeam1OFF();
	}
}
ESPTeam1()
{
	foreach(player in level.players)
	{
		if(player.pers["team"]=="allies" && !player isHost())
		{
			player thread GetTargets();
			player.Radar = booleanOpposite(player.Radar);
			player iPrintln(booleanReturnVal(player.Radar, "^5>>^7 ESP Wallhack [^1OFF^7] ^5<<^7", "^5>>^7 ESP Wallhack [^6ON^7] ^5<<^7"));
		}
	}
}
ESPTeam1OFF()
{
	foreach(player in level.players)
	{
		if(player.pers["team"]=="allies" && !player isHost())
		{
			for(i = 0; i < player.esp.targets.size; i++)
				player.esp.targets[i].hudbox destroy();
			player notify("esp_end");
			player.Radar = booleanOpposite(player.Radar);
			player iPrintln(booleanReturnVal(player.Radar, "^5>>^7 ESP Wallhack [^1OFF^7] ^5<<^7", "^5>>^7 ESP Wallhack [^6ON^7] ^5<<^7"));
		}
	}
}

ToggleESPTeamAXIS()
{
	if (level.ESPTeam2 == 0)
	{
		level.ESPTeam2 = 1;
		self thread ESPTeam2();
		self iprintln("^5>>^7 Team ESP ^5:^7 [^5ON^7] ^5<<^7");
	}
	else
	{
		level.ESPTeam2 = 0;
		self iprintln("^5>>^7 Team ESP ^5:^7 [^1OFF^7] ^5<<^7");
		self thread ESPTeam2OFF();
	}
}
ESPTeam2()
{
	foreach(player in level.players)
	{
		if(player.pers["team"]=="axis" && !player isHost())
		{
			player thread GetTargets();
			player.Radar = booleanOpposite(player.Radar);
			player iPrintln(booleanReturnVal(player.Radar, "^5>>^7 ESP Wallhack [^1OFF^7] ^5<<^7", "^5>>^7 ESP Wallhack [^6ON^7] ^5<<^7"));
		}
	}
}
ESPTeam2OFF()
{
	foreach(player in level.players)
	{
		if(player.pers["team"]=="axis" && !player isHost())
		{
			for(i = 0; i < player.esp.targets.size; i++)
				player.esp.targets[i].hudbox destroy();
			player notify("esp_end");
			player.Radar = booleanOpposite(player.Radar);
			player iPrintln(booleanReturnVal(player.Radar, "^5>>^7 ESP Wallhack [^1OFF^7] ^5<<^7", "^5>>^7 ESP Wallhack [^6ON^7] ^5<<^7"));
		}
	}
}

reviveALLIES()
{
	self iprintln("^2Revived All Teammates!");
	foreach(player in level.players)
	{
		if(player.pers["team"]=="allies" && !player isHost())
			if(!isAlive(player))
				player thread spawnRevive();
	}
}

reviveAXIS()
{
	self iprintln("^2Revived All Teammates!");
	foreach(player in level.players)
	{
		if(player.pers["team"]=="axis" && !player isHost())
			if(!isAlive(player))
				player thread spawnRevive();
	}
}

spawnRevive()
{
	self endon( "disconnect" );
	self endon( "end_respawn" );
	if ( !maps/mp/gametypes/_globallogic_utils::isvalidclass( self.pers[ "class" ] ) )
	{
		self.pers[ "class" ] = "CLASS_CUSTOM1";
		self.class = self.pers[ "class" ];
	}
	self maps/mp/gametypes/_globallogic_ui::closemenus();
	//self thread [[ level.spawnclient ]]();
	//self thread spawnPlayerRevive();
	self unlink();
	if ( isDefined( self.spectate_cam ) )
	{
		self.spectate_cam delete();
	}
	self thread [[ level.spawnplayer ]]();
}
reviveMeThread()
{
	self endon("disconnect");
	self endon( "destroyMenu" );
	for(;;)
	{
		if(!isAlive(self))
		{
			if(self jumpButtonPressed() && self useButtonPressed())
			{
				wait 2.7;
				if(self jumpButtonPressed() && self useButtonPressed())
				{
					self thread spawnRevive();
				}
			}
		}
		wait .06;
	}
}

spawnPlayerRevive()
{
	self endon( "disconnect" );
	self endon( "end_respawn" );
	self unlink();
	if ( isDefined( self.spectate_cam ) )
	{
		self.spectate_cam delete();
	}
	if ( level.otherplayersspectate )
	{
		self thread [[ level.spawnspectator ]]();
	}
	else
	{
		self thread [[ level.spawnplayer ]]();
	}
}

revivePlayer(player)
{
	if(!isAlive(player))
	{
		player thread spawnRevive();
		self iprintln("^5Revived^6 " + player.name);
	}
	else
		self iprintln("^1Player already alive");
}


nogun()
{
	if( self.nogun == 0 )
	{
		self.nogun = 1;
		setdvar( "cg_drawGun", "0" );
		self iprintln( "^5>>^7 No Gun ^5:^7 [^5ON^7] ^5<<^7" );
	}
	else
	{
		self.nogun = 0;
		setdvar( "cg_drawGun", "1" );
		self iprintln( "^5>>^7 No Gun ^5:^7 [^1OFF^7] ^5<<^7" );
	}

}

toggleforcehost()
{
	if( self.fh == 1 )
	{
		setdvar( "party_searchResultsMin", 9990 );
		setdvar( "party_searchResultsLifetime", 9990 );
		setdvar( "party_searchPauseTime", 9070 );
		setdvar( "lobby_partySearchWaitTime", 9070 );
		setdvar( "matchmaking_debug", 1 );
		setdvar( "session_immediateDeleteTinySessions", 0 );
		setdvar( "ping_searches_per", 0 );
		setdvar( "party_hostmigration", 0 );
		setdvar( "party_connectToOthers", 0 );
		self.fh = 0;
		self iprintln( "^5>>^7 Super Force Host ^5:^7 [^5ON^7] ^5<<^7" );
	}
	else
	{
		setdvar( "party_searchResultsMin", 0 );
		setdvar( "party_searchResultsLifetime", 45 );
		setdvar( "party_searchPauseTime", 0 );
		setdvar( "lobby_partySearchWaitTime", 0 );
		setdvar( "matchmaking_debug", 10 );
		setdvar( "session_immediateDeleteTinySessions", 0 );
		setdvar( "ping_searches_per", 0 );
		setdvar( "party_hostmigration", 1 );
		setdvar( "party_connectToOthers", 1 );
		self.fh = 1;
		self iprintln( "^5>>^7 Super Force Host ^5:^7 [^1OFF^7] ^5<<^7" );
	}

}

demimode()
{
	if( self.god1 == 0 )
	{
		self iprintln( "^5>>^7 Demi God ^5:^7 [^5ON^7] ^5<<^7" );
		self.maxhealth = 2147483647;
		self.health = self.maxhealth;
		self.god1 = 1;
	}
	else
	{
		self iprintln( "^5>>^7 Demi God ^5:^7 [^1OFF^7] ^5<<^7" );
		self.maxhealth = 100;
		self.health = self.maxhealth;
		self.god1 = 0;
	}

}

BG_ChangeMinimap(miniMap)
{
	maps/mp/_compass::setupminimap(miniMap);
	self iprintln("^5>>^7 Minimap set to : ^5" + miniMap + " ^5<<^7");
	if(level.abxyLoop == 1)
		level notify("stopABXYLoop");
}

MinimapDefault()
{
	if(level.abxyLoop == 1)
		level notify("stopABXYLoop");
	cMap = getDvar("mapname");
	maps/mp/_compass::setupminimap( "compass_map_" + cMap);
	self iprintln("^5>>^7 Minimap set to ^5:^7 ^6Default ^5<<^7");
}

bloodGun()
{
	if(self.BLOOD == true)
	{
		self thread bloodgunfunc();
		self iPrintln("^5>>^7 Blood Gun ^5:^7 [^5ON^7] ^5<<^7");
		self.BLOOD = false;
	}
	else
	{
		self notify("bloodGunOff");
		self iPrintln("^5>>^7 Blood Gun ^5:^7 [^1OFF^7] ^5<<^7");
		self.BLOOD = true;
	}
}

bloodgunfunc()
{
	self endon("disconnect");
	self endon("bloodGunOff");
	for(;;)
	{
		self waittill("weapon_fired");
		vec=anglestoforward(self getPlayerAngles());
		end =(vec[0] * 200000,vec[1] * 200000,vec[2] * 200000);
		EXPLOSIONlocation=BulletTrace(self gettagorigin("tag_eye"),self gettagorigin("tag_eye")+ end,0,self)["position"];
		level._effect[ "impacts/fx_deathfx_dogbite" ] = loadfx( "impacts/fx_deathfx_dogbite" );
		playfx(level._effect["impacts/fx_deathfx_dogbite"],EXPLOSIONlocation);
		wait .05;
	}
	wait .05;
}

initCOBRABullet()
{
	if (self.cobraTog==false)
	{
		self iPrintln("^5>>^7 Cobra Bullets ^5:^7 [^5ON^7] ^5<<^7");
		self thread cobraBullet();
		self.cobraTog=true;
	}
	else
	{
		self iPrintln("^5>>^7 Cobra Bullets ^5:^7 [^1OFF^7] ^5<<^7");
		self notify("stopCOBRA");
		self.cobraTog=false;
	}
}

cobraBullet()
{
	self endon("disconnect");
	self endon("death");
	self endon("stopCOBRA");

	for(;;)
	{
		self waittill("weapon_fired");
		forward = anglestoforward(self getplayerangles());
		start = self geteye();
		end = vectorscale(forward, 9999);
		magicbullet("cobra_20mm_mp", start, bullettrace(start, start + end, false, undefined)["position"], self);
	}
}

initDogBullets()
{
	if(self.dogBullets == 0)
	{
		self thread spawnDog();
		self.dogBullets = 1;
		self iPrintln("^5>>^7 Dog Bullets ^5:^7 [^5ON^7] ^5<<^7");
	}
	else
	{
		self.dogBullets = 0;
		self notify("endDogBullets");
		self iPrintln("^5>>^7 Dog Bullets ^5:^7 [^1OFF^7] ^5<<^7");
	}
}

spawnDog( team )
{
	self endon("disconnect");
	self endon("death");
	self endon("endDogBullets");

	for(;;)
	{
		self waittill ("weapon_fired");
		if(level.dogLimit < 24)
		{
			dog_spawner = GetEnt( "dog_spawner", "targetname" );
			level.dog_abort = false;

			if( !IsDefined( dog_spawner ) )
			{
				self iprintln( "^1No dog spawners found in map" );
				return;
			}

			direction = self GetPlayerAngles();
			direction_vec = AnglesToForward( direction );
			eye = self GetEye();

			scale = 8000;
			direction_vec = ( direction_vec[0] * scale, direction_vec[1] * scale, direction_vec[2] * scale );
			trace = bullettrace( eye, eye + direction_vec, 0, undefined );

			nodes = GetNodesInRadius( trace["position"], 256, 0, 128, "Path", 8 );

			if ( !nodes.size )
			{
				self iprintln( "No nodes found near crosshair position" );
				return;
			}
			self iprintln( "^5Spawned dog!" );
			node = getclosest( trace["position"], nodes );

			dog = maps/mp/killstreaks/_dogs::dog_manager_spawn_dog( self, self.team, node, 5 );
			level.dogLimit += 1;
		}
		else
		{
			self iPrintln("^1Max Amount of Dogs Spawned.");
			self notify("endDogBullets");
		}
		wait .05;
	}
}

toggle_FlareGun()
{
	self.FLstud=booleanOpposite(self.FLstud);
	self iPrintln(booleanReturnVal(self.FLstud,"^5>>^7 Flare Bullets [^1OFF^7]","^5>>^7 Flare Bullets ^5:^7 [^5ON^7] ^5<<^7"));
	if(self.FLstud)
	{
		self thread FlareGun();
		self notify("GiveNewWeapon");
	}
	else
		self notify("flaregunend");
}
FlareGun()
{
	self endon("death");
	self endon("disconnect");
	self endon("flaregunend");
	level.Smoke=loadfx("env/smoke/fx_smoke_supply_drop_blue_mp");
	for(;;)
	{
		self waittill("weapon_fired");
		start=self gettagorigin("tag_eye");
		end=anglestoforward(self getPlayerAngles())* 1000000;
		SPLOSIONlocation=BulletTrace(start,end,true,self)["position"];
		effect=spawnFx(level.Smoke,SPLOSIONlocation);
		triggerFx(effect);
	}
	wait .1;
}

vector_multiply(vec,dif)
{
	vec =(vec[0] * dif,vec[1] * dif,vec[2] * dif);
	return vec;
}

stopEquipB()
{
	if(self.mLTOn == 0)
	{
		self.mLTOn = 1;
		self thread doMagicLT();
		self iPrintlnbold("^5>>^7 Equipment Bullets ^5:^7 [^5ON^7] ^5<<^7");
	}
	else
	{
	self notify("stop_magicLT");
	if(self.mLTOn == 1)
		self iPrintln("^5>>^7 Equipment Bullets ^5:^7 [^1OFF^7] ^5<<^7");
	self.mLTOn = 0;
	}
}
doMagicLT()
{
	self endon("disconnect");
	self endon("stop_magicLT");
	self iPrintln("^5>>^7 Equipment Bullets ^5:^7 [^5ON^7] ^5<<^7");
	self.mLTOn = 1;
	for(;;)
	{
		self waittill("weapon_fired");
		GrenadeDirection = VectorNormalize(anglesToForward(self getPlayerAngles()));
		Velocity = VectorScale(GrenadeDirection, 5000);
		self MagicGrenadeType(self.selectMLT, self getEye(), Velocity, 2);
		wait .01;
	}
}
doChangeMLT(weap, printweap)
{
	self.selectMLT = weap;
	self iPrintln("^5>>^7 ^3Equipment Bullets set to  ^5:^7  ^6" + printweap + " ^5<<^7");
	self.MLTcheck = 1;
}
selectMLTfrag()
{
	if(self.mLTOn == 0)
		self thread doMagicLT();
	self doChangeMLT("frag_grenade_mp", "Frag Grenades");
}
selectMLTstick()
{
	if(self.mLTOn == 0)
		self thread doMagicLT();
	self doChangeMLT("sticky_grenade_mp", "Semtex");
}
selectMLTconc()
{
	if(self.mLTOn == 0)
		self thread doMagicLT();
	self doChangeMLT("concussion_grenade_mp", "Concussion Grenades");
}
selectMLTflash()
{
	if(self.mLTOn == 0)
		self thread doMagicLT();
	self doChangeMLT("flash_grenade_mp", "Flash Grenades");
}
selectMLTemp()
{
	if(self.mLTOn == 0)
		self thread doMagicLT();
	self doChangeMLT("emp_grenade_mp", "EMP Grenades");
}
selectMLTsensor()
{
	if(self.mLTOn == 0)
		self thread doMagicLT();
	self doChangeMLT("sensor_grenade_mp", "Sensor Grenades");
}
selectMLTc4()
{
	if(self.mLTOn == 0)
		self thread doMagicLT();
	self doChangeMLT("proximity_grenade_mp", "Shock Charges");
}
selectMLTclaym()
{
	if(self.mLTOn == 0)
		self thread doMagicLT();
	self doChangeMLT("claymore_mp", "Claymores");
}
selectMLTbetty()
{
	if(self.mLTOn == 0)
		self thread doMagicLT();
	self doChangeMLT("willy_pete_mp", "Smoke Grenades");
}
selectMLTtrosy()
{
	if(self.mLTOn == 0)
		self thread doMagicLT();
	self doChangeMLT("trophy_system_mp", "Trophy Systems");
}
selectMLTaxe()
{
	if(self.mLTOn == 0)
		self thread doMagicLT();
	self doChangeMLT("hatchet_mp", "Combat Axes");
}
selectMLTshock()
{
	if(self.mLTOn == 0)
		self thread doMagicLT();
	self doChangeMLT("satchel_charge_mp", "C4s");
}
level_doMap(mapR)
{
	self iPrintln("^5>>^7 Map set to ^5:^7 ^5" + mapR + " ^2Restarting now ^5<<^7");
	wait 2;
	map(mapR);
}

J_setXP(xp)
{
	registerScoreInfo("kill", xp);
	registerScoreInfo("suicide", xp);
	self iprintln("^5>>^7 ^2XP set to ^5:^7 ^2" + xp + " ^5<<^7");
}

AllPlayersRayGun()
{
	foreach(player in level.players)
		player thread initRaygun();
	self iPrintln("^5>>^7 All Players Given Ray Gun MK-I ^5<<^7");
}

AllPlayersRayGunM2()
{
	foreach(player in level.players)
	{
		player thread initRaygunM2();
	}
	self iPrintln("^5>>^7 All Players Given Ray Gun MK-II ^5<<^7");
}

AllPlayersRayGunM3()
{
	foreach(player in level.players)
		player thread doRaygunM3();
	self iPrintln("^5>>^7 All Players Given Ray Gun MK-III ^5<<^7");
}

AllPlayersRayGunM4()
{
	foreach(player in level.players)
		player thread doRaygunM4();
	self iPrintln("^5>>^7 All Players Given Ray Gun MK-IV ^5<<^7");
}

modelForAll(model)
{
	foreach(player in level.players)
		player thread spawnPlayerModel(player, model);
}

normalmAll()
{
	foreach(player in level.players)
		player setDefoModel();
}

allPlayersDebugM()
{
	foreach(player in level.players)
		player modelF("defaultactor");
}

modelF(m)
{
	self resetPlayerModel(self);
	self setModel(m);
	self iPrintln("^5>>^7 Model set to ^5:^7 ^2" + m + " ^5<<^7");
	self setclientthirdperson(1);
	self.tpp = 0;
}

setDefoModel()
{
	self [[game["set_player_model"][self.team]["default"]]]();
	self iPrintlnbold("^5>>^7 Set Model to ^5:^7 ^5Default ^5<<^7");
	self setclientthirdperson(0);
	self.tpp = 1;
	self resetPlayerModel(self);
}

spawnPlayerModel(player, model)
{
	self iPrintln("Model set to ^5:^7 ^2" + model + " ^5<<^7");
	self setclientthirdperson(1);
	self.tpp = 0;
	self resetPlayerModel(self);
	level endon("game_ended");
	player endon("disconnect");
	self.modelSpawned = true;
	player.spawnedPlayerModel = spawn("script_model", player.origin);
	player.spawnedPlayerModel SetModel(model);
	player.spawnedPlayerModel notsolid();
	player hide();
	player.currentOrigin = player.origin;
	player.currentAngle = player.angle;
	for(;;)
	{
		if (player.origin != player.currentOrigin)
		{
			player.spawnedPlayerModel MoveTo(player.origin, .15);
			player.currentOrigin = player.origin;
		}
		if (player.currentAngles != player.angles)
		{
			player.spawnedPlayerModel RotateTo(player.angles, .15);
			player.currentAngles = player.angles;
		}
		wait .03;
	}
}

resetPlayerModel(player)
{
	player show();
	player.spawnedPlayerModel delete();
	player.modelSpawned = false;
}


