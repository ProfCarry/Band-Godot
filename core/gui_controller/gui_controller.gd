class_name gui_controller
extends  _controller

@export var guis:Array[gui]

var stack:gui_stack

func _init():
	stack= gui_stack.new()
	
func show(type:int):
	var index=-1
	for i in range(0,len(guis)):
		if(typeof(guis[i])==type):
			index=i
	stack.push(guis[index])
	guis[index].show()
	
func hide():
	stack.pop()
	
func clear():
	stack.clear()
	
func get_current_gui():
	return stack.top()
	
func _ready():
	var guilist=get_children()
	for g in guilist:
		g.hide()
