/// @description moving

if (keyboard_check_pressed(vk_tab)) {
	room_goto_next();	
}
if (!rocket) {
	repeat(range)
	{
	    x += dcos(direction)*10;
	    y -= dsin(direction)*10;
		range_length++;
	    if(position_meeting(x, y, ParentSolid))
	    {
			var i = instance_create(x-dcos(direction)*2, y+dsin(direction)*2, o_spark);
			i.z = random_range(12, 20);
		
			if (knife_state == false) // do it if it's not a knife
			{
				repeat(3) {
					var i2 = instance_create(x, y, o_blood); // SMOKEE
					i2.z = random_range(6, 26);
					i2.direction = direction + 180 + random_range(-6, 6);
					i2.speed = random_range(0.1, 0.5);
					i2.sprite_index = s_smoke;
					i2.alarm[0] = 2 * 15;
				}
			}
		
			repeat(irandom_range(18, 22)) { // janky ass fucking system
				var sparkles = instance_create(x, y, o_sparkles);
				sparkles.z = i.z;
				sparkles.speed = random(3);
				sparkles.direction = direction + 180 + random_range(-11, 11);
			}
		
		
	        instance_destroy(); 
	        break;  
	    }
	    else if(place_meeting(x, y, ParentEnemy))
	    {
	        var i = instance_place(x, y, ParentEnemy);
	        damn = damage * ((32000 - range_length*10) / 32000);
			i.hp -= damn;
			var i2 = instance_create(x, y, o_blood);
			i2.z = random_range(6, 26);
			i2.direction = direction + 180 + random_range(-6, 6);
			i2.speed = random_range(0.1, 0.5);
		
			hit_flesh = true; // used to determine bits particles
	        var pain_chance = random(100);
	        if(pain_chance >= 10 && pain_chance <= 90)
	        {
				if (i.object_index == o_robot)
				{
					i.state = states.pain;   
					i.image_index = irandom_range(0, 4);
					timing_state = 0;
				} else {
					i.state = states.pain;   
					i.image_index = irandom_range(0, 4);	
				}
	        }
		

	        instance_destroy();
	        break;
	    }
		else if(place_meeting(x, y, ParentProps))
	    {
	        var i = instance_place(x, y, ParentProps);
	        damn = damage * ((32000 - range_length*10) / 32000);
			i.hp -= damn;
		
			i.hsp += dcos(direction) * 2;
			i.vsp -= dsin(direction) * 2;
		
	        instance_destroy();
	        break;
	    } 
		else if (range_length >= range-4)
		{
			var i = instance_create(x, y, o_spark);
			i.z = choose(1, 31); 
		
		
			if (knife_state == false) // if it is not a gun, don't do it 
			{
				var i2 = instance_create(x, y, o_blood); // SMOKEE
				i2.z = random_range(6, 26);
				i2.direction = direction + 180 + random_range(-6, 6);
				i2.speed = random_range(0.1, 0.5);
				i2.sprite_index = s_smoke;
			}
		
			repeat(irandom_range(18, 22)) {
				var sparkles = instance_create(x, y, o_sparkles);
				sparkles.z = i.z;
				sparkles.speed = random(3);
				sparkles.direction = random(360);
				if (i.z == 31) {
					sparkles.z_speed = 1;	
				} 
			}
			instance_destroy();
			break;	
		}
	}
	instance_destroy();
} else {
		visible = false;
	    x += dcos(direction) * spd;
	    y -= dsin(direction) * spd;
	    if(position_meeting(x, y, ParentSolid))
	    {
			var i = instance_create(x-dcos(direction)*2, y+dsin(direction)*2, o_spark);
			i.z = random_range(12, 20);
		
			var i2 = instance_create(x, y, o_blood); // SMOKEEE
			i2.z = random_range(6, 26);
			i2.direction = direction + 180 + random_range(-6, 6);
			i2.speed = random_range(0.1, 0.5);
			i2.sprite_index = s_smoke;
			i2.alarm[0] = 2 * 15;
	        //instance_destroy(); 
			
		
			instance_create(x-dcos(direction)*2, y+dsin(direction)*2, o_explosion);
	    }
	    else if(place_meeting(x, y, ParentEnemy))
	    {
	        var i = instance_place(x, y, ParentEnemy);
	        i.hp -= damage;
			/*var chance = random(100);
			if (chance <= 50)
			{
				audio_stop_sound(sndHai4);
				audio_play_sound(sndHai4, 1, false);
				o_player.status_image = 4;
			}*/
		
			var i2 = instance_create(x, y, o_blood);
			i2.z = random_range(12, 20);
			i2.direction = direction + 180 + random_range(-6, 6);
			i2.speed = random_range(0.1, 0.5);
	        instance_destroy();
			

			instance_create(x-dcos(direction)*2, y+dsin(direction)*2, o_explosion);
	    
	    } 
		
		var smoke = instance_create(x, y, o_blood);
		smoke.sprite_index = s_smoke;
		smoke.z = 18;
		smoke.direction = direction+180+random_range(-5, 5);
		smoke.speed = random(1);
}	


//instance_create(x-dcos(direction)*2, y+dsin(direction)*2, o_explosion);