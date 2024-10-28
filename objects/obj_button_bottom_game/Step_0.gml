/// @description Insert description here
// You can write your code in this editor

if obj_cursor.holding_hamster = 0 {
	
	if collision_point( mouse_x, mouse_y, self, false, false ) && mouse_check_button_pressed(mb_left) && obj_camera.page != 0{
		obj_camera.page = 0;
		audio_play_sound(snd_button_bottom,10,false);
	}
}

if obj_camera.page = 0 image_index = 1 else image_index = 0;

