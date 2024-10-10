/// @description Drawing the Menus
display_set_gui_size(window_get_width(), window_get_height());
switch(room)
{
    case r_menu:
        ///Drawing the Menu
        //background_color = c_red;
        draw_set_color(c_black);
        draw_text(64, 64, string_hash_to_newline("DEVIL SLAYER"));
        draw_text(64, 128, string_hash_to_newline("PRESS ENTER TO START!"));
        draw_text(64, 160, string_hash_to_newline("PRESS 1 TO GO TO SENSITIVITY MENU"));
        draw_text(64, 192, string_hash_to_newline("PRESS 2 TO GO TO FOV MENU"));
        draw_text(64, 224, string_hash_to_newline("PRESS 3 TO GO BACK TO MENU"));
        draw_text(64, 256, string_hash_to_newline("PRESS ESC TO END THE GAME"));
		gpu_set_fog(false, c_black, 1, 1);
    break;

    case r_sensitivity:
        var scale = 32;
        draw_set_color(c_blue)
        draw_rectangle(64, 256, 64 + scale*max_sensitivity, 256+64, false);
        draw_set_color(c_green);
        draw_rectangle(64, 256, 64 + scale*sensitivity, 256+64, false);
        var xx = 64;
        var yy = 256;
        repeat(max_sensitivity)
        {
            xx += scale;
            draw_line_width_color(xx, yy, xx, yy + 64, 2, c_yellow, c_yellow);
        }
		gpu_set_fog(false, c_black, 1, 1);

    break;
    
    case r_fov:
        var scale = 8;
        draw_set_color(c_blue);
        draw_rectangle(64, 256, 64 + scale*150, 256+64, false);
        draw_set_color(c_red);
        draw_rectangle(64, 256, 64 + scale*FOV, 256+64, false);
        var xx = 64;
        var yy = 256;
        repeat(150)
        {
            xx += scale;
            draw_line_width_color(xx, yy, xx, yy + 64, 2, c_yellow, c_yellow);
        }
		gpu_set_fog(false, c_black, 1, 1);

    break;
}
