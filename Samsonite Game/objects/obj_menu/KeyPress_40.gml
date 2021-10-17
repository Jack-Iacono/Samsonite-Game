if(cursor_control){
	if(load_menu = 0){
		if(cursor < array_length_1d(menu)-1){
			cursor++;
		}else if(cursor >= array_length_1d(menu)-1){
			cursor = 0;
		}
	}else if(load_menu = 1){
		if(cursor < array_length_1d(level)-1){
			cursor++;
		}else if(cursor >= array_length_1d(level)-1){
			cursor = 0;
		}
	}else if(load_menu = 2){
		if(cursor < array_length_1d(setting)-1){
			cursor++;
		}else if(cursor >= array_length_1d(setting)-1){
			cursor = 0;
		}
	}

	audio_play_sound(snd_menu_cursor,1,0);
}