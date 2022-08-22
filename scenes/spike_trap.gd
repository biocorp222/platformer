extends Area2D

export (int) var offset = 0

func _ready():
	$AnimationPlayer.play("SpikeTrigger")
	$AnimationPlayer.seek(offset)
	


func _on_spike_trap_body_entered(body):
	if body.is_in_group("Player"):
		print("player dead")
		if GameStats.check_reset() == false:
			body.global_position = GameStats.get_spawn().global_position
			
