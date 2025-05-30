extends CharacterBody2D

signal in_zone
var in_zonep = false

func _ready() -> void:
	$AnimatedSprite2D.play()
	
func _process(delta: float) -> void:
	if in_zonep == true:
		print(in_zone)


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body is Player:
		in_zonep = true
		$LabelTalk.visible
