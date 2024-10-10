/// @description Init
hp_max = 50;
hp = hp_max;
ROF = 0;
ROF_END = 4;
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
sprite_normal = s_officer;
sprite_attack = s_officer_attack;
sprite_pain   = s_officer_pain;
sprite_death  = s_officer_death;

//head on
//zig zag
//around player
move_patterns = "head on";
side_move = 64;
side_move_timer = 0;
height = 24;
spd = 6;
pain_time = 0.2;
play_sound = false;

/* */
/*  */

//shooting
inacc = 3;
num_pellets = 1;
damage_multiplier = 15;