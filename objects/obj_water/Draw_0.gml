if (!surface_exists(surf)) surf = surface_create(size, size);

//surface_set_target(surf);
//draw_sprite(sprite_index, 0, x, y);
//surface_reset_target();
//draw_surface(surf, x, y);


//surface_set_target(surf); {w
//	draw_clear_alpha(c_white, 0);
	draw_sprite_ext(sprite_index, 0, x, y - wave(0, 6, 1, 0), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
//} surface_reset_target();

//draw_rectangle(x, y - 16, x + size * image_xscale, y + size * image_yscale - 16, true);
//draw_surface(surf, x, y - 16);