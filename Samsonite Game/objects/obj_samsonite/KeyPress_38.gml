/// @description Jump
if(control){
	if(jump > 0 && physical){
		vspeed = jump_height;
		
		audio_play_sound(snd_jump,1,0);
	}

	if(physical){
		grav = 0.8;
		sprite_index = spr_samsonite_jump;
		image_speed = jump_height * -1;
		jump--;
	}else if(place_meeting(x,y + 5,obj_wall) && !physical && sprite_index != spr_samsonite_vanish && !place_meeting(x,y - 32,obj_wall)){
		grav = 0.5;
		vspeed = jump_height * shadow_jump;
		physical = true;
		image_speed = 8;
		sprite_index = spr_samsonite_shadow_jump;
		audio_play_sound(snd_shadow_jump,1,0);
	}
	//Creates sound when jumping
	instance_create_layer(x,y,"Instances",obj_sound);
}