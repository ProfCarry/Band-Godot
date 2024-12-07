class_name game_controller
extends _controller

var _controllers:Array

# Called when the node enters the scene tree for the first time.
func _ready():
	_controllers=Array()
	_controllers+=get_children()

func clear():
	for ctrl in _controllers:
		ctrl.clear()

func get_controller(type:int):
	for ctrl in _controllers:
		if(type==typeof(ctrl)):
			return ctrl

func _no_other_game_controllers():
	return get_tree().root.find_child("GameController")
