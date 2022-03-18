function show_item_lore(_id) {
	if (!instance_exists(obj_player_gui)) exit;
	with (_id) {
		obj_player_gui.alpha_text = 1;
		obj_player_gui.text_1 = name;
		obj_player_gui.text_2 = description;
	}
	with (obj_player_gui) alarm[0] = 80;
}