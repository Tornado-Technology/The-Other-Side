if (pause) exit;

time = approach(time, 0, 1);

if (time <= 0 && !teleporting) {
	event_user(0);
	teleporting = true;
}