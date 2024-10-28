/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_pixel)
draw_self();
draw_set_halign(fa_center);
//draw_text(x,y-64,string(h1_price[h1_price_n]));
//draw_text(x,y-52,"добавить место");

scr_txt_transform(x+262,y+20+yn_offset+14,"начальный уровень крота",1.4,1.4,c_aqua);
										   
scr_txt_transform(x+262,y+100+yn_offset,"ур. : " + string(obj_score.start_lvl),2,2,c_white);


if obj_score.start_lvl = 12 {
	scr_txt_transform(x+754,y+6  +yn_offset+8,"макс.",2,2,c_red);	
	scr_txt_transform(x+754,y+52 +yn_offset+8,"уровень",2,2,c_red);	
	scr_txt_transform(x+754,y+100+yn_offset+8,"мутации",2,2,c_red);	
} else if obj_score.mutation+1 <= obj_score.start_lvl { 
	scr_txt_transform(x+754,y+6  +yn_offset+8,"низкий",2,2,c_red);	
	scr_txt_transform(x+754,y+52 +yn_offset+8,"уровень",2,2,c_red);	
	scr_txt_transform(x+754,y+100+yn_offset+8,"мутации",2,2,c_red);	
} else if obj_score.start_lvl < 16 {
	scr_txt_transform(x+754,y+12+yn_offset+16,"стоимость",2,2,c_yellow);
	scr_txt_transform(x+754,y+96+yn_offset,h1_price[h1_price_n],2.5,2.5,price_col);
} else {
	scr_txt_transform(x+754,y+6  +yn_offset+8,"макс.",2,2,c_red);	
	scr_txt_transform(x+754,y+52 +yn_offset+8,"уровень",2,2,c_red);	
	scr_txt_transform(x+754,y+100+yn_offset+8,"крота",2,2,c_red);	
}





/*
if obj_score.start_lvl < 16 {
	scr_txt_transform(x+754,y+12,"стоимость",2,2,c_yellow);
	scr_txt_transform(x+754,y+96,h1_price[h1_price_n],2.5,2.5,price_col);
} else {
	scr_txt_transform(x+754,y+6,"макс.",2,2,c_red);	
	scr_txt_transform(x+754,y+52,"уровень",2,2,c_red);	
	scr_txt_transform(x+754,y+100,"крота",2,2,c_red);	
}