/// @description Toggle Hiding

if(hidden = true){
	control = false;
	while(image_alpha < 1){
		image_alpha += 0.05;
	}
	movespeed = phys_speed;
	hidden = false;
	control = true;
	depth = depth_normal;
}else if(place_meeting(x,y,obj_hidding)){
	depth = depth_hiding;
	hidden = true;
	image_alpha = 0.3;
	movespeed = inphys_speed;
}
	