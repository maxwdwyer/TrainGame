for (var _i = 0; _i < array_length(global.onfire) - 1; _i += 1){
	if _i < 30{
		var _objx = global.onfire[_i, 0]
		var _objy = global.onfire[_i, 1]
		for (var _q = 0; _q < global.onfire[_i, 2]; _q += 1){
			var _x = irandom_range(0, 32)
			var _y = irandom_range(0, 32)
			var _heat = 25 - point_distance(_x + _objx - 16, _y + _objy - 16, _objx, _objy)
			scr_fires(_x + _objx - 16, _y + _objy - 16, _heat * 2)
		}
	}
}
scr_fires(1, 1, 1, false)
draw_set_alpha(1)

shader_set(shd_1)
var _fog = shader_get_uniform(shd_1, "fog")
var _player = shader_get_uniform(shd_1, "player")
var _ran1 = shader_get_uniform(shd_1, "ran1")
var _ran2 = shader_get_uniform(shd_1, "ran2")
var _ran3 = shader_get_uniform(shd_1, "ran3")
shader_set_uniform_f(_ran1, ran1)
shader_set_uniform_f(_ran2, ran2)
shader_set_uniform_f(_ran3, ran3)
shader_set_uniform_f(_fog, clamp((global.score - 25), 0, 1000) * (current_time / 555))
shader_set_uniform_f(_player, obj_player.x / 1.6, obj_player.y / 1.6)
draw_sprite(spr_fog, 0, 0, 0)
shader_reset()
