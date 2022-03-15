function create_sfx_ex(_color = c_white) {
	repeat(30) {
		var angle = random_range(45, 125);
		var force = random_range(1, 2);
		var inst = instance_create_depth(x, y, -10, obj_particle);
		inst.image_blend = _color;
		with (inst) motion_add(angle, force);
	}
}

function create_sfx_shot(_x, _y, _dir = 0, _color = c_white) {
	repeat(10) {
		var angle = random_range(_dir - 30, _dir + 30);
		var force = random_range(1, 3);
		var inst = instance_create_depth(_x, _y, -10, obj_particle_inhibitor);
		inst.image_blend = _color;
		with (inst) motion_add(angle, force);
	}
}