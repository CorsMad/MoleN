/// @description Insert description here
// You can write your code in this editor
if obj_score.score_n >= h1_price price_col = c_lime else price_col = c_red;

// цвет
if obj_score.score_n >= h1_price && obj_score.cursor_lvl < 30 {
	image_index	= 1;
} else image_index = 0;



if obj_cursor.holding_hamster = 0 {
	
	if collision_point( mouse_x, mouse_y, self, false, false ) && 
	mouse_check_button_pressed(mb_left) && obj_score.score_n >= h1_price && obj_score.cursor_lvl < 30 {
		obj_score.score_n -=h1_price;		
		h1_count +=1;
		h1_price = ceil(h1_price*1.5);
		obj_score.cursor_lvl+=1;
		audio_play_sound(snd_buy,10,false);
		instance_create_depth(x,y,depth-1,obj_button_effect_complete);
		
		
		//obj_planet.inc_number+=1;
	}
}
/*
if obj_cursor.holding_hamster = 0 {
	
	if collision_point( mouse_x, mouse_y, self, false, false ) && mouse_check_button_pressed(mb_left) && obj_score.score_n >= h1_price[h1_price_n]{
		obj_score.score_n -=h1_price[h1_price_n];		
		h1_price_n +=1;	
		obj_planet.inc_number+=1;
	}
}