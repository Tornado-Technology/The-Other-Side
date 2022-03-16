depth_sort();

if (is_disappear) {
	image_alpha = approach(image_alpha, 0, 0.01);
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
	if (button_progress > 3) {
		obj_player.money -= cost;
		is_disappear = true;
	}
	
	if (!is_disappear) {
		var button = buttons[button_progress];
	
		if (keyboard_check_pressed(button.key)) {
			button_progress++;
		}
	}
}