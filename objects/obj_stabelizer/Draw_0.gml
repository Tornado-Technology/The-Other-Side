/// @desc Draw outline
var color = rare_get_color(new Vector4(1, 0.54, 0.26));

// Set shader
draw_shader_outine(sprite_index, color);

draw_self();

// Reset shader
shader_reset();