extends KinematicBody2D
const UP = Vector2(0,-1)
var motion = Vector2(200,0)
var SPEED = 200
var direction = true

func _physics_process(delta):
	if is_on_wall():
		if direction:
			motion.x = SPEED
			direction =false
			print("first if block")
		else:
			print ("second if block")
			motion.x = -SPEED
			direction = true
	motion = move_and_slide(motion,UP)