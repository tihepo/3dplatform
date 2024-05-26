extends Node

var coins := 0

func collect_coin():
		coins += 1
		$HUD/Coins.text = str(coins)


func _input(event):
	
	# Toggle fullsreen when pressing the F key
	
	if event is InputEventKey:
		if event.pressed and event.keycode == KEY_F:
			if DisplayServer.window_get_mode() == DisplayServer.WINDOW_MODE_FULLSCREEN:
				DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
			else:
				DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
