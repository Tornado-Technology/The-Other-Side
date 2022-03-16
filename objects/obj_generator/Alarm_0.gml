if (fps_real >= 70 && !collision_circle(x, y, radius, obj_player, false, false)) event_user(1);
alarm[0] = random_range(time_min, time_max);