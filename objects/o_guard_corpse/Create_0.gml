/// @description height

height = 24;

var chance = random(100);

/*if (chance < 50)
{
	var audio_death = choose(sndHai1, sndHai2, sndHai3);

	audio_play_sound(audio_death, 1, false);
	o_player.status_image = 2;
}*/
direction = point_direction(x, y, o_player.x, o_player.y);
speed = -random(20);

//instance_create(x, y, o_bullet_clip);