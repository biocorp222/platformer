extends Area2D


func _ready():
	$AnimationPlayer.play("SpikeTrigger")
	


func _on_spike_trap_body_entered(body):
	if body.is_in_group("player"):
		print("player dead")