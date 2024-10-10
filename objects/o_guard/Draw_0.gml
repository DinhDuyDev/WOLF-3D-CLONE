/// @description drawing the guard
var d = o_player.direction + 90;
var xx = dcos(d) * 8;
var yy = -dsin(d) * 8;
var tex = sprite_get_texture(sprite_index, image_index);

d3d_draw_wall(x + xx, y + yy, height, x - xx, y - yy, 0, tex, 1, 1);

var dd = o_player.direction+180;
draw_set_color(c_red);
d3d_draw_wall(x + dcos(d) * 7, y - dsin(d) * 7, 42, x - dcos(d) * 7, y + dsin(d) * 7, 38, -1, 1, 1);
draw_set_color(c_white);

draw_set_color(c_green);
d3d_draw_wall(x + dcos(d) * 7 + dcos(dd) * 0.05, y - dsin(d) * 7 - dsin(dd) * 0.05, 42
, x - dcos(d) * (hp/hp_max) * 7 + dcos(dd) * 0.05, y + dsin(d) * (hp/hp_max) * 7 - dsin(dd) * 0.05, 38
, -1, 1, 1);
draw_set_color(c_white);

