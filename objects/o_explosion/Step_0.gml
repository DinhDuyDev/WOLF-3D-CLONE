/// @description dealing damage

with(ParentEnemy)
{
	var losc = !collision_line(x, y, other.x, other.y, ParentSolid, 1, 0);
	if (point_distance(x, y, other.x, other.y) < 128 && losc)
	{
		hp -= 1;
	}
}

with(o_player)
{
	recoil = 5;
	var losc = !collision_line(x, y, other.x, other.y, ParentSolid, 1, 0);
	if (point_distance(x, y, other.x, other.y) < 64 && losc)
	{
		hp -= 0.5;
		pain_alpha += 0.1;
	}
}