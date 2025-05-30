'''
	Módulo PantPrincipal
	Creado por José Julián Alva Zepeda
	Fecha de creación 17 de febrero de 2025
	Fecha de última modificación 14 de marzo de 2025
	Descripción: Se implementa la pantalla principal del juego.
'''
@icon("res://resources/Images/IconGodotNode/control/icon_scene.png")
class_name PantPrincipal extends Control

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	$MContainer/VContainer/HContainer/btnIniciar.grab_focus()
	THR_LOADER.load_scene(GLOBAL.SCREEN_INTRO_PATH)
	
func _on_btn_salir_pressed() -> void:
	await SOUNDS.play_btn_selected()
	get_tree().quit()

func _on_btn_config_pressed() -> void:
	await SOUNDS.play_btn_selected()
	SCN_TRANSITION.change_scene(GLOBAL.SCREEN_CONFIG_PATH)

func _on_btn_iniciar_pressed() -> void:
	await SOUNDS.play_btn_selected()
	SCN_TRANSITION.change_scene(GLOBAL.SCREEN_GAME_WORLD_PATH)

func _on_tmr_to_intro_timeout() -> void:
	SCN_CIRCLE_TRANSITION.change_scene(GLOBAL.SCREEN_INTRO_PATH)

func _btns_focus_exited() -> void:
	await SOUNDS.play_btn_focus()
