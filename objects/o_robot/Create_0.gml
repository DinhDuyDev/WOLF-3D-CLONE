/// @description Init
hp_max = 2000;
hp = hp_max;
ROF = 0;
ROF_END = 1;
ROF_SPEED = 0.4;
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
sprite_normal = s_robot_enemy;
sprite_attack = s_robot_enemy_atk;
sprite_pain   = s_robot_enemy_hurt;
sprite_death  = s_robot_destroyed;
//sprite_facing = s_ss_facing;
//head on
//zig zag
move_patterns = "head on";
side_move = 64;
side_move_timer = 0;
height = 32;
spd = 0.5;
pain_time = 0;
play_sound = false;

/* */
/*  */


//shooting
inacc = 4;
damage_multiplier = 0.5;
num_pellets = 1;