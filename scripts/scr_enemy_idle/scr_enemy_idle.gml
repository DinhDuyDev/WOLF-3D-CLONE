/// @description idle state
function scr_enemy_idle() {

	//direction += 0.2;
	if(object_index != o_officer && object_index != o_robot)
	{
	    var angle = (o_player.direction - direction) / 45;
	    image_index = round(angle);
	    if(image_index > 8) image_index -= 8;
	    else if(image_index < 0) image_index += 8;
	    sprite_index = sprite_facing;
	    if(!collision_line(x, y, o_player.x, o_player.y, ParentSolid, 1, 0))
	    {
	        var hear_sound = audio_is_playing(snd_shooting) && distance_to_object(o_player) < 150;
	        var hp_check = hp < hp_max;
	        var losc = !collision_line(x, y, o_player.x, o_player.y, ParentSolid, 1, 0)
	        && point_direction(x, y, o_player.x, o_player.y) < direction + 45
	        && point_direction(x, y, o_player.x, o_player.y) > direction - 45;
	        if(losc || hear_sound || hp_check)
	        {
	            state = states.move; 
	            if(play_sound == false)
	            {
	                play_sound = true;
	                var snd_guardwakeup = choose(snd_GUARDSCREAM1
	                , snd_GUARDSCREAM2
	                , snd_GUARDSCREAM3 
	                , snd_GUARDSCREAM4
	                , snd_GUARDSCREAM5)
	                audio_play_sound_at(snd_guardwakeup, x, y, 256, 512, 64, 1, false, 1);
	                with(ParentEnemy)
	                {
	                    if(distance_to_object(other) < 150)
	                    {
	                        state = states.move;
	                    }
	                }
	            }
	            //break;
	        }

	    }
    
	}
	else
	{
	    var hear_sound = (audio_is_playing(snd_shooting) 
		|| audio_is_playing(snd_shoot_pistol) 
		|| audio_is_playing(snd_stabbing)) 
		&& distance_to_object(o_player) < 150;
		
	    var losc = collision_line(x, y, o_player.x, o_player.x, ParentSolid, 1, 0) || hp < hp_max || hear_sound;
	    if(losc)
	    {
	        state = states.move; 
	        if(play_sound == false)
	        {
	            play_sound = true;
	            var snd_guardwakeup = choose(snd_GUARDSCREAM1
	            , snd_GUARDSCREAM2
	            , snd_GUARDSCREAM3 
	            , snd_GUARDSCREAM4
	            , snd_GUARDSCREAM5)
	            audio_play_sound_at(snd_guardwakeup, x, y, 256, 512, 64, 1, false, 1);
	        }
	    }
	}



}
