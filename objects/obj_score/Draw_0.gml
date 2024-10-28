 /// @description Insert description here
// You can write your code in this editor


//draw_text(64,64,string(score_n));
//draw_text(64,256,string(starter_place));
//draw_text(480,64,string(mutation));



//отрисовка общих очков
draw_set_halign(fa_center);


switch(is_dragging){
	case 0:
		draw_sprite(spr_ui_topscore,0,1080+14,16)
					scr_txt_transform(1080+14+259,16+10,"золото",3,3,c_yellow);
					scr_txt_transform(1080+14+259,116+10,string(score_n),1.5,1.5,c_white);
		break;
	case 1:
		 draw_sprite(spr_ui_topsale,0,1080+14, 16)
					scr_txt_transform(1080+344,16+16,"продать",2,2,c_yellow);
					scr_txt_transform(1080+344,16+92,string(sell_price),2,2,c_white);
		break;
	case 2:
		 draw_sprite(spr_ui_topsale,1,1080+14, 16)
					scr_txt_transform(1080+344,16+16,"продать",2,2,c_yellow);		
					scr_txt_transform(1080+344,16+92,string(sell_price),2,2,c_white);
		break;
}


draw_sprite(spr_ui_topscore,0,1080+547,16)

scr_txt_transform(1080+547+259,16+10,"доход в сек.",2.5,2.5,c_yellow);
scr_txt_transform(1080+568+259,116+10,string(total_income),1.5,1.5,c_white);

// Отрисовка заборов

for (var i = 0 ; i < array_length(starter_place); i++) {
    if starter_place[i] == false {
		var yplace = floor(i/4); 				
		var xplace = i - 4*floor(i/4);		
		draw_sprite_ext(spr_fence_test,       0,1080+48+105+(48+210)*(xplace),361+75+yplace*(48+151),1,1,0,c_white,0.8)
		//draw_sprite(spr_fence_small,0,48+105+(48+210)*(xplace),361+75+yplace*(48+151));
		
	}
}


//отрисовка даблклика

if t_sec!=0 {
	//var t_color = c_white;
	//if t_sec < 10 t_color = c_red else t_color = c_white
	//scr_txt_transform(540,1600,"двойной клик! " + string(t_sec),2,2,t_color);
	
	
	//draw_sprite_stretched(spr_planet_hp,1,1080,52,1100,1020,90)
	draw_sprite_stretched(spr_planet_hp_1,0,1080+52,1780+16,990,90)
	draw_sprite_stretched(spr_planet_hp  ,0,1080+48,1780+16,(t_sec/t_sec_max)*990,90)
	draw_sprite_stretched(spr_planet_progress_bar,0,1080+32,1780,1020,112)
	draw_set_halign(fa_center);
	scr_txt_transform(1080+540,1780+24,"двойной клик!" + " - " + string(t_sec),2,2,c_white)
	
}

//draw_text_transformed(64,64,string(score_n),2,2,0);
//draw_text_transformed(64,256,string(starter_place),2,2,0);

//draw_text(room_width/2,112,string(total_income));