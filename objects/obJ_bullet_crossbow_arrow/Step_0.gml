speed -= 0.02;
if (!create) {
	create = true;
	if (direction >= 90) {
		dir_sign = 1;
	}
}



event_user(0);
image_angle = direction;
if (speed <= 3) instance_destroy();