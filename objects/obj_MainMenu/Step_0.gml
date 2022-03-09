//get inputs
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_enter);

//store length
op_length = array_length(option[menu_level]);

//moving through the menu
pos += down_key - up_key;
if (pos >= op_length) {pos = 0};
if (pos < 0) {pos = op_length - 1};


//using options
if (accept_key) 
{
	
	var _startMenuLevel = menu_level;
	
	switch (menu_level)
	{
		//main menu options
		case 0:
			switch (pos)
			{
				//start game
				case 0: room_goto_next(); break;
				//settings
				case 1: game_end();	break;
				//close game
				case 2:	game_end();	break;
			}
			break;
		
		//options window
		case 1:
			switch (pos)
			{
				//window size
				case 0: room_goto_next(); break;
				//brightness
				case 1:	break;
				//go back to main menu
				case 2:	menu_level = 0;	break;
			}
			break;
	}
	
		
	//fixing potential bug where the index goes out of array
	if (_startMenuLevel != menu_level) {pos = 0};
	op_length = array_length(option[menu_level]);
}