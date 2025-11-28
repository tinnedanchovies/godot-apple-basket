extends Area2D

func _ready():
	position = Vector2(500, 1000)
	
func _process(delta):
	if Input.is_key_pressed(KEY_RIGHT):
		position.x = position.x + 30

	if Input.is_key_pressed(KEY_LEFT):
		position.x = position.x - 30
