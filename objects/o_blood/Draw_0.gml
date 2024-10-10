/// @description drawing blood particles

//if (!collision_line(x, y, o_player.x, o_player.y, ParentSolid, 1, 0)) {
	draw_set_alpha(alpha_)
	var xx = dcos(o_player.direction+90) * actual_width;
	var yy = -dsin(o_player.direction+90) * actual_width;

	z += z_speed;

	var tex = sprite_get_texture(sprite_index, 0);
	d3d_draw_wall(x+xx, y+yy, z+actual_width
	, x-xx, y-yy, z-actual_width, tex, 1, 1);

	///clampin'
	//z = clamp(z, 1, 31);
	actual_width = min(actual_width * 1.99, width);

	draw_set_alpha(1);
	alpha_ -=0.01;
//}