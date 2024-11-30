/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(ord("S")) {
	Save();
}

if keyboard_check_pressed(ord("L")) {
	Load();
}

if keyboard_check_pressed(ord("D")) {
	if file_exists("GSave") file_delete("GSave");
}