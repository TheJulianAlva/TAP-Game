extends CanvasLayer
@onready var text_msg: Label = $panelMsg/TextMsg
@onready var timer: Timer = $Timer
@export var text: String

func _ready() -> void:
	text_msg.text = text
	layer -4

func show_dialog()-> void:
	layer = 1
	timer.start()

func act_text() -> void:
	text_msg.text = text

func _on_timer_timeout() -> void:
	layer = -5
