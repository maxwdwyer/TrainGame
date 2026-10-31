randomize()
alarm[0] = irandom_range(clamp(675/(global.score/15), 150, 700),clamp(950/(global.score/15), 375, 900))
alarm[1] = 1
global.trainsleft = clamp(irandom_range(1, floor((global.score + 26) / 26)), 1, 4)