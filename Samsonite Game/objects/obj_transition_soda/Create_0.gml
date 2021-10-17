move = 1;
pos_y = 384;
x_move = 0;
pause = false;


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