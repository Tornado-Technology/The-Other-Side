global.weapons_array = [];
enum WEAPON_ID {
	SWORD = 0
}


#region Weapon array
// WEAPON_ID.SWORD [0]
global.weapons_array[WEAPON_ID.SWORD] = new Weapon(spr_weapon_sword, "Sword", "The basic sword", 
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
			
		var seq = seq_sword_use;
		var lay = "Instances";
		var elm = layer_sequence_create(lay, _x, _y, seq);
		var ins = layer_sequence_get_instance(elm);
	
		var inst = instance_create_depth(_x, _y, _player.depth, obj_damage);
		inst.image_angle = _dir;
	}, 
	
	// Draw
	function(_player) {
		var draw_dir = _player.dir;
		_player.weapon_depth = (draw_dir == DIR.UP ? -1 : 1);
		
		var draw_offset_x = 7;
		var draw_offset_y = 5;
		
		var draw_x = _player.x + (draw_dir == DIR.RIGHT ? draw_offset_x : (draw_dir == DIR.LEFT ? -draw_offset_x : 0));
		var draw_y = _player.y + (draw_dir == DIR.DOWN  ? draw_offset_y : (draw_dir == DIR.UP   ? -draw_offset_y : 0)) - 10;
		
		var draw_xscale = (draw_dir == DIR.RIGHT ? 1 : -1);
		var draw_yscale = (draw_dir == DIR.UP    ? 1 : -1);
		var draw_angle  = (draw_dir == DIR.UP ? -90 : (draw_dir == DIR.DOWN ? 90 : 0));
		
		draw_sprite_ext(spr_weapon_sword, 0, draw_x, draw_y, draw_xscale, draw_yscale, draw_angle, c_white, 1);
		
		
	}).icon_def(-1, 13, 90)

#endregion