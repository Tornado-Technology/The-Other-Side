global.weapons_array = [];
enum WEAPON_ID {
	SWORD = 0,
	BOW = 0
}

#region WEAPON_ID.SWORD[0]
global.weapons_array[WEAPON_ID.SWORD] = new Weapon(spr_weapon_sword, "Sword", "The basic sword", 
function(_player, _dir) { //Use
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
	var inst = instance_create_depth(_x, _y, _player.depth, obj_weapon_sword_crutch);
	inst.image_alpha = 0;
	inst = instance_create_depth(_x, _y, _player.depth, obj_damage);
	inst.image_angle = _dir;
	
}, function(_player) { // Draw
	var draw_dir = _player.use_dir;
	_player.weapon_depth = (draw_dir == DIR.UP ? -1 : 1);
	
	var draw_offset_x = 7;
	var draw_offset_y = 5;
		
	var draw_x = _player.x + (draw_dir == DIR.RIGHT ? draw_offset_x : (draw_dir == DIR.LEFT ? -draw_offset_x : 0));
	var draw_y = _player.y + (draw_dir == DIR.DOWN  ? draw_offset_y : (draw_dir == DIR.UP   ? -draw_offset_y : 0)) - 10;
		
	var draw_xscale = (draw_dir == DIR.RIGHT ? 1 : -1);
	var draw_yscale = (draw_dir == DIR.UP ?   1 : -1);
	var draw_angle  = (draw_dir == DIR.UP ? -90 : (draw_dir == DIR.DOWN ? 90 : 0));
	
	if (instance_exists(obj_weapon_sword_crutch)) {
		obj_weapon_sword_crutch.x = draw_x;
		obj_weapon_sword_crutch.image_alpha = 1;
		obj_weapon_sword_crutch.y = draw_y;
		obj_weapon_sword_crutch.image_xscale = draw_xscale;
		obj_weapon_sword_crutch.image_yscale = draw_yscale;
		obj_weapon_sword_crutch.image_angle  = draw_angle;
		obj_weapon_sword_crutch.depth = _player.depth - draw_dir == DIR.UP ? -1 : 1;
	} else {
		draw_sprite_ext(spr_weapon_sword, 0, draw_x, draw_y, draw_xscale, draw_yscale, draw_angle, c_white, 1);	
	}
}).icon_def(-1, 14, 90)
#endregion
#region WEAPON_IU.BOW[0]
global.weapons_array[WEAPON_ID.BOW] = new Weapon(spr_weapon_bow, "Bow", "...SHOOT!", 
function(_player, _dir) {
	var _y = _player.y - _player.sprite_height / 2;
	var _x = _player.x;
	
	var inst = instance_create_depth(_x, _y, _player.depth, obj_arrow_player);
	inst.direction = _dir;
}, function(_player, _dir) {
	var draw_dir = _player.use_dir;
	_player.weapon_depth = (draw_dir == DIR.UP ? -1 : 1);
	
	var draw_offset_x = 7;
	var draw_offset_y = 5;
		
	var draw_x = _player.x + (draw_dir == DIR.RIGHT ? draw_offset_x : (draw_dir == DIR.LEFT ? -draw_offset_x : 0));
	var draw_y = _player.y + (draw_dir == DIR.DOWN  ? draw_offset_y : (draw_dir == DIR.UP   ? -draw_offset_y : 0)) - 10;
		
	var draw_xscale = (draw_dir == DIR.RIGHT ? 1 : -1);
	var draw_yscale = (draw_dir == DIR.UP ?   1 : -1);
	var draw_angle  = (draw_dir == DIR.UP ? -90 : (draw_dir == DIR.DOWN ? 90 : 0));
	
	draw_sprite_ext(spr_weapon_bow, 0, draw_x, draw_y, draw_xscale, draw_yscale, draw_angle, c_white, 1);	
}).icon_def(3, 4, 0);
#endregion