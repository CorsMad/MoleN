// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_txt_transform(_x,_y,_text,_scale_x,_scale_y,_draw_col){
	draw_set_color(c_black);
	
	for (var i = 0; i < 6; i++) {
	    draw_text_transformed(_x,_y,_text,_scale_x,_scale_y,0);
		draw_text_transformed(_x-i,_y,_text,_scale_x,_scale_y,0);
		draw_text_transformed(_x-i,_y-i,_text,_scale_x,_scale_y,0);
		draw_text_transformed(_x,_y-i,_text,_scale_x,_scale_y,0);
		draw_text_transformed(_x+i,_y-i,_text,_scale_x,_scale_y,0);
		draw_text_transformed(_x+i,_y,_text,_scale_x,_scale_y,0);
		draw_text_transformed(_x+i,_y+i,_text,_scale_x,_scale_y,0);
		draw_text_transformed(_x,_y+i,_text,_scale_x,_scale_y,0);
		draw_text_transformed(_x-i,_y+i,_text,_scale_x,_scale_y,0);
	}
	
	//draw_text_transformed(_x,_y,_text,_scale_x,_scale_y,0);
	//draw_text_transformed(_x-1,_y,_text,_scale_x,_scale_y,0);
	//draw_text_transformed(_x-1,_y-1,_text,_scale_x,_scale_y,0);
	//draw_text_transformed(_x,_y-1,_text,_scale_x,_scale_y,0);
	//draw_text_transformed(_x+1,_y-1,_text,_scale_x,_scale_y,0);
	//draw_text_transformed(_x+1,_y,_text,_scale_x,_scale_y,0);
	//draw_text_transformed(_x+1,_y+1,_text,_scale_x,_scale_y,0);
	//draw_text_transformed(_x,_y+1,_text,_scale_x,_scale_y,0);
	//draw_text_transformed(_x-1,_y+1,_text,_scale_x,_scale_y,0);
	draw_set_color(_draw_col);
	
	draw_text_transformed(_x,_y,_text,_scale_x,_scale_y,0);
	
}

function scr_txt_transform_angle(_x,_y,_text,_scale_x,_scale_y,_draw_col,_angle){
	draw_set_color(c_black);
	
	for (var i = 0; i < 6; i++) {
	    draw_text_transformed(_x,_y,_text,_scale_x,_scale_y,_angle);
		draw_text_transformed(_x-i,_y,_text,_scale_x,_scale_y,_angle);
		draw_text_transformed(_x-i,_y-i,_text,_scale_x,_scale_y,_angle);
		draw_text_transformed(_x,_y-i,_text,_scale_x,_scale_y,_angle);
		draw_text_transformed(_x+i,_y-i,_text,_scale_x,_scale_y,_angle);
		draw_text_transformed(_x+i,_y,_text,_scale_x,_scale_y,_angle);
		draw_text_transformed(_x+i,_y+i,_text,_scale_x,_scale_y,_angle);
		draw_text_transformed(_x,_y+i,_text,_scale_x,_scale_y,_angle);
		draw_text_transformed(_x-i,_y+i,_text,_scale_x,_scale_y,_angle);
	}
	
	draw_set_color(_draw_col);
	
	draw_text_transformed(_x,_y,_text,_scale_x,_scale_y,_angle);
	
}
