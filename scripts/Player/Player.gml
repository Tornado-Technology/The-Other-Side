function player_get_x() {
	if (!instance_exists(obj_player)) return -1;
	return obj_player.x;
}

function player_get_y() {
	if (!instance_exists(obj_player)) return -1;
	return obj_player.y;
}
function player_set_weapon(_weapon) {
	if (!instance_exists(obj_player)) return;
	var inst = instance_create_depth(obj_player.x + 8, obj_player.y - 8, obj_player.depth, obj_player.weapon.item);
	inst.pickable = false;
	inst.is_picked = false;
	with (inst) { motion_add(obj_player.use_dir, 1.5) alarm[0] = 60; };
	obj_player.weapon = _weapon;
}

/// @param value
function player_add_hp(_value = 1) {
	if (!instance_exists(obj_player)) return;
	if (obj_player.hp + _value > obj_player.hp_max) return;
	obj_player.heal_color_time = 60;
	obj_player.hp += abs(_value);
}

function player_get_hp() {
	if (!instance_exists(obj_player)) return;
	return obj_player.hp;
}

function player_get_hp_max() {
	if (!instance_exists(obj_player)) return;
	return obj_player.hp_max;
}


/// @param value
function player_remove_hp(_value = 1) {
	if (!instance_exists(obj_player)) return;
	if (obj_player.inv > 0) return;
	obj_player.image_yscale = 0.5;
	obj_player.inv = obj_player.inv_max;
	obj_player.hp -= abs(_value);
}

/// @param value
function player_add_money(_value) {
	if (!instance_exists(obj_player)) return;
	obj_player.money += abs(_value);
}

/// @param value
function player_add_keys(_value) {
	if (!instance_exists(obj_player)) return;
	obj_player.keys += abs(_value);
}

/// @param value
function player_get_keys() {
	if (!instance_exists(obj_player)) return -1;
	return obj_player.keys;
}

/// @param value
function player_remove_keys(_value) {
	if (!instance_exists(obj_player)) return;
	obj_player.keys = max(obj_player.keys - abs(_value), 0);
}

/// @param sec
function reverse_control(_sec) {
	if (!instance_exists(obj_player)) return;
	obj_player.time_reverse = _sec * room_speed;
}

function player_control_is_reversed(_sec) {
	if (!instance_exists(obj_player)) return;
	return obj_player.time_reverse > 0;
}

/// @param sec
function player_adrenalin(_sec) {
	if (!instance_exists(obj_player)) return;
	obj_player.adrenalin_time = 20 * room_speed;
}