/// @description Insert description here
// You can write your code in this editor

if activated = 1 image_index = 0 else {
	if collision_point( mouse_x, mouse_y, self, false, false ) image_index	= 2; else image_index = 1		
}

if obj_cursor.holding_hamster = 0 {
	
	if collision_point( mouse_x, mouse_y, self, false, false ) 
	&& mouse_check_button_pressed(mb_left) && activated = 0 && on_off = 1{
		instance_create_depth(0,0,0,obj_yand_game_stop);
		req_id = YaGames_showRewardedVideo();
		//activated = 1;
		//obj_score.t_sec = obj_score.t_sec_max;
		//
		//// звук
		//audio_play_sound(snd_button_mission_success,10,false);
		//instance_create_depth(x,y,depth-1,obj_button_effect_complete);
	}
}