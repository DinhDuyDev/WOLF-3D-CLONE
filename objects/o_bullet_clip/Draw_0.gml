/// @description drawing the clip
var xx =  dcos(o_player.direction+90) * 4;
var yy = -dsin(o_player.direction+90) * 4;

var tex = sprite_get_texture(sprite_index, 0);

d3d_draw_wall(x+xx, y+yy, 8, x-xx, y-yy, 0, tex, 1, 1);