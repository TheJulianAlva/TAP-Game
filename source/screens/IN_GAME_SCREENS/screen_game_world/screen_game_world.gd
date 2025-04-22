extends Node2D
@onready var player: Player = $PrincipalCharacter
@onready var cam: Camera2D = $PrincipalCharacter/Camera
@onready var path_follow_2d: PathFollow2D = $Paths/Path_01/PathFollow2D
@onready var enemy_base: EnemigoT = $Enemies/Enemy_Base
@onready var hud: Hud = $HUD


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	hud.set_max_hearts_from_container(player.maxHealth)
	hud.update_hearts_from_container(player.currentHealth)
	player.healthChanged.connect(hud.update_hearts_from_container)

func _process(delta: float) -> void:
	enemy_base.act_animacion(path_follow_2d,delta)
