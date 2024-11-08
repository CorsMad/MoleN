/// @description Insert description here
// You can write your code in this editor
draw_set_alpha(alpha)
draw_set_font(fnt_pixel)
draw_sprite(spr_ui_store_button,1,1104,1600);
draw_set_halign(fa_center);
scr_txt_transform(x+492,y+40,"в главное меню",4,4,c_aqua);

if activated = 3 {
	draw_set_alpha(alpha_bl);
	draw_set_color(c_black);
	draw_rectangle(0,0,room_width,room_height,false);	
}

