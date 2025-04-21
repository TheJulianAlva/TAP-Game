extends Area2D

@onready var spawn_location: Marker2D = $SpawnLocation


func _on_body_entered(body: Node2D) -> void:
	body.global_position = spawn_location.global_position
