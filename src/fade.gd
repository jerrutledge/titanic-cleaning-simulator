extends ColorRect

func _ready() -> void:
	$AnimationPlayer.play("fade")


func _on_animation_player_animation_finished(anim_name: StringName) -> void:
	queue_free()
