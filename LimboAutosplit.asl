// v 1.2

state("Limbo")
{
	int loading 	: 0x004A4EA0, 0x14, 0x5C, 0x148, 0x20, 0x1E4; // 1 when not loading, 0 when loading
	int menu 		: 0x0045FD54, 0x5E0, 0x58, 0x44, 0x230, 0x88; // 65535 : not displayed ; 1 : displayed
	int menu_line	: 0x0045FD54, 0x5E0, 0x50, 0x254, 0x308; // top to bottom : 0 2 3 5 6
	
	// Current X and Y positions
	float x_pos	:	0x4A5188;
	float y_pos	:	0x4A518C;
}

startup
{
	// Adds settings for every chapter
	settings.Add("chapters", false, "Chapters");
	settings.SetToolTip("chapters", "These split at the end of each chapter.");
	settings.Add("chapter01", true, "Chapter 01", "chapters");
	settings.Add("chapter02", true, "Chapter 02", "chapters");
	settings.Add("chapter03", true, "Chapter 03", "chapters");
	settings.Add("chapter04", true, "Chapter 04", "chapters");
	settings.Add("chapter05", true, "Chapter 05", "chapters");
	settings.Add("chapter06", true, "Chapter 06", "chapters");
	settings.Add("chapter07", true, "Chapter 07", "chapters");
	settings.Add("chapter08", true, "Chapter 08", "chapters");
	settings.Add("chapter09", true, "Chapter 09", "chapters");
	settings.Add("chapter10", true, "Chapter 10", "chapters");
	settings.Add("chapter11", true, "Chapter 11", "chapters");
	settings.Add("chapter12", true, "Chapter 12", "chapters");
	settings.Add("chapter13", true, "Chapter 13", "chapters");
	settings.Add("chapter14", true, "Chapter 14", "chapters");
	settings.Add("chapter15", true, "Chapter 15", "chapters");
	settings.Add("chapter16", true, "Chapter 16", "chapters");
	settings.Add("chapter17", true, "Chapter 17", "chapters");
	settings.Add("chapter18", true, "Chapter 18", "chapters");
	settings.Add("chapter19", true, "Chapter 19", "chapters");
	settings.Add("chapter20", true, "Chapter 20", "chapters");
	settings.Add("chapter21", true, "Chapter 21", "chapters");
	settings.Add("chapter22", true, "Chapter 22", "chapters");
	settings.Add("chapter23", true, "Chapter 23", "chapters");
	settings.Add("chapter24", true, "Chapter 24", "chapters");
	settings.Add("chapter25", true, "Chapter 25", "chapters");
	settings.Add("chapter26", true, "Chapter 26", "chapters");
	settings.Add("chapter27", true, "Chapter 27", "chapters");
	settings.Add("chapter28", true, "Chapter 28", "chapters");
	settings.Add("chapter29", true, "Chapter 29", "chapters");
	settings.Add("chapter30", true, "Chapter 30", "chapters");
	settings.Add("chapter31", true, "Chapter 31", "chapters");
	settings.Add("chapter32", true, "Chapter 32", "chapters");
	settings.Add("chapter33", true, "Chapter 33", "chapters");
	settings.Add("chapter34", true, "Chapter 34", "chapters");
	settings.Add("chapter35", true, "Chapter 35", "chapters");
	settings.Add("chapter36", true, "Chapter 36", "chapters");
	settings.Add("chapter37", true, "Chapter 37", "chapters");
	settings.Add("chapter38", true, "Chapter 38", "chapters");
	settings.Add("chapter39", true, "Chapter 39", "chapters");

	// Creates checks for every chapter
	vars.chapter01 = 1;
	vars.chapter02 = 1;
	vars.chapter03 = 1;
	vars.chapter04 = 1;
	vars.chapter05 = 1;
	vars.chapter06 = 1;
	vars.chapter07 = 1;
	vars.chapter08 = 1;
	vars.chapter09 = 1;
	vars.chapter10 = 1;
	vars.chapter11 = 1;
	vars.chapter12 = 1;
	vars.chapter13 = 1;
	vars.chapter14 = 1;
	vars.chapter15 = 1;
	vars.chapter16 = 1;
	vars.chapter17 = 1;
	vars.chapter18 = 1;
	vars.chapter19 = 1;
	vars.chapter20 = 1;
	vars.chapter21 = 1;
	vars.chapter22 = 1;
	vars.chapter23 = 1;
	vars.chapter24 = 1;
	vars.chapter25 = 1;
	vars.chapter26 = 1;
	vars.chapter27 = 1;
	vars.chapter28 = 1;
	vars.chapter29 = 1;
	vars.chapter30 = 1;
	vars.chapter31 = 1;
	vars.chapter32 = 1;
	vars.chapter33 = 1;
	vars.chapter34 = 1;
	vars.chapter35 = 1;
	vars.chapter36 = 1;
	vars.chapter37 = 1;
	vars.chapter38 = 1;
	vars.chapter39 = 1;

	
	// Creates a variable for the rounded X and Y positions
	vars.x_pos_round = 0;
	vars.y_pos_round = 0;
	
	
	//Creates a stopwatch for chapter 22 and 23
	vars.stopwatch = System.Diagnostics.Stopwatch.StartNew();
	vars.stopwatch.Reset();
}

init
{
	vars.needToRestart = 0;
}

update
{
	if (current.menu_line == 2 && old.menu == 1 && current.menu == 65535)
	{
		vars.needToRestart = 1;
	}
	
	
	// Stores the current phase the timer is in (Running or Not Running)
	current.timerPhase = timer.CurrentPhase;
	
	// When the timer resets every check gets reset
	if(current.timerPhase != old.timerPhase)
	{
		vars.stopwatch.Reset();
		
		vars.chapter01 = 1;
		vars.chapter02 = 1;
		vars.chapter03 = 1;
		vars.chapter04 = 1;
		vars.chapter05 = 1;
		vars.chapter06 = 1;
		vars.chapter07 = 1;
		vars.chapter08 = 1;
		vars.chapter09 = 1;
		vars.chapter10 = 1;
		vars.chapter11 = 1;
		vars.chapter12 = 1;
		vars.chapter13 = 1;
		vars.chapter14 = 1;
		vars.chapter15 = 1;
		vars.chapter16 = 1;
		vars.chapter17 = 1;
		vars.chapter18 = 1;
		vars.chapter19 = 1;
		vars.chapter20 = 1;
		vars.chapter21 = 1;
		vars.chapter22 = 1;
		vars.chapter23 = 1;
		vars.chapter24 = 1;
		vars.chapter25 = 1;
		vars.chapter26 = 1;
		vars.chapter27 = 1;
		vars.chapter28 = 1;
		vars.chapter29 = 1;
		vars.chapter30 = 1;
		vars.chapter31 = 1;
		vars.chapter32 = 1;
		vars.chapter33 = 1;
		vars.chapter34 = 1;
		vars.chapter35 = 1;
		vars.chapter36 = 1;
		vars.chapter37 = 1;
		vars.chapter38 = 1;
		vars.chapter39 = 1;

		vars.print = 0;
	}
	
	// Rounds the X and Y positions to a flat number
	vars.x_pos_round = Math.Round(current.x_pos, 0);
	vars.y_pos_round = Math.Round(current.y_pos, 0);
	
	
	// Format the stopwatch time to total seconds elapsed
	TimeSpan duration = vars.stopwatch.Elapsed;
	vars.output = duration.TotalSeconds;

}

start
{
	if(current.menu_line == 2 && old.loading == 0 && vars.x_pos_round == -1578)
	{
		return true;
	}
}


split
{
	if (vars.x_pos_round == -1511 && settings["chapter01"] == true && vars.chapter01 == 1)
	{
		vars.chapter01 = 0;
		return true;
	}
	
	if (vars.x_pos_round == -1420 && settings["chapter02"] == true && vars.chapter02 == 1)
	{
		vars.chapter02 = 0;
		return true;
	}
	
	if (vars.x_pos_round == -1310 && settings["chapter03"] == true && vars.chapter03 == 1)
	{
		vars.chapter03 = 0;
		return true;
	}
	
	if (vars.x_pos_round == -1170 && settings["chapter04"] == true && vars.chapter04 == 1)
	{
		vars.chapter04 = 0;
		return true;
	}
	
	if (vars.x_pos_round == -1067 && settings["chapter05"] == true && vars.chapter05 == 1)
	{
		vars.chapter05 = 0;
		return true;
	}
	
	if (vars.x_pos_round == -1017 && settings["chapter06"] == true && vars.chapter06 == 1)
	{
		vars.chapter06 = 0;
		return true;
	}
	
	if (vars.x_pos_round == -898 && settings["chapter07"] == true && vars.chapter07 == 1)
	{
		vars.chapter07 = 0;
		return true;
	}
	
	if (vars.x_pos_round == -790 && settings["chapter08"] == true && vars.chapter08 == 1)
	{
		vars.chapter08 = 0;
		return true;
	}
	
	if (vars.x_pos_round == -739 && settings["chapter09"] == true && vars.chapter09 == 1)
	{
		vars.chapter09 = 0;
		return true;
	}
	
	if (vars.x_pos_round == -690 && settings["chapter10"] == true && vars.chapter10 == 1)
	{
		vars.chapter10 = 0;
		return true;
	}
	
	if (vars.x_pos_round == -483 && settings["chapter11"] == true && vars.chapter11 == 1)
	{
		vars.chapter11 = 0;
		return true;
	}
	
	if (vars.x_pos_round == -433 && settings["chapter12"] == true && vars.chapter12 == 1)
	{
		vars.chapter12 = 0;
		return true;
	}
	
	if (vars.x_pos_round == -314 && settings["chapter13"] == true && vars.chapter13 == 1)
	{
		vars.chapter13 = 0;
		return true;
	}
	
	if (vars.x_pos_round == -259 && settings["chapter14"] == true && vars.chapter14 == 1)
	{
		vars.chapter14 = 0;
		return true;
	}
	
	if (vars.x_pos_round == -185 && settings["chapter15"] == true && vars.chapter15 == 1)
	{
		vars.chapter15 = 0;
		return true;
	}
	
	if (vars.x_pos_round == -117 && settings["chapter16"] == true && vars.chapter16 == 1)
	{
		vars.chapter16 = 0;
		return true;
	}
	
	if (vars.x_pos_round == 45 && settings["chapter17"] == true && vars.chapter17 == 1)
	{
		vars.chapter17 = 0;
		return true;
	}
	
	if (vars.x_pos_round == 170 && settings["chapter18"] == true && vars.chapter18 == 1)
	{
		vars.chapter18 = 0;
		return true;
	}
	
	if (vars.x_pos_round == 209 && settings["chapter19"] == true && vars.chapter19 == 1)
	{
		vars.chapter19 = 0;
		return true;
	}
		
	if (vars.x_pos_round == 284 && settings["chapter20"] == true && vars.chapter20 == 1)
	{
		vars.chapter20 = 0;
		return true;
	}
	
	if (vars.x_pos_round == 375 && settings["chapter21"] == true && vars.chapter21 == 1)
	{
		vars.chapter21 = 0;
		return true;
	}
	
	if (vars.x_pos_round == 456 && settings["chapter22"] == true && vars.chapter22 == 1)
	{
		if(settings["chapter23"] == true)
		{
			vars.stopwatch.Start();
			print("yes");
		}
		vars.chapter22 = 0;
		return true;
	}	
	
	if (vars.x_pos_round == 456 && settings["chapter23"] == true && vars.chapter23 == 1)
	{
		if (settings["chapter22"] == true)
		{
			if (vars.output >= 5)
			{
				vars.stopwatch.Reset();
				vars.chapter23 = 0;
				return true;
			}
		}
		if (settings["chapter22"] == false)
		{
			vars.chapter23 = 0;
			return true;
		}
	}
	
	if (vars.x_pos_round == 477 && (vars.y_pos_round == -15 || vars.y_pos_round == -16) && settings["chapter24"] == true && vars.chapter24 == 1)
	{
		vars.chapter24 = 0;
		return true;
	}
	
	if (vars.x_pos_round == 523 && (vars.y_pos_round == 5 || vars.y_pos_round == 6) && settings["chapter25"] == true && vars.chapter25 == 1)
	{
		vars.chapter25 = 0;
		return true;
	}
	
	if (vars.x_pos_round == 552 && (vars.y_pos_round ==  11 || vars.y_pos_round == 12) && settings["chapter26"] == true && vars.chapter26 == 1)
	{
		vars.chapter26 = 0;
		return true;
	}
	
	if (vars.x_pos_round == 694 && settings["chapter27"] == true && vars.chapter27 == 1)
	{
		vars.chapter27 = 0;
		return true;
	}
	
	if (vars.x_pos_round == 709 && vars.y_pos_round >= -5 && settings["chapter28"] == true && vars.chapter28 == 1)
	{
		vars.chapter28 = 0;
		return true;
	}	
	
	if (vars.x_pos_round == 787 && settings["chapter29"] == true && vars.chapter29 == 1)
	{
		vars.chapter29 = 0;
		return true;
	}
	
	if (vars.x_pos_round == 839 && settings["chapter30"] == true && vars.chapter30 == 1)
	{
		vars.chapter30 = 0;
		return true;
	}	
	
	if (vars.x_pos_round == 969 && settings["chapter31"] == true && vars.chapter31 == 1)
	{
		vars.chapter31 = 0;
		return true;
	}	
	
	if (vars.x_pos_round == 1008 && settings["chapter32"] == true && vars.chapter32 == 1)
	{
		vars.chapter32 = 0;
		return true;
	}	
	
	if (vars.x_pos_round == 1095 && settings["chapter33"] == true && vars.chapter33 == 1)
	{
		vars.chapter33 = 0;
		return true;
	}	
	
	if (vars.x_pos_round == 1173 && settings["chapter34"] == true && vars.chapter34 == 1)
	{
		vars.chapter34 = 0;
		return true;
	}	
	
	if (vars.x_pos_round == 1215 && settings["chapter35"] == true && vars.chapter35 == 1)
	{
		vars.chapter35 = 0;
		return true;
	}	
	
	if ((vars.x_pos_round == 1266 || vars.x_pos_round == 1265) && vars.y_pos_round == 46 && settings["chapter36"] == true && vars.chapter36 == 1)
	{
		vars.chapter36 = 0;
		return true;
	}	
	
	if (vars.x_pos_round == 1308 && settings["chapter37"] == true && vars.chapter37 == 1)
	{
		vars.chapter37 = 0;
		return true;
	}	
	
	if (vars.x_pos_round == 1396 && settings["chapter38"] == true && vars.chapter38 == 1)
	{
		vars.chapter38 = 0;
		return true;
	}	
	
	if (Math.Round(current.x_pos, 1) == 1414.7 && settings["chapter39"] == true && vars.chapter39 == 1)
	{
		vars.chapter39 = 0;
		return true;
	}	

}
