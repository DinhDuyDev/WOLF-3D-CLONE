/// @description init

z1 = 32;
z2 = 0;
width = 16;



audio_play_sound_at(snd_explosion_1, x, y, 16, 32, 64, 1, false, 1);

repeat(30) {
	var i2 = instance_create(x, y, o_blood); // SMOKEE
	i2.z = random_range(6, 26);
	i2.direction = random(360);
	i2.speed = random_range(1, 3);
	i2.sprite_index = s_smoke;
	i2.alarm[0] = 2 * 15;	
}
repeat(45) {
	var i2 = instance_create(x, y, o_blood); // SMOKEE
	i2.z = random_range(6, 26);
	i2.z_speed = random_range(1, 2.5);
	i2.direction = random(360);
	i2.speed = random(1);
	i2.sprite_index = s_smoke;
	i2.alarm[0] = 2 * 15;	
}