extends Node2D


func _on_stair_body_entered(body: Node2D) -> void:
	EVENTS.room_entered.emit(self)
