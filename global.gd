extends Node


var maxStartFarmers := 3

var startingFood := 500
var startingWood := 500

func _ready() -> void:
	# mouse wont move out of boundaries
	Input.set_mouse_mode(Input.MOUSE_MODE_CONFINED)

func _input(event):
	# keys for handling actions debug purpose
	if(event.is_action_pressed("Quit")):
		get_tree().quit()
