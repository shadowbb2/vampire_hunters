extends Control

func _ready():
	hide()

func resume():
	get_tree().paused = false
	hide()

func pause():
	get_tree().paused = true
	show()

func Esc():
	if Input.is_action_just_pressed("esc") and get_tree().paused == false:
		pause()
	elif Input.is_action_just_pressed("esc") and get_tree().paused == true:
		resume()

func _on_resume_pressed() -> void:
	$snd_click.play()
	resume()


func _on_restart_pressed() -> void:
	%snd_click.play()
	resume()
	get_tree().reload_current_scene()


func _on_quit_pressed() -> void:
	%snd_click.play()
	get_tree().paused = false
	get_tree().change_scene_to_file("res://TitleScreen/menu.tscn")
	

func _process(delta):
	Esc()


func _on_resume_mouse_entered() -> void:
	%snd_hover.play()


func _on_restart_mouse_entered() -> void:
	%snd_hover.play()


func _on_quit_mouse_entered() -> void:
	%snd_hover.play()
