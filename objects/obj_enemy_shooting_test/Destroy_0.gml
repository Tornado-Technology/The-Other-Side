path_delete(path);
create_sfx_ex();

audio_play_sound(sfx_skeleton_death, 0, false);

var count = choose(0, 0, 0, 3, 4, 12);
if (count > 0) {
	instance_create_depth(x, y, depth, obj_coin).count = count;
}

var rand = irandom_range(0, 100);
if (rand <= 2) {
	instance_create_depth(x, y, depth, obj_key);
}

global.enemy_kills += 1;