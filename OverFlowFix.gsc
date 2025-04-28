recreateText()
{
        self endon("disconnect");
        self endon("death");
 
        input = self.CurMenu;
        title = self.CurTitle;
               
        self thread submenu(input, title);
}
 
overflowfix()
{  
    level endon("game_ended");
 
    level.test = createServerFontString("default",1.5);
    level.test setText("xTUL");                
    level.test.alpha = 0;
   
    for(;;)
    {      
        level waittill("textset");
        if(level.result >= 50)
        {
                level.test ClearAllTextAfterHudElem();
                level.result = 0;
 
                foreach(player in level.players)
                {
                if(player.menu.open == true)
                {
                        player recreateText();
                }
            }
        }      
        wait 0.01;    
    }
}

initOverFlowFix()
{
	self.stringTable = [];
	self.stringTableEntryCount = 0;
	self.textTable = [];
	self.textTableEntryCount = 0;
	if(isDefined(level.anchorText) == false)
	{
		level.anchorText = createServerFontString("default",1.5); 
		level.anchorText setText("anchor");
		level.anchorText.alpha = 0;
		level.stringCount = 0;
	}
}

clearStrings()
{
	level.anchorText clearAllTextAfterHudElem();
	level.stringCount = 0;
	foreach(player in level.players)
	{
		player iprintln("cleared");
		player purgeTextTable();
		player purgeStringTable();
		player recreateText();
	}
}

setSafeText(player, text)
{
	stringId = player getStringId(text);
	if(stringId == -1)
	{
		player addStringTableEntry(text);
		stringId = player getStringId(text);
	}
	player editTextTableEntry(self.textTableIndex, stringId);
	if(level.stringCount > 50)
		clearStrings();
	self setText(text);
}

recreateText()
{
	foreach(entry in self.textTable)
		entry.element setSafeText(self, lookUpStringById(entry.stringId));
}

addStringTableEntry(string)
{
	entry = spawnStruct();
	entry.id = self.stringTableEntryCount;
	entry.string = string;
	
	self.stringTable[self.stringTable.size] = entry; 
	self.stringTableEntryCount++;
	level.stringCount++;
}

lookUpStringById(id)
{
	string = "";

	foreach(entry in self.stringTable)
	{
		if(entry.id == id)
		{
			string = entry.string;
			break;
		}
	}

	return string;
}

getStringId(string)
{
	id = -1;
	
	foreach(entry in self.stringTable)
	{
		if(entry.string == string)
		{
			id = entry.id;
			break;
		}
	}

	return id;
}

getStringTableEntry(id)
{
	stringTableEntry = -1;
	
	foreach(entry in self.stringTable)
	{
		if(entry.id == id)
		{
			stringTableEntry = entry;
			break;
		}
	}

	return stringTableEntry;
}

purgeStringTable()
{
	stringTable = [];

	foreach(entry in self.textTable)
		stringTable[stringTable.size] = getStringTableEntry(entry.stringId);

	self.stringTable = stringTable; 
}

purgeTextTable()
{
	textTable = [];
	
	foreach(entry in self.textTable)
	{
		if(entry.id != -1)
			textTable[textTable.size] = entry;
	}

	self.textTable = textTable;
}

addTextTableEntry(element, stringId)
{
	entry = spawnStruct();
	entry.id = self.textTableEntryCount;
	entry.element = element;
	entry.stringId = stringId;
	
	element.textTableIndex = entry.id;

	self.textTable[self.textTable.size] = entry;
	self.textTableEntryCount++;
}

editTextTableEntry(id, stringId)
{
	foreach(entry in self.textTable)
	{
		if(entry.id == id)
		{
			entry.stringId = stringId;
			break;
		}
	}
}

deleteTextTableEntry(id)
{
	foreach(entry in self.textTable)
	{
		if(entry.id == id)
		{
			entry.id = -1;
			entry.stringId = -1;
		}
	}
}

clear(player)
{
	if(self.type == "text")
		player deleteTextTableEntry(self.textTableIndex);
		
	self destroy();
}

overflowtest()
{
	level endon( "game_ended" );
	display = createfontstring( "default", 1.5 );
	display setpoint( "CENTER", "CENTER", 0, 0 );
	i = 0;
	for(;;)
	{
	display settext( "Strings: ^5" + i );
	level.result = level.result + 1;
	level notify( "textset" );
	i++;
	wait 0.05;
	}
	wait 0.05;

}









