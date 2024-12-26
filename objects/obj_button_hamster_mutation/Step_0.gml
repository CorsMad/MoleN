/// @description Insert description here
// You can write your code in this editor

if obj_score.score_n >= h1_price[h1_price_n] price_col = c_lime else price_col = c_red;

//image
if obj_score.score_n >= h1_price[h1_price_n] && obj_score.mutation < 11{
	if collision_point( mouse_x, mouse_y, self, false, false ) image_index	= 2; else image_index = 1			
} else image_index = 0;
	


if obj_cursor.holding_hamster = 0 {
	
	if collision_point( mouse_x, mouse_y, self, false, false ) && 
	mouse_check_button_pressed(mb_left) && obj_score.score_n >= h1_price[h1_price_n] &&
	obj_score.mutation < 11 && activated = 1{
		obj_score.score_n -=h1_price[h1_price_n];		
		h1_price_n +=1;	
		obj_score.mutation+=1;
		audio_play_sound(snd_buy,10,false);
		instance_create_depth(x,y,depth-1,obj_button_effect_complete);
		//СОХРАНЕНИЕ
		with(obj_save_manager) Save();
	}
}