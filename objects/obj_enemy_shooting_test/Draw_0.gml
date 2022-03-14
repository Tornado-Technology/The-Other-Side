draw_self();
var rot = point_direction(x, y, x_player, y_player);
draw_sprite_ext(spr_weapon_bow_mini, 0, x, y - 8, 1, 1, rot, c_white, 1);