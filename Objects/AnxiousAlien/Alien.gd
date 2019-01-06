extends Node2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	print("I have a hard hat")
	emit_signal("makeDialog", "text1", "text2")

func _process(delta):
	if overlaps_area(get_node("../Player")):
		_collide_player()
	if overlaps_area(get_node("../Player/Proximity")):
		_proximity_player()
		
func _collide_player():
	print("collision")
	
func _proximity_player():
	print("proximity")

