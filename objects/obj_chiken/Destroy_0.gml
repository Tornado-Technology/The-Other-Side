var inst = instance_create_depth(x, y, depth, obj_meat);
inst.pickable = false;
with (inst) alarm[0] = 30;
create_sfx_ex();