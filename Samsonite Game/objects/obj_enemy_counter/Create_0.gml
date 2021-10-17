for(i = 0; i < instance_number(obj_target); i += 1){
	enemies[0,i] = instance_find(obj_target,i);
	instance_create_layer(x,y,"Instances",obj_vision);
}
for(i = 0; i < instance_number(obj_vision); i += 1){
	enemies[1,i] = instance_find(obj_vision,i);
}
for(i = 0; i < instance_number(obj_vision); i += 1){
	enemies[1,i].target_instance = enemies[0,i];
}