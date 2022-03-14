/// @desc Draw
if (weapon_depth <= -1) {
	weapon.draw(id);
	draw_self();
	exit;
}

draw_self();
weapon.draw(id);