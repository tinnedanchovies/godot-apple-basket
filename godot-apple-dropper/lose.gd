extends Control

@export var menuNode = ""
@onready var menu = get_node(menuNode)


func _ready() -> void:
	print(menu)
	menu.hide()
	

func _process(delta):
	if Globals.life_count == 0:
		menu.show()
	
