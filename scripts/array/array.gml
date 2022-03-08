/// @param ds_list
function array(_ds_list) {
	var size = ds_list_size(_ds_list);
	var new_array = [];
	
	for (var i = 0; i < size; i++) {
		new_array[i] = _ds_list[| i];
	}
	
	return new_array;
}