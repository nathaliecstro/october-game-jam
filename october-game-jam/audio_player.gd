extends AudioStreamPlayer

const level_music = preload("uid://bgfikk8eqa1t6")

func _play_music(music: AudioStream, volume = -10.0):
	if stream == music:
		return
		
	stream = music
	volume_db = volume
	play()
	
func play_music_level():
	_play_music(level_music)
