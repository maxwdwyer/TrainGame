function scr_foodcheck(_x,_y){
	if place_meeting(_x,_y,obj_food){
	//	scr_newfood()
	}
}

if global.movetype = false {
	if keyboard_check_pressed(ord("W")) and place_meeting(x,y-32,global.collisions) = false {
		if y-32 >= 0 then y = y - 32
		alarm[0] = scool
		im = 2
		w1 = 1
		scr_foodcheck(x,y)}
	if keyboard_check_pressed(ord("S")) and place_meeting(x,y+32,global.collisions) = false {
		if y+32 < 640 then y = y + 32
		alarm[0] = scool
		im = 0
		w2 = 1
		scr_foodcheck(x,y)}
	if keyboard_check_pressed(ord("A")) and place_meeting(x-32,y,global.collisions) = false {
		if x-32 > 0 then x = x - 32
		im = 1
		alarm[0] = scool
		w3 = 1
		scr_foodcheck(x,y)}
	if keyboard_check_pressed(ord("D")) and place_meeting(x+32,y,global.collisions) = false {
		if x+32 <= 640 then x = x + 32
		im = 3
		alarm[0] = scool
		w4 =1
		scr_foodcheck(x,y)}
}
	
if global.movetype = true {
	if keyboard_check_pressed(vk_up) and place_meeting(x,y-32,global.collisions) = false {
		if y-32 >= 0 then y = y - 32
		alarm[0] = scool
		im = 2
		w5 = 1
		scr_foodcheck(x,y)}
	if keyboard_check_pressed(vk_down) and place_meeting(x,y+32,global.collisions) = false {
		if y+32 < 640 then y = y + 32
		alarm[0] = scool
		im = 0
		w6 = 1
		scr_foodcheck(x,y)}
	if keyboard_check_pressed(vk_left) and place_meeting(x-32,y,global.collisions) = false {
		if x-32 > 0 then x = x - 32
		alarm[0] = scool
		im = 1
		w7 = 1
		scr_foodcheck(x,y)}
	if keyboard_check_pressed(vk_right) and place_meeting(x+32,y,global.collisions) = false {
		if x+32 <= 640 then x = x + 32
		alarm[0] = scool
		im = 3
		w8 = 1
		scr_foodcheck(x,y)}
	}

if keyboard_check_released(ord("W")) then w1 = 0
if keyboard_check_released(ord("S")) then w2 = 0
if keyboard_check_released(ord("A")) then w3 = 0
if keyboard_check_released(ord("D")) then w4 = 0
if keyboard_check_released(vk_up) then w5 = 0
if keyboard_check_released(vk_down) then w6 = 0
if keyboard_check_released(vk_left) then w7 = 0
if keyboard_check_released(vk_right) then w8 = 0

if global.s = true then hunger -= .02+(global.score*.0004)
if hunger <= 0 then game_restart()

