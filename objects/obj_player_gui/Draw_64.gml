if (!instance_exists(obj_player)) exit;

draw_text(0, 0, "G: " + string(obj_player.money));
draw_text(0, 15, "K: " + string(obj_player.keys));