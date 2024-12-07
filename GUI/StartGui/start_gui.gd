class_name start_gui
extends gui

var start:Button

var quit: Button

signal on_continue

# Called when the node enters the scene tree for the first time.
func _ready():
	var buttons=find_children("*","Button")
	start=buttons[0]
	quit=buttons[1]
	quit.pressed.connect(on_quit)
	start.pressed.connect(on_start)

func on_start():
	on_continue.emit()

func on_quit():
	get_tree().quit()
