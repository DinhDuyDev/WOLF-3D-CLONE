/// @description drawing explosion
var d = o_player.direction+90;
var xx = dcos(d) * width;
var yy = -dsin(d)* width;
var tex = sprite_get_texture(sprite_index, image_index);
d3d_draw_wall(x+xx, y+yy, z1, x-xx, y-yy, z2, tex, 1, 1);