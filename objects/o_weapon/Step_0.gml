/// @description position and firing
x = o_player.x;
y = o_player.y;
direction = o_player.direction - gun_aim_direction;
if (global.AIMMODE) {
	gun_aim_direction = ((display_mouse_get_x() - display_get_gui_width()/2) / display_get_gui_width()/2) * o_menu.FOV*3;
} else {
	gun_aim_direction = lerp(gun_aim_direction, 0, 0.1);	
}
var shoot = keyboard_check(vk_lshift);
//firing
switch(gun_index)
{
    case 0:
    if(shoot && state_gun == "stop" && bullet_number > 0)
    {
		r_shoot = true;
        state_gun = "attack";
        fire_state = "stop";
		fire_inacc += 0.1;
    }
    
    else if(state_gun == "attack")
    {
        image_index += (10 / 30); //+ (3 / 30) * 0.25 * global.AIMMODE;
        
        if(image_index > image_number - 1)
        {
            state_gun = "stop";
            image_index = 0;
            image_speed = 0;
			r_shoot = false;
        }
        
        
        if(floor(image_index) == 3)
        {
            
            if(fire_state == "stop")
            {
                audio_play_sound(snd_shooting, 1, false);
				audio_play_sound(snd_shoot_pistol, 1, false);
				
				repeat(1)
				{
					var i = instance_create(x, y, o_player_bullet); // default range
					i.damage = irandom_range(7, 15); // + 7 * global.AIMMODE;
					i.direction = direction + random_range(-0.1 /* fire_inacc*/, 0.1 /* fire_inacc*/);//random_range(-3, 3);
				}
				o_player.recoil = 2;
                fire_state = "attack";
				bullet_number -= 1;
            }
        }
		
    }
	//if !shoot pistol_cooldown = min(pistol_cooldown + 0.05, 6);
    break;
    
    case 1:
    if(shoot && state_gun == "stop" && bullet_number > 0)
    {
        state_gun = "attack";
        fire_state = "stop";
		fire_inacc += 0.2;
    }
    
    else if(state_gun == "attack")
    {
        image_index += (6 / 30);// + (10 / 30) * 0.25 * global.AIMMODE;
        
        if(image_index > image_number - 1)
        {
            state_gun = "stop";
            image_index = 0;
            image_speed = 0;
            r_shoot = false;
        }
        
        if(floor(image_index) == 1)
        {
            if(fire_state == "stop")
            {
                audio_play_sound(snd_shooting, 1, false);
				audio_play_sound(snd_machinegun_background, 1, false);
				repeat(7) {
	                var i = instance_create(x, y, o_player_bullet); // firing limited range
	                i.damage = irandom_range(2, 3) + 8 * global.AIMMODE;
					i.range = 460;
	                i.direction = direction + random_range(-8, 8);
				}
                fire_state = "attack";
				o_player.recoil = 3;
				bullet_number -= 1;

            }
        }
    }    
    break;
    
    case 2:
    if(shoot && bullet_number > 0)
    {
		if (minigun_rev_value > 1) {
	        gun[2] = s_chaingun_attack1;
	        fire_inacc += 0.02;
	        image_speed = 1;
        
	        if(round(image_index) == 2)
	        {
	            audio_play_sound(snd_shooting, 1, false);
	        }
        
	        audio_play_sound(snd_shooting, 1, false);
        
	        var i = instance_create(x, y, o_player_bullet); // very small range
        
	        i.damage = 4.5 + 4.5 * 0.5 * global.AIMMODE;
	        i.range = random_range(295, 150);
	        i.direction = direction + random_range(-5 * fire_inacc, 5 * fire_inacc);
		
			o_player.recoil = 4;
			bullet_number -= 1;
		} else {
			minigun_rev_value += 0.005;
			image_speed = minigun_rev_value;
			gun[2] = s_chaingun_rev;
		}
    }
    else
    {
        gun[2] = s_chaingun;
        image_speed = 0;
        image_index = 0;
		minigun_rev_value = 0;
    }
    break;
	
    case 3:
    if(shoot && state_gun == "stop")
    {
        state_gun = "attack";
        fire_state = "stop";
    }
    
    else if(state_gun == "attack")
    {
        image_index += (12 / 30);//  * 1.25 * global.AIMMODE;
        
        if(image_index > image_number - 1)
		{
            state_gun = "stop";
            image_index = 0;
            image_speed = 0;
        }
        
        
        if(floor(image_index) == 3)
        {
            
            if(fire_state == "stop")
            {
				audio_play_sound(snd_stabbing, 1, false);
				repeat(1)
				{
					var i = instance_create(x, y, o_player_bullet); // default range
					i.damage = irandom_range(20, 25);
					i.direction = direction + random_range(-3, 3);//random_range(-3, 3);
					i.range = 16;
					i.knife_state = true;
				}
				o_player.recoil = 1;
                fire_state = "attack";
            }
        }


    }
    break;
}

sprite_index = gun[gun_index];
image_alpha = 0;

///switchguns

var g1 = ord("1");
var g2 = ord("2");
var g3 = ord("3");
var g4 = ord("4");

switch(keyboard_key)
{
    case g1: 
    if(gun[0] == s_pistol_attack || gun[0] == s_pistol)
    {
        gun_index = 0;
        image_index = 0;
        image_speed = 0;
    }
    break;
    case g2: 
    if(gun[1] == s_machine_gun)
    {
        gun_index = 1;
        image_index = 0;
        image_speed = 0;
    }
    break;
    case g3: 
    if(gun[2] == s_chaingun || gun[2] == s_chaingun_attack || gun[2] == s_chaingun_attack1)
    {
        gun_index = 2;
        image_index = 0;
        image_speed = 0;
    }
    break;
	
    case g4: 
    if(gun[3] == s_knife)
    {
        gun_index = 3;
        image_index = 0;
        image_speed = 0;
    }
    break;
}


///picking up guns
if(place_meeting(x, y, o_gun_pickup))
{
    var i = instance_place(x, y, o_gun_pickup);
    switch(i.sprite_index)
    {
        case s_mac_gun_pk:
            gun[1] = s_machine_gun;
            gun_index = 1;
			audio_play_sound(snd_heavy2, 1, 0);
        break;
        case s_chaingun_pk:
            gun[2] = s_chaingun;
            gun_index = 2;
			audio_play_sound(snd_heavy, 1, 0);
        break;
    }
    with(i)
    {
        instance_destroy();
    }
}

/// NO AMMO
bullet_number = 100;
if (!shoot) fire_inacc = max(fire_inacc - 1, 0);

if (keyboard_check_pressed(vk_tab)) {
	room_goto_next();	
}
