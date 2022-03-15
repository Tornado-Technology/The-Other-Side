function convert_to_time(_value) {
	_value = round(_value / room_speed)
	var m = _value div 60;
	var s = _value mod 60;
	return string(m) + (s < 10 ? ":0" : ":") + string(s);
}