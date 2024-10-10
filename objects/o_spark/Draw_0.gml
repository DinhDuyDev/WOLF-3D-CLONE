/// @description draw thing
var xx = dcos(o_player.direction+90)*4;
var yy = -dsin(o_player.direction+90)*4;
var tex = sprite_get_texture(sprite_index, image_index);
d3d_draw_wall(x-xx, y-yy, z+4, x+xx, y+yy, z-4, tex, 1, 1);