'''
	Módulo Player
	Creado por José Julián Alva Zepeda y Carolina Ledesma Gallegos
	Fecha de última modificación 30 de mayo de 2025
	Descripción: Se implementa el movimiento del personaje y los enemigos en el mundo.
'''
@icon("res://resources/Images/IconGodotNode/node_2D/icon_scene.png")
extends Node2D
@onready var player: Player = $Player
@onready var cam: Camera2D = $Player/Camera

@onready var hud: Hud = $HUD
@onready var t_marker: Marker2D = $Markers/T_Marker
@onready var world_marker: Marker2D = $Markers/World_Marker
@onready var b_marker: Marker2D = $Markers/Marker_B
@onready var b2_marker: Marker2D = $Markers/Marker_B2
@onready var c1_marker: Marker2D = $Markers/Marker_C1
@onready var cc_marker: Marker2D = $Markers/Marker_CC
@onready var k_marker: Marker2D = $Markers/Marker_K
@onready var m_marker: Marker2D = $Markers/Marker_M
@onready var u_marker: Marker2D = $Markers/Marker_U
@onready var d2_marker: Marker2D = $Markers/Marker_D2
@onready var cafe_marker: Marker2D = $Markers/Marker_Cafe
@onready var marker_1: Marker2D = $Markers/Marker_1
@onready var marker_2: Marker2D = $Markers/Marker_2
@onready var marker_3: Marker2D = $Markers/Marker_3
@onready var marker_4: Marker2D = $Markers/Marker_4
@onready var marker_5: Marker2D = $Markers/Marker_5
@onready var marker_6: Marker2D = $Markers/Marker_6
@onready var marker_7: Marker2D = $Markers/Marker_7
@onready var marker_8: Marker2D = $Markers/Marker_8
@onready var marker_9: Marker2D = $Markers/Marker_9
@onready var marker_10: Marker2D = $Markers/Marker_10

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
		GLOBAL.Markers.mk_building_b2:
			player.position = b2_marker.position
		GLOBAL.Markers.mk_building_c1:
			player.position = c1_marker.position
		GLOBAL.Markers.mk_building_cc:
			player.position = cc_marker.position
		GLOBAL.Markers.mk_building_d2:
			player.position = d2_marker.position
		GLOBAL.Markers.mk_building_cafe:
			player.position = cafe_marker.position
		GLOBAL.Markers.mk_building_k:
			player.position = k_marker.position
		GLOBAL.Markers.mk_building_m:
			player.position = m_marker.position
		GLOBAL.Markers.mk_building_u:
			player.position = u_marker.position
		GLOBAL.Markers.mk_building1:
			player.position = marker_1.position
		GLOBAL.Markers.mk_building2:
			player.position = marker_2.position
		GLOBAL.Markers.mk_building3:
			player.position = marker_3.position
		GLOBAL.Markers.mk_building4:
			player.position = marker_4.position
		GLOBAL.Markers.mk_building5:
			player.position = marker_5.position
			print("5")
		GLOBAL.Markers.mk_building6:
			player.position = marker_6.position
		GLOBAL.Markers.mk_building7:
			player.position = marker_7.position
		GLOBAL.Markers.mk_building8:
			player.position = marker_8.position
		GLOBAL.Markers.mk_building9:
			player.position = marker_9.position
		GLOBAL.Markers.mk_building10:
			player.position = marker_10.position
			
