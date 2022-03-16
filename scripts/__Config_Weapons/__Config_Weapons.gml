global.weapons_array = [];
enum WEAPON_ID {
	SWORD,
	BOW,
	INHIBITOR_GUN,
	SHURIKEN,
	CROSSBOW,
	LAVAGUN,
	RACKETGUN,
	BOOMERANG,
	BOOMERANG_V2,
	GUN
}

#region WEAPON_ID.SWORD[0]
global.weapons_array[WEAPON_ID.SWORD] = new Weapon(spr_weapon_sword, "Sword", obj_sword, RARE_ID.WOOD, "The basic sword", 
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
	audio_play_sound(sfx_sword, 0, false);
	
}, function(_player) { // Draw
	var draw_dir = _player.use_dir;
	_player.weapon_depth = (draw_dir == DIR.UP ? -1 : 1);
	
	var draw_offset_x = 6;
	var draw_offset_y = 4;
		
	var draw_x = _player.x + (draw_dir == DIR.RIGHT ? draw_offset_x : (draw_dir == DIR.LEFT ? -draw_offset_x : 0));
	var draw_y = _player.y + (draw_dir == DIR.DOWN  ? draw_offset_y : (draw_dir == DIR.UP   ? -draw_offset_y : 0)) - 10;
		
	var draw_xscale = (draw_dir == DIR.RIGHT ? 1 : -1);
	var draw_yscale = (draw_dir == DIR.UP ? 1 : -1);
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
		draw_sprite_ext(spr_weapon_sword, 0, draw_x, draw_y, draw_xscale, draw_yscale, draw_angle + 45, c_white, 1);	
	}
}).set_cooldown(20).icon_def(-1, 14, 90);
#endregion
#region WEAPON_ID.BOW[1]
global.weapons_array[WEAPON_ID.BOW] = new Weapon(spr_weapon_bow, "Bow", obj_bow, RARE_ID.WOOD, "...SHOOT!", 
function(_player, _dir) {
	var _y = _player.y - _player.sprite_height / 2;
	var _x = _player.x;
	
	var inst = instance_create_depth(_x, _y, _player.depth, obj_arrow_player);
	inst.direction = _dir;
	audio_play_sound(sfx_bow, 0, false);
}, function(_player, _dir) {
	var draw_dir = _player.use_dir;
	_player.weapon_depth = (draw_dir == DIR.UP ? -1 : 1);
	
	var draw_offset_x = 7;
	var draw_offset_y = 5;
		
	var draw_x = _player.x + (draw_dir == DIR.RIGHT ? draw_offset_x : (draw_dir == DIR.LEFT ? -draw_offset_x : 0));
	var draw_y = _player.y + (draw_dir == DIR.DOWN  ? draw_offset_y : (draw_dir == DIR.UP   ? -draw_offset_y : 0)) - 10;
		
	var draw_xscale = (draw_dir == DIR.RIGHT ? 1 : -1);
	var draw_yscale = (draw_dir == DIR.UP ? 1 : -1);
	var draw_angle  = (draw_dir == DIR.UP ? -90 : (draw_dir == DIR.DOWN ? 90 : 0));
	
	draw_sprite_ext(spr_weapon_bow, 0, draw_x, draw_y, draw_xscale, draw_yscale, draw_angle, c_white, 1);	
}).set_cooldown(15).set_autouse(true).icon_def(3, 4, 0);
#endregion
#region WEAPON_ID.INHIBITOR_GUN[2]
global.weapons_array[WEAPON_ID.INHIBITOR_GUN] = new Weapon(spr_weapon_inhibitor_gun, "", obj_inhibitor_gun, RARE_ID.SILVER, "RATATATA!",
function(_player, _dir) {
	var _y = _player.y - _player.sprite_height / 2 + 3;
	var _x = _player.x;
	
	var _fx = 0;
	var _fy = 0;
	
	switch (_dir) {
		case DIR.UP:    _fy = -18; break;
		case DIR.DOWN:  _fy =  18; break;
		case DIR.RIGHT: _fx =  16; break;
		case DIR.LEFT:  _fx = -16; break;
	}
	
	create_sfx_shot(_x + _fx, _y + _fy, _dir, c_aqua);
	
}, function(_player, _dir) {
	var draw_dir = _player.use_dir;
	_player.weapon_depth = (draw_dir == DIR.UP ? -1 : 1);
	
	var draw_offset_x = 0;
	var draw_offset_y = 7;
		
	var draw_x = _player.x + (draw_dir == DIR.RIGHT ? draw_offset_x : (draw_dir == DIR.LEFT ? -draw_offset_x : 0));
	var draw_y = _player.y + (draw_dir == DIR.DOWN  ? draw_offset_y : (draw_dir == DIR.UP   ? -draw_offset_y : 0)) - 10;
		
	var draw_xscale = (draw_dir == DIR.RIGHT ? 1 : -1);
	var draw_yscale = (draw_dir == DIR.UP ? -1 : 1);
	var draw_angle  = (draw_dir == DIR.UP ? -90 : (draw_dir == DIR.DOWN ? 90 : 0));
	
	draw_sprite_ext(spr_weapon_inhibitor_gun, 0, draw_x, draw_y + 3, draw_xscale, draw_yscale, draw_angle, c_white, 1);	
}).set_cooldown(5).set_autouse(true).icon_def(-2, 4, 0).set_press( function(_player) {
	audio_play_sound(sfx_inhibitor_gun_start, 0, false);
	audio_play_sound(sfx_inhibitor_gun, 0, true);
}).set_release(function(_player) {
	audio_stop_sound(sfx_inhibitor_gun);
});
#endregion
#region WEAPON_ID.SHURIKEN[3]
global.weapons_array[WEAPON_ID.SHURIKEN] = new Weapon(spr_weapon_shuriken, "Assault Rifle", obj_shuriken, RARE_ID.SILVER, "RATATATA!",
function(_player, _dir) {
	var _y = _player.y - _player.sprite_height / 2;
	var _x = _player.x;
	
	var inst = instance_create_depth(_x, _y, 0, obj_bulllet_shuriken);
	inst.image_angle = _dir;
	inst.direction   = _dir;
	
	audio_play_sound(sfx_shuriken, 0, false);
	
}, function(_player, _dir) {
	var draw_dir = _player.use_dir;
	_player.depth_sort = 1;
	
	var draw_offset_x = 0;
	var draw_offset_y = 0;
		
	var draw_x = _player.x + (draw_dir == DIR.RIGHT ? draw_offset_x : (draw_dir == DIR.LEFT ? -draw_offset_x : 0));
	var draw_y = _player.y + (draw_dir == DIR.DOWN  ? draw_offset_y : (draw_dir == DIR.UP   ? -draw_offset_y : 0)) - 10;
		
	var draw_xscale = (draw_dir == DIR.RIGHT ? 1 : -1);
	var draw_yscale = (draw_dir == DIR.UP ? -1 : 1);
	var draw_angle  = (draw_dir == DIR.UP ? -90 : (draw_dir == DIR.DOWN ? 90 : 0));
	
	draw_sprite_ext(spr_weapon_shuriken, 0, draw_x, draw_y + 3, draw_xscale, draw_yscale, draw_angle, c_white, 1);	
}).set_cooldown(6).set_autouse(false).icon_def(0, 4, 0);
#endregion
#region WEAPON_ID.CROSSBOW[4]
global.weapons_array[WEAPON_ID.CROSSBOW] = new Weapon(spr_weapon_crossbow, "Bow", obj_crossbow, RARE_ID.SILVER, "...SHOOT!", 
function(_player, _dir) {
	var _y = _player.y - _player.sprite_height / 2;
	var _x = _player.x;
	
	var inst = instance_create_depth(_x, _y, _player.depth, obJ_bullet_crossbow_arrow);
	inst.direction = _dir;
	audio_play_sound(sfx_crossbow, 0, false);
}, function(_player, _dir) {
	var draw_dir = _player.use_dir;
	_player.weapon_depth = (draw_dir == DIR.UP ? -1 : 1);
	
	var draw_offset_x = 4;
	var draw_offset_y = 5;
		
	var draw_x = _player.x + (draw_dir == DIR.RIGHT ? draw_offset_x : (draw_dir == DIR.LEFT ? -draw_offset_x : 0));
	var draw_y = _player.y + (draw_dir == DIR.DOWN  ? draw_offset_y : (draw_dir == DIR.UP   ? -draw_offset_y : 0)) - 10;
		
	var draw_xscale = (draw_dir == DIR.RIGHT ? 1 : -1);
	var draw_yscale = (draw_dir == DIR.UP ? 1 : -1);
	var draw_angle  = (draw_dir == DIR.UP ? -90 : (draw_dir == DIR.DOWN ? 90 : 0));
	
	draw_sprite_ext(spr_weapon_crossbow, 0, draw_x, draw_y, draw_xscale, draw_yscale, draw_angle, c_white, 1);	
}).set_cooldown(15).set_autouse(true).icon_def(3, 4, 0);
#endregion
#region WEAPON_ID.LAVAGUN[5]
global.weapons_array[WEAPON_ID.LAVAGUN] = new Weapon(spr_weapon_lavagun, "Bow", obj_lavagun, RARE_ID.GOLD, "...SHOOT!", 
function(_player, _dir) {
	var _y = _player.y - _player.sprite_height / 2;
	var _x = _player.x;
	
	var inst = instance_create_depth(_x, _y, _player.depth, obj_lava_bullet);
	inst.direction = _dir;
	audio_play_sound(sfx_inhibitor_gun_start, 0, false);
}, function(_player, _dir) {
	var draw_dir = _player.use_dir;
	_player.weapon_depth = (draw_dir == DIR.UP ? -1 : 1);
	
	var draw_offset_x = 4;
	var draw_offset_y = 5
	
	var draw_x = _player.x + (draw_dir == DIR.RIGHT ? draw_offset_x : (draw_dir == DIR.LEFT ? -draw_offset_x : 0));
	var draw_y = _player.y + (draw_dir == DIR.DOWN  ? draw_offset_y : (draw_dir == DIR.UP   ? -draw_offset_y : 0)) - 10;
		
	var draw_xscale = (draw_dir == DIR.RIGHT ? 1 : -1);
	var draw_yscale = (draw_dir == DIR.UP ? -1 : 1);
	var draw_angle  = (draw_dir == DIR.UP ? -90 : (draw_dir == DIR.DOWN ? 90 : 0));
	
	draw_sprite_ext(spr_weapon_lavagun, 0, draw_x, draw_y, draw_xscale, draw_yscale, draw_angle, c_white, 1);	
}).set_cooldown(60).set_autouse(true).icon_def(-3, 4, 0);
#endregion
#region WEAPON_ID.RACKETGUN[6]
global.weapons_array[WEAPON_ID.RACKETGUN] = new Weapon(spr_weapon_racketgun, "Bow", obj_racketgun, RARE_ID.ELECTRUM, "...SHOOT!", 
function(_player, _dir) {
	var _y = _player.y - _player.sprite_height / 2;
	var _x = _player.x;
	
	var inst = instance_create_depth(_x, _y, _player.depth, obj_bullet_racket);
	audio_play_sound(sfx_rocket_launcher, 0, false);
	inst.direction = _dir;
	audio_play_sound(sfx_inhibitor_gun_start, 0, false);
}, function(_player, _dir) {
	var draw_dir = _player.use_dir;
	_player.weapon_depth = (draw_dir == DIR.UP ? -1 : 1);
	
	var draw_offset_x = -2;
	var draw_offset_y = 4;
	
	var draw_x = _player.x + (draw_dir == DIR.RIGHT ? draw_offset_x : (draw_dir == DIR.LEFT ? -draw_offset_x : 0));
	var draw_y = _player.y + (draw_dir == DIR.DOWN  ? draw_offset_y : (draw_dir == DIR.UP   ? -draw_offset_y : 0)) - 6;
		
	var draw_xscale = (draw_dir == DIR.RIGHT ? 1 : -1);
	var draw_yscale = (draw_dir == DIR.UP ? -1 : 1);
	var draw_angle  = (draw_dir == DIR.UP ? -90 : (draw_dir == DIR.DOWN ? 90 : 0));
	
	draw_sprite_ext(spr_weapon_racketgun, 0, draw_x, draw_y, draw_xscale, draw_yscale, draw_angle, c_white, 1);	
}).set_cooldown(25).set_autouse(true).icon_def(-3, 4, 0);
#endregion
#region WEAPON_ID.BOOMERANG[7]
global.weapons_array[WEAPON_ID.BOOMERANG] = new Weapon(spr_weapon_boomerang, "Bow", obj_boomerang, RARE_ID.GOLD, "...SHOOT!", 
function(_player, _dir) {
	var _y = _player.y - _player.sprite_height / 2;
	var _x = _player.x;
	
	if (!instance_exists(obj_bullet_boomerang)) instance_create_depth(_x, _y, _player.depth, obj_bullet_boomerang);
	audio_play_sound(sfx_shuriken, 0, false);
	
}, function(_player, _dir) {
	var draw_dir = _player.use_dir;
	_player.depth_sort = 1;
	
	var draw_offset_x = 0;
	var draw_offset_y = 0;
		
	var draw_x = _player.x + (draw_dir == DIR.RIGHT ? draw_offset_x : (draw_dir == DIR.LEFT ? -draw_offset_x : 0));
	var draw_y = _player.y + (draw_dir == DIR.DOWN  ? draw_offset_y : (draw_dir == DIR.UP   ? -draw_offset_y : 0)) - 10;
		
	var draw_xscale = (draw_dir == DIR.RIGHT ? 1 : -1);
	var draw_yscale = (draw_dir == DIR.UP ? -1 : 1);
	var draw_angle  = (draw_dir == DIR.UP ? -90 : (draw_dir == DIR.DOWN ? 90 : 0));
	
	if (!instance_exists(obj_bullet_boomerang)) draw_sprite_ext(spr_weapon_boomerang, 0, draw_x, draw_y, draw_xscale, draw_yscale, draw_angle, c_white, 1);	
}).set_cooldown(5).set_autouse(false).icon_def(-3, 4, 0);
#endregion
#region WEAPON_ID.BOOMERANG_V2[8]
global.weapons_array[WEAPON_ID.BOOMERANG_V2] = new Weapon(spr_weapon_boomerang_v2, "Bow", obj_boomerang_v2, RARE_ID.ELECTRUM, "...SHOOT!", 
function(_player, _dir) {
	var _y = _player.y - _player.sprite_height / 2;
	var _x = _player.x;
	
	if (!instance_exists(obj_bullet_boomerang_v2)) instance_create_depth(_x, _y, _player.depth, obj_bullet_boomerang_v2);
	audio_play_sound(sfx_shuriken, 0, false);
	
}, function(_player, _dir) {
	var draw_dir = _player.use_dir;
	_player.depth_sort = 1;
	
	var draw_offset_x = 0;
	var draw_offset_y = 0;
		
	var draw_x = _player.x + (draw_dir == DIR.RIGHT ? draw_offset_x : (draw_dir == DIR.LEFT ? -draw_offset_x : 0));
	var draw_y = _player.y + (draw_dir == DIR.DOWN  ? draw_offset_y : (draw_dir == DIR.UP   ? -draw_offset_y : 0)) - 10;
		
	var draw_xscale = (draw_dir == DIR.RIGHT ? 1 : -1);
	var draw_yscale = (draw_dir == DIR.UP ? -1 : 1);
	var draw_angle  = (draw_dir == DIR.UP ? -90 : (draw_dir == DIR.DOWN ? 90 : 0));
	
	if (!instance_exists(obj_bullet_boomerang_v2)) draw_sprite_ext(spr_weapon_boomerang_v2, 0, draw_x, draw_y, draw_xscale, draw_yscale, draw_angle, c_white, 1);	
}).set_cooldown(5).set_autouse(true).icon_def(-3, 4, 0);
#endregion
#region WEAPON_ID.GUN[9]
global.weapons_array[WEAPON_ID.GUN] = new Weapon(spr_weapon_assault_rifle, "Assault Rifle", RARE_ID.GOLD, obj_assault_rifle, "RATATATA!",
function(_player, _dir) {
	var _y = _player.y - _player.sprite_height / 2;
	var _x = _player.x;
	
	var _fx = -3;
	var _fy =  2;
	
	switch (_dir) {
		case DIR.UP:    _fy = -21; break;
		case DIR.DOWN:  _fy =  31; break;
		case DIR.RIGHT: _fx =  19; break;
		case DIR.LEFT:  _fx = -19; break;
	}
	
	var inst = instance_create_depth(_x + _fx, _y + _fy, 0, obj_gun_bullet);
	inst.image_angle = _dir;
	inst.direction   = _dir;
	
	_player.stage = _player.stage == 0 ? 1 : 0;
	//inst = instance_create_depth(_x + _fx, _y + _fy, 0, obj_sfx_explosion);
	//inst.image_angle = _dir;
	
	audio_play_sound(sfx_assault_rifle, 0, false);
	
}, function(_player, _dir) {
	var draw_dir = _player.use_dir;
	_player.weapon_depth = (draw_dir == DIR.UP ? -1 : 1);
	
	var draw_offset_x = 0;
	var draw_offset_y = 7;
		
	var draw_x = _player.x + (draw_dir == DIR.RIGHT ? draw_offset_x : (draw_dir == DIR.LEFT ? -draw_offset_x : 0));
	var draw_y = _player.y + (draw_dir == DIR.DOWN  ? draw_offset_y : (draw_dir == DIR.UP   ? -draw_offset_y : 0)) - 10;
		
	var draw_xscale = (draw_dir == DIR.RIGHT ? 1 : -1);
	var draw_yscale = (draw_dir == DIR.UP ? -1 : 1);
	var draw_angle  = (draw_dir == DIR.UP ? -90 : (draw_dir == DIR.DOWN ? 90 : 0));
	
	draw_sprite_ext(spr_weapon_assault_rifle, _player.stage, draw_x, draw_y + 3, draw_xscale, draw_yscale, draw_angle, c_white, 1);
}).set_cooldown(5).set_autouse(true).icon_def(-2, 4, 0).set_release(function(_player) {
	_player.stage = 0;
});
#endregion