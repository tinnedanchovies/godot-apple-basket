extends Control

@export var menuNode = ""
@onready var menu = get_node(menuNode)

func _ready() -> void:
	menu.hide()
	
func _process(delta):
	if Globals.life_count == 3:
		menu.show()
		get_tree().paused = true
		Globals.life_count = 0
	
