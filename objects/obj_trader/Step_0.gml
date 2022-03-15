depth_sort();
if (!collision_circle(x, y, 25, obj_player, false, false)) { 
	if (set_player_false) {
		set_player_false = false;
		obj_player.can_weapon_use = true;
	}
	
	exit;
}

set_player_false = true;
obj_player.can_weapon_use = false;

for (var i = 0; i < 4; i++) {
	var prod = products[i];
	var button = buttons[i];
	
	if (keyboard_check_pressed(button.key)) {		
		if (obj_player.money >= prod.cost) {
			obj_player.money -= prod.cost;
			var inst = instance_create_depth(x, y + 8, depth, prod.item);
			with (inst) { pickable = false; motion_add(DIR.DOWN, 1.5); alarm[0] = 30; };
			player_adrenalin(5);
		}
	}
}