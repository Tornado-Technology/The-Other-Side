/// @desc Draw
var size = new Vector2(display_get_gui_width(), display_get_gui_height());

// Rentangle
draw_set_color(c_black);
draw_set_alpha(alpha);
draw_rectangle(0, 0, size.x, size.y, false);


// SFX
if (draw_speed_sfx) {
	draw_sprite_ext(spr_sfx_square_fall, indx, size.x / 2, size.y, size.x / 100, 1, 0, c_white, 1);
}

if (alpha >= 0.8 && !fflag) {
	fflag = true;
	obj_player_dummy.to_faling = true;
}

draw_set_color(c_white);
draw_set_alpha(1);
