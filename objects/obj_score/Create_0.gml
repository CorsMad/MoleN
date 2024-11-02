/// @description Insert description here
// You can write your code in this editor

is_dragging = false;
sell_price = 0;

score_n = 166460022222222200;
layer_lvl = 1;

bonus_multiplier = 0.10;


//score_n = 0;
#region cursor
cursor_total = 400;
cursor_multiplier = 1;
cursor_t = 0;
cursor_lvl = 1;
t_sec = 0;
t_sec_max = 120;
#endregion


mutation = 0;
start_lvl = 1;

//spawn_level = 0;


for (var i = 0 ; i < 4; i++) {	
    starter_place[i] = false;
}

total_income = 0 ;

#region GamsterDMG
dmg_sheet = [
0,
0.1		   ,
0.5		   ,
4		   ,
8		   ,
26		   ,
57		   ,
250		   ,
888		   ,
2800	   ,
7272	   ,
33333	   ,
307692	   ,
3527336	   ,
26666666   ,
125000000  ,
1307189542 
]
#endregion