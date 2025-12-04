extends CharacterBody2D

var gravity = 15
var score = 0


func _ready():
	velocity = Globals.apple_speed
	
func _physics_process(delta):
	move_and_slide()
	if Globals.apple_const == 1:
		velocity.y += gravity
		
		if position.y > 1100:
			position.y = 0
			position.x = randi_range(0, 1500)
			velocity.y = 200
			#Globals.apple_counter = Globals.apple_counter + 1

func _on_basket_body_entered(body: Node2D) -> void:
	if body.name == "Apple":
		print("this apple will now disappear")
		position.y = 0
		position.x = randi_range(0, 1150)
		velocity.y = 200
		#Globals.apple_counter = Globals.apple_counter + 1
		#print(Globals.apple_counter)
	
	
	
