var inst = instance_create_depth(x, y, depth, obj_meat);
inst.pickable = false;
with (inst) alarm[0] = 30;
create_sfx_ex();

audio_play_sound(sfx_chicken_death, 0, false);