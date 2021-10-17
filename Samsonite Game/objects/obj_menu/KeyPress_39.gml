if(load_menu = 2){

	switch(cursor){
	
		case 0:
			if(obj_setting_storage.jump_h < 30){
				obj_setting_storage.jump_h++;
			}
			break;
		case 1:
			if(obj_setting_storage.move < 50){
				obj_setting_storage.move++;
			}
			break;
		case 2:
			if(obj_setting_storage.move_s < 10){
				obj_setting_storage.move_s++;
			}
			break;
		case 3:
			if(obj_setting_storage.jumps < 30){
				obj_setting_storage.jumps++;
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
			if(obj_setting_storage.detect_time < 5){
				obj_setting_storage.detect_time++;
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