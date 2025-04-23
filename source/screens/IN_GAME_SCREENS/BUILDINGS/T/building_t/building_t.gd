extends Node2D

@onready var path_follow_2d: PathFollow2D =$room_t/Path2D/PathFollow2D
@onready var ghost: CharacterBody2D = $room_t/Ghost

func _on_stair_body_entered(body: Node2D) -> void:
	EVENTS.room_entered.emit(self)

func _process(delta: float) -> void:
	ghost.act_animacion(path_follow_2d,delta)
