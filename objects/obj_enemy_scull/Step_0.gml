// Inherit the parent event
event_inherited();
if (collision_circle(x, y, 1000, obj_player, false, false)) {
	direction = approach(direction, point_direction(x, y, player_get_x(), player_get_y()), 10);
	image_angle = direction;
	if (collision_circle(x, y, 200, obj_player, false, false) && dash) {
		motion_add(direction, 5);
		dash = false;
		alarm[0] = 180;
	} else {
		if (speed > 3) speed = approach(speed, 3, 0.01);
		else speed = 3;
	}
} else {
	speed = 0;
}