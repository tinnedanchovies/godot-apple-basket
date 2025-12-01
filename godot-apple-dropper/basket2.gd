extends Area2D

var score = 0
var score_board

func _ready():
	position = Vector2(500, 1000)
	score_board = get_node("/root/level_1/display/score")
	
func _process(delta):
	if Input.is_key_pressed(KEY_RIGHT):
		position.x = position.x + 30

	if Input.is_key_pressed(KEY_LEFT):
		position.x = position.x - 30
	

func _on_body_entered(body: Node2D):
	score = score + 1
	score_board.text = str(score)
