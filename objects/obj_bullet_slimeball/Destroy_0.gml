var color = c_red;
color = image_index == 1 ? c_blue : color;
color = image_index == 2 ? c_purple : color;
create_sfx_ex(color);
audio_play_sound(sfx_slime_move, 0, false);
if (image_index == 2) instance_create_depth(x, y, depth, choose(obj_damage_zone, obj_reverse_zone));