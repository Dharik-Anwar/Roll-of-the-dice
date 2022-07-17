extends Node2D

onready var sprite = $"."

onready var target = get_parent().get_child(1)

var keys
var faces

func _ready() -> void:
	faces = target.pieces
	keys = faces.keys()

func _process(delta: float) -> void:
	animate()

func animate():
	for key in keys:
		var face = sprite.find_node(key)
		face.frame = faces[key] - 1
