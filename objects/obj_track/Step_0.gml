if place_meeting(x,y+32,obj_track) = true and place_meeting(x+32,y,obj_track) = true{
	image_index = 2}
	
	
var _num = global.score*2.5
if _num >= 250 then _num = 249
var _color = make_colour_rgb(255-(_num+12)/2.25,255-(_num)/1.5,255-(_num)/1.5)
image_blend = _color