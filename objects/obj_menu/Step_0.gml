switch(tab) {
	case MenuTabName.Main:
		if (keyboard_check_pressed(vk_anykey)) //Press play
			tab = MenuTabName.About;
		break;
	
	case MenuTabName.About:
		if (keyboard_check_pressed(vk_left)) //Press back
			tab = MenuTabName.Main;
		if (keyboard_check_pressed(vk_right)) //Press ok
			tab = MenuTabName.Control;
		break;
			
	case MenuTabName.Control:
		if (keyboard_check_pressed(vk_left)) //Press back
			tab = MenuTabName.About;
		if (keyboard_check_pressed(vk_right)) //Press ok
			{room_goto(room_day);} // play game
		break;
}