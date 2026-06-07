extends "res://deco/deco_template.gd"

@onready var sprite_2d: Sprite2D = $Sprite2D

func _ready() -> void:
	super()
	sprite_2d.frame = randi_range(0, sprite_2d.hframes -1)
