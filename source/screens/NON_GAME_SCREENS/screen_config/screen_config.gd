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

@onready var scroll_master: HSlider = $MContainer/VContainer/ContainerSliderMaster/HBoxContainer/scrollMaster
@onready var scroll_sfx: HSlider = $MContainer/VContainer/ContainerSliderSFX2/HBoxContainer/scrollSFX
@onready var scroll_music: HSlider = $MContainer/VContainer/ContainerSliderMusic/HBoxContainer/scrollMusic
@onready var scroll_voice: HSlider = $MContainer/VContainer/ContainerSliderVoice/HBoxContainer/scrollVoice


func _ready() -> void:
	btn_idioma.grab_focus()
	scroll_master.value = GLOBAL.volume_master
	scroll_sfx.value = GLOBAL.volume_sfx
	scroll_music.value = GLOBAL.volume_music
	scroll_voice.value = GLOBAL.volume_voice
	

func _on_btn_regresar_pressed() -> void:
	await SOUNDS.play_btn_selected()
	CONFIG_FILE.update_language_setting("actlan", _al)
	TranslationServer.set_locale(_al)
	SCN_TRANSITION.change_scene(GLOBAL.SCREEN_PRINCIPAL_PATH)

func _on_btn_idioma_pressed() -> void:
	await SOUNDS.play_btn_selected()
	language_control()

func language_control() -> void:
	var language_settings = CONFIG_FILE.load_language_setting()
	var al = language_settings.actlan
	al= "es" if al=="en" else "en"
	CONFIG_FILE.update_language_setting("actlan", al)
	TranslationServer.set_locale(al)

func _on_btn_controles_pressed() -> void:
	await SOUNDS.play_btn_selected()
	get_tree().change_scene_to_file(GLOBAL.SCREEN_CONFIG_PATH)

func _on_btn_guardar_pressed() -> void:
	await SOUNDS.play_btn_selected()
	CONFIG_FILE.save_full_config()
	SCN_TRANSITION.change_scene(GLOBAL.SCREEN_PRINCIPAL_PATH)

func _btns_focus_exited() -> void:
	await SOUNDS.play_btn_focus()

func _on_scroll_master_value_changed(value: float) -> void:
	GLOBAL.set_bus_volume(GLOBAL.bus_master_id,value)
	GLOBAL.volume_master=value
	CONFIG_FILE.update_audio_setting("volume_master",value)
	await SOUNDS.play_slider_changed()

func _on_scroll_sfx_value_changed(value: float) -> void:
	GLOBAL.set_bus_volume(GLOBAL.bus_sfx_id,value)
	GLOBAL.volume_sfx=value
	CONFIG_FILE.update_audio_setting("volume_sfx",value)
	await SOUNDS.play_slider_changed()

func _on_scroll_music_value_changed(value: float) -> void:
	GLOBAL.set_bus_volume(GLOBAL.bus_music_id,value)
	GLOBAL.volume_music=value
	CONFIG_FILE.update_audio_setting("volume_music",value)
	await SOUNDS.play_slider_changed()


func _on_scroll_voice_value_changed(value: float) -> void:
	GLOBAL.set_bus_volume(GLOBAL.bus_voice_id,value)
	GLOBAL.volume_voice=value
	CONFIG_FILE.update_audio_setting("volume_voice",value)
	await SOUNDS.play_slider_changed()
