extends Node3D

@export var color : Color

@onready var block = $BlockMesh
@onready var pointer = $BlockMesh/Pointer
@onready var animPlayer = $BlockMesh/AnimationPlayer


func _ready():
	#block.mesh.material.albedo_color = color
	pass

func selected():
	pointer.visible = true
	animPlayer.play("pointer_idle")

func unselect():
	pointer.visible = false
	animPlayer.stop()

