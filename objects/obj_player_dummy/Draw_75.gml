var size = new Vector2(display_get_gui_width(), display_get_gui_height());

if (is_faling && !ending) {
	time += 30;
	offset_y = wave_time(10, -10, 6, 0, time);
}	

if (ending) {
	time += 30;
	offset_y = approach(offset_y, 300, 1) + wave_time(10, -10, 6, 0, time);;
}

draw_sprite(sprite_index, image_index, size.x / 2, size.y / 2 + offset_y);