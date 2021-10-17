/// @description Initializing
physical = true;

sprite_index = spr_samsonite_appear;

jump_max = obj_setting_storage.jumps;
phys_speed = obj_setting_storage.move;
inphys_speed = obj_setting_storage.move_s;
//jump_height = obj_setting_storage.jump_h * -1;

if(instance_exists(obj_spawn)){
	x = obj_spawn.x + 32;
	y = obj_spawn.y - 32;
}