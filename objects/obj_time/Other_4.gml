time = time_max + player_get_stabelizers();
teleporting = false;

if (room == room_day) {
	day_num++;
	night = false;
} else {
	night = true;
}