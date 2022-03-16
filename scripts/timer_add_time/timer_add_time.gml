function timer_add_time(_value) {
	if (!instance_exists(obj_time)) return;
	obj_time.time += _value;
}