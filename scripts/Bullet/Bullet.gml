function shoot_to(obj, xp, yp){
	bullet = instance_create_depth(x, y, 0, obj);
	bullet.direction = point_direction(x, y, xp, yp);
}