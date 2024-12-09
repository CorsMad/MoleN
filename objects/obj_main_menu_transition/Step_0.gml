/// @description Insert description here
// You can write your code in this editor
alpha+=0.05;
if alpha>=1 {	
	//room_goto(Tutor);
	if file_exists("GSave") room_goto(GameRoom) else room_goto(Tutor);
}