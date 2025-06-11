extends Button

func _on_pressed() -> void:
	$snd_click.play() 
	get_tree().reload_current_scene()

func _on_mouse_entered() -> void:
	$snd_hover.play()
