extends Control

var correct_answer = "lol"
var input_text = ""
signal incorrect_answer
var submitted = false
@onready var level = LevelTemplate

func _ready():
	pass
func _on_submit_button_pressed():
	submitted = true
	input_text = $LineEdit.text
	print(submitted)
	hide() # Hide the popup

func _on_cancel_button_pressed():
	submitted = false
	input_text = ""
	hide() # Hide the popup

func get_input_text():
	return input_text
	
func is_answer_correct():
	if input_text.to_lower() == correct_answer.to_lower():
		level.correctAnswer()
		return true
	else:
		level.incorrectAnswer()
		return false


