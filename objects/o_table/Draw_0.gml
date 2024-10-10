/// @description drawing table

d3d_draw_block(x, y, 10, x+image_xscale*32, y+image_yscale*32, 6, sprite_get_texture(s_tex_wall, 0), 1, 1);
d3d_draw_block(x, y, 6, x+8, y+8, 0, sprite_get_texture(s_tex_wall, 0), 1, 1);
d3d_draw_block(x+image_xscale*32, y, 6, x+image_xscale*32+8, y+8, 0, sprite_get_texture(s_tex_wall, 0), 1, 1);
d3d_draw_block(x, y+image_yscale*32-8, 6, x+8, y+image_yscale*32, 0, sprite_get_texture(s_tex_wall, 0), 1, 1);
d3d_draw_block(x+image_xscale*32-8, y+image_yscale*32-8, 6, x+image_xscale*32, y+image_yscale*32, 0, sprite_get_texture(s_tex_wall, 0), 1, 1);
