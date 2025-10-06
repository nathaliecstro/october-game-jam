extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	
	# plays the typewriter effect animation
	$question3Animation.play("typing_text")
	await get_tree().create_timer(4.0).timeout
	
	# shows the acceptance and denial buttons on the screen
	$ButtonManager/Acceptance.visible = true
	$ButtonManager/Denial.visible = true


func _on_acceptance_pressed():
	
	# changes to next scene
	get_tree().change_scene_to_file("res://scenes/question_4_scene.tscn")


func _on_denial_pressed():
	
	# increments the "denial" counter before changing to the next scene
	Global.badEnding_counter += 1
	get_tree().change_scene_to_file("res://scenes/question_4_scene.tscn")
