extends Button

func _on_pressed() -> void:
	Globals.paused = false
	Globals.score = 0
	get_tree().change_scene_to_file("res://start_screen.tscn")
