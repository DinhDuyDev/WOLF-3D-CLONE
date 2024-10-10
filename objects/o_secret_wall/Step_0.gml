/// @description speed

if(state == "open")
{
    speed = 1;
    var vect_x = x + lengthdir_x(speed, direction);
    var vect_y = y + lengthdir_y(speed, direction);
    if(place_meeting(vect_x, vect_y, ParentSolid))
    {
        repeat(speed)
        {
            var xx = lengthdir_x(1, direction);
            var yy = lengthdir_y(1, direction);
            if(!place_meeting(x+xx, y+yy, ParentSolid))
            {
                x += xx;
                y += yy;
            }
            else
            {
                break;
            }
        }
        speed = 0;
        state = "close";
    }
}
//x = floor(x / 32) * 32;
//y = floor(y / 32) * 32;

