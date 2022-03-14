image_yscale = lerp(image_yscale, 1, 0.2);

if (apple == noone) exit;
if (!instance_exists(apple)) exit;
if (!apple.pickable) apple.y = lerp(apple.y, y + 16, 0.5);