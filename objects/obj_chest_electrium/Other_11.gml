repeat(irandom_range(20, 23)) {
	var inst = instance_create_depth(x, y - 5, 0, obj_coin);
	inst.rare = COIN_RARE.GOLD;
	array_push(loot_insts, inst);
}

if (irandom_range(0, 100) <= 4) {
	var inst = instance_create_depth(x, y - 5, 0, obj_coin);
	inst.rare = COIN_RARE.ELECTRUM;
	inst.count = 10;
	array_push(loot_insts, inst);
} 

if (irandom_range(0, 100) <= 44) {
	array_push(loot_insts, instance_create_depth(x, y - 5, 0,choose(obj_assault_rifle, obj_lavagun, obj_boomerang)));
} else {
	repeat(irandom_range(3, 4)) {
		var inst = instance_create_depth(x, y - 5, 0, obj_coin);
		inst.rare = COIN_RARE.ELECTRUM;
		array_push(loot_insts, inst);
	}
}


is_disappear = true;

for (var i = 0; i < array_length(loot_insts); i++) {
	var inst = loot_insts[i];
	if (!instance_exists(inst)) continue;
	inst.pickable = false;
	inst.is_picked = false;
}

alarm[0] = room_speed;