extends StaticBody2D

signal door_opened

var keytaken = false
var in_door_zone = false

#replace node2D to PhysicsBody2D
func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Player:
		if keytaken == false:
			print("into")
			keytaken = true
			$Sprite2D.queue_free()
			body.hasK1 = true

func _process(delta: float) -> void:
	if keytaken == true:
		if in_door_zone == true:
			if Input.is_action_just_pressed("ui_accept"):
				print("door_opened")
				emit_signal("door_opened")

func _on_area_2d_door_body_entered(body: Node2D) -> void:
	if body is Player:
		in_door_zone = true
		print(in_door_zone)

func _on_area_2d_door_body_exited(body: Node2D) -> void:
	if body is Player:
		in_door_zone = false
		print(in_door_zone)
