var size = new Vector2(display_get_gui_width(), display_get_gui_height());
draw_set_alpha(alpha);
draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
var text = (night ? "Night" : "Day") + ": " + (!night ? string(day_num) : string(night_num));
draw_text_transformed(size.x / 2 + 1, size.y / 2, text, 3, 3, 0);
draw_text_transformed(size.x / 2, size.y / 2 - 1, text, 3, 3, 0);
draw_text_transformed(size.x / 2 - 1, size.y / 2, text, 3, 3, 0);
draw_text_transformed(size.x / 2, size.y / 2 + 1, text, 3, 3, 0);

draw_set_alpha(alpha);
draw_set_color(c_white);
draw_text_transformed(size.x / 2, size.y / 2, text, 3, 3, 0);

alpha = approach(alpha, 0, 0.01);

draw_set_alpha(1);
draw_set_color(c_white);