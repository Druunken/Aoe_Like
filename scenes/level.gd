extends Node2D

var camSpeed := 800
var dimensions : Rect2
var xView : float
var yView : float
var edgeTolerance := 50

signal selectUnit(action)

func _ready() -> void:
	#$cam.position.x = 1000
	dimensions = get_viewport().get_visible_rect()
	xView = dimensions.size.x
	yView = dimensions.size.y


func _process(delta: float) -> void:
	# cam
	var mouse_position = get_viewport().get_mouse_position()
	if(mouse_position.x + edgeTolerance >= xView):
		$cam.offset.x += camSpeed * delta
	elif(mouse_position.x - edgeTolerance <= 0):
		$cam.offset.x -= camSpeed * delta
	elif(mouse_position.y - edgeTolerance <= 0):
		$cam.offset.y -= camSpeed * delta
	elif(mouse_position.y + edgeTolerance >= yView):
		$cam.offset.y += camSpeed * delta

func _input(event: InputEvent) -> void:
	#if(event is InputEventMouseButton)
	if(event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT):
		print("not hit farmer")
		selectUnit.emit(false)
	pass


func _on_farmer_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if(event is InputEventMouseButton and event.pressed and event.button_index == MOUSE_BUTTON_LEFT):
		print("hit farmer")
		selectUnit.emit(true)
	pass # Replace with function body.
