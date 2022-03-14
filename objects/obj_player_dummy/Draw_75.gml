var size = new Vector2(display_get_gui_width(), display_get_gui_height());

var offset_y = 0;
if (is_faling) {
	offset_y = wave(10, -10, 6, 0);
}	

draw_sprite(sprite_index, image_index, size.x / 2, size.y / 2 + offset_y);