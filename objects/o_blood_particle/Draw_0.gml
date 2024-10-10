/// @description drawing the blood decals

if (!collision_line(x, y, o_player.x, o_player.y, ParentSolid, 1, 0)) {
	draw_set_color(shading_variation);
	if (!active) {
		if (z <= 0.5) {
			d3d_draw_floor(x-width, y-width, z, x+width, y+width, z, sprite_get_texture(s_blood, 0), 1, 1);
		} else {
			d3d_draw_wall(x-width, y, z-width, x+width, y, z+width, sprite_get_texture(s_blood, 0), 1, 1);
			d3d_draw_wall(x, y-width, z-width, x, y+width, z+width, sprite_get_texture(s_blood, 0), 1, 1);
		}
	} else {
		d3d_draw_block(x-1, y-1, z-1, x+1, y+1, z+1, sprite_get_texture(s_blood, 0), 1, 1);
	}
	draw_set_color(c_white);
}