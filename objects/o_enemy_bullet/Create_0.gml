/// @description init
direction += random_range(-8, 8);
image_xscale = 0.5;
image_yscale = 0.5;
damage_sim = irandom_range(2, 4);
//var dist = damage_sim / point_distance(x, y, o_player.x, o_player.y);
damage = damage_sim;
if(instance_exists(o_robot)) damage *= 2;
origin_id = 0;

spd = 0;
type = "bullets";

create_z = random_range(4, 28);

hit_flesh = false;