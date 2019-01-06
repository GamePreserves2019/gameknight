extends Node

onready var tie = get_node("CanvasLayer/Panel/TextInterfaceEngine")

func _ready():
	var slimemaker = load("res://Objects/SlimeMaker/SlimeMaker.tscn")
	var node = slimemaker.instance()
	add_child(node)
	
	tie.reset()	
	tie.set_color(Color(1,1,1))
	tie.buff_text("once upon a time jacotie, the slime\n", .05)
	tie.buff_text("protagonist of our, brief but exciting, tale\n",.05)
	tie.buff_silence(1)
	tie.buff_text("The first thing you have to understand about jacotie is that he was no ordinary slime\n",.05)
	tie.buff_silence(.5)
	tie.buff_text("not that there can really be said to be an 'ordinary' slime\n",.05)
	tie.buff_text("slimes after all contain within their number a great many different shapes sizes textures and colors\n",.05)
	tie.buff_text("However jacotie differed from other slimes not in his height or hue but in his hubris",.05)
	tie.set_state(tie.STATE_OUTPUT)
	
	
	

