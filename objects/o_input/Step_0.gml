/// @description
/*if room != r_room_1 {
	room_goto(r_room_1);	
}

if (room == r_room_1) {
	if (!replay_player_inputs) {
		var player_current_state = {
			posX: o_player.x,
			posY: o_player.y,
			dirP: o_player.direction,
			
			// gunning now
			shoot: o_weapon.r_shoot,
			weaponInd: o_weapon.gun_index,
			weaponimgInd: o_weapon.image_index,
			weaponIspd: o_weapon.image_speed,
			weapon_state: o_weapon.fire_state,
			weapon_pimg: o_weapon.previous_image,
			weapon_stggun: o_weapon.state_gun,
			minigun_revv: o_weapon.minigun_rev_value,
			inAcc: o_weapon.fire_inacc
			
		}
		array_push(player_inputs, player_current_state);
		tics++;
	} else {
		var getState = player_inputs[tics];
		o_player.x = getState.posX;
		o_player.y = getState.posY;
		o_player.direction = getState.dirP;
		
		// gunning
		o_weapon.r_shoot = getState.shoot;
		o_weapon.gun_index = getState.weaponInd;
		o_weapon.image_index = getState.weaponimgInd;
		o_weapon.image_speed = getState.weaponIspd
		o_weapon.fire_state = getState.weapon_state;
		o_weapon.previous_image = getState.weapon_pimg;
		o_weapon.state_gun = getState.weapon_stggun;
		o_weapon.minigun_rev_value = getState.minigun_revv;
		o_weapon.fire_inacc = getState.inAcc;

		tics++;
	}
}

