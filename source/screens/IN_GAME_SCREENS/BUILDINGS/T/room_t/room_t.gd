extends Node2D


func _on_player_detector_body_entered(body: Node2D) -> void:
	EVENTS.room_entered.emit(self)
