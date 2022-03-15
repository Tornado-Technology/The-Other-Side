// Slowing
image_alpha = approach(image_alpha, 0, is_touched ? 0.005 : 0.01);
var inst_enemy = instance_place(x, y, obj_enemy);
if (inst_enemy != noone) enemy_slow(inst_enemy);
if (image_alpha <= 0) instance_destroy();