image_angle += 45;

if (finde_player) {
	if (collision_circle(x, y, 1000, obj_player, false, false)) {
		direction = point_direction(x, y, player_get_x(), player_get_y());	
	} else {
		instance_destroy();
	}
	
	exit;
}

if (enemy == noone) {
	var list = ds_list_create();
	
	collision_circle_list(x, y, 400, obj_enemy, false, false, list, true);
	
	if (ds_list_size(list) > 0) {
		enemy = list[| 0];
		ds_list_destroy(list);
	} else {
		finde_player = true;
		ds_list_destroy(list);
		exit;
	}
} 

if (!instance_exists(enemy)) {
	enemy = noone;
	exit;
}

direction = point_direction(x, y, enemy.x, enemy.y);	