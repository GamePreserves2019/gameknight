extends KinematicBody2D

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	print("I have a hard hat")


func _process(delta):
	#if overlaps_area(get_node("../Player/Proximity")):
	#	_proximity_player()
	pass
		
func _collide_player():
	pass
	
func _proximity_player():
	pass
	
	

