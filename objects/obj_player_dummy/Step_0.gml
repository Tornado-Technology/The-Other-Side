if (!_xx) {
	image_alpha = approach(image_alpha, 1,  0.03);
}

if (!instance_exists(obj_player)) exit;

obj_player.image_alpha = approach(obj_player.image_alpha, 0,  0.03);
if (obj_player.image_alpha == 0 && !_xx) {
	_xx = true;
	obj_player.is_draw = false;
	obj_sfx_fade.pause = false;
	if (obj_time.night) instance_destroy(obj_player);
	with (obj_sfx_fade) {
		alarm[0] = 1;
		alarm[1] = room_speed * 7;
		alarm[3] = 80;
	}
}