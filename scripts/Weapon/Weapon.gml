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

enum WEAPON_ID {
	SWORD = 0
}

global.weapons_array = [
	new Weapon(spr_weapon_sword, "Sword", "The basic sword", 
	
	function(_player, _dir) {
		var _y = _player.y - _player.sprite_height / 2;
		var _x = _player.x;
		
		var off = 15;
		switch (_dir) {
			case DIR.RIGHT:
				_x += off;
				break;
			case DIR.UP:
				_y -= off;
				break;
			case DIR.LEFT:
				_x -= off;
				break;
			case DIR.DOWN:
				_y += off;
				break;
		}
		
		var inst = instance_create_depth(_x, _y, _player.depth, obj_damage);
		inst.image_angle = _dir;
	}, 
	function(_player) {
		
	}).icon_def(-1, 13, 90)
];