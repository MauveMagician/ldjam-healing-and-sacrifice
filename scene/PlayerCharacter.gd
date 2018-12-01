extends Node2D

export var motion = Vector2()
export var speed = 250
export var look_direction = Vector2(1, 0)

func _ready():
	# Called when the node is added to the scene for the first time.
	# Initialization here
	pass

func _process(delta):
	if Input.is_action_pressed("ui_cancel"):
		speed = 500
	if Input.is_action_just_released("ui_cancel"):
		speed = 250
	if Input.is_action_pressed("ui_up"):
		motion.y = -speed
	elif Input.is_action_pressed("ui_down"):
		motion.y = speed
	else:
		motion.y = 0
	if Input.is_action_pressed("ui_left"):
		motion.x = -speed
	elif Input.is_action_pressed("ui_right"):
		motion.x = speed
	else:
		motion.x = 0
	motion = move_and_slide(motion)