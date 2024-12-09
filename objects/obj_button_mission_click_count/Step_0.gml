/// @description Insert description here
// You can write your code in this editor

if click_current>=click_max{
	activated = 1;
	if current_bonus = 0 {
		current_bonus = obj_button_hamster_mutation.h1_price[obj_button_hamster_mutation.h1_price_n]*obj_score.bonus_multiplier
		audio_play_sound(snd_alarm,10,false);
	}
}

image_index = activated;

if obj_cursor.holding_hamster = 0 {
	
	if collision_point( mouse_x, mouse_y, self, false, false ) 
	&& mouse_check_button_pressed(mb_left) && activated = 1 && on_off = 1 {
		
		//счетчик рекламы
		if ad_counter < 5 {
			ad_counter++ 
			get_reward_click_count();	
		} else {
			// реклама	
			req_id = YaGames_showRewardedVideo();
			
		}
		
		
		
		//activated = 0;				
		//click_current = 0;
		//// выдать награду
		//obj_score.score_n += current_bonus;		
		//if obj_score.bonus_multiplier > 0.01 obj_score.bonus_multiplier-=0.005;	
		//// Обнулить текущий бонус
		//current_bonus = 0;	
		//if click_max < 300 click_max+=10;
		//
		////звездочки
		//for (var i = 0; i<20; i++) {
		//    instance_create_depth(random_range(x+32,x+(984-32)),random_range(y+10,y+200),choose(depth-2,depth-1),obj_star)
		//}
		//
		//// звук
		//audio_play_sound(snd_button_mission_success,10,false);
		//
		//instance_create_depth(x,y,depth-1,obj_button_effect_complete);
	}
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