// Loot
var count = choose(0, 0, 0, 2, 4, 6);
if (count > 0) { 
	var inst = instance_create_depth(x, y, depth, obj_coin);
	inst.count = count;
	inst.rare = COIN_RARE.SILVER;
}

// SFX
audio_play_sound(sfx_skeleton_death, 0, false);
create_sfx_ex(c_purple);
create_sfx_ex(c_white);

// Kills
global.enemy_kills += 1;