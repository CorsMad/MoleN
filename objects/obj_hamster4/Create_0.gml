/// @description Insert description here
// You can write your code in this editor
name = object_get_name(object_index);
if audio_play_sound(snd_hamster_create,10,false) {
	audio_stop_sound(snd_hamster_create);	
	audio_play_sound(snd_hamster_create,10,false)
}
brightness = 0;
image_xscale = 0.25;
image_yscale = 0.25;

col = $34edd0
working = 1;
//объекты для мерджа
merge_object = obj_hamster4;
merge_result = obj_hamster3;

mutation = 4;

t_max = 60;
give_score = obj_score.dmg_sheet[4]

t = 0;

start_x = x;
start_y = y;

is_dragging = false

prev_mouse_x = mouse_x;
prev_mouse_y = mouse_y;

instance_create_depth(x,y,depth,obj_portal_appear);
image_alpha = 0;
t_alpha = 0;
stars_t = 0 