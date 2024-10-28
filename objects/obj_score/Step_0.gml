cursor_total = cursor_lvl*cursor_multiplier;

if t_sec!=0 {
	cursor_t++;
	cursor_multiplier = 2;
		if cursor_t mod 60 = 0 {
			cursor_t = 0;
			t_sec--;
		}
	}
if t_sec<= 0 {
	t_sec = 0
	cursor_t = 0;
	cursor_multiplier = 1;
	obj_button_doubleclick.activated = 0;
}