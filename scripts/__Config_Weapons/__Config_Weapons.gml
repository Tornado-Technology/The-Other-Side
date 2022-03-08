#region Weapon array
global.weapons_array = [
	// WEPON_ID.SWORD [0]
	new Weapon(spr_weapon_sword, "Sword", "The basic sword", 
	
	//Use
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
	
	// Draw
	function(_player) {
		
	}).icon_def(-1, 13, 90)
];
#endregion

enum WEAPON_ID {
	SWORD = 0
}