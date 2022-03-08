function Weapon(_icon, _name, _desc, _use, _draw) constructor {
	icon = _icon;
	name = _name;
	desc = _desc;
	use  = _use;
	draw = _draw;
	
	icon_x = 0;
	icon_y = 0;
	icon_angle = 0;
	
	static icon_def = function(_x, _y, _angle) {
		icon_x = _x;
		icon_y = _y;
		icon_angle = _angle;
		
		return self;
	}
}

/// @param id
function weapon_get(_id) {
	return global.weapons_array[_id];
}