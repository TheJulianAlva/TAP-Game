class_name ItemLamp extends Area2D
signal item_obtenido




func _on_body_entered(body: Node2D) -> void:
	if body is Personaje:
		if !body.has_lamp:
			var tween = create_tween()
			tween.tween_property(self,"position",position + Vector2(0,-25),0.4)
			tween.tween_property(self,"modulate:a",0.0,0.3)
			body.has_lamp = true
			emit_signal("item_obtenido")
			tween.tween_callback(self.queue_free)
