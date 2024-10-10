/// @description create particles

if (!hit_flesh) {
	repeat(irandom_range(6, 8)) {
		with(instance_create(x, y, o_brickparticles)) {
			direction = other.direction + 180 + random_range(-10, 10) + random_range(-60, 60);
			z = other.create_z;
		}
		with(instance_create(x, y, o_ray)) {
			direction = other.direction + 180 + random_range(-10, 10) + random_range(-60, 60);
			z2 = other.create_z;
			z1 = z2;
			xx = x;
			yy = y;
			speed = random(3);
			alarm[0] = 3 * 60;
		}
	}
	with(instance_create(x, y, o_contact_flash)) {
		z = other.create_z - 4;
	}
}
