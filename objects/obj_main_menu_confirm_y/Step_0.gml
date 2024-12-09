/// @description Insert description here
// You can write your code in this editor
if working && collision_point( mouse_x, mouse_y, self, false, false ) && mouse_check_button_pressed(mb_left) && activated = 0 {
//	activated = 1;
//	working = 0
	//obj_main_menu_restart.working = 0;
	//room_goto(Tutor);
	if file_exists("GSave") file_delete("GSave");
	instance_create_depth(x,y,-3200,obj_main_menu_transition)
}