/// @description checking for configurations
var move_config = keyboard_check(vk_left) - keyboard_check(vk_right);

switch(room)
{
    case r_sensitivity:
        sensitivity = min(sensitivity - move_config, max_sensitivity);
    break;
    
    case r_fov:
        FOV = min(FOV - move_config*2, 150);
    break;
}


if(room != r_room_1 && room != r_room_2 && room != r_win && room != r_room_3 && room != r_room_4)
    switch(keyboard_key)
    {
        case ord("1"):
            room_goto(r_sensitivity);
        break;
        case ord("2"):
            room_goto(r_fov);
        break;
        case ord("3"):
            room_goto(r_menu);
        break;   
    }

