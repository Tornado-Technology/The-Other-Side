event_inherited();

var inst = instance_place(x, y, obj_entity);
if (inst != noone && collision_self) {
	speed = 0;
	//motion_add(point_direction(x, y, inst.x, inst.y), 10);
}

inv = approach(inv, 0, 1);
image_blend = merge_color(c_white, c_red, inv / inv_max)

if (slow)
	speed_normal = speed_max / 3;
else
	speed_normal = speed_max