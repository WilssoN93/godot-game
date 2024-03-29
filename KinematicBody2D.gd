extends KinematicBody2D

const UP = Vector2(0,-1)
var motion = Vector2()
const SPEED = 400
const GRAVITY = 30
const JUMP = -600

func _physics_process(delta):
	
	motion.y += GRAVITY
	
	if Input.is_action_pressed("ui_right"):
		motion.x =SPEED
	elif Input.is_action_pressed("ui_left"):
		motion.x = -SPEED
	else:
		motion.x = 0
	
	if is_on_floor():
		if Input.is_action_just_pressed("ui_up"):
			motion.y = JUMP
	
	
	motion = move_and_slide(motion, UP)
	
	pass

