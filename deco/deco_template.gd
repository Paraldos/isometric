extends Node2D

@onready var guiding_block: Sprite2D = %GuidingBlock

func _ready() -> void:
	guiding_block.visible = false
