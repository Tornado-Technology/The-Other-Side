if (!(fps_real <= 70) && !collision_circle(x, y, 500, obj_player, false, false) && collision_circle(x, y, 900, obj_player, false, false)) event_user(1);
alarm[0] = random_range(time_min, time_max);