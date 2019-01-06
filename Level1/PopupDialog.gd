extends PopupDialog

func _ready():
	popup()

	get_node("button").connect("pressed", self, "_on_button_pressed")
	get_node("button").text= "fish"
	var lab = Label.new()
	add_child(lab)
	lab.text="dog"
	print("T")
	get_node("button").connect("pressed", self, "_on_button_pressed")
	call_deferred("popup")

	
func _on_button_pressed():
	hide()