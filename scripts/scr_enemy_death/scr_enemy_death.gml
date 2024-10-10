/// @description when enemies die
function scr_enemy_death() {
	instance_destroy();
	var i  = instance_create(x, y, o_guard_corpse);
	i.sprite_death = sprite_death;
	/*//animation
	height = 24;
	sprite_index = sprite_death;

	image_speed = 4 / 30;
	if(image_index >= image_number - 1)
	{
	    image_index = image_number - 1;
	    height = 6;
	}



/* end scr_enemy_death */
}
