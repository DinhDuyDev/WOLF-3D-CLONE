/// @description spawning enemies
if (spawn_times > 0) {
	alarm[0] = 3 * 30;
	if (!activated) {
		instance_create(x+random_range(-32, 32), y+random_range(-32, 32), choose(o_guard, o_ss, o_rocketeer, o_officer));
		spawn_times --;	
	}
}