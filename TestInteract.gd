extends Node2D

@onready var interaction_area: InteractionArea = $InteractionArea
@onready var popupChild = PopupDialogTemplate
# Called when the node enters the scene tree for the first time.
func _ready():
	interaction_area.interact = Callable(self, "_on_interact")
	print(popupChild)


func _on_interact():
	var popup = preload("res://PopupDialogTemplate.tscn").instantiate()
	add_child(popup)
	if popupChild.is_answer_correct():
		print("LOL")
