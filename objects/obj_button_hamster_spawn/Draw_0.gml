/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_pixel)
draw_self();
draw_set_halign(fa_center);
//draw_text(x,y-64,string(h1_price));
//draw_text(x,y-58,"призвать крота");

scr_txt_transform(x+262,y+16+yn_offset+8,"призвать крота",2.2,2.2,c_aqua);
scr_txt_transform(x+262,y+100+yn_offset,"ур. крота : " + string(obj_score.start_lvl),2,2,c_white);

scr_txt_transform(x+754,y+12+yn_offset+16,"стоимость",2,2,c_yellow);


if hamster_count < array_length(obj_score.starter_place){
	scr_txt_transform(x+754,y+96+yn_offset,h1_price,2.5,2.5,price_col);	
} else {
	scr_txt_transform(x+754,y+134+yn_offset,"нет мест",1.5,1.5,c_red);
	scr_txt_transform(x+754,y+90+yn_offset,h1_price,1.7,1.7,price_col);	
}



