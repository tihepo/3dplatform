extends Area3D

var time := 0.0
var grabbed := false

# Collecting coins
func _on_body_entered(body):
	if !grabbed:
		
		Game.collect_coin()


		
		Audio.play("res://sounds/coin.ogg") # Play sound
		
		queue_free() # Remove from scene
		$Particles.emitting = false # Stop emitting stars
		
		grabbed = true

# Rotating, animating up and down

func _process(delta):
	
	rotate_y(2 * delta) # Rotation
	position.y += (cos(time * 5) * 1) * delta # Sine movement
	
	time += delta
