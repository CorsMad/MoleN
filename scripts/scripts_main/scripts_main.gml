// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function merge_scr(merge_object,merge_result,mutation){
	if( is_dragging == false )
	{		
		depth = 0;
	    if( mouse_check_button_pressed( mb_left ) )
	    {
	        if( collision_point( mouse_x, mouse_y, self, false, false ) && obj_cursor.holding_hamster = 0)
	        {
	            is_dragging = true;
				x = mouse_x;
				y = mouse_y;
				obj_score.sell_price = sell_price;
				obj_cursor.holding_hamster = 1;
	        }
	    }
	}

	if( is_dragging == true )
	{
		obj_score.starter_place[position] = false
		obj_score.sell_price = sell_price;
		depth = -1;
	    var mouse_travel_x = mouse_x - prev_mouse_x;
	    var mouse_travel_y = mouse_y - prev_mouse_y;
	    x += mouse_travel_x;
	    y += mouse_travel_y;
	    prev_mouse_x = mouse_x;
	    prev_mouse_y = mouse_y;
		
		if point_in_rectangle(mouse_x,mouse_y,14+1080,16,14+519+1080,16+184) {
			obj_score.is_dragging = 2;	
		} else obj_score.is_dragging = 1;	
	}

	if( !mouse_check_button( mb_left ) )
	{	
		if is_dragging = 1{
			var merge = instance_place(x,y,merge_object);			
			if (merge!=noone) && (mutation <= obj_score.mutation) {
				obj_score.starter_place[position] = false;				
				var new_ham = instance_create_depth(merge.x,merge.y,0,merge_result);	
				new_ham.sell_price = sell_price + merge.sell_price;
				new_ham.position = merge.position;	
				var dust = instance_create_depth(merge.x,merge.y,depth-1,obj_dust);
				dust.image_index = 4;
				dust.sprite_index = spr_warp;
				//dust.image_blend = c_fuchsia;
				dust.image_xscale = 0.75;
				dust.image_yscale = 0.75;


				dust.image_speed = 3;
				dust.image_angle = 0;
				
				audio_play_sound(snd_merge,10,false);
				instance_destroy(merge);
				instance_destroy();
				fnc_total_income();
				obj_score.is_dragging = 0;
				//добавить к заданию
				if obj_button_mission_merge_count.merge_current < obj_button_mission_merge_count.merge_max {
					obj_button_mission_merge_count.merge_current+=1;	
				}
				//Сохранения
				with(obj_save_manager) Save();
			} else if point_in_rectangle(x,y,14+1080,16,14+519+1080,16+184) {
					obj_score.starter_place[position] = false;
					obj_score.is_dragging = 0;
					obj_score.score_n += sell_price;										
					instance_destroy();
					var sell = instance_create_depth(x,y,depth,obj_hamster_sell);
					sell.sprite_index = sprite_index;
					fnc_total_income();
					//Сохранения
					with(obj_save_manager) Save();
				} else {
					obj_score.starter_place[position] = true;
					obj_score.is_dragging = 0;
					fnc_total_income();
				}
		}
		
		obj_cursor.holding_hamster = 0;
		is_dragging = false;
		speed = 0;
		x = start_x;
		y = start_y;
		prev_mouse_x = mouse_x;
		prev_mouse_y = mouse_y;
	}
}
	
function fnc_total_income(){
	var _total_income_array = [];
	var _total_income = 0;
	for (var i = 0; i < instance_number(obj_hamster_master); ++i;)
	{		
	    _total_income_array[i] = instance_find(obj_hamster_master,i);
		_total_income += _total_income_array[i].give_score;
	}
	obj_score.total_income = _total_income;
	show_debug_message(_total_income_array);
	array_delete(_total_income_array,0,array_length(_total_income_array));
}
	
function hmstr_main(){
	if (place_meeting(x,y,merge_object) && obj_score.mutation >= mutation) {
	brightness = 0.7;
	if stars_t = 0 instance_create_depth(x,y,depth-50,obj_merge_star)
	
	} else brightness = 0;

	stars_t++ 
	if stars_t = 20 stars_t=0;
	
	
	if image_alpha < 1 t_alpha++;
	if t_alpha > 10 && image_alpha < 1 image_alpha+=0.1;
	if working = 1{
		if is_dragging = false {
			t++;
			if t = t_max {
				//image_xscale = 1.2;
				//image_yscale = 0.9;
				image_xscale = 0.30;
				image_yscale = 0.20;
				obj_score.score_n+=give_score;
				var graph = instance_create_depth(x,y-100,-10,obj_score_gain)
				graph.score_n = give_score;
				instance_create_depth(x+random_range(-25,25),y+random_range(70,85),-5,obj_dust_small);
		
				if instance_exists(obj_planet){
					obj_planet.hp-=mutation;
				}

				t = 0;
			}
		} else t = 0;
	} else t = 0;

	if image_xscale!=1 image_xscale = lerp(image_xscale,0.25,0.05);
	if image_yscale!=1 image_yscale = lerp(image_yscale,0.25,0.05);	
}
	
function star_create(){
	var star_l = instance_create_depth(x+32,y+64,depth-1,obj_star);
		star_l. hspd = -1;
		star_l. vspd = -2;
	var star_r = instance_create_depth(x+984-32,y+64,depth-1,obj_star);
		star_r. hspd = 1;
		star_r. vspd = -2;
}
	
function turn_off(work){
	var ham_array = [];
	for (var i = 0 ; i < instance_number(obj_hamster_master); i++) {
	    ham_array[i] = instance_find(obj_hamster_master,i);
	}
	for (var i = 0 ; i < array_length(ham_array); i++) {
	    ham_array[i].working = work;
	}
}
