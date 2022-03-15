for (var i = 0; i < array_length(loot_insts); i++) {
	var inst = loot_insts[i];
	if (!instance_exists(inst)) continue;
	inst.pickable = true;
}