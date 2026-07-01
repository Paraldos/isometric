extends Sprite2D

enum HINGES {
	NONE,
	LEFT_GOLD,
	LEFT_SILVER,
	RIGHT_GOLD,
	RIGHT_SILVER,
}
@export var door_hinges : = HINGES.NONE
@onready var hinges: Sprite2D = %Hinges


func _ready() -> void:
	hinges.visible = door_hinges != HINGES.NONE
	match door_hinges:
		HINGES.LEFT_SILVER:
			hinges.frame = 2 if frame % 2 == 0 else 3
		HINGES.LEFT_GOLD:
			hinges.frame = 0 if frame % 2 == 0 else 1
		HINGES.RIGHT_SILVER:
			hinges.frame = 6 if frame % 2 == 0 else 7
		HINGES.RIGHT_GOLD:
			hinges.frame = 4 if frame % 2 == 0 else 5
