if (!collision_circle(x, y, 25, obj_player, false, false)) exit;

var draw_x = x;
var draw_y = y - 40;
var size_x = 12;


draw_set_valign(fa_middle);
draw_set_halign(fa_left);

var offset_y = 20;
for (var i = 0; i < 4; i++) {
	draw_set_color(c_white);
	draw_shader_outine(object_get_sprite(products[i].item), new Vector4());
	draw_sprite(object_get_sprite(products[i].item), 0, draw_x + size_x + 10, draw_y + 3 - offset_y * i);
	shader_reset();
	draw_sprite(spr_speech_bouble, 0, draw_x, draw_y - offset_y * i);
	draw_sprite(spr_coin, 0, draw_x - size_x, draw_y + 3 - offset_y * i);
	draw_sprite(buttons[i].image, 0, draw_x - size_x - 20, draw_y + 1 - offset_y * i);
	draw_set_color(c_black);
	draw_text(draw_x - size_x + 4, draw_y - 4 - offset_y * i, string(products[i].cost));
}

// Reset
draw_set_alpha(1);
draw_set_color(c_white);
draw_set_halign(noone);