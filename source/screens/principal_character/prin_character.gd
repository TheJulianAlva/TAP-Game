'''
	Módulo Player
	Creado por José Julián Alva Zepeda y Carolina Ledesma Gallegos
	Fecha de creación 26 de febrero de 2025
	Fecha de última modificación 29 de mayo de 2025
	Descripción: Se implementa el personaje principal del juego.
'''
@icon("res://resources/Images/IconGodotNode/node_2D/icon_character.png")
class_name Player extends CharacterBody2D


@onready var anim_player: AnimatedSprite2D = $AnimatedSprite
@onready var effects: AnimationPlayer = $Effects
@onready var hurt_timer: Timer = $HurtTimer
@onready var lamp: PointLight2D = $Lamp
@export var lamp_energy: float

#var speed: int = GLOBAL.pChar_speed #Comentado mientras se hacen modificaciones a pantallas específicas
var speed = 70
@onready var maxHealth:int = GLOBAL.pChar_max_health
@onready var currentHealth:int = GLOBAL.pChar_current_health
signal healthChanged

#var knockBackPower:float = 20.0

var currentDirection: String = "down"

var isHurt:bool = false
var enemyCollisions = []

var hasLamp:bool
var hasK:bool

func _ready() -> void:
	effects.play("RESET")
	lamp.visible = hasLamp
	lamp.energy = lamp_energy

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(_delta: float) -> void:
	update_velocity()
	move_and_slide()
	handle_animation()
	if !isHurt:
		for enemyArea in enemyCollisions:
			hurt_by_enemy()


func _input(_event: InputEvent) -> void:
	if Input.is_action_pressed("GAME_tooglelamp"):
		toogle_lamp()

func handle_animation() -> void:
	if velocity.length() == 0:
		if Input.is_action_pressed("GAME_dance"):
			anim_player.play("dancing_down")
		else:
			play_idle_animation()
	else:
		play_walking_animation()

func play_idle_animation() -> void:
	anim_player.play("idle_" + currentDirection)

func play_walking_animation() -> void:
	currentDirection = "down"
	if velocity.x < 0:
		currentDirection = "left"
	elif velocity.x > 0:
		currentDirection = "right"
	elif velocity.y < 0:
		currentDirection = "up"
	anim_player.play("walking_" + currentDirection)

func update_velocity() -> void:
	var direction:Vector2 = Input.get_vector("WASD_A", "WASD_D", "WASD_W", "WASD_S")
	velocity = direction * speed

func hurt_by_enemy() -> void:
	currentHealth -= 1
	if currentHealth < 1: #Asignacion máxima temporal
		currentHealth = maxHealth
	GLOBAL.pChar_current_health = currentHealth
	healthChanged.emit(currentHealth)
	isHurt = true
	#knock_back()
	effects.play("hurtAnimation")
	hurt_timer.start()
	await hurt_timer.timeout
	effects.play("RESET")
	isHurt = false

func _on_hit_box_area_entered(area: Area2D) -> void:
	if isHurt: return
	if area.name == "HitBox":
		enemyCollisions.append(area)
		
'''
func knock_back():
	velocity = -velocity * knockBackPower
	move_and_slide()
'''
func _on_hit_box_area_exited(area: Area2D) -> void:
	enemyCollisions.erase(area)

func toogle_lamp() -> void:
	if hasLamp:
		lamp.visible = !lamp.visible
