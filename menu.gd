extends Control

@export_file("*.tscn") var start_scene: String


func _on_button_toggled(button_pressed):
	pass # Replace with function body.
get_tree().change_scene_to_file(start_scene)
