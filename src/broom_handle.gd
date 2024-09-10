extends MeshInstance3D

signal cleaned

@onready var wave_animation: AnimationPlayer = $WaveAnimation

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed('wave'):
		wave_animation.play('wave')


func _on_sweep_area_3d_area_entered(area: Area3D) -> void:
	cleaned.emit()
	area.queue_free()
