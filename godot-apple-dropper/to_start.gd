extends Button

func _on_pressed() -> void:
	Globals.paused = false
	Globals.score = 0
	get_tree().reload_current_scene()
