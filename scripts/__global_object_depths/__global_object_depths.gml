function __global_object_depths() {
	// Initialise the global array that allows the lookup of the depth of a given object
	// GM2.0 does not have a depth on objects so on import from 1.x a global array is created
	// NOTE: MacroExpansion is used to insert the array initialisation at import time
	gml_pragma( "global", "__global_object_depths()");

	// insert the generated arrays here
	global.__objectDepths[0] = 0; // o_menu
	global.__objectDepths[1] = 0; // ParentEnemy
	global.__objectDepths[2] = 0; // ParentSolid
	global.__objectDepths[3] = 0; // o_input
	global.__objectDepths[4] = 0; // o_player
	global.__objectDepths[5] = 0; // o_wall
	global.__objectDepths[6] = 0; // o_wall_brick
	global.__objectDepths[7] = 0; // o_wall_house
	global.__objectDepths[8] = 0; // o_wall_paint
	global.__objectDepths[9] = 0; // s_wall_painting
	global.__objectDepths[10] = 0; // o_weapon
	global.__objectDepths[11] = 0; // o_secret_wall
	global.__objectDepths[12] = 0; // o_tree
	global.__objectDepths[13] = 0; // o_lights
	global.__objectDepths[14] = 0; // o_guard
	global.__objectDepths[15] = 0; // o_ss
	global.__objectDepths[16] = 0; // o_robot
	global.__objectDepths[17] = 0; // o_officer
	global.__objectDepths[18] = 0; // o_player_bullet
	global.__objectDepths[19] = 0; // o_guard_corpse
	global.__objectDepths[20] = 0; // o_gun_pickup
	global.__objectDepths[21] = 0; // o_door
	global.__objectDepths[22] = 0; // o_door_exit
	global.__objectDepths[23] = 0; // o_exit
	global.__objectDepths[24] = 0; // o_enemy_bullet
	global.__objectDepths[25] = 0; // o_map_reader
	global.__objectDepths[26] = 0; // o_key
	global.__objectDepths[27] = 0; // o_debug


	global.__objectNames[0] = "o_menu";
	global.__objectNames[1] = "ParentEnemy";
	global.__objectNames[2] = "ParentSolid";
	global.__objectNames[3] = "o_input";
	global.__objectNames[4] = "o_player";
	global.__objectNames[5] = "o_wall";
	global.__objectNames[6] = "o_wall_brick";
	global.__objectNames[7] = "o_wall_house";
	global.__objectNames[8] = "o_wall_paint";
	global.__objectNames[9] = "s_wall_painting";
	global.__objectNames[10] = "o_weapon";
	global.__objectNames[11] = "o_secret_wall";
	global.__objectNames[12] = "o_tree";
	global.__objectNames[13] = "o_lights";
	global.__objectNames[14] = "o_guard";
	global.__objectNames[15] = "o_ss";
	global.__objectNames[16] = "o_robot";
	global.__objectNames[17] = "o_officer";
	global.__objectNames[18] = "o_player_bullet";
	global.__objectNames[19] = "o_guard_corpse";
	global.__objectNames[20] = "o_gun_pickup";
	global.__objectNames[21] = "o_door";
	global.__objectNames[22] = "o_door_exit";
	global.__objectNames[23] = "o_exit";
	global.__objectNames[24] = "o_enemy_bullet";
	global.__objectNames[25] = "o_map_reader";
	global.__objectNames[26] = "o_key";
	global.__objectNames[27] = "o_debug";


	// create another array that has the correct entries
	var len = array_length_1d(global.__objectDepths);
	global.__objectID2Depth = [];
	for( var i=0; i<len; ++i ) {
		var objID = asset_get_index( global.__objectNames[i] );
		if (objID >= 0) {
			global.__objectID2Depth[ objID ] = global.__objectDepths[i];
		} // end if
	} // end for


}
