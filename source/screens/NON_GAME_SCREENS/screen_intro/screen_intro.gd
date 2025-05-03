extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$MarginContainer/btnSkip.grab_focus()


func _on_btn_skip_pressed() -> void:
	SCN_CIRCLE_TRANSITION.change_scene(GLOBAL.SCREEN_PRINCIPAL_PATH)
