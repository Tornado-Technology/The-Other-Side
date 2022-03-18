repeat(irandom_range(10, 14)) {
	var inst = instance_create_depth(x, y - 5, 0, obj_coin);
	inst.rare = COIN_RARE.SILVER;
	array_push(loot_insts, inst);
}

if (irandom_range(0, 100) <= 4) {
	array_push(loot_insts, instance_create_depth(x, y - 5, 0, choose(obj_assault_rifle, obj_lavagun, obj_boomerang)));
}
else if (irandom_range(0, 100) <= 44) {
	array_push(loot_insts, instance_create_depth(x, y - 5, 0, choose(obj_inhibitor_gun, obj_shuriken, obj_crossbow)));
}
else {
	if (irandom_range(0, 100) <= 54) {
		array_push(loot_insts, instance_create_depth(x, y - 5, 0, obj_heal_potion));
	}
	else if (irandom_range(0, 100) <= 64) {
		array_push(loot_insts, instance_create_depth(x, y - 5, 0, obj_stabelizer));
	}
	else if (irandom_range(0, 100) <= 74) {
		array_push(loot_insts, instance_create_depth(x, y - 5, 0, obj_adrenalin));
	}
	repeat(irandom_range(1, 4)) {
		var inst = instance_create_depth(x, y - 5, 0, obj_coin);
		inst.rare = COIN_RARE.SILVER;
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