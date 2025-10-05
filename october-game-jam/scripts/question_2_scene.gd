extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$question2Animation.play("typing_text")
	await get_tree().create_timer(4.0).timeout
	$ButtonManager/Acceptance.visible = true
	$ButtonManager/Denial.visible = true
	

func _on_acceptance_pressed():
	pass

func _on_denial_pressed():
	Global.badEnding_counter += 1
	
