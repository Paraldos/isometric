extends "res://deco/deco_template.gd"

@onready var animation_player: AnimationPlayer = %AnimationPlayer
@export var fire_on = true

func _ready() -> void:
	super()
	if fire_on:
		animation_player.play('fire')
	else:
		animation_player.play("RESET")
