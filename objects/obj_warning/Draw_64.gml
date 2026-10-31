var _num = 0
for (var _i = 0; _i < instance_number(obj_warning); _i += 1){
	var _other = instance_find(obj_warning, _i)
	if point_distance(x, y, _other.x, _other.y) < 16 then _num += 1
}
if _num > 1 then draw_text(x,y, _num)