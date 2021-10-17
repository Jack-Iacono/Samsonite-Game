/// @description Shadow
if(control){
	if(place_meeting(x,y + 5,obj_wall) && sprite_index != spr_shadow && !hidden){
		sprite_index = spr_samsonite_vanish;
		audio_play_sound(snd_shadow_disappear,1,0);
		image_index = 1;
		image_speed = 2 * vanish_speed;
		physical = false;
		vanish = true;
	}else if(place_meeting(x,y + 5,obj_wall) && !place_meeting(x,y - 32,obj_wall) && sprite_index = spr_shadow){
		sprite_index = spr_samsonite_appear;
		audio_play_sound(snd_shadow_disappear,1,0);
		image_index = 1;
		image_speed = 2 * vanish_speed;
		vanish = true;
	}
}