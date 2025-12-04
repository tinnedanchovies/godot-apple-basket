extends Button

@onready var playAnimation = get_node("/root/start_screen/AnimationPlayer/")
@export var level = "res://level_1.tscn"

func _on_pressed() -> void:
	playAnimation.play("apple_fall")
	

func _on_animation_player_animation_finished(apple_fall) -> void:
	get_tree().change_scene_to_file(level)
