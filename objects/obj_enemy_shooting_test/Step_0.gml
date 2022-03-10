var x_player = player_get_x();
var y_player = player_get_y();
	
var x_cell = floor(x_player / global.cell_size);
var y_cell = floor(y_player / global.cell_size);
	
var cell_div2 = global.cell_size / 2;
var position_x = x_cell * global.cell_size + cell_div2;
var position_y = y_cell * global.cell_size + cell_div2;
	
mp_grid_path(global.grid, path, x + cell_div2, y + cell_div2, position_x, position_y, true);

if (point_distance(x, y, x_player, y_player) > distance_stop)
	path_start(path, 2, path_action_stop, false);

if (point_distance(x, y, x_player, y_player) < distance_shoot) {
	time_shoot++;
	if (time_shoot >= period_shoot) {
		shoot_to(obj_arrow, x_player, y_player);
		time_shoot = 0;
	}
}