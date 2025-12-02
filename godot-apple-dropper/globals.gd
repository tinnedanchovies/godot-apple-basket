extends Node

var score = 0
 
var apple_speed = Vector2(0, 200)
var random = 1
<<<<<<< Updated upstream


func _ready():
	pass
	
func _process(delta):
	pass
=======
var timer = Timer.new()  

func _ready():  
	add_child(timer)  
	timer.start(1)
	

func _process(delta: float) -> void:
	randomizer()

func randomizer():
	random = randi_range(1,3)
>>>>>>> Stashed changes
