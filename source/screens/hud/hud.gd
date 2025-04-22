class_name Hud extends CanvasLayer

@export var on_main:bool
@onready var hearts_container: HeartsContainer = $heartsContainer

func set_max_hearts_from_container(max:int):
	hearts_container.set_max_hearts(max)

func update_hearts_from_container(currentHealth:int):
	hearts_container.update_hearts(currentHealth)
