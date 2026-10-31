if open = true{
	if mouse_x > xpos + 4 and mouse_x < xpos + 4 + 64 and mouse_y > ypos + 4 and mouse_y < ypos + 4 + 47 then global.movetype = false
	if mouse_x > xpos + 4 and mouse_x < xpos + 4 + 64 and mouse_y > ypos + 4 + 54 and mouse_y < ypos + 4 + 47 + 54 then global.movetype = true
	if mouse_x > xpos + 4 and mouse_x < xpos + 4 + 64 and mouse_y > ypos + 4 + 54 + 50 and mouse_y < ypos + 4 + 47 + 54 + 25
	{
		global.s = false
		global.trains = 0
		global.movetype = true
		global.buildingnum = []
		global.trainsleft = 0
		global.onfire = []
		audio_stop_all()
		room_goto(death)
	}
}
