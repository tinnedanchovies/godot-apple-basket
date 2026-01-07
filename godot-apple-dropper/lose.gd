extends Control

@export var menuNode = ""
@onready var menu = get_node(menuNode)

func _ready() -> void:
	menu.hide()
	
func _process(_delta):
	if Globals.life_count == 0:
		menu.show()
	
