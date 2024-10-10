/// @description movement
xx = lerp(xx, x, 0.4);
yy = lerp(yy, y, 0.4);
z1 = lerp(z1, z2, 0.4);

z2 -= z_speed;
z_speed = min(z_speed + z_accel, z_limit);

if (z1 <= 0) { // still some lead time before actually destroyed, so if out of sight then destroy it.
	instance_destroy();	
}