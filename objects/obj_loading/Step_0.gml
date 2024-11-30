/// @description Insert description here
// You can write your code in this editor

if audio_group_is_loaded(Music) && audio_group_is_loaded(Sounds) {
	
	audio_play_sound(msc_menu,11,true);
	room_goto(MainMenu);	
}