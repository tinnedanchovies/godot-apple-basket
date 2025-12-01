extends Control

var score = 0

func _process(delta: float) -> void:
	$score.text = "Score: " + str(Globals.score)


func _on_basket_body_entered(body: Node2D) -> void:
	Globals.score = Globals.score + 1
