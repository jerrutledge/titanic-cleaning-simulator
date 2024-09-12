extends MeshInstance3D

var cleanees:Array[Area3D] = []
@onready var glassbell: AudioStreamPlayer = $Glassbell
@onready var mop: AudioStreamPlayer = $Mop
@onready var bellcelebration: AudioStreamPlayer = $Bellcelebration
@onready var wave_animation: AnimationPlayer = $WaveAnimation

@export var cleaning_rate : float = 250.0

func _process(delta: float) -> void:
	if Input.is_action_just_pressed('wave'):
		Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
		wave_animation.play('wave')
	for area in cleanees:
		area.call('clean', delta * cleaning_rate)

func _on_sweep_area_3d_area_entered(area: Area3D) -> void:
	area.connect('cleaned', glassbell.play)
	cleanees.append(area)

func _on_sweep_area_3d_area_exited(area: Area3D) -> void:
	if area in cleanees:
		cleanees.pop_at(cleanees.find(area))
