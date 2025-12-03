extends Node

var score = 0
var apple_speed = Vector2(0, 200)
var random = 1
var timer = Timer.new()  
var apple_counter = 0

func _ready():  
	add_child(timer)  
	timer.start(1)
	

func _process(delta: float) -> void:
	#randomizer()
	pass

func randomizer():
	random = randi_range(1,3)
