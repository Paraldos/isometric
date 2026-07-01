extends "res://deco/deco_template.gd"

enum HINGES {
	NONE,
	LEFT_GOLD,
	RIGHT_GOLD,
	LEFT_SILVER,
	RIGHT_SILVER,
}
@export var door_hinges : = HINGES.NONE
@onready var hinges: Sprite2D = %Hinges

func _ready() -> void:
	super()
	hinges.visible = door_hinges != HINGES.NONE
	hinges.frame = door_hinges - 1
	if flip_h:
		hinges.frame += 4
