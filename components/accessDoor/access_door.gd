class_name AccessDoor extends Area2D

signal scene_change
@export var pathScene:String


func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		emit_signal("scene_change")
		SCN_CIRCLE_TRANSITION.change_scene(pathScene)
