var width  = display_get_gui_width();
var height = display_get_gui_height();
var _x, _y;

var wbox_padding = 10;

draw_sprite(spr_ui_wepon_box,   0, 16 + wbox_padding, 20 + wbox_padding);
draw_sprite(spr_ui_text_weapon, 0, 26, 8);
draw_sprite(spr_ui_text_coins,  0, 17, 54);
draw_sprite(spr_ui_text_keys,   0, 19, 66);


if (!instance_exists(obj_player)) exit;

var weapon = obj_player.weapon;
if (weapon != noone) {
	draw_shader_outine(weapon.icon);
	draw_sprite_ext(weapon.icon, 0, 26 + weapon.icon_x, 26 + weapon.icon_y, 1, 1, weapon.icon_angle, c_white, 1);
	shader_reset();
}


var money = string(obj_player.money);
var keys  = string(obj_player.keys);
var _fps = "Fps: " + string(fps_real);

draw_set_halign(fa_left);
draw_set_valign(fa_center);
draw_set_font(font_fight_stat);

_x = 38;
_y = 64;
draw_set_color(c_black);
draw_text(_x - 1, _y, money);
draw_text(_x + 1, _y, money);
draw_text(_x, _y - 1, money);
draw_text(_x, _y + 1, money);

draw_set_color(c_white);
draw_text(38, 64, money);

_x = 38;
_y = 52;
draw_set_color(c_black);
draw_text(_x - 1, _y, keys);
draw_text(_x + 1, _y, keys);
draw_text(_x, _y - 1, keys);
draw_text(_x, _y + 1, keys);

draw_set_color(c_white);
draw_text(_x, _y, keys);

_x = 10;
_y = height - 10;
draw_set_color(c_black);
draw_text(_x - 1, _y, _fps);
draw_text(_x + 1, _y, _fps);
draw_text(_x, _y - 1, _fps);
draw_text(_x, _y + 1, _fps);

draw_set_color(c_white);
draw_text(_x, _y, _fps);

event_user(0);
