/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_pixel);
draw_set_alpha(0.9);
draw_set_color(c_black);
draw_rectangle(0,0,room_width,room_height,false);
draw_set_alpha(1);
draw_set_halign(fa_center);
if t < 240 {
	scr_txt_transform(room_width/2,room_height/2-32,"реклама через " + string(number),6,6,c_yellow);
	//scr_txt_transform(room_width/2+410,room_height/2,number,6,6,c_yellow);
} else {
	scr_txt_transform(room_width/2,room_height/2,"продолжить...",6,6,c_yellow);
}