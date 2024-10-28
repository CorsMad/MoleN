/// @description Insert description here
// You can write your code in this editor
x+=hspd;
y+=vspd;
vspd+=0.1;
t++;

if hspd > 0 image_angle-=1 else image_angle+=1;

if t > 50 image_alpha-=0.05;
if image_alpha <= 0 instance_destroy();