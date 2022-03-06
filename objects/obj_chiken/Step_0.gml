if (in_sequence) exit;

jump_delay--;

if (jump_delay <= 0) {
	jump_delay = irandom_range(475, 575);
	
	var seq = seq_chiken_jump;
	var lay = "Instances";
	var elm = layer_sequence_create(lay, x, y, seq);
	var ins = layer_sequence_get_instance(elm);
	sequence_instance_override_object(ins, obj_chiken, id)
}