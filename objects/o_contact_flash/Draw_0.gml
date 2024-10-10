/// @description drawing


for (var i=0; i<4; i++) {
	draw_set_alpha(1 - i/4 + 0.25);
	d3d_draw_ellipsoid(x-width - i*0.5
	, y-width - i*0.5
	, z-width - i*0.5
	, x+width + i*0.5
	, y+width + i*0.5
	, z+width + i*0.5
	, -1
	, 1
	, 1
	, 6);
}