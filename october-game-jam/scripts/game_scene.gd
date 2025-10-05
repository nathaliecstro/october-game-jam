extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$transition/AnimationPlayer.play("fade_out")
	await get_tree().create_timer(1.5).timeout
	$question1Animation.play("typing_text")
	await get_tree().create_timer(4.0).timeout
	$ButtonManager/Acceptance.visible = true
	$ButtonManager/Denial.visible = true


func _on_acceptance_pressed() -> void:
	pass # Replace with function body.


func _on_denial_pressed():
	Global.badEnding_counter +=1 
