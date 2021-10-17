/// @description Changes sprite to face correct direction
if(hspeed > 0){
	facing_right = 1;
}else if(hspeed < 0){
	facing_right = -1;
}

if(facing_right = 1){
	image_xscale = 1;
}else if(facing_right = -1){
	image_xscale = -1;
}
