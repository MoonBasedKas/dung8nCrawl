extends CharacterBody2D

class_name Player

## Default player speed
var speed = 500
## Is the player running
var speedMult = 1
## Direction the player is facing
var direction = Vector2(0,0)
## What is bound to action one
var action_one = null
## What is bound to action two
var action_two = null

func _physics_process(delta: float) -> void:
	movement()
	move_and_slide()
	action()
	pass

## Handles player movement
func movement():
	var input_direction = Input.get_vector("moveRight", "moveLeft", "moveUp", "moveDown")
	if input_direction != Vector2(0,0):
		direction = input_direction
	if Input.is_action_pressed("run"):
		speedMult = 2
	else:
		speedMult = 1
	velocity = input_direction * speed * speedMult


## Handles player input actions
func action():
	if Input.is_action_just_pressed("actionOne"):
		if action_one != null:
			action_one.call()
	elif Input.is_action_just_pressed("actionTwo"):
		if action_one != null:
			action_two.call()
	pass
	
