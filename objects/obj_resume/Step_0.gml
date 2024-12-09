/// @description Insert description here
// You can write your code in this editor

if point_in_rectangle(mouse_x,mouse_y,0,0,room_width,room_height) &&
	mouse_check_button(mb_left) {
		turn_off(1);
		instance_destroy();	
	}