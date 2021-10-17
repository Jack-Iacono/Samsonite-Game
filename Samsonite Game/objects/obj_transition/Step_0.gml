/// @description Transitions

if(trans > 0){
	room_select = trans;
}

if(trans > 0){
	obj_samsonite.control = false;
	type = irandom_range(1,3);
	instance_create_layer(camera_get_view_x(view_camera[0]) + 1024,camera_get_view_y(view_camera[0]),"Instances",obj_transition_soda);
	instance_create_layer(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]) + 768,"Instances",obj_transition_soda);
	instance_create_layer(camera_get_view_x(view_camera[0]) + 1024,camera_get_view_y(view_camera[0]),"Instances",obj_transition_liquid);
	instance_create_layer(camera_get_view_x(view_camera[0]),camera_get_view_y(view_camera[0]) + 768,"Instances",obj_transition_liquid);
	trans = 0;
}

if(room_advance){
	switch(room_select){
		case 1:
			room_goto_next();
			room_select = 0;
			break;
		case 2:
			room_restart();
			room_select = 0;
			break;
		case 3:
			room_goto(2);
			room_select = 0;
			break;
	}
	room_advance = false;
}