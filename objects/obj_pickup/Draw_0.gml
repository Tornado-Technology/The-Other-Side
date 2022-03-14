/// @desc Draw outline
var color = rare_get_color(rare);

// Set shader
draw_shader_outine(sprite_index, color);

draw_self();

// Reset shader
shader_reset();