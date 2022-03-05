global.cell_size = 16;
global.grid_width = room_width / global.cell_size;
global.grid_height = room_height / global.cell_size;

global.grid = mp_grid_create(0, 0, global.grid_width, global.grid_height, global.cell_size, global.cell_size);

grid_is_drawing = true;