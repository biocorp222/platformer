extends Node2D
export (int) var followspeed = 50

func _ready():
	$AnimationPlayer.play("spin")
	
func _process(delta):
	$Path2D/PathFollow2D.offset += followspeed * delta
