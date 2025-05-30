extends StaticBody2D

signal chest_opened 

var in_chest_zone = false 
var chest_open = false

func _process(delta: float) -> void: 
	if in_chest_zone == true: 
		if Input.is_action_just_pressed("ui_accept"): 
			print("chest_opened") 
			emit_signal("chest_opened") 
			chest_open = true 
			if chest_open == true: 
				var tween=create_tween() 
				tween.tween_property($Key,"global_position",global_position+Vector2(0,10),0.3) 
				$LabelConfirmC.visible = false 
				#$Sprite2DC.queue_free()

func _on_area_2d_chest_body_entered(body: Node2D) -> void: 
	if body is Player: 
		in_chest_zone = true 
		$LabelConfirmC.visible = true
	
func _on_area_2d_chest_body_exited(body: Node2D) -> void: 
	if body is Player: 
		$LabelConfirmC.visible = false


func _on_key_door_opened() -> void:
	pass # Replace with function body.
