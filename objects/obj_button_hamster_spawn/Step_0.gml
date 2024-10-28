/// @description Insert description here
// You can write your code in this editor

if (obj_score.score_n >= h1_price) price_col = c_lime else price_col = c_red

// image

if obj_score.score_n >= h1_price {
	var places= 0;
	for (var i = 0 ; i < array_length(obj_score.starter_place) ; i++;) {
			if obj_score.starter_place[i] == true {
				places+=1;	
			}
		if places >= array_length(obj_score.starter_place) {
			image_index = 0;
		} else image_index = 1;
	}
} else image_index = 0;




// посчитать хомяков

hamster_count = instance_number(obj_hamster_master);

if obj_cursor.holding_hamster = 0 {
	
	if collision_point( mouse_x, mouse_y, self, false, false ) 
	&& mouse_check_button_pressed(mb_left) && obj_score.score_n >= h1_price{
		for (var i = 0 ; i < array_length(obj_score.starter_place) ; i++;) {
		    if obj_score.starter_place[i] == false {
				//спавн хомяка
				obj_score.score_n -=h1_price;
				
				var yplace = floor(i/4); 				
				var xplace = i - 4*floor(i/4);
				
				var _hamster_spawn_level = undefined;
				switch(obj_score.start_lvl){
					case 1: _hamster_spawn_level  = obj_hamster1;	break;
					case 2: _hamster_spawn_level  = obj_hamster2;	break;
					case 3: _hamster_spawn_level  = obj_hamster3;	break;
					case 4: _hamster_spawn_level  = obj_hamster4;	break;
					case 5: _hamster_spawn_level  = obj_hamster5;	break;
					case 6: _hamster_spawn_level  = obj_hamster6;	break;
					case 7: _hamster_spawn_level  = obj_hamster7;	break;
					case 8: _hamster_spawn_level  = obj_hamster8;	break;
					case 9: _hamster_spawn_level  = obj_hamster9;	break;
					case 10: _hamster_spawn_level = obj_hamster10;	break;
					case 11: _hamster_spawn_level = obj_hamster11;	break;
					case 12: _hamster_spawn_level = obj_hamster12;	break;
					case 13: _hamster_spawn_level = obj_hamster13;	break;
					case 14: _hamster_spawn_level = obj_hamster14;	break;
					case 15: _hamster_spawn_level = obj_hamster15;	break;
					case 16: _hamster_spawn_level = obj_hamster16;	break;
				}								
				
				//var hamster_n = instance_create_depth(48+105+(48+210)*(xplace),361+75+yplace*(48+151),0,obj_hamster1);
				var hamster_n = instance_create_depth(1080+48+105+(48+210)*(xplace),361+75+yplace*(48+151),0,_hamster_spawn_level);
				hamster_n.position = i;
				hamster_n.sell_price = ceil(h1_price*0.2);
				h1_count +=1;
				//h1_price = ceil(h1_price*1.15);
				h1_price = ceil(h1_price*1.2);
				
				//добавление в тотал инком
				fnc_total_income();
				
				//удаление позиции
				obj_score.starter_place[i] = true;
				show_debug_message(obj_score.starter_place);
				instance_create_depth(x,y,depth-1,obj_button_effect_complete);
				audio_play_sound(snd_buy,10,false);
				break;
			}
		}	
		
		
		
		
		
	}
}