/// @desc Collision
var chance = irandom_range(0, 100);

if (can_give_apple) {
	
	if (chance <= 40) {
		apple = instance_create_depth(x, y, depth, obj_apple);
		apple.pickable = false;
		apple.is_picked = false;
		apple.not_animated = true;
		apple.create_y = y + 16;
	}
	
	can_give_apple = false;
	image_yscale = 0.5;
}

alarm[0] = 30;