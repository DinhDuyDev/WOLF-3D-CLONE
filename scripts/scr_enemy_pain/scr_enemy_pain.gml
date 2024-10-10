/// @description pain state
function scr_enemy_pain() {

	//animation
	sprite_index = sprite_pain;
	image_speed = 0;

	//action
	timing_state ++;
	if(timing_state > pain_time * 60 || hp <= 0)
	{
	    state = choose(states.move, states.attack);
	    timing_state = 0;
	}


}
