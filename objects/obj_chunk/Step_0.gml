/// @description Insert description here
// You can write your code in this editor

x+=hspd;
y+=vspd;
if vspd < 14 vspd+=0.2;
if y > room_height+ 256 instance_destroy();
if hspd !=0 image_angle-=hspd*4;
   t++;
if t >= t_exist image_alpha-=0.05 
if image_alpha<=0 instance_destroy();