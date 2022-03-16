audio_stop_all();

if (obj_time.night == true)
	room_goto(room_day);
else {
	var num = obj_time.day_num - 1;
	//instance_destroy(obj_time);
	room_goto(rooms_night[num]);
}