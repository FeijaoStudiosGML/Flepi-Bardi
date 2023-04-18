///@desc Score
global.score += 1
instance_destroy(other)
audio_play_sound(snd_point, irandom_range(5, 15), false)