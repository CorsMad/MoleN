/// @description Insert description here
// You can write your code in this editor

if merge_current>=merge_max{
	activated = 1;
	if current_bonus_b = 0 && current_bonus_s = 0  {
		audio_play_sound(snd_alarm,10,false);
		//current_bonus = obj_button_hamster_mutation.h1_price[obj_button_hamster_mutation.h1_price_n]*obj_score.bonus_multiplier
		var _bonus = obj_button_hamster_mutation.h1_price[obj_button_hamster_mutation.h1_price_n]*obj_score.bonus_multiplier
		current_bonus_b = _bonus*1.5;
		current_bonus_s = _bonus*0.85
	}
}

#region // Graph

if ad_counter < 3 {
	sprite_index = spr_ui_store_button;	
	if activated = 0 image_index = 0;
	if activated = 1 {
		if collision_point( mouse_x, mouse_y, self, false, false ) image_index = 2 else image_index = 1;	
	}
} else {
	sprite_index = spr_ui_store_button_dual;	
	if activated = 0 image_index = 0;
	if activated = 1 {
		if point_in_rectangle(mouse_x,mouse_y,x,y,x+984/2-4,y+210) image_index = 2 else
		if point_in_rectangle(mouse_x,mouse_y,x+984/2+4,y,x+984,y+210) image_index = 3 else image_index = 1;
	} 
}

#endregion
//image_index = activated;

if obj_cursor.holding_hamster = 0 {
	
	if ad_counter < 3 { // АНКАП РЕКЛАМЫ
		if collision_point( mouse_x, mouse_y, self, false, false ) 
		&& mouse_check_button_pressed(mb_left) && activated = 1 && on_off = 1 {		
			ad_counter++ 
			get_reward_merge(current_bonus_s);	
		}
	} else { // КАП РЕКЛАМЫ
		
		// КЛИК СЛЕВА БЕЗ РЕКЛАМЫ
		if point_in_rectangle(mouse_x,mouse_y,x,y,x+984/2-4,y+210)		
		&& mouse_check_button_pressed(mb_left) && activated = 1 && on_off = 1 {					 
			get_reward_merge(current_bonus_s);	
			ad_counter= 1;
		}
		
		// КЛИК СПРАВА С РЕКЛАМОЙ
		//if collision_point( mouse_x, mouse_y, self, false, false ) 
		if point_in_rectangle(mouse_x,mouse_y,x+984/2+4,y,x+984,y+210)	
		&& mouse_check_button_pressed(mb_left) && activated = 1 && on_off = 1 {		
			req_id = YaGames_showRewardedVideo();	
		}
		
	}
	
	
	//if collision_point( mouse_x, mouse_y, self, false, false ) 
	//&& mouse_check_button_pressed(mb_left) && activated = 1 && on_off = 1{
	//	if ad_counter < 3 {
	//		ad_counter++ 
	//		get_reward_merge()
	//	} else {
	//		// реклама	
	//		req_id = YaGames_showRewardedVideo();
	//	}
	//}
}

//alpha

switch(alpha_pos){
	case 0:
		alpha+=0.025;
		if alpha >=1 alpha_pos = 1;
		break;
	case 1:
		alpha-=0.025;
		if alpha <=0.5 alpha_pos = 0;
		break;
}