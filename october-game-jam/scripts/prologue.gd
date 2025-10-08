extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$transition/AnimationPlayer.play("fade_out")
	$typingAnimation.play("typing_text")
	await get_tree().create_timer(15.0).timeout
	get_tree().change_scene_to_file("res://scenes/question_one.tscn")
