extends Sprite2D

@onready var guiding_block: Sprite2D = %GuidingBlock
@onready var main_animation_player: AnimationPlayer = %MainAnimationPlayer

@export var randomize_sprite = false
@export var animate_loop = false
@export var rand_offset_y = 0
@export var rand_offset_x = 0

func _ready() -> void:
	guiding_block.visible = false
	if rand_offset_y != 0:
		offset.y += randi_range(rand_offset_y * -1, rand_offset_y)
	if rand_offset_x != 0:
		offset.x += randi_range(rand_offset_x * -1, rand_offset_x)
	if randomize_sprite:
		frame = randi_range(0, hframes -1)
	if main_animation_player.has_animation('loop') && animate_loop:
		main_animation_player.play('loop')
	elif main_animation_player.has_animation('RESET'):
		main_animation_player.play('RESET')
