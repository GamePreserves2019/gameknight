extends PopupDialog

func _ready():
<<<<<<< HEAD
	popup()

	get_node("button").connect("pressed", self, "_on_button_pressed")
	get_node("button").text= "fish"
	var lab = Label.new()
	add_child(lab)
	lab.text="dog"
	print("T")
=======
	get_node("button").connect("pressed", self, "_on_button_pressed")
	call_deferred("popup")
>>>>>>> 8f074969dac19ecc94c97851cf75bf108e193a47

	
func _on_button_pressed():
	hide()