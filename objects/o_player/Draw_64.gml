/// @description pain effects
var xx = display_get_width();
var yy = display_get_height();

gpu_set_fog(false, c_black, 0, 0);

if(pain_alpha > 0.001)
    draw_sprite_ext(s_wall_b, 0, 0, 0, xx/32, yy/32, 0, c_white, pain_alpha);

pain_alpha = max(pain_alpha - 0.01, 0);

draw_text(128, 128, string(hp));

//drawing the hud
if(HUD_MODE == true)
{
    draw_sprite_ext(s_HUD, 0, 0, 0, xx / (640), yy / (360), 0, c_white, 1);
    draw_set_font(fnt_HUD);
    //draw_text(xx / 2, yy - 96, string_hash_to_newline("DAMAGE:" + string(damage)));
    //draw_text(xx / 2, yy - 64, string_hash_to_newline("BULLETS LEFT:" + string(o_weapon.bullet_number)));
}
else
{
    draw_set_font(fnt_HUD);
    draw_text(xx/2+64, yy/2, string_hash_to_newline("DAMAGE:" + string(round(damage))));
    //draw_text(64, 128, string_hash_to_newline("BULLETS LEFT:" + string(o_weapon.bullet_number)));

}

//draw_rectangle(xx/2-1.5, xx)


//outline: draw_rectangle(152, yy-128-60, 152+32*4, y-128-60-39*4, false);
//draw_sprite_ext(s_stuff, status_image, 156, yy-128-64, 4, 4, 0, c_white, 1);
var x__ = 64;
var y__ = 64;

draw_rectangle_color(x__, y__, x__+312, y__+64, c_red, c_red, c_red, c_red, false);
draw_rectangle_color(x__, y__, x__+312 * (hp / hp_max), y__+64, c_green, c_green, c_green, c_green, false);
draw_rectangle_color(x__-0.1, y__-0.1, x__+312+0.1, y__+64+0.1, c_black, c_black, c_black, c_black, true);
