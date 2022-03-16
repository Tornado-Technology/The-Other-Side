global.player_data = {};

function player_save() {
	if (!instance_exists(obj_player)) return;
	var p = obj_player; global.player_data = {
		money: p.money,
		keys: p.keys,
		weapon: p.weapon,
		hp: p.hp,
		hp_max: p.hp_max
	}
}

function player_load() {
	if (!instance_exists(obj_player)) return;
	obj_player.can_move = true;
	obj_player.is_draw = true;
	var d = global.player_data;
	var p = obj_player; 
	p.money = d.money;
	p.keys = d.keys;
	p.weapon = d.weapon;
	p.hp = d.hp;
	p.hp_max = d.hp_max;
}