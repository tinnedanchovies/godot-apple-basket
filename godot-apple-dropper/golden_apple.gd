extends CharacterBody2D

var gravity = 15
var score = 0


func _ready():
	velocity = Globals.golden_apple_speed
	position.x = randi_range(0, 1500)
	
func _physics_process(delta: float):
		visible = false
		if Globals.random >= 1:
			visible = true
			velocity.y += gravity
			if position.y > 1100:
				position.y = 0
				position.x = randi_range(0, 1500)
				velocity.y = 200
			move_and_slide()
	

func _on_area_2d_2_body_entered(body: Node2D) -> void:
	if body.name == "golden_apple":
		position.y = 0
		position.x = randi_range(0, 1500)
		velocity.y = 200
		Globals.apple_counter = Globals.apple_counter + 1
		print("apple counter:", Globals.apple_counter)


func _on_bottom_body_entered(body: Node2D) -> void:
	if body.name == "golden_apple":
		position.y = 0
		position.x = randi_range(0, 1500)
		velocity.y = 200
