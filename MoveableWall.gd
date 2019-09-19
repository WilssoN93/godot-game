extends RigidBody2D
const UP = Vector2(0,-1)
var motion = Vector2(200,0)
var SPEED = 200
var direction = true

func _physics_process(delta):
	var bodies = get_colliding_bodies()
	for body in bodies:
		if body.name == "wall":
			if direction:
				motion.x = SPEED
				direction =false
				print("first if block")
			else:
				print ("second if block")
				motion.x = -SPEED
				direction = true
