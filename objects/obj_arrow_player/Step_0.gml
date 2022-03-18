if (!create) {
	create = true;
	if (direction >= 90) {
		dir_sign = 1;
	}
}


speed -= 0.03;

event_user(0);
image_angle = direction;

if (speed <= 3) instance_destroy();
