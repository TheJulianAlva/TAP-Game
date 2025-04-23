class_name BtnAMenuPrin extends Button

func a_menu_prin():
	SCN_CIRCLE_TRANSITION.change_scene(GLOBAL.SCREEN_PRINCIPAL_PATH)

func _on_pressed() -> void:
	a_menu_prin()
