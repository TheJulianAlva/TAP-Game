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
	SAVE_FILE.load_game()

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

func manage_actual_screen() -> void:
	var path : String
	match GLOBAL.current_mark:
		GLOBAL.Markers.mk_world:
			path = GLOBAL.SCREEN_GAME_WORLD_PATH
		GLOBAL.Markers.mk_building_t:
			path = "res://source/screens/IN_GAME_SCREENS/BUILDINGS/T/building_t/building_t.tscn"
		GLOBAL.Markers.mk_building_b:
			path = "res://source/screens/IN_GAME_SCREENS/BUILDINGS/B/building_b.tscn"
		GLOBAL.Markers.mk_building1:
			path = "res://source/screens/IN_GAME_SCREENS/BUILDINGS/1/building_1.tscn"
		GLOBAL.Markers.mk_building2:
			path = "res://source/screens/IN_GAME_SCREENS/BUILDINGS/2/building_2.tscn"
		GLOBAL.Markers.mk_building3:
			path = "res://source/screens/IN_GAME_SCREENS/BUILDINGS/3/building_3.tscn"
		GLOBAL.Markers.mk_building4:
			path = "res://source/screens/IN_GAME_SCREENS/BUILDINGS/4/building_4.tscn"
		GLOBAL.Markers.mk_building5:
			path = "res://source/screens/IN_GAME_SCREENS/BUILDINGS/5/building_5.tscn"
		GLOBAL.Markers.mk_building6:
			path = "res://source/screens/IN_GAME_SCREENS/BUILDINGS/6/building_6.tscn"
		GLOBAL.Markers.mk_building7:
			path = "res://source/screens/IN_GAME_SCREENS/BUILDINGS/7/building_7.tscn"
		GLOBAL.Markers.mk_building8:
			path = "res://source/screens/IN_GAME_SCREENS/BUILDINGS/8/building_8.tscn"
		GLOBAL.Markers.mk_building9:
			path = "res://source/screens/IN_GAME_SCREENS/BUILDINGS/9/building_9.tscn"
		GLOBAL.Markers.mk_building10:
			path = "res://source/screens/IN_GAME_SCREENS/BUILDINGS/10/building_10.tscn"
