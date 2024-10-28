/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_pixel)
draw_self();
draw_set_halign(fa_center);
//draw_text(x,y-64,string(h1_price[h1_price_n]));
//draw_text(x,y-58,"мутация");

scr_txt_transform(x+262,y+16 +yn_offset+8,"мутация кротов",2.2,2.2,c_aqua);
scr_txt_transform(x+262,y+100+yn_offset,"макс.уровень : " + string(obj_score.mutation+1) ,2,2,c_white);

if obj_score.mutation < 11 {
	scr_txt_transform(x+754,y+12+yn_offset+16,"стоимость",2,2,c_yellow);
	scr_txt_transform(x+754,y+96+yn_offset,h1_price[h1_price_n],2.5,2.5,price_col);
} else {
	scr_txt_transform(x+754,y+6  +yn_offset+8,"макс.",2,2,c_red);	
	scr_txt_transform(x+754,y+52 +yn_offset+8,"уровень",2,2,c_red);	
	scr_txt_transform(x+754,y+100+yn_offset+8,"мутации",2,2,c_red);	
}