audio_stop_all();

if (obj_time.night == true)
	room_goto(room_day);
else {
	var num = obj_time.day_num - 1;
	if (num < array_length(rooms_night))
		room_goto(rooms_night[num]);
	else
		room_goto(room_night_final);
}