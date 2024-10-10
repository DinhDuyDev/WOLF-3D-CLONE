/// @description drawing particles
var d = o_player.direction+90;
var xx = dcos(d) * 2;
var yy = -dsin(d) * 2;

d3d_draw_wall(x-xx, y-yy, z-2, x+xx, y+yy, z+2, sprite_get_texture(s_bits_pieces, 0), 1, 1);