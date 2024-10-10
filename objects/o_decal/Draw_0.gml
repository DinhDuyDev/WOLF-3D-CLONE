/// @description drawing decal

var d = o_player.direction+90;
var xx = dcos(d)*1.5;
var yy = -dsin(d)*1.5;

if (!collision_line(x, y, o_player.x, o_player.y, ParentSolid, 1, 0))
	d3d_draw_wall(x+xx, y+yy, z+1.5, x-xx, y-yy, z-1.5, tex, 1, 1);