/// @description DEstruction of object

if(move = 1 && x <= camera_get_view_x(view_camera[0])){
	instance_destroy();
}else if(move = -1 && x >= camera_get_view_x(view_camera[0]) + 1024){
	instance_destroy();
}

