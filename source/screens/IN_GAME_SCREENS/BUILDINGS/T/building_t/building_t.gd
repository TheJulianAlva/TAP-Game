extends Node2D

@onready var ghost_1: FollowEnemy = $Ghosts/Ghost1
@onready var ghost_2: FollowEnemy = $Ghosts/Ghost2
@onready var ghost_3: FollowEnemy = $Ghosts/Ghost3
@onready var ghost_4: FollowEnemy = $Ghosts/Ghost4
@onready var ghost_5: FollowEnemy = $Ghosts/Ghost5
@onready var path_ghost_1: PathFollow2D = $Paths/PathGhost1/PathFollow2D
@onready var path_ghost_2: PathFollow2D = $Paths/PathGhost2/PathFollow2D
@onready var path_ghost_3: PathFollow2D = $Paths/PathGhost3/PathFollow2D
@onready var path_ghost_4: PathFollow2D = $Paths/PathGhost4/PathFollow2D
@onready var path_ghost_5: PathFollow2D = $Paths/PathGhost5/PathFollow2D


func _ready() -> void:
	$Player.hasLamp = GLOBAL.player_has_lamp

func _process(delta: float) -> void:
	ghost_1.update_animation(path_ghost_1,delta)
	ghost_2.update_animation(path_ghost_2,delta)
	ghost_3.update_animation(path_ghost_3,delta)
	ghost_4.update_animation(path_ghost_4,delta)
	ghost_5.update_animation(path_ghost_5,delta)


func _on_access_door_scene_change() -> void:
	GLOBAL.current_mark = GLOBAL.Markers.mk_building_t
