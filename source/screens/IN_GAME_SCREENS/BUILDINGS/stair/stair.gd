extends Area2D

@onready var spawn_location_stair: Marker2D = $SpawnLocationStair

func _on_body_entered(body: Node2D) -> void:
	print("Collision")
	body.global_position = spawn_location_stair.global_position
