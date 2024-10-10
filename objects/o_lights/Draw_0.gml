/// @description drawing trees
var d = o_player.direction + 90;

var xx = lengthdir_x(14, d);
var yy = lengthdir_y(14, d);
var tex = sprite_get_texture(s_lights, 0);

d3d_draw_wall(x+xx, y+yy, 32, x-xx, y-yy, 0, tex, 1, 1);



