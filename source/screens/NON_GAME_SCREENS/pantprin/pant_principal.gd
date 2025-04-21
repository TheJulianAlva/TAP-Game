'''
	Módulo PantPrincipal
	Creado por José Julián Alva Zepeda
	Fecha de creación 17 de febrero de 2025
	Fecha de última modificación 14 de marzo de 2025
	Descripción: Se implementa la pantalla principal del juego.
'''
class_name PantPrincipal extends Node2D
@onready var btn_iniciar: Button = $VBContainer/btnIniciar

var pantConfigPath: String = "res://source/screens/pantconfig/pant_config.tscn"
var pantGameWorldPath: String = "res://source/screens/IN_GAME_SCREENS/pantgameworld/pant_game_world.tscn"
var pantIntroPath: String = "res://source/screens/pantintro/pant_intro.tscn"

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	btn_iniciar.grab_focus()

func _on_btn_salir_pressed() -> void:
	get_tree().quit()

func _on_btn_config_pressed() -> void:
	SCN_CIRCLE_TRANSITION.change_scene(pantConfigPath)

func _on_btn_iniciar_pressed() -> void:
	SCN_CIRCLE_TRANSITION.change_scene(pantGameWorldPath)

func _on_tmr_to_intro_timeout() -> void:
	SCN_TRANSITION.change_scene(pantIntroPath)
