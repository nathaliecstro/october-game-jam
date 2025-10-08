extends Node2D

var button_type = null

func _on_start_game_pressed():
	# resets the global counter
	Global.badEnding_counter = 0
	button_type = "start"
	$transition.show()
	$transition/Fade_timer.start()
	$transition/AnimationPlayer.play("fade_in")


func _on_quit_pressed():
	get_tree().quit()


func _on_fade_timer_timeout():
	
	# depending on what the button_type's value is, it changes to that specific scene
	if button_type == "start":
		get_tree().change_scene_to_file("res://scenes/prologue.tscn")
