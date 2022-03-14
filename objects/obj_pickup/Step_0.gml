/// @desc Collision check & Animation
depth = -bbox_bottom + wave(create_y, create_y + 7, 1, animation_offset);

// Main
if (collision_circle(x, y, distance, obj_player, false, false) && !is_picked) is_picked = true;

if (is_picked) {
	var hp     = player_get_hp();
	var hp_max = player_get_hp_max();
	
	if (pickable) {
		if (hp < hp_max || !heal_check) {
			event_user(0); // Collision
			x = lerp(x, player_get_x(), 0.2);
			y = lerp(y, player_get_y(), 0.2);
			exit;
		}
	}
}

// Animation
if (not_animated) exit;
y = wave(create_y, create_y + 7, 1, animation_offset); 
image_xscale = wave(1, 0.75, 0.5, animation_offset);