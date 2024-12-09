/// @description Insert description here
// You can write your code in this editor

//if !instance_exists(obj_planet) {
//	t++;
//	if t = 1 instance_create_depth(0,0,-100,obj_whitescreen);
//	//
//	if t = 10 {
//		t = 0;
//		//var planet = instance_create_depth(240,1248,0,obj_planet)
//		var hp_new = (5+planet_count/10)*(4.5*obj_score.cursor_lvl + 2*(obj_score.mutation+1))
//		var planet = instance_create_depth(1080,960,0,obj_planet)
//		planet.hp =     hp_new;
//		planet.hp_max = hp_new;		
//		planet_count+=1;
//	}
//}

if !instance_exists(obj_planet) {
	instance_create_depth(0,0,-100,obj_whitescreen);
	//var planet = instance_create_depth(240,1248,0,obj_planet)
	var hp_new = (5+planet_count/10)*(4.5*obj_score.cursor_lvl + 2*(obj_score.mutation+1))
	var planet = instance_create_depth(1080,960,0,obj_planet)
	planet.hp =     hp_new;
	planet.hp_max = hp_new;		
	planet_count+=1;
}