function Weapon(_icon, _name, _desc, _use, _draw) constructor {
	icon = _icon;
	name = _name;
	desc = _desc;
	use  = _use;
	draw = _draw;
}

/// @param id
function weapon_get(_id) {
	switch (_id) {
		case 0: 
			
		break;
	}
}

enum WEAPON_ID {
	SWORD = 0
}

global.weapons_array = [
	new Weapon(noone, "Sword", "The basic sword", 
	function() {
	
	}, 
	function() {
	
	})
];