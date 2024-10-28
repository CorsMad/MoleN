/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_pixel)
draw_self();
draw_set_halign(fa_center);
//draw_text(x,y-64,string(h1_price[h1_price_n]));

//draw_text(x+32,y,"+1 за клик");

scr_txt_transform(x+262,y+16+yn_offset+16,"+1 за клик",2,2,c_aqua);

if obj_score.cursor_lvl < 30 {
	scr_txt_transform(x+262,y+100+yn_offset,("ур. : " + string(obj_score.cursor_lvl)),2,2,c_white);	
} else scr_txt_transform(x+262,y+100+yn_offset,("максимум"),2,2,c_white);



draw_set_halign(fa_center);
scr_txt_transform(x+754,y+12+yn_offset+16,"стоимость",2,2,c_yellow);
if obj_score.cursor_lvl < 30 {
	scr_txt_transform(x+754,y+96+yn_offset,h1_price,2.5,2.5,price_col);
} else scr_txt_transform(x+754,y+96+yn_offset,"---",2.5,2.5,c_white);