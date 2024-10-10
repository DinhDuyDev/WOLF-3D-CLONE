/// @description initialising variables
speed = random_range(1, 2);
z_speed = -random(1);
z_limit = 15;
z_accel = 0.05;
z = 0;
width = random_range(4, 8);

active = true;

var col_var = random_range(16, 255);
shading_variation = make_color_rgb(col_var, col_var, col_var);

