obj_time.pause = false;
create_bullets_final();
repeat(10) {
	instance_create_depth(x, y, depth, choose(obj_enemy_slime, obj_enemy_slime_reverse));
}
instance_create_depth(x, y, depth, obj_pice_of_slime);

global.enemy_kills += 100;