extends Area2D

var score_board

func _ready():
	position = Vector2(500, 550)
	score_board = get_node("/root/level_1/score_board/score")

func _process(delta):
	if Input.is_key_pressed(KEY_RIGHT):
		position.x = position.x + 30

	if Input.is_key_pressed(KEY_LEFT):
		position.x = position.x - 30

func _on_body_entered(body: Node2D) -> void:
	#scoring 
	if body.name == "Apple":
		print("it's just an apple")
		Globals.score = Globals.score + 1
		score_board.text = str(Globals.score)
	if body.name == "golden_apple":
		print("it's a golden apple")
		Globals.score = Globals.score + 5
		score_board.text = str(Globals.score)
