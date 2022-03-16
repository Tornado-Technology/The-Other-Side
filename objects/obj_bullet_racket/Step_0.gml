time++;
image_angle = direction;
if (enemy == noone) {
	var list = ds_list_create();
	
	collision_circle_list(x, y, 300, obj_enemy, false, false, list, true);
	
	if (ds_list_size(list) > 0) {
		enemy = list[| 0];
		ds_list_destroy(list);
	} else {
		ds_list_destroy(list);
		exit;
	}
} 

if (!instance_exists(enemy)) {
	enemy = noone;
	exit;
}

direction = approach(direction, point_direction(x, y, enemy.x, enemy.y), 20);	
image_angle = direction;

if (time > room_speed * 15) {
	instance_destroy();
}