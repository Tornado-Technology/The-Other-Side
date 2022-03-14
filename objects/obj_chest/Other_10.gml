repeat(irandom_range(12, 27)) {
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