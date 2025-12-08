extends Control

@onready var begin = get_node("/root/level_1/begin_game")

func _ready() -> void:
	get_tree().paused = true
	Globals.apple_speed = Vector2(0, 0)
	begin.show()

func _on_start_pressed() -> void:
	get_tree().paused = false
	begin.hide()
	Engine.time_scale = 1
	Globals.apple_speed = Vector2(0, 80)
