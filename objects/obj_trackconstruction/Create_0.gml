alarm[0] = 50
/*if instance_exists(object_index)
{
	var _array = [];
	for (var _i = 0; _i < instance_number(object_index); _i ++)
	{
		var _inst = instance_find(object_index, _i);
		with _inst
		{
			depth = 0;
			array = [obj_trackconstruction, obj_track];
			if place_meeting(x,y+1,array) and place_meeting(x+1,y,array){
				alarm[0] = 500}
			else if place_meeting(x,y-1,array) or place_meeting(x,y+1,array){
				alarm[1] = 500}
			else if place_meeting(x-1,y,array) or place_meeting(x+1,y,array){
				alarm[2] = 500}
		}
	}
	depth = 0
	array = [obj_trackconstruction, obj_track];
	if place_meeting(x,y+1,array) and place_meeting(x+1,y,array){
		alarm[0] = 500}
	else if place_meeting(x,y-1,array) or place_meeting(x,y+1,array){
		alarm[1] = 500}
	else if place_meeting(x-1,y,array) or place_meeting(x+1,y,array){
		alarm[2] = 500}
}