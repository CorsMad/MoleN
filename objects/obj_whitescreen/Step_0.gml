/// @description Insert description here
// You can write your code in this editor
t++
alpha+=0.01;

if t = 20 {
	instance_destroy()	
}

if t mod 2 = 0 {
	instance_create_depth(random_range(1080+32,2160-32),random_range(32,1920-32),random_range(-10,-5),obj_dust);		
	instance_create_depth(random_range(1080+32,2160-32),random_range(32,1920-32),random_range(-10,-5),obj_dust);
}
