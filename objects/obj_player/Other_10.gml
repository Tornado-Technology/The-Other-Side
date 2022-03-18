/// @desc Draw
if (weapon_depth <= -1) {
	if (can_weapon_use) weapon.draw(id);
	draw_self();
	exit;
}

draw_self();
if (can_weapon_use) weapon.draw(id);