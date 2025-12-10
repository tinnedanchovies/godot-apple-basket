extends Control

@export var menuNode = ""
@export var scoreNode = ""
@export var next_level = ""
@onready var menu = get_node(menuNode)
@onready var score = get_node(scoreNode)


func _ready() -> void:
	menu.hide()

func _process(delta: float) -> void:
	end()

func end():
	if Globals.score == 15:
		get_tree().paused = true
		menu.show()
