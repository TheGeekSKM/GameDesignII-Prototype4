//draw the options
draw_set_font(GameFont);
draw_set_valign(fa_top);
draw_set_halign(fa_left);


//calc width and height
var _newW = 0;
for (var i = 0; i < op_length; i++)
{
	var _opW = string_width(option[menu_level, i]);
	_newW = max(_newW, _opW);
}

width = _newW + op_border * 2;
height = op_border * 2 + string_height(option[0, 0]) + (op_length - 1) * op_space;

//center menu
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) / 2 - width / 2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) / 2 - height / 2;
y += 120;

//draw the menu
draw_sprite_ext(sprite_index, image_index, x, y, width / sprite_width, height / sprite_height, 0, c_white, 1);

//this will draw out all the options from the array by looping through it.
for (var i = 0; i < op_length; i++)
{
	
	var _c = c_white;
	
	if (pos == i) {_c = c_red};
	draw_text_color(x + op_border, y + op_border + (op_space * i), option[menu_level, i], _c, _c, _c, _c, 1);
}