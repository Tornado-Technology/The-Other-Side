var cx = camera_get_view_x(camera);
var cy = camera_get_view_y(camera);

switch (mode) {
	case CAMERA_MODE.FOLLOW_MOUSE_BORDER:
		break;
	
	case CAMERA_MODE.FOLLOW_MOUSE_DRAG:
		var mx = display_mouse_get_x();
		var my = display_mouse_get_y();
		
		if (mouse_check_button(mb_left)) {
			cx += (mxprevious - mx) / 2
			cy += (myprevious - my) / 2
		}
		
		mxprevious = mx;
		myprevious = my;
		break;
	
	case CAMERA_MODE.FOLLOW_MOUSE_PEEK:
		break;
	
	case CAMERA_MODE.FOLLOW_OBJECT:
		if (!instance_exists(following)) break;
		cx = following.x - view_width  / 2;
		cy = following.y - view_height / 2;
		break;
	
	case CAMERA_MODE.MOVE_TO_FOLLOW_TARGET:
		break;
	
	case CAMERA_MODE.MOVE_TO_TARGET:
		break;
}

if (!boundless) {
	cx = clamp(cx, 0, room_width - view_width);
	cy = clamp(cy, 0, room_height - view_height);
}

camera_set_view_pos(camera, cx, cy);