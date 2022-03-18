var width  = display_get_gui_width();
var height = display_get_gui_height();

draw_set_font(font_fight_stat)
draw_set_color(c_white);
draw_set_alpha(1);

draw_shader_outine(spr_ui_logo, new Vector4(0, 0, 0, 0.5));
draw_sprite_ext(spr_ui_logo, 0, width / 2, height / 10, 1, 1, 0, c_white, 1);
shader_reset();

switch(tab) {
	case MenuTabName.Main:
		draw_set_halign(fa_center);
		draw_text_outline(width / 2, height / 6, "PLAY\nPress any key!");
		break;
	
	case MenuTabName.About:
		draw_set_halign(fa_center);
		draw_text_outline(width/2, height/6, "Now to play");
		draw_set_halign(fa_left);
		draw_text_outline_ext(width/6, height/4, "You will appear at the day location. You will have one minute to loot. At the end of time, you will be teleported to the other side. Your goal: kill undeads and survive until you teleport back.", 20, 320);
		draw_text_outline(width/3, height - height/4 - 14, "Back");
		draw_sprite(spr_left_button, 0, width/3 - 20, height - height/4);
		draw_text_outline(width - width/3 - 20, height - height/4 - 14, "OK");
		draw_sprite(spr_right_button, 0, width - width/3 + 10, height - height/4);
		break;
			
	case MenuTabName.Control:
		draw_set_halign(fa_center);
		draw_text_outline(width/2, height/6, "Control");
		draw_text_outline(width/3, height/2 - 45, "Move");
		draw_sprite(spr_w_button, 0, width/3, height/2 - 14);
		draw_sprite(spr_s_button, 0, width/3, height/2);
		draw_sprite(spr_d_button, 0, width/3 - 16, height/2);
		draw_sprite(spr_a_button, 0, width/3 + 16, height/2);
		draw_text_outline(width - width/3, height/2 - 45, "Attack");
		draw_sprite(spr_up_button,   0, width - width / 3,      height / 2 - 14);
		draw_sprite(spr_down_button, 0, width - width / 3,      height / 2);
		draw_sprite(spr_left_button, 0, width - width / 3 - 16, height / 2);
		draw_sprite(spr_right_button,0, width - width / 3 + 16, height / 2);
		draw_set_halign(fa_left);
		draw_text_outline(width/3, height - height/4 - 14, "Back");
		draw_sprite(spr_left_button, 0, width/3 - 20, height - height/4);
		draw_text_outline(width - width/3 - 20, height - height/4 - 14, "OK");
		draw_sprite(spr_right_button, 0, width - width/3 + 10, height - height/4);
		break;
}