chests = 0;
gold_chests = 0;
elec_chests = 0;
keys = 0;
potions = 0;

function place_to_free_pos(inst, layer_tile, tile_whitelist) {
	var can_be_placed = false;
	var busy = false;
	while (!can_be_placed) {
		var cell = global.cell_size;
		var w_item = irandom_range(2, round(room_width / cell) - 2);
		var h_item = irandom_range(2, round(room_height / cell) - 2);
		var tile_id = tilemap_get_at_pixel(layer_tile, w_item*cell, h_item*cell);
		
		var all_inst = [obj_chest, obj_chest_gold, obj_chest_electrium, obj_key, obj_heal_potion];
		for (var i = 0; i < array_length(all_inst); ++i) {
			if (collision_circle(w_item*cell+cell/2, (h_item+1)*cell, 20, all_inst[i], false, false)) {
				busy = true;
				break;
			}
		}
		if (busy) return;
		
		for (var i = 0; i < array_length(tile_whitelist); ++i) {
			if (tile_id == tile_whitelist[i]) {
				instance_create_depth(w_item*cell+cell/2, (h_item+1)*cell, 0, inst);
				can_be_placed = true;
				break;
			}
		}
	}
}