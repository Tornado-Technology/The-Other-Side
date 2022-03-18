/// @desc Draw-step
if (pause) exit;
if (!ending) {
	alpha = approach(alpha, 1, alpha_speed);
	draw_speed_sfx = alpha >= 0.7;
	draw_alpha_sfx = alpha;
} else {
	draw_alpha_sfx = approach(draw_alpha_sfx, 0, 0.02);
}

indx = approach(indx, 79, 1);
indx = indx >= 79 ? 0 : indx;
