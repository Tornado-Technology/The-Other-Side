// Resolution 
zoom         = 4;
view_width   = 1920 / zoom;
view_height  = 1080 / zoom;
scale_width  = 4;
scale_height = 4;

// Modes
mode = CAMERA_MODE.FOLLOW_OBJECT;
following = obj_player;
boundless = false;
traget_x = 0;
target_y = 0;
mxprevious = 0;
myprevious = 0;

// Shake
shake_x = 0;
shake_y = 0;
shake_power = 0;
shake_time  = 0;

// Setup
camera = view_camera[0];
camera_set_view_size(camera, view_width, view_height);

display_set_gui_size(view_width, view_height);
window_set_size(view_width * scale_width, view_height * scale_height);
surface_resize(application_surface, view_width * scale_width, view_height * scale_height);