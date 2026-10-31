global.collisions = [obj_wall,obj_trackconstruction]
global.score = 20
scr_plan()
alarm[0] = irandom_range(550/(global.score/15),800/(global.score/15))
ran1 = random_range(10000, 99999)
ran2 = random_range(1, 40)
ran3 = random_range(1, 40)
audio_play_sound(desert, 10, true)