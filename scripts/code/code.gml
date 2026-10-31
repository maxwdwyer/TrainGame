global.trains = 0
global.movetype = true
global.buildingnum = []
global.trainsleft = 0
global.onfire = []

function scr_newfood(){
	#region FIND PLACE
	var _x = 0
	var _y = 0
	var _exit = 0

	do{
		_x = (irandom_range(1,((room_width-64)/32))*32)
		_y = (irandom_range(1,((room_height-64)/32))*32)
		_exit += 1
		}
	until place_meeting(_x, _y, obj_wall) = false or place_meeting(_x, _y, obj_player) = false or _exit >= 750
	#endregion
	for (var _i = 0; _i < round(global.score/11); _i += 1){//------------------
		if instance_number(obj_wall) > 25 {//----------------
			randomize()
			var _obj = instance_find(obj_wall, irandom_range(0, instance_number(obj_wall)-1))
			if _obj.image_index < _obj.maxm then _obj.image_index += 1
			var _ran = irandom(24)
			if _ran = 0 {
				array_push(global.onfire, [_obj.x, _obj.y, irandom_range(1,3)])
				var _ran1 = choose(1, 2)
				if _ran1 = 1 then audio_play_sound_at(fire1, _obj.x, _obj.y, 100, 4, 200, 1, true, 1, .5)
				if _ran1 = 1 then audio_play_sound_at(fire2, _obj.x, _obj.y, 100, 4, 200, 1, true, 1, .5)
			}
	}}
	instance_destroy(obj_food)
	global.score += 1
	instance_create_layer(_x,_y,"food",obj_food)
	scr_track()
	scr_track()
	for (var _i = 0; _i < round(global.score/4.5); _i += 1){//--------------
		if array_length(global.buildingnum) > 1{
			scr_building()}
		else break}
}

function scr_plan(){
	randomize()
	var _array = []
	for (var _i = 0; _i < 20; _i += 1){
	for (var _q = 0; _q < 20; _q += 1){
		var _obj = instance_create_layer(_i*32,_q*32,"Instances",obj_plan)
		_obj.image_index = 2
	}}
	for (var _i = irandom_range(1,4); _i < 19; _i += irandom_range(2,4)){
		var _thing = instance_nearest(_i*32,0,obj_plan)
		var _thing2 = instance_nearest(_i*32,640,obj_plan)
		_thing.image_index = 0
		_thing2.image_index = 0
		for (var _q = 0; _q < 20; _q += 1){
			var _thing3 = instance_nearest(_i*32,_q*32,obj_plan)
			if _thing3.image_index = 2 then _thing3.image_index = 1}
	}
	for (var _i = irandom_range(1,4); _i < 19; _i += irandom_range(2,4)){
		var _thing = instance_nearest(0,_i*32,obj_plan)
		var _thing2 = instance_nearest(640,_i*32,obj_plan)
		_thing.image_index = 0
		_thing2.image_index = 0
		for (var _q = 0; _q < 20; _q += 1){
			var _thing3 = instance_nearest(_q*32,_i*32,obj_plan)
			if _thing3.image_index = 2 then _thing3.image_index = 1}
	}
	for (var _i = 0; _i < instance_number(obj_plan); _i +=1){
		var _plan = instance_find(obj_plan,_i)
		if _plan.image_index == 2{
			_array[array_length(_array)+1] = _plan
		}
		global.buildingnum = _array}
		global.buildingnum = array_shuffle(global.buildingnum)	
}

function scr_track(){
	randomize()
	var _rannum = irandom(1)
	if _rannum = 0{
		var _obj = instance_nearest(irandom(20)*32,0,obj_plan)
		var _colarray2 = [obj_track,obj_trackconstruction,obj_constructionwarning]
		if place_meeting(_obj.x+1,1,_colarray2) = false{
		var _x2 = _obj.x
		if _obj.image_index = 0{
			for (var _i = 0; _i < 20; _i += 1){
				var _obj2 = instance_nearest(_x2,_i*32,obj_plan)
				var _x = _obj2.x
				var _y = _obj2.y
				instance_create_layer(_x,_y,"Instances",obj_track)}}}}//------------
	else if _rannum = 1{
		var _obj = instance_nearest(0,irandom(20)*32,obj_plan)
		var _colarray2 = [obj_track,obj_trackconstruction,obj_constructionwarning]
		if place_meeting(1,_obj.y+1,_colarray2) = false{
		var _y2 = _obj.y
		if _obj.image_index = 0{
			for (var _i = 0; _i < 20; _i += 1){
				var _obj2 = instance_nearest(_i*32,_y2,obj_plan)
				var _x = _obj2.x
				var _y = _obj2.y
				instance_create_layer(_x,_y,"Instances",obj_track)}}}}//------------
}

function scr_trainspawn(){
	if instance_exists(obj_track){
		var _rannum = irandom(3)
		var _spawn = instance_nearest(0, 0, obj_track)
		if _rannum = 0 then _spawn = instance_nearest(obj_player.x + irandom_range(-64,64), 0, obj_track) // comes from top, 4
		if _rannum = 1 then _spawn = instance_nearest(obj_player.x + irandom_range(-64,64), 640, obj_track) // comes from bottom, 2
		if _rannum = 2 then _spawn = instance_nearest(0, obj_player.y + irandom_range(-64,64), obj_track) // comes from left, 1
		if _rannum = 3 then _spawn = instance_nearest(640, obj_player.y + irandom_range(-64,64), obj_track) // comes from right, 3
		var _plan = instance_nearest(_spawn.x, _spawn.y, obj_plan)
		if _plan.image_index = 0 {
			var _bob = 55
			var _train = instance_create_layer(_spawn.x, _spawn.y, "train", obj_train)
			with (_train){
				if _rannum = 0 // 4
				{
					image_angle = 4 * 90
					x += 16
					y += 16 - (32 * _bob) // - 2000
					if place_meeting(x, y + 64 + (32 * _bob), obj_track) = false then instance_destroy()
				}
				if _rannum = 1 // 2
				{
					image_angle = 2 * 90
					x += 16
					y += 16 + (32 * _bob) // + 2000
					if place_meeting(x, y - 64 - (32 * _bob), obj_track) = false then instance_destroy()
				}
				if _rannum = 2 // 1
				{
					image_angle = 1 * 90
					x += 16 - (32 * _bob)// - 2000
					y += 16
					if place_meeting(x + 64 + (32 * _bob), y, obj_track) = false then instance_destroy()
				}
				if _rannum = 3 // 3
				{
					image_angle = 3 * 90
					x += 16 + (32 * _bob)// + 2000
					y += 16
					if place_meeting(x - 64 - (32 * _bob), y, obj_track) = false then instance_destroy()
				}	
			}}
}}

function scr_building(){
	if array_length(global.buildingnum) >= 0{
		var _plan = global.buildingnum[0]
		with (_plan){
			instance_create_layer(x + 16,y,"Instances",obj_wall)}
		array_delete(global.buildingnum,0,1)
	}}
	
	
//SMOG---------------------------------------------------------------------------------------------------------------------------
/*function scr_ray(_x = 0, _y = 0, _ang = 0,_dist = 100, _precis = 25){
	var _array = []
	var _x2 = _x
	var _y2 = _y
	for (var _i = 0; _i < _precis; _i += 1){
		_x2 += lengthdir_x(_dist/_precis,_ang)
		_y2 += lengthdir_y(_dist/_precis,_ang)
		_array[0] = _x
		_array[1] = _y
		if position_meeting(_x2,_y2,global.collisions){
			_array[0] = _x2
			_array[1] = _y2
			break}
		if _i = _precis-1{
			_array[0] = _x2
			_array[1] = _y2
		}}
	return _array
}




function scr_rectangle(_x2,_y2,_x3,_y3,_dir,_array){
	var _x4 = _x2
	if _dir == 2 or _dir == 4 then _x4 = _x3
	var _e = -1
	if _dir ==3 or _dir == 2 then _e = 1
	draw_rectangle(_x4,_y3,_x3-(100*_e),_y2,false)
}

function scr_triangle(_x2,_y2,_x3,_y3,_x4,_y4,_array){
//2'1
//3'4
if point_distance(_x2,_y2,_x3,_y3) <= 400{
	if _x3 >= _x2 and _y3 >= _y2{
		draw_set_alpha(0.25)//3?
		draw_triangle(_x2,_y2,_x3,_y3,_x2,_y3,false)
		draw_text(_x2,_y2,3)
		draw_set_alpha(1)}
	if _x2 >= _x3 and _y3 >= _y2{
		draw_set_alpha(0.25)
		draw_triangle(_x2,_y2,_x3,_y3,_x3,_y2,false)
		draw_text(_x2,_y2,2)
		draw_set_alpha(1)}
	if _x3 >= _x2 and _y2 >= _y3{//--1--
		draw_set_alpha(0.25)
		draw_triangle(_x2,_y2,_x3,_y3,_x3,_y2,false)
		draw_text(_x2,_y2,4)
		draw_rectangle(_x3,_y2,_x4,_y3,false)//-----
		draw_set_alpha(1)}
	if _x2 >= _x3 and _y2 >= _y3{
		draw_set_alpha(0.25)
		draw_triangle(_x2,_y2,_x3,_y3,_x2,_y3,false)
		draw_text(_x2,_y2,1)
		//draw_rectangle(_x3,_y2,_x4,_y3,false)//-----
		draw_set_alpha(1)}}
}

function scr_sight(_dist,_num){
	var _array = [0]
	var _array3 = []
	for (var _i = 0; _i < 360; _i += _num){
		var _array1 = scr_ray(x,y,_i,_dist,90)
		var _array2 = scr_ray(x,y,_i+_num,_dist,90)
		var _array4 = scr_ray(x,y,_i+(2*_num),_dist,90)
		var _x2 = _array1[0]
		var _y2 = _array1[1]
		var _x3 = _array2[0]
		var _y3 = _array2[1]
		var _dir = 0
		if _x3 >= _x2 and _y3 >= _y2 then _dir = 3
		if _x2 >= _x3 and _y3 >= _y2 then _dir = 2
		if _x3 >= _x2 and _y2 >= _y3 then _dir = 4
		if _x2 >= _x3 and _y2 >= _y3 then _dir = 1
		_array3[0] = _array1[0]
		_array3[1] = _array1[1]
		_array3[2] = _array2[0]
		_array3[3] = _array2[1]
		_array3[4] = _dir
		array_push(_array, _array3)
		scr_triangle(_x2,_y2,_x3,_y3,_array4[0],_array4[1],_array)
	}
}
