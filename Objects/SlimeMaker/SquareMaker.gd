extends Node

var player
var parent

func _ready():
	player = preload("res://Objects/Player/Player.tscn")

func _process(delta):
	if Input.is_action_pressed("ui_select"):
		var node = player.instance()
		get_parent().add_child(node)
