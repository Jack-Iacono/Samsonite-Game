/// @description Controls turn after detection

if(obj_samsonite.x > x){
	facing_right = 1;
}else if(obj_samsonite.x < x){
	facing_right = -1;
}

hspeed = facing_right * move_speed;
