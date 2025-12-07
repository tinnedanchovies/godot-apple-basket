extends Control

@export var menuNode = ""
@export var scoreNode = ""
@onready var menu = get_node(menuNode)
@onready var score = get_node(scoreNode)

func _ready() -> void:
	menu.hide()

func _process(delta: float) -> void:
	score.text = "Score: " + str(Globals.score)
	pause()

func pause():
	if Globals.paused == true:
		menu.show()
		Engine.time_scale = 0
	else:
		menu.hide()
		Engine.time_scale = 1
