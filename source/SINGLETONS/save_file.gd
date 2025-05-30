extends Node

func save_game():
		var datos = {
			"pChar_max_health": GLOBAL.pChar_max_health,
			"pChar_current_health": GLOBAL.pChar_current_health,
			"pChar_base_damage": GLOBAL.pChar_base_damage,
			"pChar_current_mark": GLOBAL.current_mark
		}
		var jsonString = JSON.stringify(datos)
		var jsonFile = FileAccess.open("res://gamesaved.json", FileAccess.WRITE)
		if jsonFile:
			jsonFile.store_line(jsonString)
			jsonFile.close()
			print("DATA FILE SAVED...")
		else:
			print("ERROR: CANNOT FIND FILE SAVE...")


func load_game():
	var jsonFile = FileAccess.open("res://gamesaved.json", FileAccess.READ)
	var jsonString = jsonFile.get_as_text()
	jsonFile.close()
	
	var datos = JSON.parse_string(jsonString)
	GLOBAL.pChar_max_health = datos.pChar_max_health
	GLOBAL.pChar_current_health = datos.pChar_current_health
	GLOBAL.pChar_base_damage = datos.pChar_base_damage
	GLOBAL.current_mark = datos.pChar_current_mark
	print("DATA FILE LOADED...")
	
