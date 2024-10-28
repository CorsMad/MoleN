/// @description Insert description here
// You can write your code in this editor

draw_set_font(fnt_pixel)
draw_self();
draw_set_halign(fa_center);
//draw_text(x,y-64,string(h1_price[h1_price_n]));
//draw_text(x,y-52,"добавить место");

if activated = 0 {

draw_sprite_stretched(spr_planet_hp_1,0,        x+42,y+52,984-64-6-6-8,90)
draw_sprite_stretched(spr_planet_hp,0,          x+52,y+60,(merge_current/merge_max)*(984-96),90)
draw_sprite_stretched(spr_planet_progress_bar,0,x+32,y+42,984-64,112)

scr_txt_transform(x+984/2,y+64,"мерджей до бонуса " + string(merge_current) + " / " + string(merge_max),2,2,c_white);
} else {
	if ad_counter = 3{
		scr_txt_transform(x+984/2,y+40,"получить - " + string(current_bonus),2,2,c_aqua);	
		scr_txt_transform(x+984/2,y+110," + реклама",2,2,c_fuchsia);	
	} else {
		scr_txt_transform(x+984/2,y+70,"получить - " + string(current_bonus),2,2,c_aqua);	
	}
	draw_sprite_ext(spr_check,0,x+940,y+60,0.5,0.5,0,c_white,alpha);
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