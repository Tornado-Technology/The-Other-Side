create_sfx_ex(c_red);
audio_play_sound(sfx_zombu_death, 0, false);

var count = choose(0, 0, 0, 3, 4, 12);
if (count > 0) {
	instance_create_depth(x, y, depth, obj_coin).count = count;
}