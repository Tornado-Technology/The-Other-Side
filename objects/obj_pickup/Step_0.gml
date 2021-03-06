/// @desc Collision check & Animation
depth = -bbox_bottom + wave(create_y, create_y + 7, 1, animation_offset);

speed = approach(speed, 0, 0.05);

var hp     = player_get_hp();
var hp_max = player_get_hp_max();

// Main
if (collision_circle(x, y, distance, obj_player, false, false) && !is_picked) {
	if (hp < hp_max || !heal_check) {
			is_picked = true;
		}
	else {
		is_picked = false;
	}
}

if (is_picked) {
	if (pickable) {
		if (hp < hp_max || !heal_check) {
			event_user(0); // Collision
			x = approach(x, player_get_x(), 3);
			y = approach(y, player_get_y(), 3);
			exit;
		}
	}
}

// Animation
if (not_animated) exit;
y = wave(create_y, create_y + 7, 1, animation_offset); 
image_xscale = wave(1, 0.75, 0.5, animation_offset);