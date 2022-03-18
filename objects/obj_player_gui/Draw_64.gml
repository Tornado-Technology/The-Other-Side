var width  = display_get_gui_width();
var height = display_get_gui_height();
var _x, _y;

var wbox_padding = 10;

draw_sprite(spr_ui_text_weapon, 0, 26, 8);
draw_sprite(spr_ui_text_coins,  0, 17, 54);
draw_sprite(spr_ui_text_keys,   0, 19, 66);

if (instance_exists(obj_time)) {
	draw_set_halign(fa_center);
	draw_set_valign(fa_center);
	draw_set_font(font_fight_stat);
	if (obj_time.night)
		draw_text_outline(width / 2, 3, "Night " + string(obj_time.night_num));
	else
		draw_text_outline(width / 2, 3, "Day " + string(obj_time.day_num));
	draw_text_outline(width / 2, 12, "Time: " + convert_to_time(obj_time.time));
}

if (!instance_exists(obj_player)) exit;

draw_set_halign(fa_center);
draw_set_valign(fa_center);
draw_set_font(font_fight_stat);

draw_set_alpha(alpha_text);

draw_text_outline(width / 2, 22, text_1, c_white);
draw_text_outline(width / 2, 32, text_2, c_ltgray);

draw_set_alpha(1);

var weapon = obj_player.weapon;
if (weapon != noone) {
	draw_shader_outine(spr_ui_wepon_box, rare_get_color(weapon.rare));
}

draw_sprite(spr_ui_wepon_box,   0, 16 + wbox_padding, 20 + wbox_padding);

if (weapon != noone) {
	shader_reset();
}

if (player_control_is_reversed()) {
	draw_sprite(spr_ui_effect_box,   0, 16 + wbox_padding, 88 + wbox_padding);
	_x = 28;
	_y = 118;
	draw_text_outline(_x, _y, "Time: " + convert_to_time(obj_player.time_reverse));
}

if (weapon != noone) {
	draw_shader_outine(weapon.icon);
	draw_sprite_ext(weapon.icon, 0, 26 + weapon.icon_x, 26 + weapon.icon_y, 1, 1, weapon.icon_angle, c_white, 1);
	shader_reset();
}

draw_set_halign(fa_left);
var money = string(obj_player.money);
var keys  = string(obj_player.keys);
var _fps = "Fps: " + string(fps_real);

_x = 38;
_y = 64;
draw_text_outline(38, 64, money);

_x = 38;
_y = 52;
draw_text_outline(_x, _y, keys);

if (show_fps) {
	_x = 10;
	_y = height - 10;
	draw_text_outline(_x, _y, _fps);
}

event_user(0);