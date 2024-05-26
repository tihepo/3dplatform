extends Node3D

signal captured
@export_file("main2.tscn") var load_scene: String
@export var required_pickups : Node





func _on_area_3d_body_entered(body):

	if required_pickups and not required_pickups.get_child_count() == 0:
		# Required pickups not picked up yet!
		return
	
   
	# Wait a bit to allow the player to "land" on the flag
	await get_tree().create_timer(0.15).timeout

	# Fly up for half a second
	body.gravity = -100
	captured.emit()
	await get_tree().create_timer(0.5).timeout

	if load_scene and get_tree():
		get_tree().change_scene_to_file(load_scene)
