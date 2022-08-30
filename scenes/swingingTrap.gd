extends Node2D

export (int) var offset = 0

func _ready():
	$AnimationPlayer.play("swing")
	$AnimationPlayer.seek(offset)



func _on_Area2D_body_entered(body):
	if body.is_in_group("Player"):
		print("Player dead")
		if GameStats.check_reset() == false:
			body.global_position = GameStats.get_spawn().global_position
