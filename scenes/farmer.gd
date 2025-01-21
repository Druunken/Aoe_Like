extends Area2D

@export var movementSpeed := 100
var selectedUnit := false
var rng := RandomNumberGenerator.new()
# random int between 23 and 24
var randomInt : int
var randomPath : String

# should save the desired locations
var desiredLocationX : float
var desiredLocationY : float

func _ready() -> void:
	randomInt = rng.randi_range(23,24)
	randomPath = "res://rts_assets/PNG/Default size/Unit/medievalUnit_" + str(randomInt) + ".png"
	$img.texture = load(randomPath)
	pass

func _process(delta: float) -> void:
	#position.x += movementSpeed * delta
	pass


func _on_level_select_unit(action) -> void:
	$highlight.visible = action
	pass # Replace with function body.
