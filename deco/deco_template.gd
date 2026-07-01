extends Sprite2D

@onready var guiding_block: Sprite2D = %GuidingBlock
@onready var main_sprite: Sprite2D = $MainSprite
@onready var main_animation_player: AnimationPlayer = %MainAnimationPlayer

@export var randomize_sprite = false
@export var animate_loop = false

func _ready() -> void:
	guiding_block.visible = false
	if randomize_sprite:
		frame = randi_range(0, hframes -1)
	if main_animation_player.has_animation('loop') && animate_loop:
		main_animation_player.play('loop')
	elif main_animation_player.has_animation('RESET'):
		main_animation_player.play('RESET')
