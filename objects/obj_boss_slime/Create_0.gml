obj_time.pause = true;
state = "to_jump";
static_x = x;
static_y = y;
wait_time = 100;
dash_time = 100;
shoot_time = 30;
hp = 3000;
hp_max = 3000;
inv = 0;
inv_max = 10;
bar = 0;

function create_bullets() {
	repeat(30) {
		var angle = random_range(0, 180);
		var force = random_range(1, 3);
		var inst = instance_create_depth(x, y, depth + 10, obj_bullet_slimeball);
		with (inst) motion_add(angle, force);
	}
	
	repeat(10) {
		var angle = random_range(0, 180);
		var force = random_range(0.5, 1);
		var inst = instance_create_depth(x, y, depth + 10, obj_bullet_slimeball);
		inst.image_alpha = 0.6;
		with (inst) motion_add(angle, force);
	}
} 

function create_bullets_final() {
	repeat(3) {
		repeat(40) {
			var angle = random_range(0, 180);
			var force = random_range(2, 4);
			var inst = instance_create_depth(x, y, depth + 10, obj_bullet_slimeball);
			with (inst) motion_add(angle, force);
		}
	
		repeat(20) {
			var angle = random_range(0, 180);
			var force = random_range(1, 1.5);
			var inst = instance_create_depth(x, y, depth + 10, obj_bullet_slimeball);
			inst.image_alpha = 0.7;
			with (inst) motion_add(angle, force);
		}
	}
} 