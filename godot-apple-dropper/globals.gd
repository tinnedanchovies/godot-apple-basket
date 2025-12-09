extends Node

var score = 0
var apple_speed = Vector2(0, 80)
var golden_apple_speed = Vector2(0, 150)
var random = 0
var paused = false
var bomb_count = 0
#var timer = Timer.new()  
var apple_counter = 0
var level_1 = "res://level_1.tscn"
var level_2 = "res://level_2.tscn"
var level_3 = "res://level_1.tscn"
var current_level = level_1

func _ready():  
	pass

func next_level():
	if score == 50:
		if current_level == level_1:
			get_tree().change_scene_to_file(level_1)
		elif current_level == level_2:
			get_tree().change_scene_to_file(level_2)
		elif current_level == level_3:
			get_tree().change_scene_to_file(level_3)
			

func _process(delta: float) -> void:
	next_level()
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
	
