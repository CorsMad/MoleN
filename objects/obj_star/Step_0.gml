/// @description Insert description here
// You can write your code in this editor
x+=hspd;
y+=vspd;

if hspd!=0 image_angle-=hspd;


vspd+=0.4;
t++;
if t < lifetime && image_alpha < 1 image_alpha+=0.05;
if t > lifetime image_alpha-=0.05;	
if image_alpha<=0 instance_destroy();