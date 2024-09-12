extends Area3D

signal cleaned

@onready var stain_square: MeshInstance3D = $StainSquare
@export var clean_amount : float = 100.0
@export var clean_threshhold : float = 10.0

func _ready() -> void:
	stain_square.rotation_degrees.y = randf_range(0,360)

func clean(amount: float) -> void:
	clean_amount -= amount
	if clean_amount <= clean_threshhold:
		cleaned.emit()
		queue_free()
	else:
		var new_amount : float = clean_amount / 100.0
		stain_square.scale = Vector3(new_amount, new_amount, new_amount)
