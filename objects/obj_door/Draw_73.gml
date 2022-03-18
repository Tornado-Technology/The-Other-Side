if (!collision_circle(x, y, 25, obj_player, false, false) || is_disappear) exit;

var draw_x = x;
var draw_y = y - 60;
var size_x = 12;

draw_set_valign(fa_middle);
draw_set_halign(fa_left);

var offset_x = 20;

draw_sprite(spr_speech_bouble, 0, draw_x, draw_y);
draw_sprite(spr_coin, 0, draw_x - size_x, draw_y + 3);
		
draw_set_color(obj_player.money < cost ? c_red : c_black);
draw_text(draw_x - size_x + 4, draw_y - 4, string(cost));

for (var i = 0; i < 4; i++) {
	var color = button_progress > i ? c_lime : c_white;
	color = obj_player.money < cost ? c_red : color;
	draw_sprite_ext(buttons[i].image, 0, draw_x - size_x - 20 + offset_x * i, draw_y + 20, 1, 1, 0, color, 1);
}

// Reset
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(noone);