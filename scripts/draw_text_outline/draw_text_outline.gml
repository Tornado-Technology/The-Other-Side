function draw_text_outline(_x, _y, _text, _color = c_white) {
	draw_set_color(c_black);
	draw_text(_x + 1, _y, _text);
	draw_text(_x - 1, _y, _text);
	draw_text(_x, _y + 1, _text);
	draw_text(_x, _y - 1, _text);
	
	draw_set_color(_color);
	draw_text(_x, _y, _text);
}

function draw_text_outline_ext(_x, _y, _text, _sep, _w) {
	draw_set_color(c_black);
	draw_text_ext(_x + 1, _y, _text, _sep, _w);
	draw_text_ext(_x - 1, _y, _text, _sep, _w);
	draw_text_ext(_x, _y + 1, _text, _sep, _w);
	draw_text_ext(_x, _y - 1, _text, _sep, _w);
	
	draw_set_color(c_white);
	draw_text_ext(_x, _y, _text, _sep, _w);
}