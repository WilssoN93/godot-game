extends Camera2D
onready var player = get_node("..")

func _ready():
	limit_bottom = 500
func _process(delta):
	if player.get_position().y >= limit_bottom + 100:
		print(player.get_position().y)
		get_tree().reload_current_scene()
		
		