extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$transition/AnimationPlayer.play("fade_out")
	await get_tree().create_timer(1.5).timeout
	$question1Animation.play("typing_text")
	await get_tree().create_timer(4.0).timeout
	$ButtonManager/Acceptance.visible = true
	$ButtonManager/Denial.visible = true


func _on_acceptance_pressed():
	get_tree().change_scene_to_file("res://question_2_scene.tscn")


func _on_denial_pressed():
	Global.badEnding_counter +=1 
	get_tree().change_scene_to_file("res://question_2_scene.tscn")
	
