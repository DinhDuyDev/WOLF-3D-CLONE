/// @description Init
hp_max = 210;
hp = hp_max;
ROF = 0;
ROF_END = 8;
ROF_SPEED = 0.3;
//attack state
//move state
//idle state
//patrol
active = false;

/*enum states
{
    idle,
    attack,
    move,
    patrol,
    pain,
    death
}*/
timing_state = 0;

state = states.idle;//, states.patrol);//choose("idle", "patrol");
state_text = "idle";
sprite_normal = s_rocketeer;
sprite_attack = s_rocketeer;
sprite_pain   = s_ss_pain;
sprite_death  = s_ss_death;
sprite_facing = s_ss_facing;
//head on
//zig zag
move_patterns = "head on";
side_move = 64;
side_move_timer = 0;
height = 32;
spd = 0.5;
pain_time = 1;
play_sound = false;

/* */
/*  */

//shooting
inacc = 0.1;
num_pellets = 3;
damage_multiplier = 1;