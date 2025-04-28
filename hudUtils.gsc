elemcolor( time, color )
{
	self fadeovertime( time );
	self.color = color;

}

doOgtheme()
{
    self notify( "stopflash" );
	self.menu.scroller elemcolor( 1, ( 0, 0.7, 1 ) );
	self.menu.backgroundMain2 elemcolor( 1, ( 0, 0.7, 1 ) );
	self.menu.backgroundMain elemcolor( 1, ( 0, 0.7, 1 ) );
	self iprintln("^5>>^7 Theme Changed To ^5:^7 ^5Original ^5<<^7");
}

doredtheme()
{
	self notify( "stopflash" );
	self.menu.scroller elemcolor( 1, ( 1, 0, 0 ) );
	self.menu.backgroundMain2 elemcolor( 1, ( 1, 0, 0 ) );
	self.menu.backgroundMain elemcolor( 1, ( 1, 0, 0 ) );
	self iprintln("^5>>^7 Theme Changed To ^5:^7 ^1Red ^5<<^7");
}

flashingtheme()
{
	self endon( "stopflash" );
	self.menu.scroller elemcolor( 1, ( 1, 0, 0 ) );
	self.menu.backgroundMain2 elemcolor( 1, ( 1, 0, 0 ) );
	self.menu.backgroundMain elemcolor( 1, ( 1, 0, 0 ) );
	wait 2;
	self.menu.scroller elemcolor( 1, ( 0, 0, 1 ) );
	self.menu.backgroundMain2 elemcolor( 1, ( 0, 0, 1 ) );
	self.menu.backgroundMain elemcolor( 1, ( 0, 0, 1 ) );
	wait 2;
	self.menu.scroller elemcolor( 1, ( 0, 1, 0 ) );
	self.menu.backgroundMain2 elemcolor( 1, ( 0, 1, 0 ) );
	self.menu.backgroundMain elemcolor( 1, ( 0, 1, 0 ) );
	wait 2;
	self.menu.scroller elemcolor( 1, ( 1, 1, 0 ) );
	self.menu.backgroundMain2 elemcolor( 1, ( 1, 1, 0 ) );
	self.menu.backgroundMain elemcolor( 1, ( 1, 1, 0 ) );
	wait 2;
	self.menu.scroller elemcolor( 1, ( 1, 0, 1 ) );
	self.menu.backgroundMain2 elemcolor( 1, ( 1, 0, 1 ) );
	self.menu.backgroundMain elemcolor( 1, ( 1, 0, 1 ) );
	wait 2;
	self.menu.scroller elemcolor( 1, ( 0, 1, 1 ) );
	self.menu.backgroundMain2 elemcolor( 1, ( 0, 1, 1 ) );
	self.menu.backgroundMain elemcolor( 1, ( 0, 1, 1 ) );
	wait 2;
	self.menu.scroller elemcolor( 1, ( 1, 1, 1 ) );
	self.menu.backgroundMain2 elemcolor( 1, ( 1, 1, 1 ) );
	self.menu.backgroundMain elemcolor( 1, ( 1, 1, 1 ) );
	wait 2;
	self.menu.scroller elemcolor( 1, ( 0.04, 0.46, 0.49 ) );
	self.menu.backgroundMain2 elemcolor( 1, ( 0.04, 0.46, 0.49 ) );
    self.menu.backgroundMain elemcolor( 1, ( 0.04, 0.46, 0.49 ) );
	wait 2;
	self thread flashingtheme();
}

dobluetheme()
{
	self notify( "stopflash" );
	self.menu.scroller elemcolor( 1, ( 0, 0, 1 ) );
	self.menu.backgroundMain2 elemcolor( 1, ( 0, 0, 1 ) );
	self.menu.backgroundMain elemcolor( 1, ( 0, 0, 1 ) );
	self iprintln("^5>>^7 Theme Changed To ^5:^7 ^4Blue ^5<<^7");
}

dopinktheme()
{
	self notify( "stopflash" );
	self.menu.scroller elemcolor( 1, ( 1, 0, 1 ) );
	self.menu.backgroundMain2 elemcolor( 1, ( 1, 0, 1 ) );
	self.menu.backgroundMain elemcolor( 1, ( 1, 0, 1 ) );
	self iprintln("^5>>^7 Theme Changed To ^5:^7 ^6Pink ^5<<^7");
}

dopurpletheme()
{
	self notify( "stopflash" );
	self.menu.scroller elemcolor( 1, ( 0.443, 0, 0.706 ) );
	self.menu.backgroundMain2 elemcolor( 1, ( 0.443, 0, 0.706 ) );
	self.menu.backgroundMain elemcolor( 1, ( 0.443, 0, 0.706 ) );
	self iprintln("^5>>^7 Theme Changed To ^5:^7 ^6Purple ^5<<^7");
}

doyellowtheme()
{
	self notify( "stopflash" );
	self.menu.scroller elemcolor( 1, ( 1, 1, 0 ) );
	self.menu.backgroundMain2 elemcolor( 1, ( 1, 1, 0 ) );
	self.menu.backgroundMain elemcolor( 1, ( 1, 1, 0 ) );
	self iprintln("^5>>^7 Theme Changed To ^5:^7 ^3Yellow ^5<<^7");
}

dogreentheme()
{
	self notify( "stopflash" );
	self.menu.scroller elemcolor( 1, ( 0, 1, 0 ) );
	self.menu.backgroundMain2 elemcolor( 1, ( 0, 1, 0 ) );
	self.menu.backgroundMain elemcolor( 1, ( 0, 1, 0 ) );
	self iprintln("^5>>^7 Theme Changed To ^5:^7 ^2Green ^5<<^7");
}

dogreytheme()
{
	self notify( "stopflash" );
	self.menu.scroller elemcolor( 1, ( 0.50, 0.50, 0.50 ) );
	self.menu.backgroundMain2 elemcolor( 1, ( 0.50, 0.50, 0.50 ) );
	self.menu.backgroundMain elemcolor( 1, ( 0.50, 0.50, 0.50 ) );
	self iprintln("^5>>^7 Theme Changed To ^5:^7 ^8Grey ^5<<^7");
}

dowhitetheme()
{
	self notify( "stopflash" );
	self.menu.scroller elemcolor( 1, ( 1, 1, 1 ) );
	self.menu.backgroundMain2 elemcolor( 1, ( 1, 1, 1 ) );
	self.menu.backgroundMain elemcolor( 1, ( 1, 1, 1 ) );
	self iprintln("^5>>^7 Theme Changed To ^5:^7 White ^5<<^7");
}

doblacktheme()
{
	self notify( "stopflash" );
	self.menu.scroller elemcolor( 1, ( 0.008, 0.008, 0.008 ) );
	self.menu.backgroundMain2 elemcolor( 1, ( 0.008, 0.008, 0.008 ) );
	self.menu.backgroundMain elemcolor( 1, ( 0.008, 0.008, 0.008 ) );
	self iprintln("^5>>^7 Theme Changed To ^5:^7 ^8Black ^5<<^7");
}











