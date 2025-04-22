extends Area2D

@onready var spawn_location_S: Marker2D = $SpawnLocationS

func _on_body_entered(body: Node2D) -> void:
	body.global_position = spawn_location_S.global_position
