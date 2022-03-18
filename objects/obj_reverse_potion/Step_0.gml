event_inherited();
if (!create) {
	create = true;
	if (direction >= 90) {
		dir_sign = 1;
	}
}
speed -= 0.02

var tang = 0.5;
direction += dir_sign * tang;

image_angle = direction;
	
if (speed <= 2) {
	instance_create_depth(x, y, 0, obj_reverse_zone);
	instance_destroy();
}