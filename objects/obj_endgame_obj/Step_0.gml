/// @description Insert description here
// You can write your code in this editor
t++;
image_xscale = scale;
image_yscale = scale;
if t =100 scale = 3;
if t > 100 && t < 300 {
	if alpha_bl>0 alpha_bl-=0.05;
	scale = lerp(scale,2.48,0.05);
}	
if t > 400 {
	if alpha_bl < 0.8 alpha_bl +=0.05;	
}

if t > 500 {if t1<1 t1+=0.1}
if t > 600 {if t2<1 t2+=0.1}
if t > 700 {if t3<1 t3+=0.1}
if t > 800 {if t4<1 t4+=0.1}
if t = 1000 obj_button_endgame.activated = 1;