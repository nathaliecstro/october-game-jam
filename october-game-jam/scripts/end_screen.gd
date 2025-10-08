extends Node

# Called when the node enters the scene tree for the first time.
func _ready():
	if Global.badEnding_counter >= 3:
		$NewTwisted.visible = true
		$Jaxie.visible = true
		$Lose.visible = true
		$LoseAnimation.play("typing")
	else:
		$LakaruConcerned.visible = true
		$Cops.visible = true
		$Win.visible = true
		$WinAnimation.play("typing")
		
	await get_tree().create_timer(10.0).timeout
	get_tree().quit()
		
	
