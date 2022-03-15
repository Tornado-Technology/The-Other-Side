event_inherited();
move_wrap(8, 8, 0);

if (inv <= 0)  {
	heal_time = approach(heal_time, 0, 1);
	image_blend = merge_color(c_white, c_lime, heal_time / 30);
}

walk_delay--;
if (walk_delay <= 0) {
	walk_delay = irandom_range(100, 135);
	motion_set(irandom_range(0, 360), 1.5);
}

speed = approach(speed, 0, 0.05);

if (in_sequence) exit;

image_xscale = approach(image_xscale, traget_scalex, 0.16);

jump_delay--;

if (jump_delay <= 0) {
	jump_delay = irandom_range(275, 375);
	
	var seq = seq_chiken_jump;
	var lay = "Instances";
	var elm = layer_sequence_create(lay, x, y, seq);
	var ins = layer_sequence_get_instance(elm);
	sequence_instance_override_object(ins, obj_chiken, id)
}