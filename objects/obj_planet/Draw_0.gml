/// @description Insert description here
// You can write your code in this editor
//draw_rectangle_color(x,y,x+1072,y+790,c_white,c_white,c_white,c_white,0);

//нарисовать хп
//draw_sprite(spr_fence,0,1080,-112)
draw_sprite(spr_fence_big,0,1080,-112)
draw_sprite_stretched(spr_planet_hp_1,0,1080+52,970,990,90)
draw_sprite_stretched(spr_planet_hp,0,1080+48,970,(hp/hp_max)*990,90)
draw_sprite_stretched(spr_planet_progress_bar,0,1080+32,960,1020,112)
draw_set_halign(fa_center);
scr_txt_transform(1080+540,986,"слой " + string(obj_score.layer_lvl),2,2,c_white)
draw_self();



