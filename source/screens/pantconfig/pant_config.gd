'''
	Módulo PantConfig
	Creado por José Julián Alva Zepeda
	Fecha de creación 17 de febrero de 2025
	Fecha de última modificación 14 de marzo de 2025
	Descripción: Se implementa la pantalla de configuración inicial del juego.
'''

class_name PantConfig extends Node2D

var _al:String = CONFIG_FILE.load_language_setting().actlan
@onready var btn_idioma: Button = $Panel/btnIdioma

var pantPrinPath: String = "res://source/screens/pantprin/pant_principal.tscn"
var pantControlPath: String = "res://source/screens/pantcontrol/pant_control.tscn"


func _ready() -> void:
	btn_idioma.grab_focus()

func _on_btn_regresar_pressed() -> void:
	CONFIG_FILE.update_language_setting("actlan", _al)
	TranslationServer.set_locale(_al)
	SCN_TRANSITION.change_scene(pantPrinPath)

func _on_btn_idioma_pressed() -> void:
	language_control()

func language_control() -> void:
	var language_settings = CONFIG_FILE.load_language_setting()
	var al = language_settings.actlan
	al= "es" if al=="en" else "en"
	CONFIG_FILE.update_language_setting("actlan", al)
	TranslationServer.set_locale(al)

func _on_btn_controles_pressed() -> void:
	get_tree().change_scene_to_file(pantControlPath)

func _on_btn_guardar_pressed() -> void:
	CONFIG_FILE.save_full_config()
	SCN_TRANSITION.change_scene(pantPrinPath)
