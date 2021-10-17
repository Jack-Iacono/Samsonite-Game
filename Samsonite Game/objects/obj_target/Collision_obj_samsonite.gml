if(obj_samsonite.physical && !obj_samsonite.hidden && obj_samsonite.sprite_index != spr_samsonite_shadow_jump){
	instance_destroy(instance_nearest(x,y,obj_vision), true);
	audio_play_sound(snd_enemy_destroy,1,0);
	instance_destroy();
}