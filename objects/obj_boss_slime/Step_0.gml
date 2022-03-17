depth_sort();

speed = approach(speed, 0, 0.05);
inv = approach(inv, 0, 1);

if (state == "to_jump") {
	static_x = x;
	static_y = y;
	image_xscale = approach(image_xscale, 2, 0.7);
	image_yscale = approach(image_yscale, 2, 0.7);
	
	if (image_yscale == 2) {
		state = "jump";
	}
} else {
	image_alpha = 1;
	image_xscale = approach(image_xscale, 1, 0.07);
	image_yscale = approach(image_yscale, 1, 0.07);
}

if (state == "jump") {

	if (image_yscale == 1) {
		state = "fall";
	}
} 

if (state == "fall") {
	if (image_yscale == 1) {
		image_yscale = 0.3;
		state = "idle";
		create_bullets();
	}
}

if (state == "to_dash") {
	image_blend = merge_color(c_white, c_red, 1 - dash_time / 100);
	dash_time = approach(dash_time, 0, 1);
	if (dash_time == 0) {
		create_bullets();
		motion_add(point_direction(x, y, player_get_x(), player_get_y()), 15);
		state = "dash";
		dash_time = 100;
	}
} else {
	image_blend = c_white;
}

if (state == "dash") {
	create_trail(id);
	
	shoot_time = approach(shoot_time, 0, 1);
	
	if (shoot_time == 0) {
		create_bullets();
		shoot_time = 30;
	}
	
	if (speed == 0) {
		state = "idle";
	}
}

if (state == "idle") {
	wait_time = approach(wait_time, 0, 1);
	
	if (wait_time % 40 == 0) {
		image_yscale = 0.5;
	}
	
	if (wait_time == 0) {
		create_bullets();
		repeat(choose(0, 3, 7)) {
			instance_create_depth(x, y, depth, choose(obj_enemy_slime, obj_enemy_slime_reverse));
		}
		wait_time = irandom_range(120, 240);
		state = choose("to_jump", "to_jump", "to_dash");
	}
}