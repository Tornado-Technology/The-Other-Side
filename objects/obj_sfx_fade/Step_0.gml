/// @desc Draw-step
alpha = approach(alpha, 1, alpha_speed);
draw_speed_sfx = alpha >= 0.7;

indx = approach(indx, 79, 1);
indx = indx >= 79 ? 0 : indx;
