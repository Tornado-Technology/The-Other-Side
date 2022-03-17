if (image_alpha < 0.3) exit;

if (image_index == 0) {
	player_remove_hp(2);
	instance_destroy();
}

if (image_index == 1) {
	player_control_is_reversed(10);
	instance_destroy();
}

if (image_index == 2) {
	player_remove_hp(1);
	player_control_is_reversed(6);
	instance_destroy();
}