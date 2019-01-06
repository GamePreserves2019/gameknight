extends PopupDialog

func _ready():
	get_node("button").connect("pressed", self, "_on_button_pressed")
	call_deferred("popup")

	
func _on_button_pressed():
	hide()