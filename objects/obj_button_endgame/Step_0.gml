if activated = 1 {
	alpha+=0.1;
	if alpha = 1 activated = 2;
}

if collision_point( mouse_x, mouse_y, self, false, false ) 
	&& mouse_check_button_pressed(mb_left) && activated = 2 {
		activated = 3;
		audio_play_sound(snd_button_mission_success,10,false);
	}
	
if activated = 3{
	if alpha_bl < 1 alpha_bl+=0.05;	
}

if alpha_bl>=1 end_t++;
if end_t = 50 room_goto(GameStart);