extends Control

var score = 0

func _process(delta: float) -> void:
	$score.text = "Score: " + str(Globals.score)
