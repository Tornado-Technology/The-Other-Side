enum CAMERA_MODE {
	FOLLOW_OBJECT,
	FOLLOW_MOUSE_DRAG,
	FOLLOW_MOUSE_BORDER,
	FOLLOW_MOUSE_PEEK,
	MOVE_TO_TARGET,
	MOVE_TO_FOLLOW_TARGET
}

function camera_get_x() {
	var cam = obj_camera.camera;
	return camera_get_view_x(cam);
}

function camera_get_y() {
	var cam = obj_camera.camera;
	return camera_get_view_y(cam);
}

function camera_get_width() {
	var cam = obj_camera.camera;
	return camera_get_view_width(cam);
}

function camera_get_height() {
	var cam = obj_camera.camera;
	return camera_get_view_height(cam);
}