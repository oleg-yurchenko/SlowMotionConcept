extends Node2D

export var gSpeedModifier = 1

func _process(delta):
	if(Input.is_action_pressed("slowmode")):
		gSpeedModifier = 0.25
	else:
		gSpeedModifier = 1
