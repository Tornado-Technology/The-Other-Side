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
stabelizers = 0;

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
can_weapon_use = true;
weapon = weapon_get(WEAPON_ID.SWORD);
weapon_depth = -1;
stage = 0;
// ------> ####### <----- \\


// -----> Functions <---- \\
function attack() {
	if (!can_weapon_use) return;
	
	if (keyboard_check_pressed(vk_left))  { weapon.press(id); }
	if (keyboard_check_pressed(vk_right)) { weapon.press(id); }
	if (keyboard_check_pressed(vk_up))    { weapon.press(id); }
	if (keyboard_check_pressed(vk_down))  { weapon.press(id); }
	
	if (keyboard_check_released(vk_left))  { weapon.release(id); }
	if (keyboard_check_released(vk_right)) { weapon.release(id); }
	if (keyboard_check_released(vk_up))    { weapon.release(id); }
	if (keyboard_check_released(vk_down))  { weapon.release(id); }
	
	if (cooldown > 0) return;
	var autouse = weapon.autouse;
	if (autouse ? keyboard_check(vk_left)  : keyboard_check_pressed(vk_left))  { weapon_use(DIR.LEFT);  return; }
	if (autouse ? keyboard_check(vk_right) : keyboard_check_pressed(vk_right)) { weapon_use(DIR.RIGHT); return; }
	if (autouse ? keyboard_check(vk_up)    : keyboard_check_pressed(vk_up))    { weapon_use(DIR.UP);    return; }
	if (autouse ? keyboard_check(vk_down)  : keyboard_check_pressed(vk_down))  { weapon_use(DIR.DOWN);  return; }
}

function weapon_use(_dir) {
	weapon.use(id, _dir);  
	use_dir = _dir; 	
	cooldown = weapon.cooldown;
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
	
	if (use_dir == DIR.UP) {
		sprite_index = spr_player_idle_back;
		if (input_h != 0 || input_v != 0) {
			sprite_index = spr_player_run_back;
		}
	}
	else {
		sprite_index = spr_player_idle;
		if (input_h != 0 || input_v != 0) {
			sprite_index = spr_player_run;
		}
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