/// @description Insert description here
// You can write your code in this editor
brightness = 0;



col = $aeed34
working = 1;
show = 0;

instance_create_depth(x,y,depth,obj_portal_appear);

//объекты для мерджа
merge_object = obj_hamster1;
merge_result = obj_hamster2;
t_max = 60;
give_score = obj_score.dmg_sheet[1];

mutation = 1;

t = 0;

start_x = x;
start_y = y;

is_dragging = false

prev_mouse_x = mouse_x;
prev_mouse_y = mouse_y;

image_speed = 0;
stars_t = 0 

image_alpha = 0;
t_alpha = 0;

if audio_play_sound(snd_hamster_create,10,false) {
	audio_stop_sound(snd_hamster_create);	
	audio_play_sound(snd_hamster_create,10,false)
}

image_xscale = 0.25;
image_yscale = 0.25;