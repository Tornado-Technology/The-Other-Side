if (weapon_depth <= -1) {
	weapon.draw(id);
	draw_self();
} else {
	draw_self();
	weapon.draw(id);
}