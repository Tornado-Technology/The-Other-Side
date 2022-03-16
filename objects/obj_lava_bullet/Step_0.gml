speed -= 0.01;
image_angle += 45;
image_alpha = speed / 3;
if (speed <= 1) instance_destroy();