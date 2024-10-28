/// @description Insert description here
// You can write your code in this editor
t++;
if t < 20 image_alpha+=0.1;
if t > 30 image_alpha-=0.1;
if t > 30 && image_alpha<=0 instance_destroy();
image_angle-=10