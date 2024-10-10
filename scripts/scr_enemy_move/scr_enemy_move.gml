/// @description moving
function scr_enemy_move() {

	//animation
	image_speed = 1 / 30;
	sprite_index = sprite_normal;
	//actions

	switch(move_patterns)
	{
	    case "head on":
	        if(distance_to_object(o_player) > 16)
	        {
	            mp_potential_step_object(o_player.x, o_player.y, spd, ParentSolid);
	        }
	        if(object_index == o_officer)
	        {
	            move_patterns = choose("zig zag", "around");
	        }
	    break;
    
	    case "zig zag":
	        side_move_timer ++;
	        if(side_move_timer > 2.5 * 60)
	        {
	            side_move = -side_move;
	        }
	        if(distance_to_object(o_player) > 16)
	        {
	            var angle = point_direction(x, y, o_player.x, o_player.y) + 90;
	            mp_potential_step_object(o_player.x + dcos(angle) * side_move
	            , o_player.y - dsin(angle) * side_move, spd*2, ParentSolid);
	        }
	    break;
	    case "around":
	    {
	        if(object_index != o_officer)
	        {
	            move_patterns = choose("zig zag", "head on");
	        }
	        else
	        {
	            direction = point_direction(x, y, o_player.x, o_player.y) + 90;
	            spd = 5;
	            move_bounce_all(true);
	        }
	    }
    
	}

	timing_state++;
	
	if (timing_state >= 2 * 30)
	{
		if (timing_state == 3 * 30 && object_index == o_robot)
		{
			audio_play_sound_at(snd_DEATH, x, y, 0, 8, 16, 1, false, 1);
		}
		if(timing_state >= 5 * 30)
		{
		    state = states.attack;
		    timing_state = 0;
		}
	}



}
