extends Node

var score = 0
var apple_speed = Vector2(0, 200)
var golden_apple_speed = Vector2(0, 150)
var apple_const = 1
var random = 0
#var timer = Timer.new()  
#var apple_counter = 0

func _ready():  
	pass
	#randomizer()
	#add_child(timer)  
	#timer.start(1)
	

func _process(delta: float) -> void:
	if score >= 5:
		randomizer()


func randomizer():
	random = randi_range(1,10)
	print("random number: ", random)
	return
	
