/// @description Insert description here
// You can write your code in this editor
scale = 1;
turn = choose(-1,1);
image_speed = 0;
image_index = 0;

audio_play_sound(snd_sell,10,false);
var coins = irandom_range(8,14);
for (var i = 0; i < coins; i++) {
    instance_create_depth(x+random_range(-100,100),y+random_range(-100,100),-50,obj_coin);						
}