/// @description drawing the wall
var xx = image_xscale * 32;
var yy = image_yscale * 32;

//up 
d3d_draw_wall(x, y, height, x + xx, y, z, tex, xx / 32, 1);

//down
d3d_draw_wall(x, y + yy, height, x + xx, y + yy, z, tex, xx / 32, 1);

/*d3d_primitive_begin(pr_trianglelist);
//triangle 1
d3d_vertex_color(x, y+yy, 0.1, c_black, 0.6);
d3d_vertex_color(x+xx, y+yy, 0.1, c_black, 0.6);
d3d_vertex_color(x, y+yy+16, 0.1, c_black, 0.6);

//triangle 2
d3d_vertex_color(x+xx, y+yy+16, 0.1, c_black, 0.6);
d3d_vertex_color(x+xx, y+yy, 0.1, c_black, 0.6);
d3d_vertex_color(x, y+yy+16, 0.1, c_black, 0.6);

d3d_primitive_end();*/

//left
d3d_draw_wall(x, y, height, x, y + yy, z, tex1, yy / 32, 1);

//right
d3d_draw_wall(x + xx, y, height, x + xx, y + yy, z, tex1, yy / 32, 1);

