event_inherited();

// -----> Settings <----- \\
// Speed
speed_max          = 2;
speed_acceleration = 1;
speed_friction     = 1;

// Collision
collider = obj_wall;
// -----> ######## <----- \\


// ------> Systems <----- \\
// Inventory
money = 0;
keys  = 0;

// Move
can_move = true;
speed_h = 0;
speed_v = 0;

// Direction
dir = DIR.RIGHT;

// Weapons
weapon_x = 0;
weapon_y = 0;
weapon   = obj_weapon_sword;
// ------> ####### <----- \\


// Funcs
function flip() {
	var new_scale = sign(speed_h);
	
	if (new_scale == 0) return; 
	
	image_xscale = new_scale;
}

function move() {
	if (!can_move) return;
	
	var input_h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var input_v = keyboard_check(ord("S")) - keyboard_check(ord("W"));
	
	sprite_index = spr_player_idle;
	if (input_h != 0 || input_v != 0) {
		sprite_index = spr_player_run;
	}
	
	if (input_h > 0) dir = DIR.RIGHT;
	if (input_h < 0) dir = DIR.LEFT;
	if (input_v > 0) dir = DIR.DOWN;
	if (input_v < 0) dir = DIR.UP;
	
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