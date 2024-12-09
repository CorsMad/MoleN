/// @description Insert description here
// You can write your code in this editor

Save = function() {
	var enemy;
	#region Ззапись кротов
		
		///// ЗАПИСАТЬ SELL PRICE, POSITION , ТЕКУЩИЙ XY, 
		if instance_exists(obj_hamster_master){
			for (var i = 0; i < instance_number(obj_hamster_master); ++i;){		
			    var inst = instance_find(obj_hamster_master,i);
				enemy[i][0] = inst.name; 
				enemy[i][1] = inst.start_x; 
				enemy[i][2] = inst.start_y; 
				enemy[i][3] = inst.sell_price; 
				enemy[i][4] = inst.position; 
			}
		} else enemy = noone;
		
	#endregion
	
	
	// Структура для сейва
	var _rootStructure = {
		
		#region Запись OBJ_SCORE параметров
			obj_score__score_n          : obj_score.score_n,
			obj_score__layer_lvl        : obj_score.layer_lvl,
			obj_score__bonus_multiplier : obj_score.bonus_multiplier,
			obj_score__mutation         : obj_score.mutation,
			obj_score__start_lvl        : obj_score.start_lvl,
			obj_score__starter_place    : array_length(obj_score.starter_place),
			obj_score__cursor_lvl       : obj_score.cursor_lvl,
			
			 
		#endregion
		
		#region Запись OBJ_BUTTON_CLICK
			obj_button_click__h1_count  : obj_button_click.h1_count,
			obj_button_click__h1_price  : obj_button_click.h1_price,
		#endregion
		
		#region Запись OBJ_BUTTON_HAMSTER_SPAWN
			obj_button_hamster_spawn__h1_count  :  obj_button_hamster_spawn.h1_count,
			obj_button_hamster_spawn__h1_price  :  obj_button_hamster_spawn.h1_price,		
		#endregion
		
		#region Запись OBJ_BUTTON_ADD_PLACE
			obj_button_add_place__h1_count       :  obj_button_add_place.h1_count,
			obj_button_add_place__h1_price_n     :  obj_button_add_place.h1_price_n,
		#endregion
		
		#region Запись OBJ_BUTTON_HAMSTER_MUTATION
			obj_button_hamster_mutation__h1_count     :  obj_button_hamster_mutation.h1_count,
			obj_button_hamster_mutation__h1_price_n   :  obj_button_hamster_mutation.h1_price_n,
		#endregion
		
		#region Запись OBJ_BUTTON_START_HAMSTER
			obj_button_start_hamster__h1_count       :   obj_button_start_hamster.h1_count,
			obj_button_start_hamster__h1_price_n     :   obj_button_start_hamster.h1_price_n,
		#endregion
		
		#region Запись OBJ_BUTTON_MISSION_CLICK_COUNT
			obj_button_mission_click_count__click_current     :    obj_button_mission_click_count.click_current,
			obj_button_mission_click_count__ad_counter        :    obj_button_mission_click_count.ad_counter,
			obj_button_mission_click_count__current_bonus     :    obj_button_mission_click_count.current_bonus,
			obj_button_mission_click_count__click_max         :    obj_button_mission_click_count.click_max,
		#endregion
		
		#region Запись OBJ_BUTTON_MISSION_MERGE_COUNT
			obj_button_mission_merge_count__merge_current     :    obj_button_mission_merge_count.merge_current,
			obj_button_mission_merge_count__ad_counter        :    obj_button_mission_merge_count.ad_counter,
			obj_button_mission_merge_count__merge_max         :    obj_button_mission_merge_count.merge_max,
			obj_button_mission_merge_count__current_bonus     :    obj_button_mission_merge_count.current_bonus,
		#endregion
		
		#region Запись OBJ_BUTTON_MISSION_PLANET_LAYER
			obj_button_mission_planet_layer__layer_current   :    obj_button_mission_planet_layer.layer_current,
			obj_button_mission_planet_layer__ad_counter      :    obj_button_mission_planet_layer.ad_counter,
			obj_button_mission_planet_layer__layer_max       :    obj_button_mission_planet_layer.layer_max,
			obj_button_mission_planet_layer__current_bonus   :    obj_button_mission_planet_layer.current_bonus,
		#endregion
		
		#region Запись всех кротов
			obj_hamster : enemy
			
		#endregion
			
	}
	
	// Запись
	var _json = json_stringify(_rootStructure);
	SaveString(_json,"GSave");
	//show_debug_message(enemy[0][1]);
}

Load = function() {
	if !file_exists("GSave") return;
	
	var _json = LoadString("GSave");
	var _rootStructure = json_parse(_json);
	
	#region Загрузка OBJ_SCORE параметров
	// ПЕРЕДЕЛАТЬ!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!
		
		obj_score.score_n				= _rootStructure.obj_score__score_n;
		obj_score.layer_lvl				= _rootStructure.obj_score__layer_lvl;   
		obj_score.bonus_multiplier		= _rootStructure.obj_score__bonus_multiplier;
		obj_score.mutation				= _rootStructure.obj_score__mutation  ;      
		obj_score.start_lvl				= _rootStructure.obj_score__start_lvl  ;  		
		obj_score.cursor_lvl            = _rootStructure.obj_score__cursor_lvl;
		obj_score.bonus_multiplier      = _rootStructure.obj_score__bonus_multiplier;
		
		for (var i= 0 ; i < _rootStructure.obj_score__starter_place-4; i++) {
		    array_push(obj_score.starter_place,false);
		}
		
	#endregion
	
	#region Загрузка OBJ_BUTTON_CLICK параметров	
		obj_button_click.h1_count		= _rootStructure.obj_button_click__h1_count;
		obj_button_click.h1_price  		= _rootStructure.obj_button_click__h1_price;
	#endregion
	
	#region Загрузка OBJ_BUTTON_HAMSTER_SPAWN
	    obj_button_hamster_spawn.h1_count  =   _rootStructure.obj_button_hamster_spawn__h1_count;
	    obj_button_hamster_spawn.h1_price  =   _rootStructure.obj_button_hamster_spawn__h1_price;		
	#endregion
	
	#region Загрузка OBJ_BUTTON_ADD_PLACE
		obj_button_add_place.h1_count     = _rootStructure.obj_button_add_place__h1_count  	;
		obj_button_add_place.h1_price_n   = _rootStructure.obj_button_add_place__h1_price_n	;
	#endregion
	
	#region Загрузка OBJ_BUTTON_HAMSTER_MUTATION
		obj_button_hamster_mutation.h1_count    = _rootStructure.obj_button_hamster_mutation__h1_count  ;
		obj_button_hamster_mutation.h1_price_n	= _rootStructure.obj_button_hamster_mutation__h1_price_n;
	#endregion
	
	#region Загрузка OBJ_BUTTON_START_HAMSTER
		obj_button_start_hamster.h1_count       = _rootStructure.obj_button_start_hamster__h1_count  ;
		obj_button_start_hamster.h1_price_n     = _rootStructure.obj_button_start_hamster__h1_price_n;		
	#endregion
	
	#region Загрузка OBJ_BUTTON_MISSION_CLICK_COUNT
		obj_button_mission_click_count.click_current  = _rootStructure.obj_button_mission_click_count__click_current;
		obj_button_mission_click_count.ad_counter	  = _rootStructure.obj_button_mission_click_count__ad_counter   ;
		obj_button_mission_click_count.current_bonus  = _rootStructure.obj_button_mission_click_count__current_bonus;
		obj_button_mission_click_count.click_max	  = _rootStructure.obj_button_mission_click_count__click_max    ;
	#endregion
	
	#region Загрузка OBJ_BUTTON_MISSION_MERGE_COUNT
		obj_button_mission_merge_count.merge_current   = _rootStructure.obj_button_mission_merge_count__merge_current;
		obj_button_mission_merge_count.ad_counter	   = _rootStructure.obj_button_mission_merge_count__ad_counter;
		obj_button_mission_merge_count.merge_max       = _rootStructure.obj_button_mission_merge_count__merge_max;
		obj_button_mission_merge_count.current_bonus   = _rootStructure.obj_button_mission_merge_count__current_bonus;
	#endregion
	
	#region Загрузка OBJ_BUTTON_MISSION_PLANET_LAYER
		obj_button_mission_planet_layer.layer_current  = _rootStructure.obj_button_mission_planet_layer__layer_current;
		obj_button_mission_planet_layer.ad_counter	   = _rootStructure.obj_button_mission_planet_layer__ad_counter	  ;
		obj_button_mission_planet_layer.layer_max 	   = _rootStructure.obj_button_mission_planet_layer__layer_max    ;  
		obj_button_mission_planet_layer.current_bonus  = _rootStructure.obj_button_mission_planet_layer__current_bonus;
	#endregion
	
	#region Загрузка кротов
	
	if _rootStructure.obj_hamster!=noone {
		for (var i = 0 ; i < array_length(_rootStructure.obj_hamster); i++) {
			var _mole = instance_create_depth(_rootStructure.obj_hamster[i][1],_rootStructure.obj_hamster[i][2],10,asset_get_index(_rootStructure.obj_hamster[i][0]))
			//_mole.starter_x  = _rootStructure.obj_hamster[i][1];
			//_mole.starter_y  = _rootStructure.obj_hamster[i][2];
			_mole.sell_price = _rootStructure.obj_hamster[i][3];
			_mole.position   = _rootStructure.obj_hamster[i][4];			
			obj_score.starter_place[_rootStructure.obj_hamster[i][4]] = true;
		}
	}
	
	show_debug_message(_rootStructure.obj_hamster);
	fnc_total_income();
	#endregion
	
}
	
t = 0;