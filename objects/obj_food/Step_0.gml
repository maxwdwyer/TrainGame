if place_meeting(x,y,global.collisions){
	var _x = 0
	var _y = 0
	do{
		_x = (irandom_range(1,((room_width-64)/32))*32)
		_y = (irandom_range(1,((room_height-64)/32))*32)}
	until place_meeting(_x,_y,global.collisions) = false
	x = _x
	y = _y
}

if place_meeting(x + 32, y, global.collisions) and place_meeting(x - 32, y, global.collisions){
	if place_meeting(x, y + 32, global.collisions) and place_meeting(x, y - 32, global.collisions){
		var _x = 0
		var _y = 0
		do{
			_x = (irandom_range(1,((room_width-64)/32))*32)
			_y = (irandom_range(1,((room_height-64)/32))*32)}
		until place_meeting(_x,_y,global.collisions) = false
		x = _x
		y = _y
	}
}
	