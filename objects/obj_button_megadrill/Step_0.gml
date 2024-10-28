/// @description Insert description here
// You can write your code in this editor

if activated = 1 image_index = 1 else image_index = 0;

if obj_cursor.holding_hamster = 0 {
	
	if collision_point( mouse_x, mouse_y, self, false, false ) 
	&& mouse_check_button_pressed(mb_left) && activated = 0 && cost <= obj_score.score_n{
		activated = 1;
		obj_score.t_sec = obj_score.t_sec_max;
	}
}