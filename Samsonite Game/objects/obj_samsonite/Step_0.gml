/// @description Collision and movement
if(control){
	if(hspeed >= -movespeed && hspeed <= movespeed && !vanish){
		hspeed += (right - left) * 3;
	}
	
	//friction on ground
	if(place_meeting(x,y+1,obj_wall) && hspeed != 0){
		if(hspeed < 0.2 && !right && !left){
			hspeed = 0;
		}else{
			hspeed -= sign(hspeed) * ground_friction + 0.1;
		}
	}
	
	//Slow down in air
	if(!place_meeting(x,y+1,obj_wall) && hspeed != 0 && (!right || !left)){
			hspeed -= sign(hspeed) * air_resist;
	}
	
	//Stops if too fast
	if(hspeed > movespeed){
		hspeed -= 0.4;
	}

	//Gravity
	if(vspeed < 18){
		vspeed = vspeed + grav;
	}
	
	//Horizontal Collision

	if(place_meeting(x + hspeed,y,obj_wall)){
		while(!place_meeting(x + sign(hspeed),y,obj_wall)){
			x = x + sign(hspeed);
		}	
	
		hspeed = 0;
	}

	//Stops shadow from falling off ledge
	if(!physical && !place_meeting(x+(sign(hspeed) * 15),y+15,obj_wall)){
		while(!place_meeting(x+(sign(hspeed) * 15),y+15,obj_wall)){
			x = x - sign(hspeed);
		}	
	}

	//Vertical Collision

	if(place_meeting(x,y + vspeed,obj_wall)){
		while(!place_meeting(x,y + sign(vspeed),obj_wall)){
			y = y + sign(vspeed);	
		}
		vspeed = 0;
	}

	//Shadow Properties
	if(physical && !hidden){
		movespeed = phys_speed;
	}else if(!physical){
		movespeed = inphys_speed;
	}
	
	//Emits sound when player is walking on ground
	if((hspeed > 0 || hspeed < 0) && place_meeting(x,y + 5,obj_wall) && sprite_index != spr_shadow && !hidden){
		instance_create_layer(x,y,"Instances",obj_sound_small);	
	}
}

//Stops from gliding when transitioning
if(!control){
	hspeed = 0;
	vspeed = 0;
}
	