path_delete(path);
create_sfx_ex(c_green);

audio_play_sound(sfx_zombu_death, 0, false);

var count = choose(0, 1, 2, 6, 8, 28);
if (count > 0) {
	instance_create_depth(x, y, depth, obj_coin).count = count;
}

var rand = irandom_range(0, 100);
if (rand <= 4) {
	instance_create_depth(x, y, depth, choose(obj_heal_potion, obj_key));
}

global.enemy_kills += 1;