/// @description Insert description here
// You can write your code in this editor

if working = 1 {
	var click = instance_position(mouse_x,mouse_y,self);
	if click!=noone{
		if mouse_check_button_pressed(mb_left) {
		//if mouse_check_button(mb_left) {
			//obj_score.score_n+=obj_score.cursor_lvl*multiplier;
			obj_score.score_n+=obj_score.cursor_total;
			var score_gain = instance_create_depth(mouse_x,mouse_y-96,depth-1,obj_score_gain_angle);
			score_gain.score_n = obj_score.cursor_total; 
			score_gain.scale = 3;
			hp-=obj_score.cursor_total;
			instance_create_depth(mouse_x,mouse_y,-10,obj_smoke);
			obj_screenshake.x_offset = random_range(-15,15)
			obj_screenshake.y_offset = random_range(-15,15)
			
			// добавить к заданию
			audio_play_sound(choose(snd_planet_click1,snd_planet_click2,snd_planet_click3,snd_planet_click4,snd_planet_click5),10,false);
			if obj_button_mission_click_count.click_current < obj_button_mission_click_count.click_max {
				obj_button_mission_click_count.click_current+=1;	
			}			
		}
	}
}	

if hp <=0 {
	obj_score.layer_lvl++;
	audio_play_sound(snd_planet_complete,10,false)
	instance_destroy();
	//добавить к заданию
			if obj_button_mission_planet_layer.layer_current < obj_button_mission_planet_layer.layer_max {
				obj_button_mission_planet_layer.layer_current+=1;	
			}
}