extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	
	# plays the typewriter effect animation
	$question5Animation.play("typing_text")
	await get_tree().create_timer(4.0).timeout
	
	# shows the acceptance and denial buttons on the screen
	$ButtonManager/Acceptance.visible = true
	$ButtonManager/Denial.visible = true
	
	if (Global.badEnding_counter > 4):
		$LakaruAnger.visible = true
	else:
		$LakaruConcerned.visible = true
		
	


func _on_acceptance_pressed() -> void:
	pass # Replace with function body.
	# when this acceptance button is pressed, it leads to the true ending


func _on_denial_pressed() -> void:
	pass # Replace with function body.
	# when this denial button is pressed, it leads to the bad ending
