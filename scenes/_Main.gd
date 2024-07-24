extends Node3D

@onready var blocks = [$Block, $Block2, $Block3]
@onready var blockSize = blocks.size()
var index = 0;

func _input(event):
	if event is InputEventKey and event.pressed:
		if event.keycode == KEY_W or event.keycode == KEY_UP:
			for i in range(0, blockSize):
				blocks[i].unselect()
			index += 1
			if index >= blockSize:
				index = 0
			blocks[index].selected()
		if event.keycode == KEY_S or event.keycode == KEY_DOWN:
			for i in range(0, blockSize):
				blocks[i].unselect()
			index -= 1
			if index < 0:
				index = blockSize - 1
			blocks[index].selected()
