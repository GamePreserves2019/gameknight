extends PopupDialog

func _ready():
	popup()
	get_node("button").connect("pressed", self, "_on_button_pressed")
	print("ready")
	
func _on_button_pressed():
	hide()