/// @description height management

height = 24;
sprite_index = sprite_death;

image_speed = 4 / 30;
if(image_index >= image_number - 1)
{
    image_index = image_number - 1;
    height = 9;
}

speed = min(speed + 0.1, 0);


if (place_meeting(x, y, ParentSolid))
{
	speed = 0;
}	