//Tells where to go based on cursor position on main menu
if(choice = true && load_menu = 0){
	switch(cursor){
		case 0:	obj_samsonite.sprite_index = spr_samsonite_idle;
				obj_transition.trans = 1;
				break;
		case 1: load_menu = 1;
				break;
		case 2: load_menu = 2;
				break;
		case 3: game_end();
				break;
	}
	cursor = 0;
	choice = false;
}else if(choice = true && load_menu = 1){
	switch(cursor){
		case 0: room = room_test;
				obj_samsonite.control = true;
				break;
		case 1: room = room_test_end;
				obj_samsonite.control = true;
				break;
		case 2: 
				//obj_samsonite.control = true;
				break;
	}
	choice = false;
}

//prevents character duplication due to persistant object (obj_samsonite)
if(room = room_initialize){
	room = room_menu;	
}

//Controls Fade when loading level
if(obj_transition.trans > 0){
	text_alpha -= 0.01;
}

//Settings
setting[0] = "Jump height: " + string(obj_setting_storage.jump_h);
setting[1] = "Physical Speed: " + string(obj_setting_storage.move);
setting[2] = "Shadow Speed: " + string(obj_setting_storage.move_s);
setting[3] = "Max Jumps: " + string(obj_setting_storage.jumps);
setting[4] = "Invincible: " + invincible;
setting[5] = "Detection Time: " + string(obj_setting_storage.detect_time);
setting[6] = "Random Movements: " + random_movements;
setting[7] = "Reset to Default";