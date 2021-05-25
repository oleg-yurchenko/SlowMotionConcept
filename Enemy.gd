extends KinematicBody2D

onready var player = $".."/Player
var velocity = Vector2()
export var speed = 100
var gSpeedModifier

func _ready():
	velocity = Vector2()

func _process(delta):
	gSpeedModifier = get_parent().gSpeedModifier
	velocity = player.position - self.position
	velocity = velocity.normalized() * speed * gSpeedModifier
	move_and_collide(velocity * delta)

