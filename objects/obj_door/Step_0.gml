depth_sort();

if (is_disappear) {
	if (!audio_is_playing(sfx_door_open))
		audio_play_sound(sfx_door_open, 0, false);
	image_alpha = approach(image_alpha, 0, 0.02);
	if (image_alpha == 0) {
		instance_destroy();
	}
}

if (!collision_circle(x, y, 25, obj_player, false, false)) { 
	if (set_player_false) {
		set_player_false = false;
		if (instance_exists(obj_player)) obj_player.can_weapon_use = true;
	}	
	exit;
}

if (!is_disappear) {
	set_player_false = true;
	obj_player.can_weapon_use = false;
}

if (obj_player.money >= cost) {
	if (button_progress > 3 && !is_disappear) {
		obj_player.money -= cost;
		is_disappear = true;
	}
	
	if (!is_disappear) {
		var button = buttons[button_progress];
	
		if (keyboard_check_pressed(button.key)) {
			audio_play_sound(sfx_button, 0, false);
			button_progress++;
		}
	}
}