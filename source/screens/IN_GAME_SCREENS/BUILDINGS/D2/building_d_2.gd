extends Node2D

func _on_access_door_scene_change() -> void:
	GLOBAL.current_mark = GLOBAL.Markers.mk_building_d2
