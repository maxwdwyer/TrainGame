randomise()
if array_contains(walllist, image_index){
var _ran = irandom_range(0,4)
if _ran = 0{
	if place_meeting(x,y+16,obj_wall){
		var _bob = instance_nearest(x,y+16,obj_wall)
		if array_contains(walllist, _bob.image_index) = true{
		image_index = 3
		_bob.image_index  = 1}
}}
if _ran = 1{
	if place_meeting(x,y-16,obj_wall){
		var _bob = instance_nearest(x,y-16,obj_wall)
		if array_contains(walllist, _bob.image_index) = true{
		image_index = 1
		_bob.image_index  = 3}
}}
if _ran = 2{
	if place_meeting(x+16,y,obj_wall){
		var _bob = instance_nearest(x+16,y,obj_wall)
		if array_contains(walllist, _bob.image_index) = true{
		image_index = 4
		_bob.image_index  = 2}
}}
if _ran = 3{
	if place_meeting(x-16,y,obj_wall){
		var _bob = instance_nearest(x-16,y,obj_wall)
		if array_contains(walllist, _bob.image_index) = true{
		image_index = 2
		_bob.image_index  = 4}
}}
}


/*if _ran = 4{
	if place_meeting(x,y,obj_wall){
	
}}
if _ran = 5{
	if place_meeting(x,y,obj_wall){
	
}}
if _ran = 6{
	if place_meeting(x,y,obj_wall){
	
}}
if _ran = 7{
	if place_meeting(x,y,obj_wall){
	
}}
if _ran = 8{
	if place_meeting(x,y,obj_wall){
	
}}
if _ran = 9{
	if place_meeting(x,y,obj_wall){
	
}}
}