extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	print("I have a hard hat")
	pass

func _process(delta):
	if overlaps_area(get_node("../Player")):
		_collide_player()
		
func _collide_player():
	print("collision")