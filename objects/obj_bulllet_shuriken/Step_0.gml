speed -= 0.02;

if (direction < 90) direction -= 0.2;
if (direction >= 90) direction += 0.2;
	
image_angle += 45;
	
if (speed <= 3) instance_destroy();