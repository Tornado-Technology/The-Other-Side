var pl  = obj_player;
var dir = pl.dir;
var px  = pl.x;
var py  = pl.y - 10;
var ox  = px + (dir == DIR.UP ? 0 : (dir == DIR.DOWN ? 0 : (dir == DIR.RIGHT ? 7 : -7)));
var oy  = py + (dir == DIR.RIGHT ? 0 : (dir == DIR.LEFT ? 0 : (dir == DIR.UP ? -9 : 9)));

if (in_sequence) exit;

x = ox;
y = oy;
image_angle = dir;

if (mouse_check_button_pressed(mb_left)) {
	var seq = seq_sword_use;
	var lay = "Instances";
	var elm = layer_sequence_create(lay, x, y, seq);
	var ins = layer_sequence_get_instance(elm);
	
	
	layer_sequence_angle(elm, dir + layer_sequence_get_angle(elm));
	layer_sequence_x(elm, layer_sequence_get_x(elm));
	layer_sequence_y(elm, layer_sequence_get_y(elm));
	
	sequence_instance_override_object(ins, obj_weapon_sword, id)
}