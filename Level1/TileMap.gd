extends TileMap

func _ready():
	for i in range(10):
		var r = randi() % 4
		set_cell(i-4,0,r)
