time_life--;
image_alpha = time_life / 200;
if (time_life <= 0)
	instance_destroy();