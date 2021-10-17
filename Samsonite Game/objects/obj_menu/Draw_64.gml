draw_set_font(font_menu);
draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

//Main Menu
if(load_menu = 0){
	for(i = 0; i < array_length_1d(menu); i++){
		yy = loc_y + (text_spacing*i);
		xx = loc_x
		draw_text_color(xx-2,yy,menu[i],c_black,c_black,c_black,c_black,1);
		draw_text_color(xx+2,yy,menu[i],c_black,c_black,c_black,c_black,1);
		draw_text_color(xx,yy-2,menu[i],c_black,c_black,c_black,c_black,1);
		draw_text_color(xx,yy+2,menu[i],c_black,c_black,c_black,c_black,1);
		draw_text(xx,yy,menu[i]);
	}
	draw_sprite(spr_cursor,cursor_image,loc_x - 30, loc_y+(text_spacing*cursor)-8);
	
//Level Menu
}else if(load_menu = 1){
	for(i = 0; i < array_length_1d(level); i++){
		yy = loc_y + (text_spacing*i);
		xx = loc_x
		draw_text_color(xx-2,yy,level[i],c_black,c_black,c_black,c_black,1);
		draw_text_color(xx+2,yy,level[i],c_black,c_black,c_black,c_black,1);
		draw_text_color(xx,yy-2,level[i],c_black,c_black,c_black,c_black,1);
		draw_text_color(xx,yy+2,level[i],c_black,c_black,c_black,c_black,1);
		draw_text(xx,yy,level[i]);
	}
	//draw_text_outlined(c_black,level,loc_y,loc_x,text_spacing);
	draw_sprite(spr_cursor,cursor_image,loc_x - 30, loc_y+(text_spacing*cursor)-8);
	
//Settings Menu
}else if(load_menu = 2){
	for(i = 0; i < array_length_1d(setting); i++){
		yy = loc_y + (text_spacing*i) - 150;
		xx = loc_x
		draw_text_color(xx-2,yy,setting[i],c_black,c_black,c_black,c_black,1);
		draw_text_color(xx+2,yy,setting[i],c_black,c_black,c_black,c_black,1);
		draw_text_color(xx,yy-2,setting[i],c_black,c_black,c_black,c_black,1);
		draw_text_color(xx,yy+2,setting[i],c_black,c_black,c_black,c_black,1);
		draw_text(xx,yy,setting[i]);
	}
	draw_sprite(spr_cursor,cursor_image,loc_x - 30, loc_y+(text_spacing*cursor)-158);
}

//draw_text_color(32,32,"Cursor: " + string(cursor),c_black,c_black,c_black,c_black,1); 

//Sets the alpha of the Text, taken from step
draw_set_alpha(text_alpha);

//Saving icon
if(save = true){
	instance_create_layer(32,32,"Instances",obj_save_icon);
	save = false;
}