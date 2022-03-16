cost = 10;
var _buttons = [
	{key: vk_down,  image: spr_down_button},
	{key: vk_left,  image: spr_left_button},
	{key: vk_right, image: spr_right_button},
	{key: vk_up,    image: spr_up_button}
];

buttons = [];

repeat (4) {
	var i = irandom_range(0, array_length(_buttons) - 1)
	array_push(buttons, _buttons[i]);
	array_delete(_buttons, i, 1);
}

is_disappear = false;
button_progress = 0;
set_player_false = false;