extends PopupDialog

func _ready():
	pass



func makeDialog(text, buttonText):
	get_node("button").connect("pressed", self, "_on_button_pressed")
	get_node("button").text= buttonText
	var lab = Label.new()
	add_child(lab)
	lab.text=text
	print("T")
	get_node("button").connect("pressed", self, "_on_button_pressed")
	call_deferred("popup")
	popup()
	
signal makeDialog(text, buttonText)
	
func _on_button_pressed():
	hide()