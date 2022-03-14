function enemy_damage(_enemy, _damage) {
	with (_enemy) {
		if (inv > 0) return;
		
		inv = inv_max;
		hp = clamp(hp - _damage, 0, hp_max);
	
		if (hp <= 0) {
			instance_destroy();
		}
	}
}