extends Node

func save_file():
	var datos={
		"pChar_max_healt": GLOBAL.pChar_max_health,
		"pChar_current_healt": GLOBAL.pChar_current_health,
		"pChar_base_damage": GLOBAL.pChar_base_damage,
		"player_has_lamp": GLOBAL.player_has_lamp
	}
	var jsonString = JSON.stringify(datos)
	var jsonFile = FileAccess.open("res://gamesaved.json",FileAccess.WRITE)
	jsonFile.store_line(jsonString)
	jsonFile.close()
	print("Saved")
	
func load():
	var jsonFile = FileAccess.open("res://gamesaved.json",FileAccess.READ)
	var jsonString = jsonFile.get_as_text()
	jsonFile.close()
	var datos = JSON.parse_string(jsonString)
	GLOBAL.pChar_max_health = datos.pChar_max_healt
	GLOBAL.pChar_current_health = datos.pChar_current_healt
	GLOBAL.pChar_base_damage = datos.pChar_base_damage
	GLOBAL.player_has_lamp = datos.player_has_lamp
	print("Loaded")
