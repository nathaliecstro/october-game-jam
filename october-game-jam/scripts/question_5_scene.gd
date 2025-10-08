extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	
	if (Global.badEnding_counter > 3):
		$LakaruAnger.visible = true
		
	else:
		$LakaruConcerned.visible = true
	
	# plays the typewriter effect animation
	$question5Animation.play("typing_text")
	await get_tree().create_timer(4.0).timeout
	
	# shows the acceptance and denial buttons on the screen
	$ButtonManager/Acceptance.visible = true
	$ButtonManager/Denial.visible = true
	

		
	


func _on_acceptance_pressed():
	get_tree().change_scene_to_file("res://scenes/end_screen.tscn")


func _on_denial_pressed():
	Global.badEnding_counter += 1
	get_tree().change_scene_to_file("res://scenes/end_screen.tscn")
	# when this denial button is pressed, it leads to the bad ending
