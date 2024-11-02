/// @description Insert description here
// You can write your code in this editor
offset_t++;
if offset_t = 10 = 0 {
	offsety = random_range(-10,10);
	offsetx = random_range(-10,10);
	offset_t = 0;
	}
offsety = lerp(offsety,0,0.1);
offsetx = lerp(offsetx,0,0.1);

if activated = 1 {
	if t < 260 t++;
	if t = 250 instance_create_depth(0,0,-15999,obj_end_blackscreen);
	if vspd < 30 vspd+=0.03
	y+=vspd+offsety;	
	x = 1552+offsetx;
}


