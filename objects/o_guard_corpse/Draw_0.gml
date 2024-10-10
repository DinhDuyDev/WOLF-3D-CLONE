/// @description drawing the guard
var d = o_player.direction + 90;
var xx = dcos(d) * 8;
var yy = -dsin(d) * 8;
var tex = sprite_get_texture(sprite_index, image_index);

d3d_draw_wall(x + xx, y + yy, height, x - xx, y - yy, 0, tex, 1, 1);

