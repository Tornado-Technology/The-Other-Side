/// @desc Camera On
boundless = false;
view_enabled    = true;
view_visible[0] = true;
camera = view_camera[0];
camera_set_view_size(camera, view_width, view_height);

display_set_gui_size(view_width, view_height);
window_set_size(view_width * scale_width, view_height * scale_height);
surface_resize(application_surface, view_width * scale_width, view_height * scale_height);