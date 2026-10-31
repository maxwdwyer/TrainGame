if ready = true{
	draw_self()
	draw_set_alpha(1)
	draw_set_color(c_white)
	if dir = 0
	{
		for (var _i = 0; _i < len; _i += 1){
			if ran[_i] = 0 then var _spr = 4 else _spr = 8
			draw_sprite(spr_train, _spr,  x - (32 * _i), y)
		}
	}
	if dir = 1
	{
		for (var _i = 0; _i < len; _i += 1){
			if ran[_i] = 0 then var _spr = 2 else _spr = 6
			draw_sprite(spr_train, _spr, x, y + (32 * _i))
		}
	}
	if dir = 2
	{
		for (var _i = 0; _i < len; _i += 1){
			if ran[_i] = 0 then var _spr = 3 else _spr = 7
			draw_sprite(spr_train, _spr, x + (32 * _i), y )
		}
	}
	if dir = 3
	{
		for (var _i = 0; _i < len; _i += 1){
			if ran[_i] = 0 then var _spr = 1 else _spr = 5
			draw_sprite(spr_train, _spr, x, y - (32 * _i))
		}
	}
}