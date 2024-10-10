/// @description projection
draw_self();

var xto = x + lengthdir_x(64, direction);
var yto = y + lengthdir_y(64, direction);

var xx = lengthdir_x(recoil, direction+180);
var yy = lengthdir_y(recoil, direction+180);

d3d_set_projection_ext(x + xx
, y + yy
, z + headbob
, xto
, yto
, z + headbob + z_view + recoil
, 0
, 0
, 1
, FOV
, 16 / 9
, 1
, 32000
);



///floor and ceil

/*d3d_primitive_begin(pr_trianglelist);

var ceil_col = c_dkgray;
var floor_col = c_dkgray;
//triangle1
d3d_vertex_color(0, 0, 32, ceil_col, 1);
d3d_vertex_color(0, room_height, 32, ceil_col, 1);
d3d_vertex_color(room_width, 0, 32, ceil_col, 1);

//triangle2
d3d_vertex_color(room_width, room_height, 32, ceil_col, 1);
d3d_vertex_color(0, room_height, 32, ceil_col, 1);
d3d_vertex_color(room_width, 0, 32, ceil_col, 1);

//triangle3
d3d_vertex_color(0, 0, 0, floor_col, 1);
d3d_vertex_color(0, room_height, 0, floor_col, 1);
d3d_vertex_color(room_width, 0, 0, floor_col, 1);

//triangle4
d3d_vertex_color(room_width, room_height, 0, floor_col, 1);
d3d_vertex_color(0, room_height, 0, floor_col, 1);
d3d_vertex_color(room_width, 0, 0, floor_col, 1);

d3d_primitive_end();*/

//ACTUAL DRAWING OF FLOOR
var tex = sprite_get_texture(s_tex_brick, 0);
d3d_draw_floor(0, 0, 0, room_width, room_height, 0, tex, room_width/32, room_height/32);
d3d_draw_floor(0, 0, 32, room_width, room_height, 32, tex, room_width/32, room_height/32);

