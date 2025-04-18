extends Camera2D

#conecta la posicion de la camara con el cuarto que manda EVENTO
func _ready() -> void:
	EVENTO.room_entered.connect(func(room):
		global_position = room.global_position 
		)
