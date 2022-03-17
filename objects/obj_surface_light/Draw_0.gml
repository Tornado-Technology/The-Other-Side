/// @desc Draw light
var draw_pos = new Vector2(camera_get_x(), camera_get_y());
var draw_size = new Vector2(camera_get_width(), camera_get_height());

if (!surface_exists(surface)) {
	surface = surface_create(draw_size.x, draw_size.y)
	exit;
}

// Set draw surface
surface_set_target(surface);

// Draw darkness
draw_set_color(darkness_color);
draw_set_alpha(darkness_alpha);
draw_rectangle(0, 0, draw_size.x, draw_size.y, false);

// Draw light
draw_set_color(0);
draw_set_alpha(1);
gpu_set_blendmode(bm_subtract);

// <--------------------- [Item]
with (obj_pickup) {
	draw_sprite(spr_light_radial_small, 0, x - draw_pos.x, y - draw_pos.y);
}

// <--------------------- [Boss Slime]
with (obj_boss_slime) {
	draw_sprite(spr_light_radial, 0, x - draw_pos.x, y - draw_pos.y);
}


// <--------------------- [Player]
with (obj_player) {
	draw_sprite(spr_light_radial, 0, x - draw_pos.x, y - draw_pos.y);
}

// <--------------------- [Scull]
with (obj_enemy_scull) {
	draw_sprite_ext(spr_light_radial, 0, x - draw_pos.x, y - draw_pos.y, 0.5, 0.5, 0, c_purple, 1);
}

// Reset draw surface
gpu_set_blendmode(bm_normal);
surface_reset_target();