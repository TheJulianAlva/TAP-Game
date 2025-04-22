extends Panel
@onready var sprite = $Sprite2D

func update(fully:bool):
	sprite.frame = 4 if fully else 0
