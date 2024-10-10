/// @description drawing the doors

var xx = lengthdir_x(16, image_angle);
var yy = lengthdir_y(16, image_angle);
//var x1 = lengthdir_x(15.9, image_angle);
//var y1 = lengthdir_y(15.9, image_angle);
var _x = lengthdir_x(16, image_angle+90);
var _y = lengthdir_y(16, image_angle+90);
var tex = sprite_get_texture(s_door, 0);
var tex1 = sprite_get_texture(s_door_side, 0);
d3d_draw_wall(x-xx, y-yy, 32, x+xx, y+yy, 0, tex, 1, 1);

d3d_draw_wall(xreturn+_x, yreturn+_y, 32, xreturn-_x, yreturn-_y, 0, tex1, 1, 1);

d3d_draw_wall(xreturn1+_x, yreturn1+_y, 32, xreturn1-_x, yreturn1-_y, 0, tex1, 1, 1);


