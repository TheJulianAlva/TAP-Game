extends Node

func play_btn_selected() -> void:
	$btnSelected.play()
	await $btnSelected.finished
	
func play_btn_focus() -> void:
	$btnFocus.play()
	await $btnFocus.finished
