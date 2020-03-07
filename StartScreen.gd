extends Control

export (PackedScene) var FirstLevel
export (PackedScene) var Options



func _on_Start_pressed() -> void:
	get_tree().change_scene_to(FirstLevel)


func _on_Options_pressed() -> void:
	get_tree().change_scene_to(Options)


func _on_Exit_pressed() -> void:
	 get_tree().quit()
