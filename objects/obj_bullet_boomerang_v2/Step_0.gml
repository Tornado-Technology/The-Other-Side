image_angle += 45;

if (finde_player) {
	if (collision_circle(x, y, 1000, obj_player, false, false)) {
		direction = point_direction(x, y, player_get_x(), player_get_y());	
	} else {
		instance_destroy();
	}
	
	exit;
}

if (enemys == noone || ds_list_size(enemys) <= 0) {
	enemys = ds_list_create();
	collision_circle_list(x, y, 600, obj_enemy, false, false, enemys, true);
	
	if (ds_list_size(enemys) > 0) {
		enemy = enemys[| 0];
		need_to_null = false;
	} else {
		finde_player = true;
		exit;
	}
} 

if (!instance_exists(enemy) || enemy == noone) {
	enemys = noone;
	exit;
}

direction = point_direction(x, y, enemy.x, enemy.y);	