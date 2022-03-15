event_inherited();

var x_player = player_get_x();
var y_player = player_get_y();
	
var x_cell = floor(x_player / global.cell_size);
var y_cell = floor(y_player / global.cell_size);
	
var cell_div2 = global.cell_size / 2;
var position_x = x_cell * global.cell_size + cell_div2;
var position_y = y_cell * global.cell_size + cell_div2;

var distance_to_player = point_distance(x, y, position_x, position_y);
if (distance_to_player < distance_stop)
	stop = distance_to_player < distance_stop;
else
	stop = false;

if (time_path == 0 && !stop) {
	mp_grid_path(global.grid, path, x + cell_div2, y + cell_div2, position_x, position_y, true);
	path_start(path, speed_normal, path_action_stop, false);
}
time_path++;
time_path = period_path % time_path;

if (distance_to_player < distance_shoot) {
	time_shoot++;
	if (time_shoot >= period_shoot) {
		shoot_to(obj_reverse_potion, x_player, y_player - 20);
		time_shoot = 0;
	}
}