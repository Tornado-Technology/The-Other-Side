function create_trail(_self, _color = c_white) {
	var inst = instance_create_depth(x, y, depth + 1, obj_trail);
	inst.iparent = _self;
	inst.image_blend = _color;
	with (inst) event_user(0);
}