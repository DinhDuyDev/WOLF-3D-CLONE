/// @description controlling doors

if(o_player.key == true)
{
    if(state == "open")
    {
        x += dcos(image_angle + 180);
        y -= dsin(image_angle + 180);

        if(x == xback + dcos(image_angle+180) && y - dsin(image_angle+180) == yback)
        {
            state = "close";
            x = xback;
            y = yback;
        }
	}
    else if(state == "close")
    {
        if(!place_meeting(x + dcos(image_angle) * 2, y - dsin(image_angle) * 2, o_player))
        {
            if(x != xstart) x += dcos(image_angle);
            if(y != ystart) y -= dsin(image_angle);
        }
        
        
    
    }
}

