if(load_menu = 2){

	switch(cursor){
	
		case 0:
			if(obj_setting_storage.jump_h > 1){
				obj_setting_storage.jump_h--;
			}
			break;
		case 1:
			if(obj_setting_storage.move > 1){
				obj_setting_storage.move--;
			}
			break;
		case 2:
			if(obj_setting_storage.move_s > 1){
				obj_setting_storage.move_s--;
			}
			break;
		case 3:
			if(obj_setting_storage.jumps > 1){
				obj_setting_storage.jumps--;
			}
			break;
		case 4:
			if(!invincible){
				invincible = "true";
			}else{
				invincible = "false";
			}
			break;
		case 5:
			if(obj_setting_storage.detect_time > 0){
				obj_setting_storage.detect_time--;
			}
			break;
		case 6:
			if(!random_movements){
				random_movements = "true";
			}else{
				random_movements = "false";
			}
			break;
	}

	audio_play_sound(snd_menu_cursor,1,0);
}