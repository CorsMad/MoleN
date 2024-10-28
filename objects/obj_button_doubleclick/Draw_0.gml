/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_pixel)
draw_self();
draw_set_halign(fa_center);
//draw_text(x,y-64,string(h1_price[h1_price_n]));
//draw_text(x,y-52,"добавить место");

if activated {
	scr_txt_transform(x+492,y+38,"активировано",4,4,c_red);
} else {
	scr_txt_transform(x+492,y+64,"x2 клик за рекламу",3,3,c_aqua);
}




/*
scr_txt_transform(x+262,y+100,"всего мест : " + string(array_length(obj_score.starter_place)),2,2,c_white);

if array_length(obj_score.starter_place) < 16 {
	scr_txt_transform(x+754,y+12,"стоимость",2,2,c_yellow);
	scr_txt_transform(x+754,y+96,h1_price[h1_price_n],2.5,2.5,price_col);
} else {
	scr_txt_transform(x+754,y+14,"максимум",3,3,c_red);	
	scr_txt_transform(x+754,y+80,"мест",3,3,c_red);	
}