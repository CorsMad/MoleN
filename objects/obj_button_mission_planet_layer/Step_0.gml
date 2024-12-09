/// @description Insert description here
// You can write your code in this editor

if layer_current>=layer_max{
	activated = 1;
	if current_bonus = 0 {
		audio_play_sound(snd_alarm,10,false);
		current_bonus = obj_button_hamster_mutation.h1_price[obj_button_hamster_mutation.h1_price_n]*obj_score.bonus_multiplier
	}
}

image_index = activated;

if obj_cursor.holding_hamster = 0 {
	
	if collision_point( mouse_x, mouse_y, self, false, false ) 
	&& mouse_check_button_pressed(mb_left) && activated = 1 && on_off = 1{
		
		//счетчик рекламы
		if ad_counter < 4 {
			ad_counter++
			get_reward_planet_layer();
		} else {
			req_id = YaGames_showRewardedVideo();
		}
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