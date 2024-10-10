/// @description init

d3d_start();
d3d_set_culling(false);
d3d_set_hidden(true);
d3d_set_perspective(true);
draw_set_color(c_white);
draw_set_alpha_test(true);
draw_set_alpha_test_ref_value(20);


hsp = 0;
vsp = 0;
__x = 0;
__y = 0;
spd_walk = 4;
spd_run = 8;
spd = spd_walk;
sense = 2.5;

/*forward = o_input.forward;
backward = o_input.backward;
left = o_input.left;
right = o_input.right;*/
forward = ord("W");
backward = ord("S");
left = ord("A");
right = ord("D");
sensitivity = o_menu.sensitivity;

r_tleft = false;
r_tright = false;
r_left = false;
r_right = false;
r_fw = false;
r_bk = false;
r_open = false;
r_shoot = false;
window_set_cursor(cr_default);

z = 16;
depth = 100000;
instance_create(x, y, o_weapon);
image_xscale = 0.75;
image_yscale = image_xscale;
pain_alpha = 1;

hp_max = 100;
hp = hp_max;
last_shot_origin = 0;
FOV = o_menu.FOV;
key = false;
HUD_MODE = false;
headbob_c = 0;
headbob = 0;
wepbob = 0;


//z viewing
z_view = 0;
recoil = 0;

//status image
status_image = 0;
/* */
/*  */

audio_master_gain(0.1);


damage = 0;
global.AIMMODE = false;