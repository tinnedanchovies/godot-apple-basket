extends Sprite2D

var y = 250
var x = 100

func _ready():
	position = Vector2(x, y)
	
func _process(delta):
	if Input.is_key_pressed(KEY_RIGHT):
		x = x + 5
		position = Vector2(x, y)
		
	if Input.is_key_pressed(KEY_LEFT):
		x = x - 5
		position = Vector2(x, y)
