event_inherited();

if (!collision_circle(x, y, 1000, obj_player, false, false)) exit;
time = approach(time, 0, 1);
time_damage = approach(time_damage, 0, 1);

if (time == 0) {
	time = irandom_range(120, 180);
	var spd = irandom_range(1, 4);
	
	motion_add(direction, spd);
}

if (speed > 0) {
	create_trail(id, merge_color(c_red, c_black, 0.5));
		
	if (time_damage == 0) {
		time_damage = 24;
		instance_create_depth(x, y, depth + 1, obj_damage_zone);
	}
}

speed = approach(speed, 0, 0.07);