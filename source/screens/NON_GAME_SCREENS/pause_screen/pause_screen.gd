class_name ScreenPause extends CanvasLayer

var on_pause:bool
@onready var btn_continue: Button = $Background/Container/btnContinue
@onready var background: ColorRect = $Background

func _ready() -> void:
	btn_continue.grab_focus()


func _input(_event: InputEvent) -> void:
	if Input.is_action_just_pressed("GAME_pause"):
		_handle_pause()
	
	if Input.is_action_just_pressed("ui_accept") && on_pause:
		print("on_pause")
		print(get_viewport().gui_get_focus_owner().name)
		menu_action(get_viewport().gui_get_focus_owner().name)
		

func menu_action(button:String):
	match button:
		"btnContinue":
			_on_btn_continue_pressed()
		"BtnAMenuPrin":
			_handle_pause()
			$Background/Container/BtnAMenuPrin._on_pressed()

func _handle_pause():
	on_pause = !on_pause
	print(on_pause)
	get_tree().paused = !get_tree().paused
	background.visible = !background.visible
	btn_continue.grab_focus()


func _on_btn_continue_pressed() -> void:
	_handle_pause()
