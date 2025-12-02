extends CharacterBody2D

var gravity = 30
var score = 0

func _ready():
	velocity = Globals.apple_speed
	
func _physics_process(delta):
	move_and_slide()
	if Globals.random == 1:
		velocity.y += gravity
		if position.y > 1100:
			position.y = 0
			position.x = randi_range(0, 1500)
			velocity.y = 200


#func _on_basket_body_entered(body: Node2D) -> void:
	#if body.name == "Apple":
		#position.y = 0
		#position.x = randi_range(0, 1500)
		#velocity.y = 200
		#Globals.score = Globals.score + 1
	
