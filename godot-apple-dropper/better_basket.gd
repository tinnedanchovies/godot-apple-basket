extends CharacterBody2D

@export var scoreboard_node = ""
@onready var score_board = get_node(scoreboard_node)

func _ready():
	position = Vector2(500, 550)

func _process(delta):
	move_and_slide()
	if Input.is_key_pressed(KEY_RIGHT):
		position.x = position.x + 30

	if Input.is_key_pressed(KEY_LEFT):
		position.x = position.x - 30

func _on_area_2d_2_body_entered(body: Node2D) -> void:
	if body.name == "bomb":
		print("it's a bomb")
		Globals.score = Globals.score - 5
		Globals.life_count = Globals.life_count + 1
		
		
	if body.name == "golden_apple":
		print("it's a golden apple")
		Globals.score = Globals.score + 5
		
	
	if body.name == "Apple":
		print("it's just an apple")
		Globals.score = Globals.score + 1
		
