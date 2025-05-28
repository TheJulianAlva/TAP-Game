extends Node
var scene
var thread=Thread.new()

func load_trigger(sp:String):
	if thread.is_alive():
		return
	scene_file_path = sp
	thread.start(load_scene)
	
func load_scene(scene_path:String):
	scene = ResourceLoader.load(scene_path)
	
func get_scene()->PackedScene:
	return scene
