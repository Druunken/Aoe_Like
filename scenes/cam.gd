extends Camera2D

var marginLeft := 20
var marginTop := 20
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	$UI_INFO.position = Vector2(offset.x + marginLeft,offset.y + marginTop) 
	pass
