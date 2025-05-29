extends StaticBody2D

func _on_key_door_opened() -> void:
	$Sprite2D.visible = false
	$CollisionShape2D.queue_free()

func _on_area_2d_door_body_entered(body: Node2D) -> void:	
	if body is Player:
		$LabelConfirm.visible = true

func _on_area_2d_door_body_exited(body: Node2D) -> void:
	$LabelConfirm.visible = false
