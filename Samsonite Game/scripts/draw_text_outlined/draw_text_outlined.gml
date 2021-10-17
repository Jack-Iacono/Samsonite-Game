// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_text_outlined(color, array, xx, yy, text_spacing){
	for(i = 0; i < array_length(array); i++){
		yy += text_spacing*i;
		draw_text_color(xx-2,yy,array[i],c_black,c_black,c_black,c_black,1);
		draw_text_color(xx+2,yy,array[i],c_black,c_black,c_black,c_black,1);
		draw_text_color(xx,yy-2,array[i],c_black,c_black,c_black,c_black,1);
		draw_text_color(xx,yy+2,array[i],c_black,c_black,c_black,c_black,1);
		draw_text(xx,yy,array[i]);
	}
	
}