if ready[0] < ready[1] then ready[0] ++

if steps[0] = true{
	scr_button(200, 470, 240 , 100, "Do you want to play the tutorial?", 2)
	var _e = scr_button(200, 582, 114 , 40, "YES", 2)
	if _e and ready[0] = ready[1]{
		ready[0] = 0
		steps[1] = true
		steps[0] = false}
	var _des = scr_button(326, 582, 114 , 40, "NO", 2)
	if _des = true and ready[0] = ready[1]{
		ready[0] = 0
		global.s = true
		instance_destroy()}
}

if steps[1] = true{
	scr_button(200, 470, 240 , 90, "Press or hold the arrow keys to move, you can switch to WASD in settings in the top right corner.", 1.25)
	var _e = scr_button(200, 572, 114 , 40, "BACK", 2)
	if _e and ready[0] = ready[1]{
		steps[0] = true
		ready[0] = 0
		steps[1] = false}
	var _s = scr_button(326, 572, 114 , 40, "NEXT", 2)
	if _s and ready[0] = ready[1]{
		steps[2] = true
		ready[0] = 0
		steps[1] = false}
}

if steps[2] = true{
	scr_button(200, 470, 240 , 90, "Your hunger is shown by the stomach in the bottom left corner, eat bread to not starve.", 1.25)
	var _e = scr_button(200, 572, 114 , 40, "BACK", 2)
	if _e and ready[0] = ready[1]{
		steps[1] = true
		ready[0] = 0
		steps[2] = false}
	var _s = scr_button(326, 572, 114 , 40, "NEXT", 2)
	if _s and ready[0] = ready[1]{
		global.s = true
		steps[3] = true
		ready[0] = 0
		steps[2] = false}
}

if steps[3] = true{
	scr_button(200, 470, 240 , 90, "As you collect bread, trains and buildings will pop up as Hadestown expands.", 1.32)
	var _e = scr_button(200, 572, 114 , 40, "BACK", 2)
	if _e and ready[0] = ready[1]{
		steps[2] = true
		ready[0] = 0
		steps[3] = false}
	var _s = scr_button(326, 572, 114 , 40, "NEXT", 2)
	if _s and ready[0] = ready[1]{
		steps[4] = true
		ready[0] = 0
		steps[3] = false}
}

if steps[4] = true{
	scr_button(200, 470, 240 , 90, "Do not get hit by trains and survive as long as you can, the game will get harder over time.", 1.22)
	var _e = scr_button(200, 572, 114 , 40, "BACK", 2)
	if _e and ready[0] = ready[1]{
		steps[3] = true
		ready[0] = 0
		steps[4] = false}
	var _s = scr_button(326, 572, 114 , 40, "NEXT", 2)
	if _s and ready[0] = ready[1]{
		steps[5] = true
		ready[0] = 0
		steps[4] = false}
}

if steps[5] = true{
	scr_button(200, 470, 240 , 90, "Thats all, good luck.", 1.22)
	var _e = scr_button(200, 572, 114 , 40, "BACK", 2)
	if _e and ready[0] = ready[1]{
		steps[4] = true
		ready[0] = 0
		steps[5] = false}
	var _s = scr_button(326, 572, 114 , 40, "END", 2)
	if _s and ready[0] = ready[1]{
		instance_destroy()}
}
