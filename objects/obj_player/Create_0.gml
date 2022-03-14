event_inherited();

// -----> Settings <----- \\

// Health
hp = 2;
hp_max = 5;

// Inv
inv = 0;
inv_max = 20;
cooldown = 0;

// Speed
speed_max = 2;

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
heal_color_time = 0;
control_is_reversed = false;
time_reverse = 0;
adrenalin_time = 0;
is_draw = true;

// Direction
dir = DIR.RIGHT;
use_dir = DIR.RIGHT;

// Weapons
weapon = weapon_get(WEAPON_ID.SWORD);
weapon_depth = -1;
// ------> ####### <----- \\


// -----> Functions <---- \\
function attack() {
	if (cooldown > 0) return;
	cooldown = weapon.cooldown;
	
	if (keyboard_check(vk_left))  { weapon.use(id, DIR.LEFT);  use_dir = DIR.LEFT;  return; }
	if (keyboard_check(vk_right)) { weapon.use(id, DIR.RIGHT); use_dir = DIR.RIGHT; return; }
	if (keyboard_check(vk_up))    { weapon.use(id, DIR.UP);    use_dir = DIR.UP;    return; }
	if (keyboard_check(vk_down))  { weapon.use(id, DIR.DOWN);  use_dir = DIR.DOWN;  return; }
}

function flip() {
	image_xscale = use_dir == DIR.RIGHT ? 1 : -1;;
}

function move() {
	if (!can_move) return;
	
	var input_h = keyboard_check(ord("D")) - keyboard_check(ord("A"));
	var input_v = keyboard_check(ord("S")) - keyboard_check(ord("W"));
	
	if (time_reverse > 0) {
		input_h = -input_h;
		input_v = -input_v;
		time_reverse--;
	}
	
	if (adrenalin_time > 0) {
		speed_max = 3;
		adrenalin_time--;
	}
	else
		speed_max = 2;
	
	sprite_index = spr_player_idle;
	if (input_h != 0 || input_v != 0) {
		sprite_index = spr_player_run;
	}
	
	if (input_h > 0) dir = DIR.RIGHT;
	if (input_h < 0) dir = DIR.LEFT;
	if (input_v > 0) dir = DIR.DOWN;
	if (input_v < 0) dir = DIR.UP;
	
	speed_h = speed_max * input_h;
	speed_v = speed_max * input_v;
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