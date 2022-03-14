draw_set_font(font_fight_stat)
draw_set_color(c_white);

switch(tab) {
	case MenuTabName.Main:
		draw_text(room_width/4, room_height/2, "PLAY");
		break;
	
	case MenuTabName.About:
		draw_set_halign(fa_center);
		draw_text(room_width/2, room_height/6, "Now to play");
		draw_set_halign(fa_left);
		draw_text_ext(room_width/6, room_height/4, "You will appear at the day location. You will have one minute to loot. At the end of time, you will be teleported to the other side. Your goal: kill undeads and survive until you teleport back.", 20, 320);
		draw_text(room_width/3, room_height - room_height/4, "Back");
		draw_sprite(spr_left_button, 0, room_width/3 - 20, room_height - room_height/4);
		draw_text(room_width - room_width/3 - 20, room_height - room_height/4, "OK");
		draw_sprite(spr_right_button, 0, room_width - room_width/3, room_height - room_height/4);
		break;
			
	case MenuTabName.Control:
		draw_set_halign(fa_center);
		draw_text(room_width/2, room_height/6, "Control");
		draw_text(room_width/3, room_height/2 - 35, "Move");
		draw_sprite(spr_up_button, 0, room_width/3, room_height/2 - 5);
		draw_sprite(spr_down_button, 0, room_width/3, room_height/2 + 16);
		draw_sprite(spr_left_button, 0, room_width/3 - 16, room_height/2);
		draw_sprite(spr_right_button, 0, room_width/3 + 16, room_height/2);
		draw_text(room_width - room_width/3, room_height/2 - 35, "Attack");
		draw_set_halign(fa_left);
		draw_text(room_width/3, room_height - room_height/4, "Back");
		draw_sprite(spr_left_button, 0, room_width/3 - 20, room_height - room_height/4);
		draw_text(room_width - room_width/3 - 20, room_height - room_height/4, "OK");
		draw_sprite(spr_right_button, 0, room_width - room_width/3, room_height - room_height/4);
		break;
}