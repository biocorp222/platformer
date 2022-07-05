extends Node2D


func _ready():
	$ButtonAnimationPlayer.play("Butttonup")
	$DoorAnimationPlayer.play("doorclosed")


func _on_Area2D_body_entered(body):
	if body.is_in_group("Player"):
		$ButtonAnimationPlayer.play("button down")
		$DoorAnimationPlayer.play("door_open")
		
		
