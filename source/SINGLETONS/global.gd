'''
	GLOBAL
	Creado por José Julián Alva Zepeda y Carolina Ledesma Gallegos
	Fecha de última modificación 30 de mayo de 2025
'''
extends Node

#Declaraciones de rutas de pantallas no jugables
var SCREEN_PRINCIPAL_PATH:String = "res://source/SCREENS/NON_GAME_SCREENS/screen_principal/screen_principal.tscn"
var SCREEN_CONFIG_PATH:String = "res://source/SCREENS/NON_GAME_SCREENS/screen_config/screen_config.tscn"
var SCREEN_INTRO_PATH:String = "res://source/SCREENS/NON_GAME_SCREENS/screen_intro/screen_intro.tscn"
var SCREEN_CONTROLS_PATH:String = "res://source/SCREENS/NON_GAME_SCREENS/screen_controls/screen_controls.tscn"

#Declaraciones de rutas de pantallas jugables
var SCREEN_GAME_WORLD_PATH:String = "res://source/SCREENS/IN_GAME_SCREENS/screen_game_world/screen_game_world.tscn"

#Declaraciones de Buses
@onready var bus_master_id=AudioServer.get_bus_index("Master")
@onready var bus_sfx_id=AudioServer.get_bus_index("SFX")
@onready var bus_voice_id=AudioServer.get_bus_index("Voice")
@onready var bus_music_id=AudioServer.get_bus_index("Music")

var volume_master:float		##volumen maestro
var volume_music:float		##volumen de la música
var volume_sfx:float		##volumen de los efectos de sonido
var volume_voice:float		##volumen de las voces

var player_has_lamp:bool = true

#Declaracion de marcadores para ubicacion de personaje
enum Markers {
	mk_world, mk_building_t, mk_building_b, mk_building_b2,
	mk_building_c1, mk_building_cc, mk_building_cafe, mk_building_d2,
	mk_building_m, mk_building_u, mk_building_k, mk_building1, mk_building2,
	mk_building3, mk_building4, mk_building6, mk_building7, mk_building8,
	mk_building9, mk_building10, mk_building5}

var current_mark = Markers.mk_world


#Declaraciones de variables globales
var pChar_speed:int ##Velocidad del personaje.
var pChar_max_health:int ##Salud máxima del personaje.
var pChar_current_health:int ##Salud actual del personaje.
var pChar_base_damage:int ##Daño base del personaje.
var pChar_low_heal:int ##Recuperación base de salud del personaje.
var pChar_high_heal:int ##Recuperación máxima de salud del personaje.
var pChar_name: String ##Nombre del personaje.

var enemy_speed:int ##Velocidad del enemigo
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	#carga de idioma activo
	var language_settings = CONFIG_FILE.load_language_setting()
	TranslationServer.set_locale(language_settings.actlan)
	
	#asignacion de valores Character
	var character_settings = CONFIG_FILE.load_character_setting()
	pChar_speed = character_settings.speed
	pChar_max_health = character_settings.maxhealth
	print(pChar_max_health)
	pChar_current_health = 1
	pChar_base_damage = character_settings.basedamage
	pChar_low_heal = character_settings.lowheal
	pChar_high_heal = character_settings.highheal
	pChar_name = character_settings.name
	
	#asignación de valores Enemy
	var enemy_setting=CONFIG_FILE.load_enemy_setting()
	enemy_speed = enemy_setting.speed
	
	#asignación de valores Audio
	var audio_settings = CONFIG_FILE.load_audio_setting()
	volume_master = audio_settings.volume_master
	set_bus_volume(bus_master_id, volume_master)
	volume_sfx = audio_settings.volume_sfx
	set_bus_volume(bus_sfx_id, volume_sfx)
	volume_music = audio_settings.volume_music
	set_bus_volume(bus_music_id, volume_music)
	volume_voice = audio_settings.volume_voice
	set_bus_volume(bus_voice_id, volume_voice)
	
	

func set_bus_volume(bus,volume):
	AudioServer.set_bus_volume_db(bus,linear_to_db(volume))
	AudioServer.set_bus_mute(bus,volume<0.05)
