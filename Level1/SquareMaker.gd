extends Node

var player

func _ready():
	player = preload("res://Objects/Player/Player.tscn")
	
func _process(delta):
	if Input.is_action_pressed("ui_select"):
		var node = player.instance()
		add_child(node)
