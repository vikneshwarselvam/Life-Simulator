extends KinematicBody2D

var speed : int = 200
var jumpforce : int = 600
var gravity : int = 800

var target : Vector2 = Vector2()
export var ACCELERATION = 500
export var MAX_SPEED = 80
export var ROLL_SPEED = 120

var vel : Vector2 = Vector2()
var velocity : Vector2 = Vector2()
onready var sprite : AnimatedSprite = get_node("sprite")

var save = preload("res://save_variables.gd").new()

func _ready():
	save.print()
	if save.current_player_location != Vector2.ZERO:
		#teleport_target()
		global_position = save.current_player_location
	else:
		target = position

func _input(event):
	if event.is_action_pressed("click"):
		target = get_global_mouse_position()

func _physics_process(delta):
	velocity = position.direction_to(target) * speed
	#look_at(target)
	if position.distance_to(target) > 5:
		if velocity.x < 0:
			sprite.flip_h = true
			sprite.play("run")
		if velocity.x > 0:
			sprite.flip_h = false
			sprite.play("run")
		
		velocity = move_and_slide(velocity)
		#move_and_collide(velocity)
	if position.distance_to(target) < 5:
		sprite.play("idle")
		#save.current_player_location = position
		#print(save.current_player_location)
	#save.current_player_location = target
