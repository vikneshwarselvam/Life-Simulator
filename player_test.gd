extends KinematicBody2D

var MAX_SPEED = 500
var ACCELERATION = 2000
var motion = Vector2()

func _physics_process(delta):
	var axis = get_input_axis()
	if axis == Vector2.ZERO:
		apply_friction(ACCELERATION * delta)
	else:
		apply_movement(axis * ACCELERATION * delta)
	motion = move_and_slide(motion)

func get_input_axis():
	
