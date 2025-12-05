extends CharacterBody2D

var gravity = 15
var score = 0


func _ready():
	velocity = Globals.golden_apple_speed
	position.x = randi_range(0, 1500)
	
func _process(delta: float):
	
	pass
	
func _physics_process(delta: float):
		visible = false
	#if Globals.apple_random >= 2:
		#visible = true
		if Globals.random >= 8:
			visible = true
			velocity.y += gravity
			if position.y > 1100:
				position.y = 0
				position.x = randi_range(0, 1500)
				velocity.y = 200
			move_and_slide()


func _on_basket_body_entered(body: Node2D) -> void:
	#remove apple when it falls in basket
	if body.name == "golden_apple":
		position.y = 0
		position.x = randi_range(0, 1500)
		velocity.y = 200
		Globals.apple_counter = Globals.apple_counter + 1
		print("apple counter:", Globals.apple_counter)
	
	
