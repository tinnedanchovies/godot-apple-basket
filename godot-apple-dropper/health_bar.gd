extends Control

var heart_1
var heart_2
var heart_3

func _onready(delta):
	heart_1 = get_node("/root/health_bar/heart_1")
	heart_2 = get_node("/root/health_bar/heart_2")
	heart_3 = get_node("/root/health_bar/heart_3")

func _process(delta):
	#if Globals.bomb_count == 3:
		#heart_1.visible = false
	
	pass
