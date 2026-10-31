var _num = global.score*2.25
if _num >= 250 then _num = 249
var _color = make_colour_rgb((255-(_num+12)/2.25) - r, (255-(_num)/1.5) - b, (255-(_num)/1.5) - g)
image_blend = _color