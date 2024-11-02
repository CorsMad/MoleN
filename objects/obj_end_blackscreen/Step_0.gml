/// @description Insert description here
// You can write your code in this editor
ymove+=y_acc;
y_acc+=0.09

if ymove > room_height+2000 {
	room_goto(EndRoom);	
}