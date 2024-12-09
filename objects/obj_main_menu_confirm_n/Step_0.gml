/// @description Insert description here
// You can write your code in this editor
if working && collision_point( mouse_x, mouse_y, self, false, false ) && mouse_check_button_pressed(mb_left) && activated = 0 {
	obj_main_menu_start.working = 1;
	obj_main_menu_start.activated = 0;
	obj_main_menu_restart.working = 1;	
	obj_main_menu_restart.activated = 0;	
	instance_destroy(obj_main_menu_blackscreen)
	instance_destroy(obj_main_menu_confirm_y)
	instance_destroy();
}