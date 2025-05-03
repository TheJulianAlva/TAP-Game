'''
	Módulo PantConfig
	Creado por José Julián Alva Zepeda
	Fecha de creación 17 de febrero de 2025
	Fecha de última modificación 14 de marzo de 2025
	Descripción: Se implementa la pantalla de configuración inicial del juego.
'''

class_name PantConfig extends Control

var _al:String = CONFIG_FILE.load_language_setting().actlan
@onready var btn_idioma: Button = $MContainer/VContainer/MContainer/VContainer/HContainer/btnIdioma


func _ready() -> void:
	btn_idioma.grab_focus()

func _on_btn_regresar_pressed() -> void:
	CONFIG_FILE.update_language_setting("actlan", _al)
	TranslationServer.set_locale(_al)
	SCN_TRANSITION.change_scene(GLOBAL.SCREEN_PRINCIPAL_PATH)

func _on_btn_idioma_pressed() -> void:
	language_control()

func language_control() -> void:
	var language_settings = CONFIG_FILE.load_language_setting()
	var al = language_settings.actlan
	al= "es" if al=="en" else "en"
	CONFIG_FILE.update_language_setting("actlan", al)
	TranslationServer.set_locale(al)

func _on_btn_controles_pressed() -> void:
	get_tree().change_scene_to_file(GLOBAL.SCREEN_CONFIG_PATH)

func _on_btn_guardar_pressed() -> void:
	CONFIG_FILE.save_full_config()
	SCN_TRANSITION.change_scene(GLOBAL.SCREEN_PRINCIPAL_PATH)
