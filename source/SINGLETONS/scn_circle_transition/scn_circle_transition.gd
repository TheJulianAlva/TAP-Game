extends CanvasLayer

@onready var an_fade: AnimationPlayer = $AnFade

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	layer = -5

func change_scene(path:String) -> void:
	layer = 1
	an_fade.play("circle_fade")
	await(an_fade.animation_finished)
	get_tree().change_scene_to_file(path)
	an_fade.play_backwards("circle_fade")
	await(an_fade.animation_finished)
	layer = -1
