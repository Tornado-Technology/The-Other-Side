create_sfx_ex(c_blue);
audio_play_sound(sfx_zombu_death, 0, false);

var count = choose(0, 9, 9, 10, 4, 12);
if (count > 0) {
	instance_create_depth(x, y, depth, obj_coin).count = count;
}

var rand = irandom_range(0, 100);
if (rand <= 4) {
	instance_create_depth(x, y, depth, choose(obj_adrenalin, obj_stabelizer));
}

global.enemy_kills += 1;