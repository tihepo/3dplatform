extends StaticBody3D


@export var menu_scene: PackedScene


var menu: Node = null


func _on_area_3d_body_entered(body):
	
	if menu_scene and not menu:
		
		menu = menu_scene.instantiate()

		
		get_tree().root.add_child(menu)


func _on_area_3d_body_exited(body):

	if is_instance_valid(menu):
		menu.queue_free()
