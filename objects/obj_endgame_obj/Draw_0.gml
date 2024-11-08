/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_black)
draw_set_alpha(alpha_bl)
draw_rectangle(0,0,room_width,room_height,false);


draw_set_halign(fa_center);
draw_set_alpha(1);


draw_set_alpha(t1);
scr_txt_transform(room_width/2,200,"поздравляем!",6,6,c_white);
draw_set_alpha(t2);
scr_txt_transform(room_width/2,500,"вы пробурились к центру планеты!",6,6,c_white);
draw_set_alpha(t3);
scr_txt_transform(room_width/2,800,"и нашли золотое яйцо дракона!",6,6,c_white);
draw_set_alpha(t4);
scr_txt_transform(room_width/2,1100,"теперь кроты отправятся",6,6,c_white);
scr_txt_transform(room_width/2,1300,"к другой планете.",6,6,c_white);