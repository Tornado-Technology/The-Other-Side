event_inherited();

if (!collision_circle(x, y, 1000, obj_player, false, false)) exit;
time = approach(time, 0, 1);
time_damage = approach(time_damage, 0, 1);

if (time == 0) {
	time = irandom_range(120, 180);
	var spd = irandom_range(1, 4);
	
	motion_add(direction, spd);
	
	var x_player = player_get_x();
	var y_player = player_get_y();
	if (point_distance(x, y, x_player, y_player) < 120)
		audio_play_sound(sfx_slime_move, 0, false);
}

if (speed > 0) {
	create_trail(id, merge_color(c_red, c_black, 0.5));
		
	if (time_damage == 0) {
		time_damage = 24;
		instance_create_depth(x, y, depth + 1, obj_damage_zone);
	}
}

speed = approach(speed, 0, 0.07);