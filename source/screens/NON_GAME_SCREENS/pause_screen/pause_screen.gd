@icon("res://resources/Images/IconGodotNode/node/icon_scene.png")
class_name ScreenPause extends CanvasLayer

var on_pause:bool
@onready var btn_continue: Button = $bgPanel/MContainer/VContainer/btnContinue
@onready var btn_a_menu_prin: BtnAMenuPrin = $bgPanel/MContainer/VContainer/BtnAMenuPrin

@onready var bg_complete: ColorRect = $BgComplete
@onready var bg_panel: ColorRect = $bgPanel


func _ready() -> void:
	btn_continue.grab_focus()


func _input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("GAME_pause"):
		handle_pause()

func handle_pause():
	on_pause = !on_pause
	get_tree().paused = !get_tree().paused
	toogle_menu()
	btn_continue.grab_focus()

func toogle_menu():
	bg_complete.visible = !bg_complete.visible
	bg_panel.visible = !bg_panel.visible

func _on_btn_continue_pressed() -> void:
	handle_pause()


func _on_btn_a_menu_prin_pressed() -> void:
	handle_pause()
