speed_max          = 5;
speed_acceleration = 0.5;
speed_friction     = 0.2;

collider = noone;

// Weapon
weapon_x = 0;
weapon_y = 0;
weapon   = 0;

// Not settings
speed_h = 0;
speed_v = 0;

dir = DIR.RIGHT;
can_move = true;

// Funcs
function flip() {
	var new_scale = sign(-speed_h);
	
	if (new_scale == 0) return; 
	
	image_xscale = new_scale;
}

function move() {
	if (!can_move) return;
	
	var input_h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var input_v = keyboard_check(ord("S")) - keyboard_check(ord("W"));
	
	speed_h = lerp(speed_h, speed_max * input_h, input_h == 0 ? speed_friction : speed_acceleration);
	speed_v = lerp(speed_v, speed_max * input_v, input_v == 0 ? speed_friction : speed_acceleration);
}

function collision() {
	if (place_meeting(x + speed_h, y, collider)) {
		while (!place_meeting(x + sign(speed_h), y, collider)) { 
			x += sign(speed_h);
		}
		
		speed_h = 0;
	}

	if (place_meeting(x, y + speed_v, collider)) {
		while (!place_meeting(x, y + sign(speed_v), collider)) { 
			y += sign(speed_v);
		}
		
		speed_v = 0;
	}
}