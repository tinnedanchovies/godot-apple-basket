extends Button

@onready var animation = get_node("/start_screen/AnimationPlayer/")

func _on_pressed() -> void:
	animation.play("apple_fall")
