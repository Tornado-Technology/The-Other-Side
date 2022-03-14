speed -= 0.03;

if (direction < 90) direction -= 0.5;
if (direction >= 90) direction += 0.5;
	
image_angle = direction;
	
if (speed <= 3) instance_destroy();