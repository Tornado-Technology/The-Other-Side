function get_player_x(){
	if (instance_exists(obj_player))
		return obj_player.x;
	return undefined;
}

function get_player_y(){
	if (instance_exists(obj_player))
		return obj_player.y;
	return undefined;
}