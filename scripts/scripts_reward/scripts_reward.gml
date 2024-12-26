// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_reward_click_count(_bonus){
	activated = 0;				
	click_current = 0;
	// выдать награду
	obj_score.score_n += _bonus;		
	if obj_score.bonus_multiplier > 0.01 obj_score.bonus_multiplier-=0.005;	
	// Обнулить текущий бонус
	current_bonus_s = 0;	
	current_bonus_b = 0;	
	if click_max < 300 click_max+=10;
		
	//звездочки
	for (var i = 0; i<20; i++) {
		instance_create_depth(random_range(x+32,x+(984-32)),random_range(y+10,y+200),choose(depth-2,depth-1),obj_star)
	}
		
	// звук
	audio_play_sound(snd_button_mission_success,10,false);
		
	instance_create_depth(x,y,depth-1,obj_button_effect_complete);
}
	
function get_reward_merge(_bonus){
	activated = 0;
	merge_current = 0;
	// выдать награду
	obj_score.score_n += _bonus;		
	if obj_score.bonus_multiplier > 0.01 obj_score.bonus_multiplier-=0.005;	
	// Обнулить текущий бонус
	current_bonus = 0;	
	if merge_max < 40 merge_max+=4;
	//звездочки
	for (var i = 0; i<20; i++) {
		instance_create_depth(random_range(x+32,x+(984-32)),random_range(y+10,y+200),choose(depth-2,depth-1),obj_star)
	}
		
	// звук
	audio_play_sound(snd_button_mission_success,10,false);
		
	instance_create_depth(x,y,depth-1,obj_button_effect_complete);	
}
	
function get_reward_planet_layer(_bonus){
	activated = 0;
	layer_current = 0;
	// выдать награду
	obj_score.score_n += _bonus;		
	if obj_score.bonus_multiplier > 0.01 obj_score.bonus_multiplier-=0.005;	
	// Обнулить текущий бонус
	current_bonus = 0;	
	if layer_max < 100 layer_max+=5;
	//звездочки
	for (var i = 0; i<20; i++) {
		instance_create_depth(random_range(x+32,x+(984-32)),random_range(y+10,y+200),choose(depth-2,depth-1),obj_star)
	}

	// звук
	audio_play_sound(snd_button_mission_success,10,false);
		
	instance_create_depth(x,y,depth-1,obj_button_effect_complete);	
}