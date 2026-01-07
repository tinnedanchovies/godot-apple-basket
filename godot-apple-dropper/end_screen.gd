extends Control

@export var menuNode = ""
@export var scoreNode = ""
@export var points = 1
@export var level = ""
@onready var menu = get_node(menuNode)

func _ready() -> void:
	menu.hide()

func _process(delta: float) -> void:
	ending()

func ending():
	if Globals.score >= points:
		get_tree().paused = true
		menu.show()

func _on_next_level_pressed() -> void:
	get_tree().change_scene_to_file(level)
