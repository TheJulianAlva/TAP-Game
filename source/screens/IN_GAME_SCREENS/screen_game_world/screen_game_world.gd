extends Node2D
@onready var personaje: CharacterBody2D = $PrincipalCharacter
@onready var cam: Camera2D = $PrincipalCharacter/Camera
@onready var path_follow_2d: PathFollow2D = $Paths/Path_01/PathFollow2D
@onready var enemy_base: EnemigoT = $Enemies/Enemy_Base


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _process(delta: float) -> void:
	enemy_base.act_animacion(path_follow_2d,delta)
