speed -= 0.02;

if (direction < 90) direction -= 0.1;
if (direction >= 90) direction += 0.1;
	
image_angle = direction;
	
if (speed <= 3) instance_destroy();