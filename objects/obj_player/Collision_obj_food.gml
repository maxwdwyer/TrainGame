	if other.image_index = 0 then hunger += 30
	if other.image_index = 1 then hunger += 10
	if hunger > 55 then hunger = 55
	scr_newfood()