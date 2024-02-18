extends Area2D

# Calls when a player enters the area.
func _on_body_entered(body):
	if body.is_in_group("player"):
		var current_scene_file = get_tree().current_scene.scene_file_path
