extends Button

@export var next_level = ""

func _on_pressed() -> void:
	if Globals.score == 50:
		get_tree().change_scene_to_file(next_level)
