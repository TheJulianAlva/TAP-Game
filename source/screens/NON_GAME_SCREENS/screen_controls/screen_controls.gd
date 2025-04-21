'''
	Módulo PantControl
	Creado por José Julián Alva Zepeda
	Fecha de creación 17 de febrero de 2025
	Fecha de última modificación 17 de febrero de 2025
	Descripción: Se implementa la pantalla principal del juego.
'''

extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$Panel/btnRegresar.grab_focus()

func _on_btn_regresar_pressed() -> void:
	get_tree().change_scene_to_file(GLOBAL.SCREEN_CONFIG_PATH)
