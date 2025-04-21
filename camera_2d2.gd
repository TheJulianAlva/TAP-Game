extends Camera2D

#conecta la posicion de la camara con el cuarto que manda EVENTS
func _ready() -> void:
	EVENTS.room_entered.connect(func(room):
		global_position = room.global_position 
		)
