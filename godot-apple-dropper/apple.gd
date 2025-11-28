extends Sprite2D

var y = 1
var x = 1

# randi_range(int, int)

func _ready():
	pass
	
func _process(delta):
	y = y + 1 
	position = Vector2(x, y)
	if y > 500:
		y = 0
		x = randi_range(0, 1500)
