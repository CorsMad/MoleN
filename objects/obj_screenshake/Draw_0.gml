/// @description Insert description here
// You can write your code in this editor


if obj_camera.page = 0 {
	draw_sprite_tiled_ext(bgr_1,img,1080/2+x_offset,1920/2+y_offset,1,1,c_white,0.6);
	//draw_sprite_tiled_ext(bgr_1,img,1080/2+x_offset,1920/2+y_offset,1,1,c_white,0.3);

	x_offset = lerp(x_offset,0,0.1)
	y_offset = lerp(y_offset,0,0.1)
}
