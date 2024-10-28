/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_pixel)
draw_self();
draw_set_halign(fa_center);
//draw_text(x,y-64,string(h1_price[h1_price_n]));
//draw_text(x,y-52,"добавить место");

scr_txt_transform(x+262,y+16+yn_offset+8,"доп. место",2,2,c_aqua);

scr_txt_transform(x+262,y+100+yn_offset,"всего мест : " + string(array_length(obj_score.starter_place)),2,2,c_white);

if array_length(obj_score.starter_place) < 12 {
	scr_txt_transform(x+754,y+12+yn_offset+16,"стоимость",2,2,c_yellow);
	scr_txt_transform(x+754,y+96+yn_offset,h1_price[h1_price_n],2.5,2.5,price_col);
} else {
	scr_txt_transform(x+754,y+14+yn_offset,"максимум",3,3,c_red);	
	scr_txt_transform(x+754,y+80+yn_offset,"мест",3,3,c_red);	
}