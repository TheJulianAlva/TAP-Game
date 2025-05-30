extends StaticBody2D

var door_opened = false

func _on_key_door_opened() -> void:	
	$Sprite2D.visible = false
	$CollisionShape2D.queue_free()
	door_opened = true

func _on_area_2d_door_body_entered(body: Node2D) -> void:	
	if body is Player:
		if body.hasK:
			if !door_opened:
				$LabelConfirm.visible = true


func _on_area_2d_door_body_exited(body: Node2D) -> void:
	$LabelConfirm.visible = false
