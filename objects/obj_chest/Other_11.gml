repeat(irandom_range(12, 27))
	array_push(loot_insts, instance_create_depth(x, y - 5, 0, obj_coin));

if (irandom_range(0, 100) <= 4) {
	array_push(loot_insts, instance_create_depth(x, y - 5, 0, choose(obj_inhibitor_gun, obj_shuriken, obj_crossbow)));
}
else if (irandom_range(0, 100) <= 44) {
	array_push(loot_insts, instance_create_depth(x, y - 5, 0, obj_bow));
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
	repeat(irandom_range(5, 17))
		array_push(loot_insts, instance_create_depth(x, y - 5, 0, obj_coin));
}

is_disappear = true;

for (var i = 0; i < array_length(loot_insts); i++) {
	var inst = loot_insts[i];
	if (!instance_exists(inst)) continue;
	inst.pickable = false;
	inst.is_picked = false;
}

alarm[0] = room_speed;