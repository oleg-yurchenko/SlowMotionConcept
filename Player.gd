extends KinematicBody2D


# Declare member variables here. Examples:
var velocity = Vector2()
export var speed = 200
var collision
var gSpeedModifier

func handle_input():
	velocity = Vector2()
	if(Input.is_action_pressed("up")):
		velocity.y -= 1
	if(Input.is_action_pressed("down")):
		velocity.y += 1
	if(Input.is_action_pressed("left")):
		velocity.x -= 1
	if(Input.is_action_pressed("right")):
		velocity.x+= 1
	velocity = velocity.normalized() * speed * gSpeedModifier

func _ready():
	velocity = Vector2()


func _process(delta):
	gSpeedModifier = get_parent().gSpeedModifier
	handle_input()
	collision = move_and_collide(velocity*delta)
