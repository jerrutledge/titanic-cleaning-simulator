extends SpringArm3D

@export var rotationspeed: float = 0.01

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	rotate_y(rotationspeed)
