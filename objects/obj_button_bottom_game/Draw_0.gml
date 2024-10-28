/// @description Insert description here
// You can write your code in this editor

//draw_self();

//draw_sprite(spr_ui_bottom,image_index,camera_get_view_x(view_camera[0]) +48,144)
draw_sprite_stretched(spr_test_button,image_index,camera_get_view_x(view_camera[0]) +48,1771,312,120)
//draw_sprite(spr_test_button,image_index,camera_get_view_x(view_camera[0]) +48,1706)//1680)

draw_set_halign(fa_center);
scr_txt_transform(x+156,y+45,"раскопки",2,2,c_white);
