event_user(0);

var layer_id = layer_get_id("Tiles");
var layer_tile = layer_tilemap_get_id(layer_id);
var tile_whitelist = [1, 2, 5, 6];

repeat(chests) {
	var inst = obj_chest;
	place_to_free_pos(inst, layer_tile, tile_whitelist);
}
repeat(gold_chests) {
	var inst = obj_chest_gold;
	place_to_free_pos(inst, layer_tile, tile_whitelist);
}
repeat(elec_chests) {
	var inst = obj_chest_electrium;
	place_to_free_pos(inst, layer_tile, tile_whitelist);
}
repeat(keys) {
	var inst = obj_key;
	place_to_free_pos(inst, layer_tile, tile_whitelist);
}
repeat(potions) {
	var inst = obj_heal_potion;
	place_to_free_pos(inst, layer_tile, tile_whitelist);
}