if (to_faling) {
	sprite_index = spr_player_to_fall;
	to_faling = false;
	exit;
}

if (sprite_index == spr_player_to_fall) {
	sprite_index = spr_player_fall;
	is_faling = true;
}