extends Node2D

#cuando ingresa a un cuarto emite la señal del cuarto donde se dectectó
func _on_player_detector_body_entered(body: Node2D) -> void:	
	EVENTO.room_entered.emit(self)
	print (self.name)
