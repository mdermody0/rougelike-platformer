extends Control

func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scripts/main_menu.tscn")
