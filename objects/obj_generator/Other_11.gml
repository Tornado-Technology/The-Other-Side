/// @desc Spawn
var rand_num = irandom_range(0, array_length(entities) - 1);
instance_create_depth(x, y, depth, entities[rand_num]);