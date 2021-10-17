move = 1;
pos_y = 384;
phase = false;
if(y < 364){
	move = 1;
}else{
	move = -1;
}

if(move = -1){
	image_xscale = -1;
	image_yscale = -1;
}

vspeed = move * 12;