/// @description activation
if (point_distance(o_player.x, o_player.y, x, y) < 256 && activated && !collision_line(x, y, o_player.x, o_player.y, ParentSolid, 1, 0)) {
	activated = false;
	alarm[0] = 20 * 60;
}

if (spawn_times < 0) {
	instance_destroy();
}