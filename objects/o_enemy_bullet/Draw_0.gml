/// @description drawing
if (type == "rockets")
{
	var xx = dcos(o_player.direction+90) * 4;
	var yy = -dsin(o_player.direction+90) * 4;
	var tex = sprite_get_texture(s_rocket, image_index);
	var zzz = 16;
	d3d_draw_wall(x+dcos(direction)*5-xx, y-dsin(direction)*5-yy
	, zzz+4
	, x+dcos(direction)*5+xx, y-dsin(direction)*5+yy
	, zzz-4
	, tex, 1, 1);
}
//d3d_draw_ellipsoid(x-3, y-3, create_z-3, x+3, y+3, create_z+3, -1, 1, 1, 5);