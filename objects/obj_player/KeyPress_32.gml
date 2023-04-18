///@desc Click

if(global.pause) exit

global.start = true
velv  = 0
velv -= jump
audio_play_sound(snd_wing, irandom_range(5, 15), false)
instance_destroy(obj_game_init)