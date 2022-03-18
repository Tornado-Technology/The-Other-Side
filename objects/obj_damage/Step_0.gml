//var insts_enemy = array(instance_place_list(x, y, obj_enemy, true));
//var insts_neutral = array(instance_place_list(x, y, obj_neutral, true));

// Destroy this 
time--; if (time <= 0) instance_destroy();

image_alpha = time/10;
damage = 100 * time/10;