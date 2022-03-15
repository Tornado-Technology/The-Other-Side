function Weapon(_icon, _name, _item, _desc, _use, _draw) constructor {	
	icon_x = 0;
	icon_y = 0;
	icon_angle = 0;

	animation_use = false;
	animation_frame = 0;
	
	cooldown = 10;
	autouse = false;
	
	item = _item;
	
	icon = _icon;
	name = _name;
	desc = _desc;
	
	use  = _use;
	draw = _draw;
	press = function(_player) {};
	release = function(_player) {};
	
	static icon_def = function(_x, _y, _angle) {
		icon_x = _x;
		icon_y = _y;
		icon_angle = _angle;
		
		return self;
	}
	
	static set_item = function(_item) {
		item = _item;
		
		return self;
	}
	
	static set_press = function(_item) {
		press = _item;
		
		return self;
	}
	
	static set_release = function(_item) {
		release = _item;
		
		return self;
	}
	
	static set_cooldown = function(_value) {
		cooldown = _value;
		
		return self;
	}
	
	static set_autouse = function(_value) {
		autouse = _value;
		
		return self;
	}
}

/// @param id
function weapon_get(_id) {
	return global.weapons_array[_id];
}