/// @description Movement of bottle
depth = -100;

if(move = -1 && vspeed = 0){
	x = camera_get_view_x(view_camera[0]);
}else if(move = 1 && vspeed = 0){
	x = camera_get_view_x(view_camera[0]) + 1024;
}

if(move = 1 && y >= pos_y){
	y = 383;
	vspeed = 0;
}
if(move = -1 && y <= pos_y){
	y = 385;
	vspeed = 0;
}

if(phase){
	image_alpha -= 0.02;
}

if(image_alpha <= 0){
	instance_destroy();	
}