//Controls Movement (Random)
if(random_movement){
	action = irandom_range(1,3);
	action_time = random_range(2,4);
	alarm[0] = room_speed * action_time;

	switch(action){
	
		case 1:
			if(hspeed = 0){
				hspeed = move_speed * 1;
			}else{
				hspeed = 0;
				alarm[1] = room_speed * turn_time;
				alarm[0] = -1;
				facing_right = 1;
			}
			break;
		case 2:
			hspeed = 0;
			break;
		case 3:
			if(hspeed = 0){
				hspeed = move_speed * -1;
			}else{
				hspeed = 0;
				alarm[1] = room_speed * turn_time;
				alarm[0] = -1;
				facing_right = -1;
			}
			break;
	}


	alarm[0] = room_speed * action_time;
}
