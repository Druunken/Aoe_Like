extends Node


var maxStartFarmers := 3

var startingFood := 500
var startingWood := 500

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_CONFINED)
	print("nice")

func _input(event):
	if(event.is_action_pressed("Quit")):
		get_tree().quit()
