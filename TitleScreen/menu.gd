extends Control

func _on_btn_play_click_end():
	get_tree().change_scene_to_file("res://World/world.tscn")

func _on_btn_exit_click_end():
	get_tree().quit()

func _on_btn_options_click_end():
	get_tree().change_scene_to_file("res://TitleScreen/option_menu.tscn")


func _on_btn_play_pressed() -> void:
	get_tree().change_scene_to_file("res://World/world.tscn")
