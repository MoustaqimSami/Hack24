extends Area2D
class_name InteractionArea

@export var action_name: String = "Interact"

var interact: Callable = func():
	pass


func _on_body_entered(body):
	# Register itself in the InteractionManager list
	InteractionManager.register_area(self)


func _on_body_exited(body):
	# Unregister itself from the InteractionManager list
	InteractionManager.unregister_area(self)
