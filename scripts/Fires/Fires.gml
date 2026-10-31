global.fire = []

function efire(_x, _y, _heat) constructor
{
	x1 = _x;
	y1 = _y;
	heat = _heat;
	function move(){
		y1 -= random(.65)
		x1 += random_range(-0.25, 0.25)
		draw_set_alpha(.8 - (1.3 / heat))
		draw_set_color(make_color_rgb(255, heat * 3.5, 0))
		draw_rectangle(round(x1), round(y1), round(x1 + 1.5), round(y1 + 1.5), false)
		heat -= random_range(.1, .55)
		return heat
	}
}

function scr_fires(_x, _y, _heat, _e = true){
	if _e = false
	{
		for (var _i = 0; _i < array_length(global.fire); _i += 1){
			var __heat = global.fire[_i].move()
			if __heat > 0 then global.fire[_i].heat = __heat else array_delete(global.fire, _i, 1)
		}
	}
	var _fire = new efire(_x, _y, _heat)
	array_push(global.fire, _fire)
}