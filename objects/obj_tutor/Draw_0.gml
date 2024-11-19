/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(1)
draw_set_halign(fa_center)
scr_txt_transform(2400,260,"кликайте по нижней части экрана,\nчтобы добывать золото",2,2,c_yellow);
scr_txt_transform(2400,784,"покупайте различные улучшения и\n мутацию кротов",2,2,c_yellow);
scr_txt_transform(2400,1280,"соединяйте кротов после улучшения уровня мутации, \nчтобы создавать новых, более сильных кротов.",2,2,c_yellow);

draw_set_alpha(alpha)
draw_set_color(c_black);
draw_rectangle(0,0,room_width,room_height,false)
draw_set_alpha(1)