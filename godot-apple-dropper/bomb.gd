extends CharacterBody2D

var gravity = 20
var score = 0

func _ready():
	velocity = Globals.apple_speed
	
func _physics_process(delta: float):
	visible = false
	if Globals.random >= 2:
		visible = true
		velocity.y += gravity
		if position.y > 1100:
			position.y = 0
			position.x = randi_range(0, 1500)
			velocity.y = 200
	move_and_slide() 

func _on_area_2d_2_body_entered(body: Node2D) -> void:
	if body.name == "bomb":
		print("bomb entered")
		$AudioStreamPlayer2D.play()
		position.y = 0
		position.x = randi_range(0, 1500)
		velocity.y = 200

func _on_bottom_body_entered(body: Node2D) -> void:
	if body.name == "bomb":
		position.y = 0
		position.x = randi_range(0, 1500)
		velocity.y = 200
