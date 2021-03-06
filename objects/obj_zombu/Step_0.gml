event_inherited();
if (stop) exit;

var x_player = player_get_x();
var y_player = player_get_y();
	
var x_cell = floor(x_player / global.cell_size);
var y_cell = floor(y_player / global.cell_size);
	
var cell_div2 = global.cell_size / 2;
var position_x = x_cell * global.cell_size + cell_div2;
var position_y = y_cell * global.cell_size + cell_div2;

if (collision_circle(x, y, 32, obj_wall, false, false)) {
	speed = 0;
	direction = 0;
	time_path++;
	time_path = period_path % time_path;
	if (time_path == 0) {
		mp_grid_path(global.grid, path, x + cell_div2, y + cell_div2, position_x, position_y, true);
		path_start(path, speed_normal, path_action_stop, false);
	}
} else {
	speed = speed_normal;
	direction = point_direction(x, y, position_x, position_y);
}

// Growl
if (collision_circle(x, y, 110, obj_player, false, false) && !growled) {
	audio_play_sound(sfx_zombu, 0, false);
	growled = true;
}