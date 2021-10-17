//Gravity
if(vspeed < 18){
	vspeed = vspeed + grav;
}

//Vertical Collision

if(place_meeting(x,y + vspeed,obj_wall)){
	while(!place_meeting(x,y + sign(vspeed),obj_wall)){
		y = y + sign(vspeed);	
	}
	vspeed = 0;
}

//Turn around at ledge
if(!place_meeting(x+(sign(hspeed) * 32),y+32,obj_wall) || place_meeting(x + hspeed,y,obj_wall)){
	hspeed *= -1;
}

//Detection Response
if(detect = true && !invincible){
	obj_transition.trans = 2;	
	instance_destroy(obj_target);
}