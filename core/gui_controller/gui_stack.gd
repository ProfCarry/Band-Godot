class_name gui_stack

var stack:Array

var names:Array

func _init():
	stack=Array()
	names=Array()

func push(_gui:gui):
	if(len(stack)>=1):
		var top_of_stack=stack[0]
		top_of_stack.hide()
		stack.insert(0,top)
	_gui.show()
	stack.insert(0,_gui)
	names.insert(0,_gui.name)

func pop():
	if(len(stack)>=1):
		var g=stack[0]
		stack.remove_at(0)
		names.remove_at(0)
		if(len(stack)!=0):
			var top_of_stack=stack[0]
			top_of_stack.show()
			stack.insert(0,top_of_stack)
		g.hide()
		
func top():
	return stack[0]
	
func clear():
	while(not stack.is_empty()):
		pop()
