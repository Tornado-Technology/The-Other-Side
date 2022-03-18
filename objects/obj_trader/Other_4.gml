position = instance_find(obj_trader_pos, irandom_range(0, instance_number(obj_trader_pos) - 1));
products = global.shop[irandom_range(0, array_length(global.shop) - 1)];

if (position != noone) {
	x = position.x;
	y = position.y;
	position.sprite_index = noone;
}

buttons = [
	{key: vk_down,  image: spr_down_button},
	{key: vk_left,  image: spr_left_button},
	{key: vk_right, image: spr_right_button},
	{key: vk_up,    image: spr_up_button},
];

set_player_false = false;