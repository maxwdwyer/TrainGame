FIdir = 0
_bob = 55
alarm[0] = 1 + (_bob * 1)
alarm[1] = 200 - global.score
alarm[2] = 200 - global.score + (_bob * 2)
warning = 0
x1 = x
y1 = y
len = irandom_range(3, 8)
ran = [irandom(1), irandom(1), irandom(1), irandom(1), irandom(1), irandom(1), irandom(1), irandom(1), irandom(1)]
ready = false
emitter = audio_emitter_create()
audio_falloff_set_model(audio_falloff_inverse_distance)

