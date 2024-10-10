/// @description drawing
var d = o_player.direction+90;
var xx = dcos(d)*0.5;
var yy = -dsin(d)*0.5;

d3d_draw_wall(x-xx, y-yy, z-0.5, x+xx, y+yy, z+0.5, sprite_get_texture(s_sparkles, 0), 1, 1);