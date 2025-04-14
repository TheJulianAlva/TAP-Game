class_name BtnAMenuPrin extends Button

var pantPrinPath: String = "res://source/screens/pantprin/pant_principal.tscn"

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("ui_accept"):
		a_menu_prin()

func a_menu_prin():
	SCN_CIRCLE_TRANSITION.change_scene(pantPrinPath)

func _on_pressed() -> void:
	a_menu_prin()
