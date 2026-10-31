function scr_button(_x, _y, _w, _h, _text, _s = 1){
	draw_set_color(make_color_rgb(130, 130, 130))
	draw_rectangle(_x, _y, _x + _w, _y + _h, false)
	draw_set_color(make_color_rgb(95, 95, 95))
	draw_rectangle(_x, _y, _x + _w, _y + _h, true)
	draw_rectangle(_x + 1, _y + 1, _x + _w - 1, _y + _h - 1, true)
	draw_set_color(c_white)
	draw_text_ext_transformed(_x, _y, _text, 12 * clamp(((_s + 3) / 4), .8, 2), _w / _s, _s, _s, 0)
	if mouse_check_button_pressed(mb_left){
		if mouse_x > _x and mouse_x < _x + _w{
			if mouse_y > _y and mouse_y < _y + _h{
				return true}
			else return false}
		else return false}
	else return false
}