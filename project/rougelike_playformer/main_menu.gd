extends Control

func _on_start_button_pressed() -> void:
	get_tree().change_scene_to_file("res://game.tscn")


func _on_quit_pressed() -> void:
	get_tree().quit()


func _on_how_to_play_pressed() -> void:
	get_tree().change_scene_to_file("res://scripts/how_to_play.tscn")
