extends Node3D

var time := 0.0
@export var time_offset := 0.0
@export var distance := 2.0
@export var distance_offset := 0.0
@export var speed := 2.0

@onready var startpos := position

func _process(delta):
	# Sine movement
	position = startpos
	position.x += cos((time + time_offset) * speed/distance) * distance + distance_offset

	time += delta
