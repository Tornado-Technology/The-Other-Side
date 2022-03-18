depth = -10000;
alpha          = 0;
alpha_speed    = 0.01;
draw_speed_sfx = false;
indx = 0;
fflag = false;
instance_create_depth(-100, -100, -100, obj_player_dummy);

obj_player.can_move = false;
obj_player.is_draw = false;
obj_player.can_weapon_use = false;
if (obj_time.night) instance_destroy(obj_player);

rooms_night = [room_night1, room_night2, room_night3, room_night4, room_night5, room_night6, room_boss1, room_night_final];

player_save();

alarm[0] = 1;
alarm[1] = room_speed * 7;

ending = false;

audio_sound_gain(obj_bgm.sound, 0, 1500);
alarm[3] = 80;
with (obj_zombu) stop = true;