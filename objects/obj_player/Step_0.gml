event_inherited();

if (hp <= 0 && is_draw) {
	if (!instance_exists(obj_sfx_fade_2)) instance_create_depth(0, 0, 0, obj_sfx_fade_2);
	visible = false;
	exit;
}

cooldown = approach(cooldown, 0, 1);
attack();
move();
collision();
flip();

inv = approach(inv, 0, 1);
heal_color_time = approach(heal_color_time, 0, 1);

image_blend = merge_color(c_white, c_red, min(inv / inv_max, 1));

if (inv <= 0) {
	image_blend = merge_color(c_white, c_lime, heal_color_time / 60);
}


image_yscale = lerp(image_yscale, 1, 0.2);


x += speed_h;
y += speed_v;

if (!obj_time.night)
if (stabelizers > 0) {
	timer_add_time(stabelizers * 60 * 4);
	stabelizers = 0;
}