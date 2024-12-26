/// @description Insert description here
// You can write your code in this editor
if t < 245 t++;
switch(t){
	case 60 :number = 1;break;
	case 120:number = 0;break;
	case 180:number = 0;break;
	case 240:		
		instance_create_depth(0,0,0,obj_button_showFullscreenAds);			
		break;
	case 245:
		if mouse_check_button_pressed(mb_left) {
			button_on_off(1);	
			obj_FSAD.t = 0;
			instance_destroy()	
		}
		break;
}