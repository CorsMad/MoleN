/// @description Insert description here
// You can write your code in this editor

Save = function() {
	// Структура для сейва
	var _rootStructure = {
		
		// Запись OBJ_SCORE параметров
		obj_score__score_n : obj_score.score_n
		
	}
	
	// Запись
	var _json = json_stringify(_rootStructure);
	SaveString(_json,"GSave");
	
}

Load = function() {
	if !file_exists("GSave") return;
	
	var _json = LoadString("GSave");
	var _rootStructure = json_parse(_json);
	
	
	
	
	obj_score.score_n = _rootStructure.obj_score__score_n;
}