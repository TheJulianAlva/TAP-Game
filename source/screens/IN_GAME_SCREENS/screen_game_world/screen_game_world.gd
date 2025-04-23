extends Node2D
@onready var player: Player = $Player
@onready var cam: Camera2D = $Player/Camera

@onready var hud: Hud = $HUD
@onready var t_marker: Marker2D = $Markers/T_Marker
@onready var world_marker: Marker2D = $Markers/World_Marker
@onready var b_marker: Marker2D = $Markers/B_Marker

#Declaracion de Enemies
@onready var ghost1: FollowEnemy = $Enemies/Ghost1
@onready var ghost2: FollowEnemy = $Enemies/Ghost2
@onready var ghost3: FollowEnemy = $Enemies/Ghost3
@onready var path_ghost_1: PathFollow2D = $Paths/PathGhost1/PathFollow2D
@onready var path_ghost_2: PathFollow2D = $Paths/PathGhost2/PathFollow2D
@onready var path_ghost_3: PathFollow2D = $Paths/PathGhost3/PathFollow2D


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hud.set_max_hearts_from_container(player.maxHealth)
	hud.update_hearts_from_container(player.currentHealth)
	player.healthChanged.connect(hud.update_hearts_from_container)
	set_player_position()

func _process(delta: float) -> void:
	ghost1.update_animation(path_ghost_1,delta)
	ghost2.update_animation(path_ghost_2,delta)
	ghost3.update_animation(path_ghost_3,delta)

func set_player_position() -> void:
	match GLOBAL.current_mark:
		GLOBAL.Markers.mk_world:
			player.position = world_marker.position
		GLOBAL.Markers.mk_building_t:
			player.position = t_marker.position
		GLOBAL.Markers.mk_building_b:
			player.position = b_marker.position
