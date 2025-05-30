extends Node2D


func _on_player_detector_body_entered(_body: Node2D) -> void:
	EVENTS.room_entered.emit(self)


func _on_key_door_opened() -> void:
	pass # Replace with function body.
