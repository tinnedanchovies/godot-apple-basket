extends CharacterBody2D

var gravity = 15
var score = 0

func _ready():
	velocity = Globals.apple_speed

func _physics_process(delta):
	velocity.y += gravity
	move_and_slide()

func _on_area_2d_2_body_entered(body: Node2D) -> void:
	#if the player catches the apple move it back to top
	if body.name == "Apple":
		position.y = 0
		position.x = randi_range(0, 1150)
		velocity.y = 200
		Globals.apple_counter = Globals.apple_counter + 1
		print("apple counter:", Globals.apple_counter)


func _on_bottom_body_entered(body: Node2D) -> void:
	#in case the player doesn't catch the apples
	if body.name == "Apple":
		position.y = 0
		position.x = randi_range(0, 1100)
		velocity.y = 200
