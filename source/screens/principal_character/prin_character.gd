'''
	Módulo Personaje
	Creado por José Julián Alva Zepeda
	Fecha de creación 26 de febrero de 2025
	Fecha de última modificación 26 de febrero de 2025
	Descripción: Se implementa el personaje principal del juego.
'''

class_name Personaje extends CharacterBody2D


@onready var anim_player: AnimatedSprite2D = $AnimatedSprite
#var speed: int = GLOBAL.pChar_speed #Comentado mientras se hacen modificaciones a pantallas específicas
var speed=70

var direction: String = "down"

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta: float) -> void:
	var axis_hor: float = Input.get_axis("WASD_A", "WASD_D")
	var axis_ver: float = Input.get_axis("WASD_W", "WASD_S")
	velocity = update_velocity(axis_hor, axis_ver)
	move_and_slide()
	if axis_hor == 0 && axis_ver == 0:
		play_idle_animation(direction)
	else:
		play_walking_animation(axis_hor, axis_ver)

func play_idle_animation(direction:String) -> void:
	if direction == "left":
		anim_player.play("idle_left")
	elif direction == "right":
		anim_player.play("idle_right")
	elif direction == "up":
		anim_player.play("idle_up")
	elif direction == "down":
		anim_player.play("idle_down")
	else:
		anim_player.stop()
		anim_player.set_frame_and_progress(1, 0.9)

func play_walking_animation(axis_hor:float, axis_ver:float) -> void:
	if axis_hor < 0:
		anim_player.play("walking_left")
		direction = "left"
	elif axis_hor > 0:
		anim_player.play("walking_right")
		direction = "right"
	elif axis_ver < 0:
		anim_player.play("walking_up")
		direction = "up"
	elif axis_ver > 0:
		anim_player.play("walking_down")
		direction = "down" 

func update_velocity(axis_hor:float, axis_ver:float) -> Vector2:
	var vec_velocity: Vector2
	if axis_hor != 0 and axis_ver != 0:
		vec_velocity.x = speed * axis_hor * 0.7
		vec_velocity.y = speed * axis_ver * 0.5
	else:
		vec_velocity.x = speed * axis_hor
		vec_velocity.y = speed * axis_ver
	return vec_velocity
