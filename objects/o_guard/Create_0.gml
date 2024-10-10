/// @description Init
hp_max = 25;
hp = hp_max;
ROF = 0;
ROF_END = 2.5;//1.7;
ROF_SPEED = 0.1;
//attack state
//move state
//idle state
//patrol
active = false;

enum states
{
    idle,
    attack,
    move,
    patrol,
    pain,
    death
}
timing_state = 0;

state = states.idle;//, states.patrol);//choose("idle", "patrol");
state_text = "idle";
sprite_normal = s_guard;
sprite_attack = s_guard_attack;
sprite_pain   = s_guard_pain;
sprite_death  = s_guard_death;
sprite_facing = s_guard_facing;

//head on
//zig zag
move_patterns = "head on";
side_move = 64;
side_move_timer = 0;
height = 24;
spd = 2;
pain_time = 1;
play_sound = false;


//shooting
inacc = 6;
num_pellets = 7;
damage_multiplier = 1;