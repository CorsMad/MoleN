// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function button_on_off(_turn){
	
	//Кнопки
	obj_button_click.activated = _turn;
	obj_button_hamster_spawn.activated = _turn;
	obj_button_add_place.activated = _turn;
	obj_button_hamster_mutation.activated = _turn;
	obj_button_start_hamster.activated = _turn;
	
	obj_button_megadrill.activated = _turn;	
	obj_button_mission_click_count.on_off = _turn;
	obj_button_mission_merge_count.on_off = _turn;
	obj_button_mission_planet_layer.on_off = _turn;
	obj_button_doubleclick.on_off = _turn;
	
	if instance_exists(obj_planet) obj_planet.working = _turn;
	obj_score.obj_score = _turn;
	
	//Кроты
	var ham_array = [];
	for (var i = 0 ; i < instance_number(obj_hamster_master); i++) {
	    ham_array[i] = instance_find(obj_hamster_master,i);
	}
	for (var i = 0 ; i < array_length(ham_array); i++) {
	    ham_array[i].working = _turn;
	}
	
	//звуки
	if instance_exists(obj_music_onoff) obj_music_onoff.activated = _turn;
	if instance_exists(obj_sound_onoff) obj_sound_onoff.activated = _turn;
	
	//включить выключить музыку
	
	switch(_turn){
		case 0:
			audio_group_set_gain(Music,0,0);
			audio_group_set_gain(Sounds,0,0);
			break;
		case 1:
			audio_group_set_gain(Music,obj_music_onoff.turn,0);
			audio_group_set_gain(Sounds,obj_sound_onoff.turn,0);
			break;
	}
	
	
	
}

