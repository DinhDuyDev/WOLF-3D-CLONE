/// @description physics
if (hp <= 0) {
	repeat(15) {
		var i2 = instance_create(x+sprite_width/2, y+sprite_height/2, o_blood); // SMOKEE
		i2.z = 5;
		i2.direction = random(360);
		i2.speed = random_range(1, 2);
		i2.sprite_index = s_smoke;
		i2.alarm[0] = 2 * 15;	
	}
	repeat(30) {
		var i2 = instance_create(x+sprite_width/2, y+sprite_height/2, o_blood); // SMOKEE
		i2.z = random_range(20, 26);
		i2.direction = random(360);
		i2.speed = random(1);
		i2.sprite_index = s_smoke;
		i2.alarm[0] = 2 * 15;	
	}
	instance_destroy();
}

hsp *= 0.95;
vsp *= 0.95;


// movement
if(!place_meeting(x + hsp, y, ParentSolid))
{
    x += hsp;
} else {
    while(!place_meeting(x + sign(hsp), y, ParentSolid))
    {
        x += sign(hsp);
    }
    hsp = 0;
}
    
if(!place_meeting(x, y + vsp, ParentSolid))
{
    y += vsp;
} else {
    while(!place_meeting(x, y + sign(vsp), ParentSolid))
    {
        y += sign(vsp);
    }
    vsp = 0;
}