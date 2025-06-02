extends CharacterBody2D

class_name Player

var speed = 500
var speedMult = 1
var direction = Vector2(0,0)

func _physics_process(delta: float) -> void:
	var input_direction = Input.get_vector("moveRight", "moveLeft", "moveUp", "moveDown")
	velocity = input_direction * speed
	print(velocity)
	move_and_slide()
	pass
