/// @description Shadow Portal
if(!physical && sprite_index = spr_shadow){
	if(instance_number(obj_shadow_portal) > 0){
		xx = obj_shadow_portal.x + 19;
		yy = obj_shadow_portal.y - 26;
		instance_destroy(obj_shadow_portal, true);
		instance_create_layer(x-19,y+26,"Instances",obj_shadow_portal);
		x = xx;
		y = yy;
		audio_play_sound(snd_shadow_warp,1,0);
	}else{
		instance_create_layer(x-19,y+26,"Instances",obj_shadow_portal);
	}
}