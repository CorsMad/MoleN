/// @description Insert description here
// You can write your code in this editor

if obj_cursor.holding_hamster = 0 {
	
	if collision_point( mouse_x, mouse_y, self, false, false ) && mouse_check_button_pressed(mb_left) {
		obj_planet.multiplier=2;
	}
}