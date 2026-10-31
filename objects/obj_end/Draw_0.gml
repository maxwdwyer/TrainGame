for (var _i = 0; _i < 5; _i += 1){
	if t[_i] < 1{
		t[_i] += .015
		break
	}
}

draw_set_alpha(t[1])
draw_sprite(Sprite18, 0, 64, 32)
draw_set_alpha(t[2])
draw_set_color(c_red)
draw_set_halign(textalign_center)
draw_text(160, 140, string_concat("Score: ", global.score - 20))
draw_set_alpha(t[3])
draw_text(160, 158, string_concat("Trains survived: ", global.trains))
draw_set_alpha(t[4])
draw_text(160, 176, string_concat("Time survived: ", minu, ":", sec))
draw_set_color(c_white)