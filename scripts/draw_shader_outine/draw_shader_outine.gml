/// @param sprite
/// @param vector4 (color)
/// @param sumbing
function draw_shader_outine(_sprite, _vec4 = new Vector4(), _sumbing = 0) {
	shader_set(shd_outline);
	var texture = sprite_get_texture(_sprite, _sumbing);
	var texture_width = texture_get_texel_width(texture);
	var texture_height = texture_get_texel_height(texture);
	
	var uni = shader_get_uniform(shd_outline, "in_Texel");
	shader_set_uniform_f(uni, texture_width, texture_height);
	
	var uni = shader_get_uniform(shd_outline, "in_Colour");
	shader_set_uniform_f(uni, _vec4.r, _vec4.g, _vec4.b, _vec4.a);
}