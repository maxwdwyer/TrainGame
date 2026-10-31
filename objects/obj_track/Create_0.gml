array = [obj_trackconstruction, obj_track];
depth = 399
if place_meeting(x,y,obj_track) = true then instance_destroy(other)
alarm[0] = 1
if place_meeting(x,y+1,array) and place_meeting(x+1,y,array){
	image_index = 2}
if place_meeting(x,y-1,array) or place_meeting(x,y+1,array){
	image_index = 0}
if place_meeting(x-1,y,array) or place_meeting(x+1,y,array){
	image_index = 1}