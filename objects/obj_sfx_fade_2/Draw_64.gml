/// @desc Draw
var size = new Vector2(display_get_gui_width(), display_get_gui_height());

// Rentangle
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_text_outline(size.x / 2, size.y / 2, "You dead, try now yet...", c_red);

draw_set_color(c_red);
draw_set_alpha(alpha);
draw_rectangle(0, 0, size.x, size.y, false);