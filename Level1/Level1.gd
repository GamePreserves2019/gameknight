extends Node

func _ready():
	var slimemaker = load("res://Objects/SlimeMaker/SlimeMaker.tscn")
	var node = slimemaker.instance()
	add_child(node)
