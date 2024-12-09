/// @description Insert description here
// You can write your code in this editor
if keyboard_check(ord("Z")) {
	ini_open("datafiles/sv.ini");
	ini_write_real("oleg","saved",1);
	ini_close();
}	

if keyboard_check(ord("C")) {
	ini_open("datafiles/sv.ini");
	ini_write_real("oleg","saved",0);
	ini_close()
}	