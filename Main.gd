extends Node2D

export var gSpeedModifier = 1
var SloMoCharge = 100
var sinceLastUse

func _ready():
	sinceLastUse = 2

func _process(delta):
	if(Input.is_action_pressed("slowmode") and SloMoCharge > 0):
		sinceLastUse = 0
		gSpeedModifier = 0.25
	else:
		gSpeedModifier = 1
	if(gSpeedModifier == 0.25):
		SloMoCharge -= 1
	else:
		sinceLastUse += delta
	if(sinceLastUse >= 1.5):
		SloMoCharge += 0.5
	if(SloMoCharge > 100):
		SloMoCharge = 100
	$CanvasLayer/ProgressBar.value = SloMoCharge
