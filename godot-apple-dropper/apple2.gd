extends CharacterBody2D

var gravity = 30


func _ready():
	
	velocity = Vector2(0, 200)
	
func _physics_process(delta):
	move_and_slide()
	velocity.y += gravity
	if position.y > 1100:
		position.y = 0
		position.x = randi_range(0, 1500)
		velocity.y = 200



	
