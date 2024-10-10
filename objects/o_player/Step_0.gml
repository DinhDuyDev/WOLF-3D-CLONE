 /// @description movement
hp = clamp(hp, -1000, 100);
if(hp > 0)
{
    /*var xx = window_get_width() / 2;
    var yy = window_get_height() / 2;
    var mx = window_mouse_get_x();
    var my = window_mouse_get_y();
    var mouse_look_x = ((mx - xx) / 100) * sensitivity;
    var mouse_move_f = min(((my - yy) / 7), spd_run);*/
    
	if (!global.AIMMODE) direction += (keyboard_check(vk_left) - keyboard_check(vk_right))*sense + (r_tleft - r_tright) * sense;
	//z_view += (keyboard_check(vk_up) - keyboard_check(vk_down))*2.5;
	z_view = clamp(z_view, -90, 90);
    //window_mouse_set(xx, yy);
    
    var move_x = (keyboard_check(forward) - keyboard_check(backward)) * spd + (r_fw - r_bk) * spd;
    var move_y = (keyboard_check(left) - keyboard_check(right)) * spd + (r_left - r_right) * spd;
    
    
    hsp = lengthdir_x(move_x, direction) + lengthdir_x(move_y, direction + 90); //+ lengthdir_x(-mouse_move_f, direction);
    vsp = lengthdir_y(move_x, direction) + lengthdir_y(move_y, direction + 90); //+ lengthdir_y(-mouse_move_f, direction);
	if (global.AIMMODE) { hsp = 0; vsp = 0;}
    //direction += move_y;
    __x = lerp(__x, hsp, 0.2);
    __y = lerp(__y, vsp, 0.2);
    
    //hsp = lengthdir_x(move_x, direction);
    //vsp = lengthdir_y(move_x, direction);
    
    //if(keyboard_check(vk_shift)) spd = spd_run; else spd = spd_walk;
    
    var collide_obj = ParentSolid;
    
    if(!place_meeting(x + __x, y, collide_obj))
    {
        x += __x;
    } else {
        while(!place_meeting(x + sign(__x), y, collide_obj))
        {
            x += sign(__x);
        }
        hsp = 0;
    }
    
    if(!place_meeting(x, y + __y, collide_obj))
    {
        y += __y;
    } else {
        while(!place_meeting(x, y + sign(__y), collide_obj))
        {
            y += sign(__y);
        }
        vsp = 0;
    }
    if(hsp != 0 || vsp != 0)
    {
        headbob_c += 0.2;
        if(headbob_c > 360)
        {
            headbob_c = 0;
        }
        headbob = sin(headbob_c) * 3;
        wepbob = sin(headbob_c / 2) * 3;
    }
    else
    {
        headbob_c = 0;
        if(abs(headbob >= 0.001))
            headbob *= 0.9;
        else
            headbob = 0;
            
        if(abs(wepbob >= 0.001))
            wepbob *= 0.9;
        else
            wepbob = 0;
    }

	if (keyboard_check_pressed(vk_rshift)) {
		global.AIMMODE = !global.AIMMODE;
	}
	r_left = false;
	r_right = false;
	r_fw = false;
	r_bk = false;
	r_tleft = false;
	r_tright = false;
	room_speed = 60;
}
if(keyboard_check_pressed(vk_escape))
{
    room_goto(r_menu);
}




/*if(keyboard_check_pressed(vk_f4))
{
    if(window_get_fullscreen() == true)
        window_set_fullscreen(false);
    else
        window_set_fullscreen(true);
}*/

if(keyboard_check(ord("R"))) game_restart();

if(hp <= 0)
{
    spd = 0;
    hsp = 0;
    vsp = 0;
    o_weapon.image_index = 0;
    pain_alpha += 0.02;
    if(pain_alpha > 4)
    {
        room_restart();
		o_input.replay_player_inputs = true;
    }
    if(instance_exists(last_shot_origin))
    {
        var angle_rotate = point_direction(x, y, last_shot_origin.x, last_shot_origin.y);
        if(direction < angle_rotate) direction = min(direction + 2, angle_rotate);
        else direction = max(direction - 2, angle_rotate);
    }
    with(ParentEnemy)
    {
        ROF = 0;
        image_index = 0;
    }
    if(pain_alpha = 0.02)
    {
        audio_play_sound(snd_DEATH, 1, false);
        audio_stop_sound(snd_shooting);
        audio_stop_sound(snd_GUARDSCREAM1);
        audio_stop_sound(snd_GUARDSCREAM2);
        audio_stop_sound(snd_GUARDSCREAM3);
        audio_stop_sound(snd_GUARDSCREAM4);
        audio_stop_sound(snd_GUARDSCREAM5);
    }
}

if(keyboard_check_pressed(ord("H")))
{
    if(HUD_MODE == false)
        HUD_MODE = true;
    else
        HUD_MODE = false;
}



///open secret doors / doors

var open_door = keyboard_check(vk_space) || r_open;
if(open_door)
{
    var vect_x = x + lengthdir_x(sprite_width, direction);
    var vect_y = y + lengthdir_y(sprite_width, direction);
    if(place_meeting(vect_x, vect_y, o_secret_wall))
    {
        var i = instance_place(vect_x, vect_y, o_secret_wall);
        var angle = direction;
        i.direction = round(angle / 45) * 45;
		
		if (i.state != "open")
		{
			i.state = "open";
			audio_play_sound_at(snd_door_play, i.x, i.y, 0, 16, 32, 1, false, 1);
		}
    }
    else if(place_meeting(vect_x, vect_y, o_door))
    {
        var i = instance_place(vect_x, vect_y, o_door);
		if (i.state != "open")
		{
			i.state = "open";
			audio_play_sound_at(snd_door_play, i.x, i.y, 0, 16, 32, 1, false, 1);
		}
    }

}
r_open = false;

///audio
audio_listener_position(x, y, 32);


//status image
status_image = max(status_image - 0.01, 0);
//recoiling effect
recoil *= 0.91;

//bullet clips
if (place_meeting(x, y, o_bullet_clip))
{
	o_weapon.bullet_number += 15;
	with(instance_place(x, y, o_bullet_clip))
	{
		instance_destroy();	
	}
}

instance_deactivate_object(o_blood_particle);
instance_activate_region(x - 512, y - 512, x + 512, y + 512, true);