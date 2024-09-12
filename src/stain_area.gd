extends Area3D
@onready var stain_square: MeshInstance3D = $StainSquare

var clean_amount : float = 100.0

func _ready() -> void:
	stain_square.rotation_degrees.z = randf_range(0,360)

func clean(amount: float) -> void:
	clean_amount -= amount
	if clean_amount <= 0:
		queue_free()
	else:
		stain_square.transparency = clean_amount / 100.0
	print(clean_amount / 100.0)
