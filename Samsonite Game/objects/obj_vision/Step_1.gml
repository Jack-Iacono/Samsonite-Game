y = target_instance.y + y_offset;

if(target_instance.facing_right = 1){
	x = target_instance.x + 5;
	image_xscale = 1;
}else{
	x = target_instance.x + -5;
	image_xscale = -1;
}