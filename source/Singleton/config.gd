extends Node

var file_path = "res://config.cfg"
var config = ConfigFile.new();

func _ready() -> void:
	if	!FileAccess.file_exists(file_path):
		#sección Language
		config.set_value("Language", "actlan", "en")
		#sección Character
		config.set_value("Character", "speed", 80)
		config.set_value("Character", "maxhealth", 30)
		config.set_value("Character", "basedamage", 10)
		config.set_value("Character", "lowheal", 10)
		config.set_value("Character", "highheal", 20)
		config.set_value("Character", "name", "John Guavas")
		config.save(file_path)
		print("Archivo ", file_path, " creado")
	else:
		config.load(file_path)
		print("Archivo ", file_path, " cargado")
	

func save_full_config():
	config.save(file_path)

#SECCION Language
func save_language_setting(key:String, value):
	config.set_value("Language", key, value)
	config.save(file_path)

func update_language_setting(key:String, value):
	config.set_value("Language", key, value)

func load_language_setting():
	var language_settings = {}
	for key in config.get_section_keys("Language"):
		language_settings[key] = config.get_value("Language", key)
	return language_settings

#SECCION Character
func save_character_setting(key:String, value):
	config.set_value("Character", key, value)
	config.save(file_path)

func update_character_setting(key:String, value):
	config.set_value("Character", key, value)

func load_character_setting():
	var language_settings = {}
	for key in config.get_section_keys("Character"):
		language_settings[key] = config.get_value("Character", key)
	return language_settings
