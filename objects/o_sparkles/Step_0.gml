/// @description movement
z -= z_speed;
z_speed = min(z_speed + 0.02, 15);
if (z <= 1) {
	z = 1;	
	speed = max(speed - 0.05, 0);
} else if (z >= 31) {
	z_speed = 1;
}