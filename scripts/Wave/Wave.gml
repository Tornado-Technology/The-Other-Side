function wave(from, to, duration, offset) {
	var a4 = (to - from) * 0.5;
	return from + a4 + sin((((current_time * 0.001) + duration * offset) / duration) * (pi * 2)) * a4;
}

function wave_time(from, to, duration, offset, time) {
	var a4 = (to - from) * 0.5;
	return from + a4 + sin((((time * 0.001) + duration * offset) / duration) * (pi * 2)) * a4;
}