/// @param sprite
/// @param sumbing
function draw_shader_outine(_sprite, _sumbing = 0) {
	shader_set(shd_outline);
	var texture = sprite_get_texture(_sprite, _sumbing);
	var texture_width = texture_get_texel_width(texture);
	var texture_height = texture_get_texel_height(texture);
	
	var uni = shader_get_uniform(shd_outline, "in_Texel");
	shader_set_uniform_f(uni, texture_width, texture_height);
}