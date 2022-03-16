/// @desc Draw outline
var color = rare_get_color(new Vector4(0, 0.83, 1));

// Set shader
draw_shader_outine(sprite_index, color);

draw_self();

// Reset shader
shader_reset();