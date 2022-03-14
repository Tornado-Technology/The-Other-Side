/// @desc Collision & Animation
depth_sort();

var target = obj_player;
if (!instance_exists(target)) exit;

var target_distance = point_distance(x, y, target.x, target.y);

event_user(0); // Collision

if (target_distance <= distance) {
	x = lerp(x, target.x, 0.2);
	y = lerp(y, target.y, 0.2);
	exit;
}

y = wave(_y, _y + 7, 1, _of); 
image_xscale = wave(1, 0.75, 0.5, _of);
