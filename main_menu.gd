extends Control



func _on_sort_mode_button_pressed() -> void:
	get_tree().change_scene_to_file("res://game_modes/sort/sort.tscn")



func _on_catch_mode_button_pressed() -> void:
	get_tree().change_scene_to_file("res://game_modes/catch/catch.tscn")


func _on_settings_button_pressed() -> void:
	get_tree().change_scene_to_file("res://settings.tscn")
