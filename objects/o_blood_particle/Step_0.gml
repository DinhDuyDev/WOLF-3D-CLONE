/// @description doing things it should be doing
if (active) {
	z -= z_speed;
	speed = max(speed - 0.01, 0);
	z_speed = min(z_speed + z_accel, z_limit);
	if (z <= 0) {
		z_speed = 0;
		z = 0.5;
		speed = 0;
		x = xprevious;
		y = yprevious;
		active = false;
	} else if (position_meeting(x+dcos(direction)*5, y-dsin(direction)*5, ParentSolid)) {
		z_speed = 0;
		speed = 0;
		x = xprevious-dcos(direction)*3;
		y = yprevious+dsin(direction)*3;
		active = false;
	}
	if (position_meeting(x, y, o_player)) {
		if (z > 0 && z < 24) {
			o_player.hp += 0.2;
			instance_destroy();
		}
	}
}

