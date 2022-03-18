switch(tab) {
	case MenuTabName.Main:
		if (keyboard_check_pressed(vk_anykey)) { //Press play
			tab = MenuTabName.About;
			audio_play_sound(sfx_button, 0, false);
		}
		break;
	
	case MenuTabName.About:
		if (keyboard_check_pressed(vk_left)) { //Press back
			tab = MenuTabName.Main;
			audio_play_sound(sfx_button, 0, false);
		}
		if (keyboard_check_pressed(vk_right)) { //Press ok
			tab = MenuTabName.Control;
			audio_play_sound(sfx_button, 0, false);
		}
		break;
			
	case MenuTabName.Control:
		if (keyboard_check_pressed(vk_left)) { //Press back
			tab = MenuTabName.About;
			audio_play_sound(sfx_button, 0, false);
		}
		if (keyboard_check_pressed(vk_right)) //Press ok
			{room_goto(room_day);} // play game
		break;
}