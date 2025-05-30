'''
	Building 6
	Creado por José Julián Alva Zepeda y Carolina Ledesma Gallegos
	Fecha de última modificación 30 de mayo de 2025
	Descripción: Se implementan funciones para el edificio 6
'''
extends Node2D

func _on_access_door_scene_change() -> void:
	GLOBAL.current_mark = GLOBAL.Markers.mk_building6
