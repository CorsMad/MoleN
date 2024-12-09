/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(0.9);
draw_set_halign(fa_center);

draw_set_color(c_black)
draw_rectangle(0,0,room_width,room_height,false);
scr_txt_transform(room_width/2,room_height/2-256,"весь прогресс будет удален, вы хотите начать заново?",4,4,c_yellow);
draw_set_alpha(1);