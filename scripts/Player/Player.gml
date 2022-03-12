function player_get_x() {
	if (!instance_exists(obj_player)) return -1;
	return obj_player.x;
}

function player_get_y() {
	if (!instance_exists(obj_player)) return -1;
	return obj_player.y;
}

/// @param value
function player_add_hp(_value = 1) {
	if (!instance_exists(obj_player)) return;
	if (obj_player.hp + 1 > obj_player.hp_max) return;
	obj_player.hp += abs(_value);
}

/// @param value
function player_remove_hp(_value = 1) {
	if (!instance_exists(obj_player)) return;
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

/// @param value, time
function reverse_control(_value, _time) {
	if (!instance_exists(obj_player)) return;
	obj_player.control_is_reversed = _value;
	obj_player.time_reverse = _time;
}