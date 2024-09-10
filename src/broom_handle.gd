extends MeshInstance3D

@onready var wave_animation: AnimationPlayer = $WaveAnimation

func _process(delta: float) -> void:
	if Input.is_action_just_pressed('wave'):
		wave_animation.play('wave')
