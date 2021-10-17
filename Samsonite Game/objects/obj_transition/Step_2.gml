/// @description 

if(instance_number(obj_transition_soda) > 0 && instance_number(obj_transition_liquid) > 0){
	switch(type){
		case 1:
			obj_transition_soda.sprite_index = spr_transition_soda_cola;
			obj_transition_liquid.sprite_index = spr_transition_liquid_cola;
			break;
		case 2:
			obj_transition_soda.sprite_index = spr_transition_soda_lemonlime;
			obj_transition_liquid.sprite_index = spr_transition_liquid_lemonlime;
			break;
		case 3:
			obj_transition_soda.sprite_index = spr_transition_soda_orange;
			obj_transition_liquid.sprite_index = spr_transition_liquid_orange;
			break;
	}
}
