extends Control

var heart_1
var heart_2
var heart_3

func _ready():
	heart_1 = $health_bar_sprite/heart_1
	heart_2 = $health_bar_sprite/heart_2
	heart_3 = $health_bar_sprite/heart_3
	

func _process(delta):
	if Globals.life_count == 1:
		heart_1.visible = false
	
	elif Globals.life_count == 2:
		heart_1.visible = false
		heart_2.visible = false
	
	elif Globals.life_count >= 3:
		heart_1.visible = false
		heart_2.visible = false
		heart_3.visible = false
	
