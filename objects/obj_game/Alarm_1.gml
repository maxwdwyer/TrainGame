if global.trainsleft > 1 then alarm[1] = irandom_range(13, 45)
global.trainsleft -= 1
global.trains += 1
scr_trainspawn()