/// @description moving

if (type != "rockets")
{
	repeat(32000)
	{
	    x += dcos(direction) * 4;
	    y -= dsin(direction) * 4;
	    if(position_meeting(x, y, ParentSolid))
	    {
			var i = instance_create(x-dcos(direction)*2, y+dsin(direction)*2, o_spark);
			i.z = random_range(12, 20);
		
			repeat(3) {
				var i2 = instance_create(x, y, o_blood); // SMOKEEE
				i2.z = random_range(6, 26);
				i2.direction = direction + 180 + random_range(-6, 6);
				i2.speed = random_range(0.1, 0.5);
				i2.sprite_index = s_smoke;
				i2.alarm[0] = 2 * 15;
			}
	        instance_destroy(); 
	        break;  
	    }
	    else if(place_meeting(x, y, o_player))
	    {
	        var i = instance_place(x, y, o_player);
	        i.hp -= damage;
	        i.pain_alpha = 0.8;
	        i.last_shot_origin = origin_id;
			
			hit_flesh = true;
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
	        break;
	    } 
	}
	var inst = instance_create(xstart+dcos(direction-90)*5, ystart-dsin(direction-90)*5, o_ray);
	inst.xx = x;
	inst.yy = y;
	inst.z1 = 12;
	inst.z2 = 16;
	instance_destroy();
	visible = true;
}
else 
{
		visible = true;
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
	        instance_destroy(); 
			
		
			instance_create(x-dcos(direction)*2, y+dsin(direction)*2, o_explosion);
	    }
	    else if(place_meeting(x, y, o_player))
	    {
	        var i = instance_place(x, y, o_player);
	        i.hp -= damage;
	        i.pain_alpha = 0.8;
	        i.last_shot_origin = origin_id;
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