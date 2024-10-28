/// @description Insert description here
// You can write your code in this editor

if obj_score.score_n >= h1_price[h1_price_n] price_col = c_lime else price_col = c_red;
//image
if obj_score.score_n >= h1_price[h1_price_n] && array_length(obj_score.starter_place) < 12 {
	image_index = 1;	
} else image_index = 0;



if obj_cursor.holding_hamster = 0 {
	
	if collision_point( mouse_x, mouse_y, self, false, false ) 
	&& mouse_check_button_pressed(mb_left) && obj_score.score_n >= h1_price[h1_price_n] 
	&& array_length(obj_score.starter_place) < 12 {		
		
		audio_play_sound(snd_buy,10,false);
		obj_score.score_n -=h1_price[h1_price_n];		
		h1_price_n +=1;	
		array_push(obj_score.starter_place,false);
		instance_create_depth(x,y,depth-1,obj_button_effect_complete);
	}
}