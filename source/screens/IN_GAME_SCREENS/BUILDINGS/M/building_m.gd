extends Node2D

func _ready() -> void:
	$Player.hasLamp = GLOBAL.player_has_lamp

func _on_access_door_scene_change() -> void:
	GLOBAL.current_mark = GLOBAL.Markers.mk_building_m
