/// @description particle movement
z_speed = min(z_speed + z_accel, z_limit);
z -= z_speed;
if (z <= 0) {
	instance_destroy();	
}