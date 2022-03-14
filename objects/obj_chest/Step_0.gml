if (is_disappear) {
	image_alpha -= 0.007;
	if (image_alpha <= 0) instance_destroy();
}

if (is_open) exit;
var target = obj_player; if (!instance_exists(target)) exit; var target_distance = point_distance(x, y, target.x, target.y);
if (target_distance > 10) exit;
if (player_get_keys() <= 0) exit;
is_open = true;
player_remove_keys(1);
create_sfx_ex(c_orange);
image_speed = 1;