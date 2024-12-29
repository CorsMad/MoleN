/// @description Insert description here
// You can write your code in this editor
draw_set_font(fnt_pixel)
draw_self();
draw_set_halign(fa_center);
if fl_exist = 0 {
scr_txt_transform(x+sprite_width/2,y+sprite_height/2-100,"начать",6,6,c_white);
} else {
scr_txt_transform(x+sprite_width/2,y+sprite_height/2-75,"продолжить",4,4,c_white);	
}