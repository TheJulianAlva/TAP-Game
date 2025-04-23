extends Area2D

signal item_obtained




func _on_body_entered(body: Node2D) -> void:
	if body is Player:
		if !body.hasLamp:
			var tween=create_tween()
			tween.tween_property(self,"position",position+Vector2(0,-20),0.3)
			tween.tween_property(self,"modulate:a",0.0,0.3)
			body.hasLamp=true
			GLOBAL.player_has_lamp=true
			emit_signal("item_obtained")
			tween.tween_callback(self.queue_free)
