if global.movetype = false {
	if keyboard_check_direct(ord("W")) and place_meeting(x,y-32,global.collisions) = false and w1 = 1{
		if y-32 >= 0 then y = y - 32
		alarm[0] = cool
		im = 2
		scr_foodcheck(x,y)}
	if keyboard_check_direct(ord("S")) and place_meeting(x,y+32,global.collisions) = false and w2 = 1{
		if y+32 < 640 then y = y + 32
		alarm[0] = cool
		im = 0
		scr_foodcheck(x,y)}
	if keyboard_check_direct(ord("A")) and place_meeting(x-32,y,global.collisions) = false and w3 = 1{
		if x-32 > 0 then x = x - 32
		alarm[0] = cool
		im = 1
		scr_foodcheck(x,y)}
	if keyboard_check_direct(ord("D")) and place_meeting(x+32,y,global.collisions) = false and w4 = 1{
		if x+32 <= 640 then x = x + 32
		alarm[0] = cool
		im = 3
		scr_foodcheck(x,y)}
}

if global.movetype = true {
	if keyboard_check_direct(vk_up) and place_meeting(x,y-32,global.collisions) = false and w5 = 1{
		if y-32 >= 0 then y = y - 32
		alarm[0] = cool
		im = 2
		scr_foodcheck(x,y)}
	if keyboard_check_direct(vk_down) and place_meeting(x,y+32,global.collisions) = false and w6 = 1{
		if y+32 < 640 then y = y + 32
		alarm[0] = cool
		im = 0
		scr_foodcheck(x,y)}
	if keyboard_check_direct(vk_left) and place_meeting(x-32,y,global.collisions) = false and w7 = 1{
		if x-32 > 0 then x = x - 32
		alarm[0] = cool
		im = 1
		scr_foodcheck(x,y)}
	if keyboard_check_direct(vk_right) and place_meeting(x+32,y,global.collisions) = false and w8 = 1{
		if x+32 <= 640 then x = x + 32
		alarm[0] = cool
		im = 3
		scr_foodcheck(x,y)}
	}
