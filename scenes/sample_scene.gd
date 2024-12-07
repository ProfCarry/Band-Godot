extends Node2D



# Called when the node enters the scene tree for the first time.
func _ready():
	var gui_ctrl=GameController.get_controller(typeof(gui_controller))
	print("loading")
	gui_ctrl.show(typeof(start_gui))
	var current=gui_ctrl.get_current_gui()
	print(current)
	current.on_continue.connect(sample_signal)
	
	print("done")

func sample_signal():
	print("hide")
	GameController.get_controller(typeof(gui_controller)).hide()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	#var gui_ctrl=GameController.get_controller(typeof(gui_controller))
	#var current_gui=gui_ctrl.get_current_gui() as start_gui
	#current_gui.on_continue.connect(sample_signal)

