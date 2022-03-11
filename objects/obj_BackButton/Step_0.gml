if (mouse_check_button_pressed(mb_left))
{
	
	var d = point_distance(mouse_x, mouse_y, self.x + (self.sprite_width/2), self.y + (self.sprite_height)/2);
	if (d < self.sprite_width/2) { room_goto(rm_MainMenu); }
}

if (keyboard_check_pressed(vk_escape)) { room_goto(rm_MainMenu); }