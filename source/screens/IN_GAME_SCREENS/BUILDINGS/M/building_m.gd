'''
	Building M
	Creado por José Julián Alva Zepeda y Carolina Ledesma Gallegos
	Fecha de última modificación 15 de mayo de 2025
	Descripción: Se implementan funciones para el edificio M
'''
extends Node2D

func _on_access_door_scene_change() -> void:
	GLOBAL.current_mark = GLOBAL.Markers.mk_building_m
	print("m")
