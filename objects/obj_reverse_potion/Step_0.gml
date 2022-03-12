event_inherited();

speed -= 0.02

if (direction < 90)
	direction -= 1;
if (direction >= 90)
	direction += 1;
	
image_angle = direction;
	
if (speed <= 2) {
	instance_create_depth(x, y, 0, obj_reverse_zone);
	instance_destroy();
}