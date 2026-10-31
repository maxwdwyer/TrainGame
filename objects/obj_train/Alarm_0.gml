dir = (image_angle - 90) / 90
emitter = audio_emitter_create()
audio_play_sound_on(emitter, moving1, false, 10, 100);
audio_emitter_falloff(emitter, 6, 650, 1);
if dir = 0 then var _warning = instance_create_layer(x + (32 * _bob), y, "train", obj_warning)
if dir = 1 then var _warning = instance_create_layer(x, y - (32 * _bob), "train", obj_warning)
if dir = 2 then var _warning = instance_create_layer(x - (32 * _bob), y, "train", obj_warning)
if dir = 3 then var _warning = instance_create_layer(x, y + (32 * _bob), "train", obj_warning)
_warning.image_angle = image_angle + 180
warning = _warning

/*if dir = 0 and place_meeting(x + 2064, y, obj_track) = false then instance_destroy()
if dir = 1 and place_meeting(x, y + 2064, obj_track) = false then instance_destroy()
if dir = 2 and place_meeting(x - 2064, y, obj_track) = false then instance_destroy()
if dir = 3 and place_meeting(x, y - 2064, obj_track) = false then instance_destroy()