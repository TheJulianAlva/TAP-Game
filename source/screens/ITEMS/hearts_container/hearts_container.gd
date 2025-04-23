class_name HeartsContainer extends HBoxContainer
@onready var heartClass = preload("res://source/SCREENS/ITEMS/hearts/hearts.tscn")

func set_max_hearts(maxHealth:int):
	for i in range(maxHealth):
		var heart = heartClass.instantiate()
		add_child(heart)

func update_hearts(currentHealth:int):
	var hearts = get_children()
	for i in range(currentHealth):
		hearts[i].update(true)
	
	for i in range(currentHealth, hearts.size()):
		hearts[i].update(false)
