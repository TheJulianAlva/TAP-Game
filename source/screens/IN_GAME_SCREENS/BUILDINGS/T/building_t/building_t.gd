extends Node2D

@onready var path_follow_2d: PathFollow2D =$room_t/Path2D/PathFollow2D
@onready var ghost: FollowEnemy = $room_t/Ghost


func _process(delta: float) -> void:
	ghost.update_animation(path_follow_2d,delta)


func _on_access_door_scene_change() -> void:
	GLOBAL.current_mark = GLOBAL.Markers.mk_building_t
