/// @description Insert description here
// You can write your code in this editor

if collision_point( mouse_x, mouse_y, self, false, false ) {
	if mouse_check_button_pressed(mb_left) {
		switch(turn){
			case 0:	
				turn = 1;
				image_index = 1;
				audio_group_set_gain(Music,turn,0);
				break;
			case 1:	
				turn = 0;
				audio_group_set_gain(Music,turn,0);
				image_index = 0;
				break;
		}
	}
}