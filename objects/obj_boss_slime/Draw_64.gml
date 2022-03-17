var size = new Vector2(display_get_gui_width(), display_get_gui_height());
draw_sprite_ext(spr_ui_text_boss_health, 0, size.x / 2,  size.y / 10, 1, 1, 0, c_white, 1); 
draw_sprite_ext(spr_ui_bossbar_slime, 0, size.x / 2, size.y / 6, 2, 2, 0, c_white, 1);
var line = sprite_get_width(spr_ui_bossbar_fill) /  hp_max * hp;
bar = lerp(bar, line, 0.3);
draw_sprite_part_ext(spr_ui_bossbar_fill, 1, 0, 0, bar, 10, size.x / 2 - 52, size.y / 6 - 8, 2, 2, c_white, 1);