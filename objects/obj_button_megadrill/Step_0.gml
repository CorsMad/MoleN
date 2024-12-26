/// @description Insert description here
// You can write your code in this editor

if obj_score.score_n >= cost {
	if collision_point( mouse_x, mouse_y, self, false, false ) image_index	= 2; else image_index = 1		
} else image_index = 0;

if obj_cursor.holding_hamster = 0 {
	
	if collision_point( mouse_x, mouse_y, self, false, false ) 
	&& mouse_check_button_pressed(mb_left) && activated = 1 && cost <= obj_score.score_n {
		
		audio_play_sound(snd_button_mission_success,10,false);
		
		instance_destroy(obj_hamster1);
		instance_destroy(obj_hamster2);
		instance_destroy(obj_hamster3);
		instance_destroy(obj_hamster4);
		instance_destroy(obj_hamster5);
		instance_destroy(obj_hamster6);
		instance_destroy(obj_hamster7);
		instance_destroy(obj_hamster8);
		instance_destroy(obj_hamster9);
		instance_destroy(obj_hamster10);
		instance_destroy(obj_hamster11);
		instance_destroy(obj_hamster12);
		
		instance_destroy(obj_button_mission_click_count);
		instance_destroy(obj_button_mission_merge_count);
		instance_destroy(obj_button_mission_planet_layer);
		instance_destroy(obj_button_doubleclick);
		instance_destroy(obj_button_click);
		instance_destroy(obj_button_hamster_spawn);
		instance_destroy(obj_button_add_place);
		instance_destroy(obj_button_hamster_mutation);
		instance_destroy(obj_button_start_hamster);
		
		instance_destroy(obj_music_onoff)
		instance_destroy(obj_sound_onoff)
		
		instance_destroy(obj_score);
		instance_destroy(obj_cursor);
		instance_destroy(obj_camera);
		instance_destroy(obj_planet_progress);
		instance_destroy(obj_planet);
		instance_destroy(obj_screenshake);
		instance_destroy(obj_button_double_click)
		
		
		
		room_goto(PreEndRoom);
		//obj_endgame.activated = 1;
		audio_stop_sound(msc_bgr1);
		instance_destroy();
	}
}