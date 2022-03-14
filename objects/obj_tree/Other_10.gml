/// @desc Map
if (!variable_global_exists("grid"))  exit;

var x_cell = floor(x / global.cell_size);
var y_cell = floor(y / global.cell_size);
mp_grid_add_cell(global.grid, x_cell - 1, y_cell - 1);
mp_grid_add_cell(global.grid, x_cell, y_cell - 1);