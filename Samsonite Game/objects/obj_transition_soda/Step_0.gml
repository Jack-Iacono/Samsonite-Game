/// @description Movement of bottle
depth = -200;

if(!x_move && !pause){
	if(move = 1 && y >= pos_y){
		vspeed = 0;
		pause = true;
		alarm[0] = room_speed * 0.5;
	}else if(move = -1 && y <= pos_y){
		vspeed = 0;
		pause = true;
		alarm[0] = room_speed * 0.5;
	}
}

if(x_move){
	hspeed = -20 * move;
}