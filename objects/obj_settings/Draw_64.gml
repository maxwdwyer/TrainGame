if open = true
{
	draw_set_colour(make_colour_rgb(165, 165, 165))
	draw_roundrect_ext(xpos, ypos, xpos + 70, ypos + 103 + 27, 5, 5, false)
	draw_set_colour(make_colour_rgb(125, 125, 125))
	for (var _i = 0; _i < 30; _i += 1){
		draw_roundrect_ext(xpos + 1 - _i / 15, ypos + 1 - _i / 15, xpos + 71 + _i / 15, ypos + 104 + 27 + _i / 15, 5, 5, true)
	}
	if global.movetype = false {
		draw_sprite(spr_buttons, 1, xpos + 4, ypos + 4)
		draw_sprite(spr_buttons, 2, xpos + 4, ypos + 54)
	}
	if global.movetype = true {
		draw_sprite(spr_buttons, 0, xpos + 4, ypos + 4)
		draw_sprite(spr_buttons, 3, xpos + 4, ypos + 54)
	}
	draw_sprite(spr_buttons, 4, xpos + 4, ypos + 104)
}
draw_set_colour(c_white)

//draw_button(32, 32, 124, 124, open)