function player_get_x() {
	if (!instance_exists(obj_player)) return -1;
	return obj_player.x;
}

function player_get_y() {
	if (!instance_exists(obj_player)) return -1;
	return obj_player.y;
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