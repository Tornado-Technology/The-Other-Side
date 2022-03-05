// Resolution 
zoom = 4;
view_width  = 1920 / zoom;
view_height = 1080 / zoom;

// Going beyond the edges of the room?
is_room_border = true;

// Target
following_traget = true;
target           = noone;

// Shake
shake_x = 0;
shake_y = 0;
shake_power = 0;
shake_time  = 0;

// Setup
camera = view_camera[0];
display_set_gui_size(view_width, view_height);
window_set_size(view_width * scale.x, view_height * scale.y);
surface_resize(application_surface, view_width * scale.x, view_height * scale.y);