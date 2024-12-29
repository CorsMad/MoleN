/// @description Insert description here
// You can write your code in this editor

if audio_group_is_loaded(Music) && audio_group_is_loaded(Sounds) && on = 1{
    on = 0;
	instance_create_depth(0,0,0,obj_button_showFullscreenAdsN);
	//room_goto(MainMenu);	
}