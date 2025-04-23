extends Node2D
@onready var ghost_1: FollowEnemy = $Ghosts/Ghost1
@onready var ghost_2: FollowEnemy = $Ghosts/Ghost2
@onready var ghost_3: FollowEnemy = $Ghosts/Ghost3
@onready var path_ghost_1: PathFollow2D = $Paths/PathGhost1/Follow
@onready var path_ghost_2: PathFollow2D = $Paths/PathGhost2/Follow
@onready var path_ghost_3: PathFollow2D = $Paths/PathGhost3/Follow



func _ready() -> void:
	$Player.hasLamp = GLOBAL.player_has_lamp

func _process(delta: float) -> void:
	ghost_1.update_animation(path_ghost_1, delta)
	ghost_2.update_animation(path_ghost_2, delta)
	ghost_3.update_animation(path_ghost_3, delta)

func _on_access_door_scene_change() -> void:
	GLOBAL.current_mark = GLOBAL.Markers.mk_building_b
