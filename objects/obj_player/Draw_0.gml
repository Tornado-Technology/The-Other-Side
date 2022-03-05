draw_self();

var angle = dir + 90 + 45;//point_direction(weapon_x, weapon_y, mouse_x, mouse_y);

draw_text(x + 20, y + 20, string(dir));
draw_text(x + 20, y + 40, "X: " + string(speed_h));
draw_text(x + 20, y + 60, "Y: " + string(speed_v));

draw_sprite_ext(spr_sword_test, 0, weapon_x, weapon_y, 1, image_yscale, angle, c_white, 1);