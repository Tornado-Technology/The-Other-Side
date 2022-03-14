/// @param obj
/// @param x
/// @param y
/// @param x_offset
/// @param y_offset
function shoot_to(_obj, _x, _y, _x_offset = 0, _y_offset = 0){
	bullet = instance_create_depth(x + _x_offset, y + _y_offset, 0, _obj);
	bullet.direction = point_direction(x + _x_offset, y + _y_offset, _x, _y);
}