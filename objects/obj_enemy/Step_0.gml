event_inherited();

var inst = instance_place(x, y, obj_entity);
if (inst != noone) {
	speed = 0;
	motion_add(point_direction(x, y, inst.x, inst.y), 2);
}