/// @description drawing the guns

var xx = display_get_width();
var yy = display_get_height();

display_set_gui_size(xx, yy);

if(o_player.HUD_MODE == true)
    var gun_up = 144;
else
    var gun_up = 0;

if (gun_index == 2)
	gun_up = -44;
else if gun_index == 3
	gun_up = -80;

var h = o_player.headbob;
var w = o_player.wepbob;
if(o_player.hp > 0)
    draw_sprite_ext(gun[gun_index], image_index, xx / 2 + w*14, yy - gun_up + 14 + h*7, 18, 18, -gun_aim_direction, c_white, 1);

//draw_text(64, 64, state_gun);

//crosshair
draw_rectangle_color(
xx/2-3 - 10 * fire_inacc
, yy/2-3 - 10 * fire_inacc
, xx/2+3 + 10 * fire_inacc
, yy/2+3 + 10 * fire_inacc
, c_white, c_white, c_white, c_white, true);

gpu_set_fog(true, c_dkgray, -300, 1024); 

