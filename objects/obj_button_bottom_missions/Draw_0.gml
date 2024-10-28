/// @description Insert description here
// You can write your code in this editor

draw_sprite_stretched(spr_test_button,image_index,camera_get_view_x(view_camera[0]) +720,1771,312,120)
//draw_sprite(spr_ui_bottom,image_index,camera_get_view_x(view_camera[0]) +720,1680)//1680)
draw_set_halign(fa_center);
scr_txt_transform(x+156,y+45,"задания",2,2,c_white);



if obj_button_mission_click_count.activated = 1 || obj_button_mission_merge_count.activated = 1 || obj_button_mission_planet_layer.activated = 1 {
	draw_sprite_ext(spr_check,0,x+280,y-20,0.5,0.5,0,c_white,alpha);
}
