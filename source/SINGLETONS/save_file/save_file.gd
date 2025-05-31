extends Node

func save_game():
		var datos = {
			"player_current_healt": GLOBAL.pChar_current_health,
			"player_base_damage": GLOBAL.pChar_base_damage,
			"player_has_lamp": GLOBAL.player_has_lamp,
			"player_current_mark": GLOBAL.current_mark
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
	if jsonFile == null:
		save_game()
		return
	var jsonString = jsonFile.get_as_text()
	jsonFile.close()
	
	var datos = JSON.parse_string(jsonString)
	print(GLOBAL.pChar_current_health)
	GLOBAL.pChar_current_health = datos.player_current_healt
	print(GLOBAL.pChar_current_health)
	GLOBAL.pChar_base_damage = datos.player_base_damage
	GLOBAL.player_has_lamp = datos.player_has_lamp
	#GLOBAL.current_mark = datos.player_current_mark
	print("DATA FILE LOADED...")
	
