/// @description movement

var losc = !collision_line(x, y, o_player.x, o_player.y, ParentSolid, 1, 0) 
|| audio_is_playing(snd_shooting) && distance_to_object(o_player) < 128
|| hp < hp_max;

if(losc)
{
    active = true;
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

if(active = true)
{
    switch(state)
    {
        case states.idle  : scr_enemy_idle()  ; state_text = "idle";  break;
        case states.attack: scr_enemy_attack(); state_text = "attack";break;
        case states.move  : scr_enemy_move()  ; state_text = "move";  break;
        case states.pain  : scr_enemy_pain()  ; state_text = "pain";  break;
        case states.death : scr_enemy_death() ; state_text = "dead";  break;
        
    }
}

//doors
var i = instance_nearest(x, y, o_door);
if(distance_to_object(i) < 8)
{
    with(i)
    {
        state = "open";
    }
}

//death
if(hp <= 0)
{
    state = states.death;
}

