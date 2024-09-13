extends Node3D

signal done

@onready var score_label: Label = $"../Character/UserInterface/ScoreContainer/ScoreLabel"
@onready var celebration_screen: TextureRect = $"../Character/UserInterface/CelebrationScreen"
@onready var bellcelebration: AudioStreamPlayer = $"../Bellcelebration"

@export var init_score : int = 20
var score : int = -1

func _ready() -> void:
	for child in get_children():
		child.connect('cleaned', update_score)
	update_score()

func update_score() -> void:
	score += 1
	score_label.text = str(score) + " / " + str(init_score)
	if score >= init_score:
		done.emit()
		celebration_screen.visible = true
		bellcelebration.play()
		Input.mouse_mode = Input.MOUSE_MODE_VISIBLE
