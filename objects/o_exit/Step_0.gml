/// @description controlling doors

if(state == "open")
{
    audio_play_sound(snd_DEATH, 1, false);
    if(room_next(room) != -1)
    {
        room_goto_next();
    }
}

