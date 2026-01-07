extends Button

#@onready var lvl = get_tree().current_scene
#var current = lvl
#var level = ""
#
#func _process(delta: float) -> void:
	#level_check()
#
#func level_check():
	#if current == "res://level_1.tscn":
		#level = "res://level_2.tscn"
	#elif current == "res://level_2.tscn":
		#level = "res://level_3.tscn"
#
#func _on_pressed() -> void:
	#if Globals.score == 50:
		#get_tree().paused = false
		#get_tree().change_scene_to_file(level)
		
