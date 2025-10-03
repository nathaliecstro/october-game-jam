extends Node2D

var button_type = null

func _on_start_game_pressed() -> void:
	button_type = "start"
	$transition.show()
	$transition/Fade_timer.start()
	$transition/AnimationPlayer.play("fade_in")


func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_fade_timer_timeout() -> void:
	if button_type == "start":
		get_tree().change_scene_to_file("res://scenes/game_scene.tscn")
