depth = -10000;
alpha          = 0;
alpha_speed    = 0.01;
draw_speed_sfx = false;
indx = 0;
fflag = false;
instance_create_depth(-100, -100, -100, obj_player_dummy);

obj_player.can_move = false;
obj_player.is_draw = false;
taget_toom = noone;
player_save();
if (room != room_day)
	instance_destroy(obj_player);

alarm[0] = 1;
alarm[1] = room_speed * 7;

