extends Node2D
@onready var player: Player = $Player
@onready var cam: Camera2D = $Player/Camera
@onready var path_follow_2d: PathFollow2D = $Paths/Path_01/PathFollow2D
@onready var ghost: FollowEnemy = $Enemies/Ghost
@onready var hud: Hud = $HUD
@onready var t_marker: Marker2D = $Markers/T_Marker
@onready var world_marker: Marker2D = $Markers/World_Marker
@onready var b_marker: Marker2D = $Markers/B_Marker



# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hud.set_max_hearts_from_container(player.maxHealth)
	hud.update_hearts_from_container(player.currentHealth)
	player.healthChanged.connect(hud.update_hearts_from_container)
	set_player_position()

func _process(delta: float) -> void:
	ghost.update_animation(path_follow_2d,delta)

func set_player_position() -> void:
	match GLOBAL.current_mark:
		GLOBAL.Markers.mk_world:
			player.position = world_marker.position
		GLOBAL.Markers.mk_building_t:
			player.position = t_marker.position
		GLOBAL.Markers.mk_building_b:
			player.position = b_marker.position
