extends Node

var score = 0
var apple_speed = Vector2(0, 80)
var golden_apple_speed = Vector2(0, 150)
var random = 0
var paused = false
var life_count = 0
var level = ""

var apple_counter = 0

func _ready():  
	pass

func _process(delta: float) -> void:
	#call when apple counter has reached 5 apple
	if apple_counter == 3:
		print("apple counter: ", apple_counter)
		apple_counter = 0
		randomizer()


func randomizer():
	#random number that decides whether a golden apple will drop
	for i in range(1):
		random = randi_range(1,10)
		print("random number: ", random)
		break
