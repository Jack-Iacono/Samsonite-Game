/// @description Turns around when footsteps are is heard

instance_create_layer(x,y-30,"Instances",obj_alert);
hspeed = 0;
alarm[2] = room_speed * detect_time;