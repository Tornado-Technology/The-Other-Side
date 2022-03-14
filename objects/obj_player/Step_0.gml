event_inherited();

attack();
move();
collision();
flip();

inv = approach(inv, 0, 1);
heal_color_time = approach(heal_color_time, 0, 1);


image_blend = merge_color(c_white, c_red, inv / inv_max);

if (inv <= 0) {
	image_blend = merge_color(c_white, c_lime, heal_color_time / 60);
}

image_yscale = lerp(image_yscale, 1, 0.2);


x += speed_h;
y += speed_v;