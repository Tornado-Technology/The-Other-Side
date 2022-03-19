x = approach(x, x_center,  5);
y = approach(y, y_center,  5);

if (x == x_center and y == y_center and !movement_completed) {
	obj_sfx_fade.pause = false;
	with (obj_sfx_fade) {
		alarm[0] = 1;
		alarm[1] = room_speed * 7;
		alarm[3] = 80;
	}
	movement_completed = true;
}
else {
	instance_create_depth(x, y, 0, obj_player_particle);
}