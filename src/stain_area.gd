extends Area3D
@onready var stain_square: MeshInstance3D = $StainSquare

func _ready() -> void:
	stain_square.rotation_degrees.z = randf_range(0,360)
