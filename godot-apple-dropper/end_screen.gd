extends Control

@export var menuNode = ""
@export var scoreNode = ""
@export var points = 1
@onready var menu = get_node(menuNode)

func _ready() -> void:
	menu.hide()

func _process(delta: float) -> void:
	ending()

func ending():
	if Globals.score == points:
		get_tree().paused = true
		menu.show()
