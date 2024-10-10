/// @description attack
function scr_enemy_attack() {

	//animation
	sprite_index = sprite_attack;
	image_speed = 0;
	image_index += ROF_SPEED;
	ROF += ROF_SPEED;
	if(image_index == 1)
	{
	    state = states.move;
	    move_patterns = choose("head on", "zig zag");
	}

	//actions
	direction = point_direction(x, y, o_player.x, o_player.y);
	if(ROF >= ROF_END)
	{
		repeat(num_pellets) {
		    with(instance_create(x, y, o_enemy_bullet))
		    {
				if (other.object_index == o_rocketeer) 
				{
					type = "rockets";
					spd = 6;
					damage = 40;
				}
		        direction = other.direction + random_range(-other.inacc, other.inacc);
		        origin_id = other.id;
				damage *= other.damage_multiplier;
		    }
		}
		if (object_index == o_guard)
		{
			audio_play_sound_at(snd_shoot_pistol, x, y, 16, 64, 128, 1, false, 1);
		}
	    else if (object_index == o_ss)
		{
			audio_play_sound_at(snd_shooting, x, y, 16, 64, 128, 1, false, 1);	
			
		}
		else if (object_index == o_officer)
		{
			audio_play_sound_at(snd_shooting, x, y, 16, 64, 128, 1, false, 1);	
			audio_play_sound_at(snd_machinegun_background, x, y, 16, 64, 128, 1, false, 1);
		}
		else if (object_index == o_rocketeer)
		{
			audio_play_sound_at(snd_explosion_1, x, y, 16, 64, 128, 1, false, 1);	
		}
	    ROF = 0;
	}
	timing_state++;
	if(timing_state >= random_range(5, 10) * 15)
	{
	    state = states.move;
	    timing_state = 0;
	}


}
