/// @description Insert description here
// You can write your code in this editor

image_xscale = scale;
image_yscale = scale;
image_alpha = scale+0.75;
scale -=0.005;

image_angle +=10*sign(turn);

if scale <=0 instance_destroy();