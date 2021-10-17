choice = true;

if(load_menu = 0){
	//cursor_control = false;
}

if(load_menu = 2 && cursor = 7){
	obj_setting_storage.detect_time = 1;
	obj_setting_storage.jump_h = 12;
	obj_setting_storage.move = 5;
	obj_setting_storage.move_s = 3;
	obj_setting_storage.jumps = 1;
	random_movements = "false";
	invincible = "false";
}

if(load_menu = 2){
	if(invincible = "true"){
		obj_setting_storage.invincible = true;
	}else{
		obj_setting_storage.invincible = false;
	}
	if(random_movements = "true"){
		obj_setting_storage.random_movement = true;
	}else{
		obj_setting_storage.random_movement = false;
	}
	
}

//produces save notification icon
if(load_menu = 2){
save = true;
}

audio_play_sound(snd_menu_select,1,0);