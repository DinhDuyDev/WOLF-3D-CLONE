/// @description drawing the wall
var xx = image_xscale * 32;
var yy = image_yscale * 32;

//up 
d3d_draw_wall(x, y, height, x + xx, y, z, tex, xx / 32, 1);

//down
d3d_draw_wall(x, y + yy, height, x + xx, y + yy, z, tex, xx / 32, 1);

//left
d3d_draw_wall(x, y, height, x, y + yy, z, tex1, yy / 32, 1);

//right
d3d_draw_wall(x + xx, y, height, x + xx, y + yy, z, tex1, yy / 32, 1);

