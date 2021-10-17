if(obj_samsonite.physical && !obj_samsonite.hidden && !place_meeting(x + (target_instance.facing_right * 3),y,obj_wall)){
	audio_play_sound(snd_caught,1,0);
	target_instance.detect = true;
	instance_destroy(obj_vision);
}