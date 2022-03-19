var x_draw = camera_get_x();
var y_draw = camera_get_y();

if (is_faling && !ending) {
	time += 30;
	offset_y = wave_time(10, -10, 6, 0, time);
}	

if (ending) {
	time += 30;
	offset_y = approach(offset_y, 300, 1) + wave_time(10, -10, 6, 0, time);
}

draw_set_alpha(1);
draw_sprite(sprite_index, image_index, x - x_draw, y - y_draw + offset_y);