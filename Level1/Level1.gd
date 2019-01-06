extends Node

onready var tie = get_node("Panel/TextInterfaceEngine")

func _ready():
	var slimemaker = load("res://Objects/SlimeMaker/SlimeMaker.tscn")
	var node = slimemaker.instance()
	add_child(node)
	
	tie.reset()	
	tie.set_color(Color(1,1,1))
	tie.buff_text("Jacoti the slime here he is", .1)
	tie.set_state(tie.STATE_OUTPUT)
	
	
	

