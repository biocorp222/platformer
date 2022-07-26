extends Node2D


func _ready():
	pass
	
func _process(delta):
	pass
	if Input.is_action_pressed("reset"):
		GameStats.reset()
