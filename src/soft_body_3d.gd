extends SoftBody3D

func _ready() -> void:
	var pins = range(8)
	for pin in pins:
		set_point_pinned(pin, true, get_parent().get_path())
