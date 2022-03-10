draw_set_color(c_white);

var _p = obj_player;
var _x = 64;
var _y = 12;

var player_hp = floor(_p.hp); 
var player_hp_max = floor(_p.hp_max); 

for (var i = 0; i < player_hp_max; i++) {
	var _x_offset = 20;
	var _y_offset = 0;
	
	var sub = 0;
	if (player_hp - i <= 0) {
		sub = 1;
	}
	
	draw_sprite(spr_ui_heart, sub, _x + _x_offset * i, _y + _y_offset);
}